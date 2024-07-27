Return-Path: <devicetree+bounces-88533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB3493E016
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 18:13:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4626A1C210D2
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 16:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73579185636;
	Sat, 27 Jul 2024 16:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XCv5SW0t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6E6D18562E
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 16:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722096824; cv=none; b=VuGwantWoQ8ulN2CjzC5QyiecAFLNblx9pA62mNBR+RjfErD2sR62Imbf86GfbdROclTrQvgNvcn3VyINc3iFtQLF9v/2z0LK5Vpz/NbsIHw4Y3mI7xBA0l/U9+amGm48lUfc36sIWoJQ9H4obksEY/N2pICJZtWQDp5Pxtsezw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722096824; c=relaxed/simple;
	bh=YEvZ8y2XBMsTfj4J2K4E5pRcf/SFM7Y6vwha/HOEo/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rqa4GP0kY6Jn1zY/r4oT5GyXgcCbGpNOGRNU7p/Lv3NC179HlaI1pSZoKFPFYAcvT0VwvLXH/B4FgRPvBt0yW+QjjUx1H+Q1mKh/uDr1nHtUNQzypEJcNDmeg2iqABEClRDrEphYcd0EB2PJaDceYnjYp2x0Poy3dsyb9844vqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XCv5SW0t; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2f03df8c8cdso21567741fa.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 09:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722096821; x=1722701621; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R65NOswuKmOlcg5v/47v/NC7ISjyuU0IR8ikjFCmA14=;
        b=XCv5SW0th2qmsdMGINKFArQ/67ET1AkvMF6aFTPxgt9I0bzjjFzKKVhuPgbiqwKNeU
         0EKJNCwfRtuNuulfJE0BSx9tSkwzguflpZNZwFR0Hr/oyc1A22FzZeD5FojrnwMuvrhH
         Rrmo6aU9fkbOwZBocjfWb4R5SCHpY7ePbcATJs912Pvvd/7/lvOmKu/RGSBLDYG7uLHh
         9N+nPAs06s4QkVD3V5g4/oP7oN3xtneCiPXhgvoDx6ELduEoP0ZALCyNOMyTArI8M7yd
         aw7ymmV4BFjiHrvgc+QLbMbT3iMzHbF0noEY0xxL8f9wN05kkzBa8gkH4fsRgDH03ozc
         jBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722096821; x=1722701621;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R65NOswuKmOlcg5v/47v/NC7ISjyuU0IR8ikjFCmA14=;
        b=SDmMe8pjBmRo1+/TThmng4gjAvo+kN3BVRj29CuLhfsIPvDhQvRgZ59cBTPyFQsGK2
         w551H/6JXzCyimUK2xGxT2ymNoJOe3ck6lenDlCZQjviu6E4xCoWQ42gggFXU4zRgtiz
         TC/Iv8ymuoqBOlUBWGTQeZH1iZSsUC7tfNn8+T9yy9u5Ncl6ont2FoINEo7Go5aHIbdu
         WshsDfgy85z4NMiyQAUvUlvsmvTzmwiIrHiZvHZKupjIb/TZK9DdyA9135+jITsL5Puw
         ROWS4jn5LTFk1quxd5NtVerwct4KX1Pl9w/MztSfHpoFIbtHqIYNpQUqgMe+PXR4eS8O
         ymKA==
X-Forwarded-Encrypted: i=1; AJvYcCWEXDbC1gjcM+0++yae/vvTe6dSGlEnSlZpfI3o5Tn2ArwIrqY4glVqJ1SL3DF1gtTXvytQgca/MdktEkpH4pilIia0xNsWIJkm9g==
X-Gm-Message-State: AOJu0Yzv6sdcpZGmIx+8Frr4JlavVot7tKAIfUmosm/5O+MCwub55Jp+
	NTfxnSN11q48WpyHyp8M53vmwXg7qqT2LS0LWjN0VnucPhYgd9tWmixEAq3a4Zw=
X-Google-Smtp-Source: AGHT+IFmhVyFWyXbEhPfCIHxIT/ADxUCtbXvdsR87jH1Y5GSmJB81c7AAgcrJPh51vmgGGoCWI49Lg==
X-Received: by 2002:a2e:9085:0:b0:2ef:2f8a:52d5 with SMTP id 38308e7fff4ca-2f12f0bb2b1mr6793381fa.8.1722096820422;
        Sat, 27 Jul 2024 09:13:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f12dda4129sm2714401fa.139.2024.07.27.09.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 09:13:40 -0700 (PDT)
Date: Sat, 27 Jul 2024 19:13:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, 
	frank.li@nxp.com
Subject: Re: [PATCH v2 07/16] drm/imx: Add i.MX8qxp Display Controller pixel
 engine
Message-ID: <ibdzow7lvbimaefrp2z2aolgp4pytpq3dcr2y3pegjavvknhgm@2e6j3f4zytqp>
References: <20240712093243.2108456-1-victor.liu@nxp.com>
 <20240712093243.2108456-8-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240712093243.2108456-8-victor.liu@nxp.com>

On Fri, Jul 12, 2024 at 05:32:34PM GMT, Liu Ying wrote:
> i.MX8qxp Display Controller pixel engine consists of all processing
> units that operate in the AXI bus clock domain.  Add drivers for
> ConstFrame, ExtDst, FetchLayer, FetchWarp and LayerBlend units, as
> well as a pixel engine driver, so that two displays with primary
> planes can be supported.  The pixel engine driver as a master binds
> those unit drivers as components.  While at it, the pixel engine
> driver is a component to be bound with the upcoming DRM driver.

Same question / comment: create subnodes directly, without going
through the subdevices. A lot of small functions that would benefit
being inlined.

> +static int dc_cf_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	struct dc_pe *pe = dc_drm->pe;
> +	struct dc_cf_priv *priv;
> +	int id;
> +
> +	priv = drmm_kzalloc(&dc_drm->base, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->reg_cfg = devm_platform_ioremap_resource_byname(pdev, "cfg");
> +	if (IS_ERR(priv->reg_cfg))
> +		return PTR_ERR(priv->reg_cfg);
> +
> +	id = of_alias_get_id(dev->of_node, "dc0-constframe");

Is it documented? Acked?

> +	if (id < 0) {
> +		dev_err(dev, "failed to get alias id: %d\n", id);
> +		return id;
> +	}
> +

-- 
With best wishes
Dmitry

