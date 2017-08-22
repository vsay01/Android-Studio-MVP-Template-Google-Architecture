package ${packageName};

public class ${className}Presenter extends BasePresenter implements ${className}Contract.Presenter{
    
    private ${className}Contract.View mView;
    
    private Context mContext;

    public ${className}Presenter(@NonNull Context context, @NonNull ${className}Contract.View view) {
        this.mView = view;
        this.mContext = context;
        this.mView.setPresenter(this);
    }

    @Override
    public void start() {
        
    }

    @Override
    public void stop() {

    }
}
