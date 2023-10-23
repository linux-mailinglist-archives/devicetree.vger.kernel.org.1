Return-Path: <devicetree+bounces-11090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3070E7D41C8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:36:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BB731C20975
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0B6224E4;
	Mon, 23 Oct 2023 21:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R/rU3cEY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C13200CB
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:36:37 +0000 (UTC)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 347FF10C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:36:35 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d9c66e70ebdso3515979276.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698096994; x=1698701794; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dasD39M3kOdaux0g0YjT4u6dOP4/ZNPdFd3L1KQIfMs=;
        b=R/rU3cEYS2UkifeZ6/rN64Sh/8jGbApgHPCWJuiqeoWuAds4F7OrUmW3r9/OmwDAjW
         IO8bA13CrkqHhANtch9lN2UiajyKKXeFLDqzx+Ojvt8ZKKDYG6bE4pdGNaJ07SLCIXSt
         Rxd/teCycFcYo8aq8Im1aG36yplPRkoaxayMEDgGhoWGyB6sYH29RohM84tUo3wv0E+V
         tVtf/8HBuxLpcO5JDq7iZDSz8vsdDTL8/SUstPaigtpa/oSeWYMAqqbJp9KWcp4U3s//
         rdSIpWy7k+FZ4T4sDxuj2AaSiDtaofBZlHK0OAy5rDFmDbSf706NF0rZ8qhBV3cveJTN
         qCgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698096994; x=1698701794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dasD39M3kOdaux0g0YjT4u6dOP4/ZNPdFd3L1KQIfMs=;
        b=Pt15Aab/xetqTGpviNzDsSIldaKd123wdRMH/NWJDWImflSfQ0F3z5SNgjb71GUIBR
         BRqpRkx2Au6tXUPv5w6BGdoxXKsR4Uv9zh1rRSzgKI6LL0gpnYS4XlX1j4/EFrnrB6R2
         QlzjVY34GcDaKU/FjpAjhUhCDLTweYcBOv49lDMyW0r3Th3Q8fN4WJC7go3fd4Fz7N2j
         xBZrbYv6O+2fvknNYWBuAROmA0He/ql3AZ5wXLIyTYWySXHWHTP5LHkoZIFB1hFP5f7R
         dqacjoV72/y0mv77owvW0Wo8oqY4lM7/CX194V+DpZseAGvDqu3A/j1WGucmmbzFstAf
         IUww==
X-Gm-Message-State: AOJu0YzcMeMgkE1GNHjf+aU2LxfMvpT3+5eMB6WBy20kJeq5YjE2TNJW
	I91rdOkBfvEEfnFd2X2s7WIG9nsDzfudbVXAE8nx6w==
X-Google-Smtp-Source: AGHT+IHlLgn1OLAqclnSuM/zDgOrhFwCvQfO7GPZvzYvmpAU5h/Cn4/Oq6Vt82z2nEaemKpE/WNLXgOlWVkp81RwaQQ=
X-Received: by 2002:a25:10d6:0:b0:d9b:dfea:bc94 with SMTP id
 205-20020a2510d6000000b00d9bdfeabc94mr8213463ybq.31.1698096994064; Mon, 23
 Oct 2023 14:36:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231021-sakuramist-mi11u-v2-0-fa82c91ecaf0@gmail.com>
 <20231021-sakuramist-mi11u-v2-1-fa82c91ecaf0@gmail.com> <CAA8EJprtd8htkDWAvhamgEo3DWMMDYe-P6cnr6nwLnms=N0k9A@mail.gmail.com>
 <CAEPPPKt6fEyniHgietRcp0MYUErYfnLU-SjtsOofe8VaPiSwLg@mail.gmail.com>
In-Reply-To: <CAEPPPKt6fEyniHgietRcp0MYUErYfnLU-SjtsOofe8VaPiSwLg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Oct 2023 00:36:23 +0300
Message-ID: <CAA8EJppuf5Jiv1NJJLvmL25DgH6U=jZS=+zS_s_aJUfQWEa2Ug@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] soc: qcom: pmic_glink: enable UCSI for SM8350
To: Sophon Wu <wuxilin123@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 23 Oct 2023 at 08:06, Sophon Wu <wuxilin123@gmail.com> wrote:
>
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> =E4=BA=8E2023=E5=B9=B410=
=E6=9C=8822=E6=97=A5=E5=91=A8=E6=97=A5 18:51=E5=86=99=E9=81=93=EF=BC=9A
> >
> > On Sat, 21 Oct 2023 at 13:20, Xilin Wu via B4 Relay
> > <devnull+wuxilin123.gmail.com@kernel.org> wrote:
> > >
> > > From: Xilin Wu <wuxilin123@gmail.com>
> > >
> > > UCSI is supported on SM8350. Allow it to enable USB role switch and
> > > altmode notifications on SM8350.
> >
> > We have had troubles with UCSI on sm8350. I have a workaround for this
> > (and earlier) platforms. Once it is ready to be posted, I'll include
> > your patch in the series, if you don't mind.
>
> I don't mind of course. Do I possibly need to resend the series without t=
he
> pmic_glink patch?

That depends on the review of the patch 3/3. If there are any
comments, you'll have to resend. If not, maintainers can pick it up
separately.

> >
> > >
> > > Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> > > ---
> > >  drivers/soc/qcom/pmic_glink.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_gl=
ink.c
> > > index 914057331afd..1196e79e6fb3 100644
> > > --- a/drivers/soc/qcom/pmic_glink.c
> > > +++ b/drivers/soc/qcom/pmic_glink.c
> > > @@ -341,6 +341,7 @@ static const unsigned long pmic_glink_sm8450_clie=
nt_mask =3D BIT(PMIC_GLINK_CLIENT
> > >                                                            BIT(PMIC_G=
LINK_CLIENT_UCSI);
> > >
> > >  static const struct of_device_id pmic_glink_of_match[] =3D {
> > > +       { .compatible =3D "qcom,sm8350-pmic-glink", .data =3D &pmic_g=
link_sm8450_client_mask },
> > >         { .compatible =3D "qcom,sm8450-pmic-glink", .data =3D &pmic_g=
link_sm8450_client_mask },
> > >         { .compatible =3D "qcom,sm8550-pmic-glink", .data =3D &pmic_g=
link_sm8450_client_mask },
> > >         { .compatible =3D "qcom,pmic-glink" },
> > >
> > > --
> > > 2.42.0
> > >
> >
> >
> > --
> > With best wishes
> > Dmitry



--=20
With best wishes
Dmitry

