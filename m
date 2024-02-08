Return-Path: <devicetree+bounces-39795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6142784E23B
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 14:46:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 733F7B22AE3
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F21F763F4;
	Thu,  8 Feb 2024 13:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jvii8+3B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3A8763FC
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 13:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707399995; cv=none; b=V1ycKNhedwAJxp64cHnmt8LrlQYRk5UBE1ZKCJ5avyH3IEOmO8M5nwTWnHqYTOwz2mRFD49L+Y6a5A0K6R48j7dJDv4fAWIGgd5k61WmsimJvVAkH9FVmLmVGVbIWG5nG43OdQyiR9hYFO56nSm1VLh7iInJD6jTzdD40PurNiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707399995; c=relaxed/simple;
	bh=lF+yxSOPWGF35LeJdi8CpHgk4xj8DU4x5B94UDcHEP8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UsGIx8RLm+oqMc9n95E6IFsM1G93NHVdHRl2JacwR3Ks12ahscYKb18R3q8rxzvJyn+zBbO4+bO2P9wTBjb5EBe9BhQLfLk2ii8dsIg5MjHUH0TVPWnzcOW5ryp+Uo2BAznbZzVSanoPlWzamw16OoN65PAPatntn7WrKJjIcZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jvii8+3B; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a29c4bbb2f4so249996266b.1
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 05:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707399991; x=1708004791; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ScIY/HfFAFC0b03ICHw/iCduUDonnVRODJKogMNZR60=;
        b=jvii8+3BP1xuY0NJ9l1qkMDzQ4lFmR1me6qtK+n3PfopxGWQzknotaDpWgixDeOjFg
         NvgFBDmpx/WG9Ih2DHbYf8hmG4cwr0dBeaEF1YSzCcOY2ZAdhCLfJtvxSdEHp6qTa5BC
         2GnsJZO2LzH9Y7dFVooVZ8RjC7Qc4B+02IaEcblvIISIUcZyE4C0Cp9zTXlN9CWVd5wM
         +KPGfLhDQ+k8b74xRkaBwNLgQWvNMlP8r7U8k2GBegylOc8sjTR9RkTUog5BtlDdFcjF
         v5gl+YBiRg0M5pdrHddpeWhy3Gziv0cPsuyQo2AooZ+ek0NgeXSQNKlYhFfFYV+pJGx3
         r8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707399991; x=1708004791;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ScIY/HfFAFC0b03ICHw/iCduUDonnVRODJKogMNZR60=;
        b=oN3zRGt19pDz6Y7gVmsOV8zWt0ak0UxjCcLpWJocRL/1KHBNzB7pgMkjxn62H1R2O/
         3CGdUaB5Msv3VB3+CfmNJ3Re4hveg/P2EoEuPfQP9wvwUnj/D4YyGp4+5CWVvT0mQOJH
         5J4T5VP6ua1FI+/s4tJE8CvfxIZjWe2/BC17MD8z+NfsNcahYReuXssAvbRaW7RdFDVk
         wD2PfQGaxDvK8CQ9ieNIjMC6f5Mduts9hUantpYmrdmr4nwh4IXStHqxtIYvXxna9Wnu
         kEt6ZPP0Gkx2qRgxDSy7fxl5caEb6tRiY9ikMOFMZH1BfTgwDosJdTi1LtfIi44e9guX
         m7gQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSmAni/Pm+7sLf5qPf7dJYHG6ajwcuwct5Odla8uznSlstMCam+ay42IiUGRpbLo/azdaRSMmHhp/g6kmkEXTmhMrm/3MJGbgl3Q==
X-Gm-Message-State: AOJu0YzdFxrUphExyyZYsSv6u4UKyULWMwkbm//bWVjB5TuLCj4AOk/N
	J02N7jrzvNTwGPrAXYF0Vgl5hCmrPNhWwG7cOngXRwiroOUFfU2/BOj1wyLxxUk=
X-Google-Smtp-Source: AGHT+IGEgAx+YtgSvXCAni7u/Q8jcZGz0YDpaUwhJjgeCBWNA0up0ixKRS6a2nAtCknTAG1DqHHXwg==
X-Received: by 2002:a17:906:1301:b0:a30:be5e:c8e7 with SMTP id w1-20020a170906130100b00a30be5ec8e7mr6149015ejb.44.1707399990675;
        Thu, 08 Feb 2024 05:46:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXHgo6p4vMeqamFxEUAZUBJTOGpfgaf7zXt6WvJjoWOxUuHPxt3L0HDV+aOXE8Ee4nigmxEyNtLEAVfjthhf3+6/6j7nMxe2NUNLrQjGUvDL7NwX+0ZbVlmeUeLbAVRjlF4JcOA+dhsDAiRj+AGdswPXrjhdZ+oLhKmL1F6APFe86LCXRrI/kmODJrSFskXiJXcxeSBdjbTX/pL2J0NoOTP01h7cz6CbeCBWGkHiXnPA9glRi14it47kfnZWnOQ1I7HSBq4td6n82iw/n5i0zDrYjqfMJHDF064Tr0L3Xahs6cpMZ+SFWPgOjLvngZFTx05Uoshk+uA0B0guYxoY5fWTLgNRSj2e8cnaY5hAiR077McfoandG+LW3Qn6O5IMtINkWa7pHh6ApPC3m5ov8BxMF0dJ5i5vzh+1ghmbaSWGINAlrAbKQ4kylfhGdLMJF1w2tlVpjml2q14i7SeLHoIHbJAUNrnuNf2lp5fQITZ2kqXu8PfUsXBl6/Q1W6cZTHd+YlBvyYUP40BNvVfX0YWtqbD7nC+y9QuEkVxKt3/RC1qk6HX/KTtqPSgqqQ5cRJpeLR4kVwEvF/yy8MjY3rAVvzUdQUyEGnWTiDNnYuiU7z+pOsOzKx1z78/96YllhRuTdqTw1sEK+iE4Q==
Received: from linaro.org ([62.231.97.49])
        by smtp.gmail.com with ESMTPSA id y15-20020a170906070f00b00a3729ce6321sm53206ejb.166.2024.02.08.05.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 05:46:30 -0800 (PST)
Date: Thu, 8 Feb 2024 15:46:28 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] drm/msm: mdss: Add X1E80100 support
Message-ID: <ZcTbNGVGT/Kwtc68@linaro.org>
References: <20240129-x1e80100-display-v1-0-0d9eb8254df0@linaro.org>
 <20240129-x1e80100-display-v1-3-0d9eb8254df0@linaro.org>
 <CAA8EJponbo2vvuj2ftCQuxtrZp0w7JQqJ_ADF80Wd2y1V74BzA@mail.gmail.com>
 <ZcTZL+fls7A8O9P0@linaro.org>
 <CAA8EJpr3p286ff1pHhhBdF7GA=g8Pnv9yWDukwnnNaOuykPcTQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpr3p286ff1pHhhBdF7GA=g8Pnv9yWDukwnnNaOuykPcTQ@mail.gmail.com>

On 24-02-08 15:42:04, Dmitry Baryshkov wrote:
> On Thu, 8 Feb 2024 at 15:37, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > On 24-01-29 17:11:25, Dmitry Baryshkov wrote:
> > > On Mon, 29 Jan 2024 at 15:19, Abel Vesa <abel.vesa@linaro.org> wrote:
> > > >
> > > > Add support for MDSS on X1E80100.
> > > >
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > ---
> > > >  drivers/gpu/drm/msm/msm_mdss.c | 10 ++++++++++
> > > >  1 file changed, 10 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> > > > index 455b2e3a0cdd..eddf7fdbb60a 100644
> > > > --- a/drivers/gpu/drm/msm/msm_mdss.c
> > > > +++ b/drivers/gpu/drm/msm/msm_mdss.c
> > > > @@ -564,6 +564,15 @@ static const struct msm_mdss_data sdm670_data = {
> > > >         .highest_bank_bit = 1,
> > > >  };
> > > >
> > > > +static const struct msm_mdss_data x1e80100_data = {
> > > > +       .ubwc_enc_version = UBWC_4_0,
> > > > +       .ubwc_dec_version = UBWC_4_3,
> > > > +       .ubwc_swizzle = 6,
> > > > +       .ubwc_static = 1,
> > > > +       .highest_bank_bit = 2,
> > > > +       .macrotile_mode = 1,
> > >
> > > Missing .reg_bus_bw, LGTM otherwise
> >
> > Dmitry, I do not have the exact value yet.
> >
> > Can I come back with a subsequent (different) patch to add it at a later stage
> > when I have that information?
> >
> > I see no point in holding display support any further since it works
> > fine with the default bandwith.
> >
> > If yes, I'll respin this series right away, but without the reg_bus_bw.
> 
> Please add a TODO or FIXME comment there.

Sure thing. Thanks.

> 
> >
> > >
> > > > +};
> > > > +
> > > >  static const struct msm_mdss_data sdm845_data = {
> > > >         .ubwc_enc_version = UBWC_2_0,
> > > >         .ubwc_dec_version = UBWC_2_0,
> > > > @@ -655,6 +664,7 @@ static const struct of_device_id mdss_dt_match[] = {
> > > >         { .compatible = "qcom,sm8450-mdss", .data = &sm8350_data },
> > > >         { .compatible = "qcom,sm8550-mdss", .data = &sm8550_data },
> > > >         { .compatible = "qcom,sm8650-mdss", .data = &sm8550_data},
> > > > +       { .compatible = "qcom,x1e80100-mdss", .data = &x1e80100_data},
> > > >         {}
> > > >  };
> > > >  MODULE_DEVICE_TABLE(of, mdss_dt_match);
> > > >
> > > > --
> > > > 2.34.1
> > > >
> > >
> > >
> > > --
> > > With best wishes
> > > Dmitry
> 
> 
> 
> -- 
> With best wishes
> Dmitry

