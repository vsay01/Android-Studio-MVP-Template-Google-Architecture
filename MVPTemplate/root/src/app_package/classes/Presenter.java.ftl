package ${packageName};

public class ${className}Presenter extends BasePresenter implements ${className}Contract.Presenter{
    
    private ${className}Contract.View mView;

    public ${className}Presenter(@NonNull ${className}Contract.View view) {
        this.mView = view;
        this.mView.setPresenter(this);
    }

    @Override
    public void start() {
        
    }

    @Override
    public void stop() {

    }
}
