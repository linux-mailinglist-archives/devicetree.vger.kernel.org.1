Return-Path: <devicetree+bounces-10734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CAF7D298E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 07:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7896A1C20865
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 05:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4290B4C7B;
	Mon, 23 Oct 2023 05:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OCiI4eEi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51AE5221;
	Mon, 23 Oct 2023 05:06:51 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD8F9AF;
	Sun, 22 Oct 2023 22:06:49 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5079f3f3d7aso4466216e87.1;
        Sun, 22 Oct 2023 22:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698037608; x=1698642408; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K2snDo55DI2agPH+/29PJskhQ+34fC9SgaEoBFYImQk=;
        b=OCiI4eEii5ugYc5Aerq2IXhBHZqLLXKiBbdeMgo7PO4lCbP86DfVO4jO5FHGmiZAad
         CTqYlPB1d8BURfaAPFIUYaKB0AfG7g1IbkcfPqVJ5Zs5Ll3+2xmUZxhZoMDDN1xEGtBc
         MLL5uc+zlinH69a7i+l1FnWRvibjTHUz7tH4CvE6JARiytfEhzDMFztWOf5BcdK73mrL
         E4KxlHqkeVnkicNX805s4GfyRgY2w01X9RqG9nBst8xXvkXlJESkjbDwkthhYJIGrPc6
         dQH0Eq1P39fcjgRP36HrbtdZgv4OpEMnKotJQoqpFr524Fg8mSzTefssWNlLKak7/f9x
         CAtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698037608; x=1698642408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K2snDo55DI2agPH+/29PJskhQ+34fC9SgaEoBFYImQk=;
        b=hXSBMmciVX8ya31d7N/FjPaR3/X52JAaAqi1f0QNM/gnLKg3nWNUHRJGvQYAiHsXqu
         VKLFZGO+jv0PikuhXgW2vdGbM3jIh4m/PW9LCy20vJGoQs49HVjiCCSgLsCKK23Jh7JR
         Ed+r6pgewksVxQCXLvfRWGS2TvRuLqkUFFXtAGLk80OdyYaZ6nT1cCfrr/dvfSAFdA8D
         tfQvUcwhYKYdFSw0h4W+G23UUQQbUO1291s1s4J/co/2RqVp2F2yzRYBMUxIVPZ2XTyl
         /rp9wCN01DLTQYBXCCo6L5pD1X/LUcDtUdqMOkXy0R2//66RfaiiPO3XPL/IOvD0Waab
         tjIQ==
X-Gm-Message-State: AOJu0Yz8UUn8nbqKyymTLKOe069FQzPF08q9BEKdR98YoAKJam2rO1Z2
	WKLJNKn6T4bHOxnI98yv86Q9Fva4lToHOMAcydYIAStEMaVPsgHQ
X-Google-Smtp-Source: AGHT+IFmwZfj6vmqFsTkTZUYhAugysNnUEUShA40/lJ2qZEuj76pkMz2KJOBu+q/06eUkm17zdHFRi26u6GvM4sQ8uU=
X-Received: by 2002:a05:6512:475:b0:4f3:9136:9cd0 with SMTP id
 x21-20020a056512047500b004f391369cd0mr5626924lfd.44.1698037607549; Sun, 22
 Oct 2023 22:06:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231021-sakuramist-mi11u-v2-0-fa82c91ecaf0@gmail.com>
 <20231021-sakuramist-mi11u-v2-1-fa82c91ecaf0@gmail.com> <CAA8EJprtd8htkDWAvhamgEo3DWMMDYe-P6cnr6nwLnms=N0k9A@mail.gmail.com>
In-Reply-To: <CAA8EJprtd8htkDWAvhamgEo3DWMMDYe-P6cnr6nwLnms=N0k9A@mail.gmail.com>
From: Sophon Wu <wuxilin123@gmail.com>
Date: Mon, 23 Oct 2023 13:06:37 +0800
Message-ID: <CAEPPPKt6fEyniHgietRcp0MYUErYfnLU-SjtsOofe8VaPiSwLg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] soc: qcom: pmic_glink: enable UCSI for SM8350
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dmitry Baryshkov <dmitry.baryshkov@linaro.org> =E4=BA=8E2023=E5=B9=B410=E6=
=9C=8822=E6=97=A5=E5=91=A8=E6=97=A5 18:51=E5=86=99=E9=81=93=EF=BC=9A
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

I don't mind of course. Do I possibly need to resend the series without the
pmic_glink patch?

>
> >
> > Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> > ---
> >  drivers/soc/qcom/pmic_glink.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glin=
k.c
> > index 914057331afd..1196e79e6fb3 100644
> > --- a/drivers/soc/qcom/pmic_glink.c
> > +++ b/drivers/soc/qcom/pmic_glink.c
> > @@ -341,6 +341,7 @@ static const unsigned long pmic_glink_sm8450_client=
_mask =3D BIT(PMIC_GLINK_CLIENT
> >                                                            BIT(PMIC_GLI=
NK_CLIENT_UCSI);
> >
> >  static const struct of_device_id pmic_glink_of_match[] =3D {
> > +       { .compatible =3D "qcom,sm8350-pmic-glink", .data =3D &pmic_gli=
nk_sm8450_client_mask },
> >         { .compatible =3D "qcom,sm8450-pmic-glink", .data =3D &pmic_gli=
nk_sm8450_client_mask },
> >         { .compatible =3D "qcom,sm8550-pmic-glink", .data =3D &pmic_gli=
nk_sm8450_client_mask },
> >         { .compatible =3D "qcom,pmic-glink" },
> >
> > --
> > 2.42.0
> >
>
>
> --
> With best wishes
> Dmitry

