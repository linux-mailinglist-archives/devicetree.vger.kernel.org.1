Return-Path: <devicetree+bounces-126181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 695519E0B82
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 20:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44B1EB6090F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23CAE13A265;
	Mon,  2 Dec 2024 15:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F6vuUL/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA62132111
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733154500; cv=none; b=I1Xf/oyqEe92i+qBohkx32zstcv8JQ0xeu7aWtgvYyxfbAgJuvhDKqMZEIjIAeDOe/3YB+jd/MT1A1RqdwUHvMfJJH4NN2mu108d6iu4/HhshnNpxv++MBPG963s0++jjw0AGpEQRMLjRklKSKfBnf4ToJKf+pEMJ+OlpUmwRaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733154500; c=relaxed/simple;
	bh=uHjedfVRrZ+e3sFGTNQ46N0aIuL9DX4TX/57voliHDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LiVC7owfzu34VIvBdxRPFAKUDQqlqFXfguqJU+yiTn0V1Scpd0EnIU1/ci65UfSHyhWjABqyBShrugAU3spHo+AV7BoKawjL2/S7L1D2phYsYoiCR7Kz+NqhXg6npz4VJK6kgAq8SdF9OgnJXWhFIpDziknUdwk+TaiuAsXzkWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F6vuUL/d; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53df6322ea7so7457568e87.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733154496; x=1733759296; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xfHRG0ckbabpB5WkAOGLFC/tsNXMkX3A9rmcYDbuN4Y=;
        b=F6vuUL/dRzR82uF/XRVcmZTG8/Y4/wgxNwdZHxTWoxaPrEB/JZ5NMlnZqUdAjguM5F
         ohGJYa+nj0V6bBpWDRK8oCNmQvNxbMO0E83UPzy8W3jIm07MSd2Y2GHjjyGcrRSwmVLz
         d/GiO/N99sVuezwZ1NUljKwtaBCu+dB/SRoQyULOSEtSS4nh8JTtA6HLkZ4b6fjj3yJi
         P5qPiFNiHi22Jijmjhh7FKABnHUdk9AxF0+pSAJAbYJFv4HO3Q5/jcpssYErye59ipuK
         j5GWsnEJa9aqAy/r+N1BQ3y3Zakk2JqzN5NPScJyF/LPrwvoP1sFLYq16g9f1jIGMDFL
         xKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733154496; x=1733759296;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xfHRG0ckbabpB5WkAOGLFC/tsNXMkX3A9rmcYDbuN4Y=;
        b=n6ity9/J4PH8gKHjj2b1avvAZz9Ud0c3fbvE5lP+JUSPWlzXD9Lx4vnABkxliXu+/3
         h1n/VsngsAQcjn2F7tWSJDJSB4CJhgpJMYBqwh8u3N0dHX9FfO50+0RfFceA4v2d8637
         qQhbDdbNrCJDe9/Fdhunheb9FWNKv8r2nhNnLnoooydHyTslYuQQwTPVZR6rxAqSQrqC
         9KZLnfvYhu/hyJi4rMFjpBiqzuNjsb+SG25BtxCsSsTvHiRVlwINll/VQf+Q9+dMokGA
         snflGdTscAu8wv10V/xDvLylD3Dac1GovS/qXH4I2/hEwbXi1xwk7HpCI6LbiPnUMJtz
         1GtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVckH04li8d9NyhgKPeX1bbd2bhABd+SWJKF7DYJl2bZnY8a3ob5T4d1/YgB0tWV7X9YyG8Db1jQNrm@vger.kernel.org
X-Gm-Message-State: AOJu0YxGrpO540IuyVOKELl1KkNVtv0GiwKaaFqn5hBeZX7ypBXNmOAJ
	BiQ2iZtAfdPdAaGRmwmDRyOm82bUsHpZD5wPwKNt2DLDBvBR8izZLLxr3YCkGmM=
X-Gm-Gg: ASbGncthARs0lWjGtmht6gRYLecX6839bT/hKfnXiviCU340bD2h+fdqsiO0bJjQIdg
	U3lmYEyEGftc8F0MHwYb2nHpzTlJvpRsypvKG6T4LB1b7NmrWBrXTC6TD7BMxFjhh20TDm1EuBi
	Uth0rNeWFyTFlFMXukJVgCOa+9WzJ+c5V9l5SVGJoSyvM3lK2Cv1MJs8wOJlhH0oSctodzpuqwq
	EbZdAlAvz+wIWQfY8KmCUKOIF7KzGvbJX5v1iGsEdZJ216I8YNce1j1ome1x2X9bxcB1moiysbG
	rNpkuV9zZALiGGyGZ+vQW95GT0Ip2w==
X-Google-Smtp-Source: AGHT+IG0Q5k/W3ed0OQwMlkM6qlSogEM4cPmSjYiJhbwpudSDr/7EC5mlTOxyGWNLuXKmiBWsxS+wQ==
X-Received: by 2002:a05:6512:3b0d:b0:53d:ed95:9bfa with SMTP id 2adb3069b0e04-53df00a96d2mr17148818e87.7.1733154496365;
        Mon, 02 Dec 2024 07:48:16 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df649f638sm1511742e87.239.2024.12.02.07.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 07:48:15 -0800 (PST)
Date: Mon, 2 Dec 2024 17:48:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 3/8] phy: qcom: qmp-usbc: Add DP phy mode support on
 QCS615
Message-ID: <gnrdym5o345fsbtxmfis6ykep7mzvhkxxnizlj5xplrsaaijjq@5465y2oamqoh>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <b310587f-c6c3-41dd-83bf-6affbcc65730@kernel.org>
 <22600892-3b0d-4b0f-9c46-e74241960dda@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22600892-3b0d-4b0f-9c46-e74241960dda@quicinc.com>

On Mon, Dec 02, 2024 at 06:31:44PM +0800, Xiangxu Yin wrote:
> 
> 
> On 11/29/2024 4:18 PM, Krzysztof Kozlowski wrote:
> > On 29/11/2024 08:57, Xiangxu Yin wrote:
> >> +static int qmp_usbc_com_init(struct phy *phy)
> >>  {
> >>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
> >> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> >> -	void __iomem *pcs = qmp->pcs;
> >> +	int num_vregs;
> >>  	u32 val = 0;
> >>  	int ret;
> >> +	unsigned int reg_pwr_dn;
> >>  
> >> -	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> >> +	if (qmp->type == QMP_PHY_USBC_USB) {
> > 
> > 
> > Sorry, all this code is unreviewable. Organize your changes in logical,
> > reviewable chunks.
> > 
> Will create new patch list and seperate patchsets.

Please respond to the comment regarding the single PHY vs multiple PHYs
first.

> >> +		struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
> >> +
> >> +		num_vregs = cfg->num_vregs;
> >> +		reg_pwr_dn = cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL];
> >> +	} else {
> > 

-- 
With best wishes
Dmitry

