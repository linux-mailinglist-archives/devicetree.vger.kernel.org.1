Return-Path: <devicetree+bounces-11092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 198E47D41DC
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95420B20C3F
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5563122F16;
	Mon, 23 Oct 2023 21:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O9trq1uu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04D61A583
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:44:55 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E00E0D7C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:44:53 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d9ca471cf3aso3643189276.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698097493; x=1698702293; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TMHt4JzUG+TVaPwcecvrtNVv7hq5rD+HCe3ewQSR9q0=;
        b=O9trq1uueJ3ZfD6jNQkyf2B/V2u2PDpwCJFsfgSAe/u4u6nkDeP5XcmCVu5YPn/t8X
         utHEL3wSLkbK5lUIM9eS09NpDb4DazbRTP2+axbWIO9nhEKB6voyN3W4nhUF22KRGhwy
         dsdGQ2Z/+hCuqXiX628ySrmCxA5h0H/TaltM0isyXO4a+bpqhA9RIniMETWhYFc0XVsu
         qN1cPLgAs8vhqxNn53zyYbUv5DoBjWlAgUefuSf+kMyTaqw/FGp24A8dO/U7a3dvCzIQ
         JnXSB1YWSshjh0H5p6Fz+GxfnqUHOirnHMO/yJ28ww8uGmKGdW1x2GV/NRdctcOpbSqe
         uUNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698097493; x=1698702293;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TMHt4JzUG+TVaPwcecvrtNVv7hq5rD+HCe3ewQSR9q0=;
        b=IGSNEiY0mn3xioNbepZ7f6sQiXntt1FPiOUCw4K3WuPd8LJyGDRbaiku/1wt0A9vCu
         u2kqTnrk65ZNZSafqIdOrMEdNOdnCrsyNwC+u6efIv4bu3CtXupmdBg9pYViRWeYLWtb
         eeMfB0sYZn2hG6kYJ727LSzmpIsrSKqPKmFSm6sgF+w3LGvl9WwKNjY3tV3LBJ5PdkmT
         z6kaAjmOdsHYELy+B3OMX9yye3zh/YHEKwgoVaeDDsNNqTXgpUpLTXdKo9qFdhU+IvYL
         ol1uTxC4LdjT9nIHHDTnzwPJ2N7GeQjiBmkds/M4Fmv/NvHvj7/zML/4D6wKGGYwlK1F
         gdog==
X-Gm-Message-State: AOJu0Yxqt3MM7RcV7K+q+cwK4yoPTnkaHiZywVKUnHLPFXvRHWZKv9xX
	stLlUrpGTk06wp8bLXY8feDJUFuWPLI5kjYlitaTSw==
X-Google-Smtp-Source: AGHT+IFtfzp9JKpHBicAyqXeapaH9oJdO/E5szrTmJ9QaoCDB7Kw7AE2eKFigIorL2Gz/fqB9Bh02dN1Nwg4UyaIDQQ=
X-Received: by 2002:a25:51c3:0:b0:d9b:b6:ad72 with SMTP id f186-20020a2551c3000000b00d9b00b6ad72mr10363779ybb.50.1698097493122;
 Mon, 23 Oct 2023 14:44:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231021-sakuramist-mi11u-v2-0-fa82c91ecaf0@gmail.com>
 <20231021-sakuramist-mi11u-v2-1-fa82c91ecaf0@gmail.com> <CAA8EJprtd8htkDWAvhamgEo3DWMMDYe-P6cnr6nwLnms=N0k9A@mail.gmail.com>
In-Reply-To: <CAA8EJprtd8htkDWAvhamgEo3DWMMDYe-P6cnr6nwLnms=N0k9A@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Oct 2023 00:44:42 +0300
Message-ID: <CAA8EJpqQJCa+C6NJP3ErXBqn3DF2t6Px=21Bg6hFf=+MRZA9Pg@mail.gmail.com>
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

On Sun, 22 Oct 2023 at 13:51, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, 21 Oct 2023 at 13:20, Xilin Wu via B4 Relay
> <devnull+wuxilin123.gmail.com@kernel.org> wrote:
> >
> > From: Xilin Wu <wuxilin123@gmail.com>
> >
> > UCSI is supported on SM8350. Allow it to enable USB role switch and
> > altmode notifications on SM8350.
>
> We have had troubles with UCSI on sm8350. I have a workaround for this
> (and earlier) platforms. Once it is ready to be posted, I'll include
> your patch in the series, if you don't mind.

I ended up fixing the pmic_glink in a slightly different way, so I'll
include a different patch in the posting.

>
> >
> > Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> > ---
> >  drivers/soc/qcom/pmic_glink.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
> > index 914057331afd..1196e79e6fb3 100644
> > --- a/drivers/soc/qcom/pmic_glink.c
> > +++ b/drivers/soc/qcom/pmic_glink.c
> > @@ -341,6 +341,7 @@ static const unsigned long pmic_glink_sm8450_client_mask = BIT(PMIC_GLINK_CLIENT
> >                                                            BIT(PMIC_GLINK_CLIENT_UCSI);
> >
> >  static const struct of_device_id pmic_glink_of_match[] = {
> > +       { .compatible = "qcom,sm8350-pmic-glink", .data = &pmic_glink_sm8450_client_mask },
> >         { .compatible = "qcom,sm8450-pmic-glink", .data = &pmic_glink_sm8450_client_mask },
> >         { .compatible = "qcom,sm8550-pmic-glink", .data = &pmic_glink_sm8450_client_mask },
> >         { .compatible = "qcom,pmic-glink" },
> >
> > --
> > 2.42.0
> >
>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry

