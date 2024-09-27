Return-Path: <devicetree+bounces-105811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F83988095
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 10:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39A301F218D8
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 08:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC89189B8C;
	Fri, 27 Sep 2024 08:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lTGZ72GE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402D3189B85
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 08:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727426541; cv=none; b=BzJEQAxwjiq653wrS6PliVoTOCVdwQIfVcDuUSyeHoXAkKd0NZbkvs6AkfMqnAI8uzSkOfW0LdIirxBPjlKVCvKVHiAQBsHyUCUPXzzdydb6dOU4c2L9mdr4v6B8+GE1ikbzHedPoXY2sgDX6E7AVwqmPigm9hMHpz3Sie7WM7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727426541; c=relaxed/simple;
	bh=ny/myTaVbISE08gOHJ0mVH34LeYOvJ4iO8AMP/4kh+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pr2DnVzlk2OjASV4toGtXGVNT4z+LnHO69B3HiEUCa784PoSV1htDfIE6LnPfrrTUZQifeUVo+Ltw51n+TcHiJ/2cTvCinJmQaoqgWLBSQQ6wQzjqll7mfnhcNUdvTk2cJjtmAx3xU7uVGtHSdIgRQhpp8SG1Cz4D2zdpv7XTUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lTGZ72GE; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5389917ef34so2243267e87.2
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 01:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727426538; x=1728031338; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wORqZqv9cUGC80DSKYgE6tfqrN9lDUHFj2CIW1jLYmc=;
        b=lTGZ72GE9tPGyjZ5yBrFeRQx06IqwGUARU3zzXXK7mB2t/C25k0C3uq2mCRwkVNdcG
         S8e4xK+ab5SasZSPOEjDGwZEeDMtignSc4CYTu25M7CLm2eF3fSlEr1oQksqIi+MIZwX
         oviEydJadsxhGZ3cb8ET03iHd+TxRVzXY19X/qR5hBTnTKs/FMFVa2zw3k91YoMRf5cg
         pfKVbIftE/wb19w28Wg+6clUyCcO1sCr+JDi70FrnL81+3jsEaiMsS72+8tafoTvPKfu
         0Jfa/ZArPAfLq5hHxRHSE+RbhHATePoTugd4OGMSd3Ya9+MAtiYPLKiiKe9xX4oHde+H
         rPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727426538; x=1728031338;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wORqZqv9cUGC80DSKYgE6tfqrN9lDUHFj2CIW1jLYmc=;
        b=BItwh+M+FVCTmkmh8IpBtHgZOkQIwb2pnlhrpYrbQHMXCEaFkdOdHSiPWHvFwqlc2R
         KGqCvOkvz8A/6KMXh0ptFoERIv01zO2KUCuNbprSSx0U04QtmvqVfxRAkidO+yPm9kkL
         1n5pWjaW3quf+kSuiHvZe50lCVvJJoNEPePHTvblFAAPlqGEHfypfskVfbW3nNWvIHsc
         4GeA4C1X0fs9KpHE68jbKCsg5mcdRn5+TJlKLK989O1oWrAkshLAqRwGANY8GrUnOTJy
         c2xijSqIPj5iXaaNi3UYVALY0XrjZPx2/C9syUF1nBo+TPHHWSKxkJ7D57jaQUDbPJG2
         d1kA==
X-Forwarded-Encrypted: i=1; AJvYcCW4W4/LckIIZsRdqfWLyp3MB3/R3YvMjitZLdDCD0Hq31hZXnttgkG9Rfqhu63NpsAbhpihq2N7v5cS@vger.kernel.org
X-Gm-Message-State: AOJu0YwlSdBhAtRbQ39mDIGqYBvALvd0EegVvj0r4p5PCKm28Z2vn0Dn
	QbJR0efUXfUaKp8aY3rHlRum6Ew0F4UihLIb4soon66bmXDfxZYk0E8GB2N3fmc=
X-Google-Smtp-Source: AGHT+IGKld9rtmGQC3DBnDTbpXbiuKQNjTBpR+lYTXMLGlZV+jtXEFJDHRP8wtIhf6Y6NwwWQqYIMg==
X-Received: by 2002:a05:6512:3052:b0:52e:941d:7039 with SMTP id 2adb3069b0e04-5389fc70ef7mr1616146e87.59.1727426538329;
        Fri, 27 Sep 2024 01:42:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5389fd54752sm226998e87.19.2024.09.27.01.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 01:42:17 -0700 (PDT)
Date: Fri, 27 Sep 2024 11:42:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Mahadevan P <quic_mahap@quicinc.com>
Cc: robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, swboyd@chromium.org, 
	konrad.dybcio@linaro.org, danila@jiaxyga.com, bigfoot@classfun.cn, 
	neil.armstrong@linaro.org, mailingradian@gmail.com, quic_jesszhan@quicinc.com, 
	andersson@kernel.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_kalyant@quicinc.com, quic_jmadiset@quicinc.com, quic_vpolimer@quicinc.com
Subject: Re: [PATCH v2 3/5] drm/msm: mdss: Add SA8775P support
Message-ID: <lpxx7xa4j2ghsj4klcbmribpvl3dzksy6zblbdo4zt2huarzmv@zz4yomzsdwli>
References: <20240926110137.2200158-1-quic_mahap@quicinc.com>
 <20240926110137.2200158-4-quic_mahap@quicinc.com>
 <35e6yleiy6wkja3ojlfjddifxv7kr7x6tyn5pszas2chouuvql@trpeb7b4eop2>
 <2414cba4-53f2-4aec-b87b-9f8d92035bad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2414cba4-53f2-4aec-b87b-9f8d92035bad@quicinc.com>

On Fri, Sep 27, 2024 at 12:14:16PM GMT, Mahadevan P wrote:
> 
> On 9/26/2024 6:32 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 26, 2024 at 04:31:35PM GMT, Mahadevan wrote:
> > > Add Mobile Display Subsystem (MDSS) support for the SA8775P platform.
> > > 
> > > Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
> > > ---
> > > 
> > > [v2]
> > > - Update commit message. [Dmitry]
> > > - Reorder compatible string of MDSS based on alphabetical order. [Dmitry]
> > > - add reg_bus_bw in msm_mdss_data. [Dmitry]
> > > 
> > > ---
> > >   drivers/gpu/drm/msm/msm_mdss.c | 11 +++++++++++
> > >   1 file changed, 11 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> > > index faa88fd6eb4d..8f1d42a43bd0 100644
> > > --- a/drivers/gpu/drm/msm/msm_mdss.c
> > > +++ b/drivers/gpu/drm/msm/msm_mdss.c
> > > @@ -573,6 +573,16 @@ static const struct msm_mdss_data qcm2290_data = {
> > >   	.reg_bus_bw = 76800,
> > >   };
> > > +static const struct msm_mdss_data sa8775p_data = {
> > > +	.ubwc_enc_version = UBWC_4_0,
> > > +	.ubwc_dec_version = UBWC_4_0,
> > Just 4.0 or 4.3?
> 
> 
> UBWC version has to be 4.0 as per UBWC reference document of sa8775p.

Thanks for the confirmation.

-- 
With best wishes
Dmitry

