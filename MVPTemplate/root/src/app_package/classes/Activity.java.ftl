package ${packageName};
 
//todo create BaseActivity and import to this class
public class ${className}Activity extends BaseActivity implements ${className}Fragment.On${className}FragmentInteractionListener {
 
    ${className}Contract.Presenter mPresenter;
    
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

	setContentView(R.layout.${activityLayoutName}_layout);
	
${className}Fragment ${className?uncap_first}Fragment = (${className}Fragment) getSupportFragmentManager()
                .findFragmentById(R.id.frame_layout_content);
        if (${className?uncap_first}Fragment == null) {
            ${className?uncap_first}Fragment = ${className}Fragment.newInstance();
            FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
            transaction.add(R.id.frame_layout_content, ${className?uncap_first}Fragment);
            transaction.commit();
        }
        mPresenter = new ${className}Presenter(this, ${className?uncap_first}Fragment);
    }

    @Override
    protected void onStart() {
        super.onStart();
        mPresenter.start();
    }

    @Override
    protected void onStop() {
        super.onStop();
        mPresenter.stop();
    }

    @Override
    public void on${className}FragmentInteraction() {

    }
}
