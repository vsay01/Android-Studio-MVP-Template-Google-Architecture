package ${packageName};
 
//todo create BaseActivity and import to this class
public class ${className}Activity extends BaseActivity implements ${className}Fragment.On${className}FragmentInteractionListener {
 
    ${className}Contract.Presenter mPresenter;
    
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

	setContentView(R.layout.${activityLayoutName}_layout);
	
${className}Fragment ${className}Fragment = (${className}Fragment) getSupportFragmentManager()
                .findFragmentById(R.id.frame_layout_content);
        if (${className}Fragment == null) {
            ${className}Fragment = ${className}Fragment.newInstance();
            FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
            transaction.add(R.id.frame_layout_content, ${className}Fragment);
            transaction.commit();
        }
        mPresenter = new ${className}Presenter(this, ${className}Fragment);
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
