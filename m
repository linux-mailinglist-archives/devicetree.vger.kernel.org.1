Return-Path: <devicetree+bounces-10589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3BC7D22C9
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 12:51:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07CF2B20D48
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 10:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2DE26AB4;
	Sun, 22 Oct 2023 10:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NkuDTB4O"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AC71C30
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 10:51:44 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD39EB4
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 03:51:42 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5a7b91faf40so23517207b3.1
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 03:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697971902; x=1698576702; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qtBLYHItiMRAtWv2eIIyDWdvOr+sJvW/WOE9B0k2XRw=;
        b=NkuDTB4O/Nd48Yas/JhUC6lJqnb8ZTYBFcyAFQnf58+4ERJbJNFS6EIjiKsXode/1O
         IfkXOwBc0PNWRITMYxnSiXUNm+D5b/jYFAkz51FcLgPe47Ux9KBzHB6JyuDqu2nvU6u2
         EeDyjQOZUZYu+AvrVhEuTdZS7Dq7wNVY3dtqDyJBE1psT4VBFsnBMDaNY2JRYYBtk/nx
         Wz8gbaPLbQwYtD8CprBZoF8h5rqD30Qn2a9AzRTEFoJSiFSifG3hRXIc1gUd3vBaXqSY
         Y35sK0HAdzUMlBJLIJwiJviu58678KPSerquWshltnMO33OP8Twqj8U9FuqbEMstCAP7
         TP6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697971902; x=1698576702;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qtBLYHItiMRAtWv2eIIyDWdvOr+sJvW/WOE9B0k2XRw=;
        b=vmIAcaRF4Bf776emaiDD5ldBFlmmeIM5IqCXkXpUXDz8XVagCErnNrV6dHf+K7dK6s
         EL6zgXeLzSuS15YqgL0Wv334ds/int4zvmBg3heCvF7GvfsIgv7e9aMNfuTaykkK2KkG
         fDanAChy7HGFOzdxm140JN57Y9vpTstgmblMyp1RIhVPIF20q1cbRYr2DldFvRqWj6la
         BOjnfUeBcpbKvb5Xmjc1F8ZGBhVtz5QeLdlCOREWwQl06jLX56lbC8kj2SQSr7bOb8md
         7EkkKAh6tRuFf32itnqgE7Z45DnhqK+GWwdLn806kAWui7G6MPm+Pfbvo96l1RjOW193
         WrQQ==
X-Gm-Message-State: AOJu0YxlNfsfbEcMqkYEBHjmsKNcxwVB3/ffQS/2gCPfkgQlncdCA8rM
	Ut+R9Sw0lIYqfbKGezbJmnaOwPwToafliseqdPSWzY7q3n/Zi1kn
X-Google-Smtp-Source: AGHT+IHvSGTdwWJCN+NUWfNu/iFOGpqaoQeYpFbg6MJyqmijJSTWlLgR/hV+HQSRRk+O0gguRdSlYnVT5vCX2KlXnKA=
X-Received: by 2002:a0d:df02:0:b0:5a7:be1a:6c32 with SMTP id
 i2-20020a0ddf02000000b005a7be1a6c32mr7073499ywe.24.1697971902097; Sun, 22 Oct
 2023 03:51:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231021-sakuramist-mi11u-v2-0-fa82c91ecaf0@gmail.com> <20231021-sakuramist-mi11u-v2-1-fa82c91ecaf0@gmail.com>
In-Reply-To: <20231021-sakuramist-mi11u-v2-1-fa82c91ecaf0@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 22 Oct 2023 13:51:31 +0300
Message-ID: <CAA8EJprtd8htkDWAvhamgEo3DWMMDYe-P6cnr6nwLnms=N0k9A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] soc: qcom: pmic_glink: enable UCSI for SM8350
To: wuxilin123@gmail.com
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 21 Oct 2023 at 13:20, Xilin Wu via B4 Relay
<devnull+wuxilin123.gmail.com@kernel.org> wrote:
>
> From: Xilin Wu <wuxilin123@gmail.com>
>
> UCSI is supported on SM8350. Allow it to enable USB role switch and
> altmode notifications on SM8350.

We have had troubles with UCSI on sm8350. I have a workaround for this
(and earlier) platforms. Once it is ready to be posted, I'll include
your patch in the series, if you don't mind.

>
> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> ---
>  drivers/soc/qcom/pmic_glink.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
> index 914057331afd..1196e79e6fb3 100644
> --- a/drivers/soc/qcom/pmic_glink.c
> +++ b/drivers/soc/qcom/pmic_glink.c
> @@ -341,6 +341,7 @@ static const unsigned long pmic_glink_sm8450_client_mask = BIT(PMIC_GLINK_CLIENT
>                                                            BIT(PMIC_GLINK_CLIENT_UCSI);
>
>  static const struct of_device_id pmic_glink_of_match[] = {
> +       { .compatible = "qcom,sm8350-pmic-glink", .data = &pmic_glink_sm8450_client_mask },
>         { .compatible = "qcom,sm8450-pmic-glink", .data = &pmic_glink_sm8450_client_mask },
>         { .compatible = "qcom,sm8550-pmic-glink", .data = &pmic_glink_sm8450_client_mask },
>         { .compatible = "qcom,pmic-glink" },
>
> --
> 2.42.0
>


-- 
With best wishes
Dmitry

