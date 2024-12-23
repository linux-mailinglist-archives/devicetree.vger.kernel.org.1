Return-Path: <devicetree+bounces-133524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9D09FAD93
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69BBF1884E78
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37131191F9E;
	Mon, 23 Dec 2024 11:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gaVkOzgN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3376318A6C5
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734952547; cv=none; b=roN2/hbDi72mJrYlXAsoNbwxkBAIfrAYvZ0ekeGE1E1cmJDnGg4JCK9ObXRvpu2tT0RDo9WIVitPYzWwdM1SllbVia1smGByFJ6Vy3/rLPeYl+5LdtAE8B8LKP8npMNPm61WJuj27HJEGjznbSaS7qW/UXC9+ArgOuyTT/ipjfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734952547; c=relaxed/simple;
	bh=idEEV1+MD0GqLsg8r4dUdSLvnO/fV2kMnl3JISpwPL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AOnUo1ndmFqnrlipUt+QuomkOnozfvFAMD0J2joFAEcgOFIw6c4iRD2H8ZrC7nX/cwsgQdfQo/gbcbThkXYNB/5lrkYNeqmzYw8jZ4JR2YrOLcg5ACOV6x4fsjmgwS7N4HHWlEDkjtsK7W8CGpwJhB+iUPGE5aytcvuC9oeSv10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gaVkOzgN; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3003c82c95cso33352471fa.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734952543; x=1735557343; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3mo6MP2QToWKxW6CHGPpfwk7yms3zeJ7L1O8Z7JM6ls=;
        b=gaVkOzgNQEgLIeBfFliXFK0P18Vhcd7thWWPbOpEAJw7bUz0vThzMro9mhwnYZ0Sre
         dlzJqDpsWA8OonFnmWnoWKM9CPac3PCPzNUXa5czzuQatptYk68ZFW8j70rvzQBYUO/i
         tDCNmh5BLkg8GFG5K6hPGdjgru8ETqp64aXjgN8hPitUGCRPhZjKCyYYZdK7bxlcrAmy
         90VOOdkTIfICDnxfZMAkKP1H2D6S/CUbtGLyeBdp8B40A/OT3w6uUURDlGO3eHY+PNQO
         NUxIrBvySVCvimsykOiJARdeU+l0br6ieB8+HWP5HFICMRcY2KHkU9SKfHSPDXbZOSR2
         sRqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734952543; x=1735557343;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3mo6MP2QToWKxW6CHGPpfwk7yms3zeJ7L1O8Z7JM6ls=;
        b=h2N3WvpW6x9T3qBRu3s6C4LAeKMpJFa9tVyNgFTvSEwkTZW5ToRXvlmbo/q6rlrg3o
         NAv2YFBbXu/gFgz6QJNF4iJuXOeyFJ2l7iS3WYxgcOmW0j07HtCGTW397bJ8inrjPqEi
         WQjCuxjRLZ4ZuSoi3sz27ahJ1lEqxh9oZvAtg08bXfelaxtxANeacjyRdqvxfLJlLKYh
         AL6/SQxqOBvDX8XEY5NksRQo5hISozORgRR6zL95zP5Pm8o7PhoGCPI+rV4hN3c5WL9t
         DD59rSONxbOSVapVEet4ZiaEIC0cbBqPTAdBoT5WveWlh026tsUayZDcAbP46yjMrXNK
         ZHyA==
X-Forwarded-Encrypted: i=1; AJvYcCXAXu7H/BEJeO+Q1DA3pqtCuczavafUClZMCrt2KxGi192GUjSanMGB52el/WsbU07QwOHUmyvwBHOO@vger.kernel.org
X-Gm-Message-State: AOJu0YwI9PPzQmp+zAdIuNfk2SCExhiU8KGJGpQMSbQDH2RCg7Kuj+S2
	NvHpnFIWvIzfF8rxsCKqEIDV74xRxqU1QhIJaLWhf3Bv+1LohhqVxkkAq9dNzEw=
X-Gm-Gg: ASbGncvw4iFry1lMwslJkk9+VvrxbV32li1p34POEb/vAPMwHLUOkOEwo2AjIkNhamL
	XJohR6K/RivaMCR5WPGL1MlrVl29tvA930c/I2u8fz10t+0/eDY7RFCmkhoHfv6EsGUvJY1hqNh
	0vLxWMIleWUj5IE8SHeOgtbboKSWvBtnTImFR+h+LsV5S9dsQJ8wVv8W/RzXrxSLJVvP4jABB4G
	tB+GOYKPMWoPkL3atfNqmSOMz4fkCmAnkSrm2bGqLFOePWuKHT0IVVyzhqEjlAXfe4B27KIMmlo
	y+Kpli7UqKxolgVUJtacq2DgNfT9+Y8+/XiF
X-Google-Smtp-Source: AGHT+IEgmX/5ATGHYxkBwsAFplT1zESRogm6vsP2Mbb2JNoPZ4jUEIIAF7+Dio6FJRuZVz2+3nzV0g==
X-Received: by 2002:a05:651c:b0a:b0:304:4cac:d8ef with SMTP id 38308e7fff4ca-304685487c2mr37661981fa.7.1734952543223;
        Mon, 23 Dec 2024 03:15:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b083e92sm12807641fa.116.2024.12.23.03.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 03:15:41 -0800 (PST)
Date: Mon, 23 Dec 2024 13:15:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, 
	u.kleine-koenig@baylibre.com, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v7 10/19] drm/imx: Add i.MX8qxp Display Controller pixel
 engine
Message-ID: <7k2jqpkpagm3x7shywgzvtst364f6dmmhuz2covpbvghoa5rzc@3dvlbdgtnjck>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
 <20241223064147.3961652-11-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241223064147.3961652-11-victor.liu@nxp.com>

On Mon, Dec 23, 2024 at 02:41:38PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller pixel engine consists of all processing
> units that operate in the AXI bus clock domain.  Add drivers for
> ConstFrame, ExtDst, FetchLayer, FetchWarp and LayerBlend units, as
> well as a pixel engine driver, so that two displays with primary
> planes can be supported.  The pixel engine driver and those unit
> drivers are components to be aggregated by a master registered in
> the upcoming DRM driver.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v7:
> * Add kernel doc for struct dc_drm_device. (Dmitry)
> * Fix regmap_config definitions by correcting name field, correcting read
>   ranges and setting max_register field.
> * Get instance numbers from device data(compatible strings) instead of OF
>   aliases.
> * Collect Maxime's R-b tag.
> * Trivial tweaks.
> 
> v6:
> * Fix build warning by expanding sizeof(fu->name) from 13 to 21.
>   (kernel test robot)
> 
> v5:
> * Replace .remove_new with .remove in dc-{cf,de,fl,fw,lb,pe}.c. (Uwe)
> * Fix commit message to state that pixel engine driver is a component driver
>   instead of a master/aggregate driver.
> 
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Inline some small functions. (Dmitry)
> * Move dc_lb_blendcontrol() function call from KMS routine to initialization
>   stage. (Dmitry)
> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_* data strutures.
> * Drop unnecessary private struct dc_*_priv.
> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
>   interfaces to bind/unbind the drivers.
> * Make some fetch unit operations be aware of fractional fetch unit index(0-7).
> 
> v3:
> * No change.
> 
> v2:
> * Use OF alias id to get instance id.

Carrying several comments from previous patch:
- shdld vs shdload
- use of indices in the compat strings
- bind() behaviour depending on the particular order of device bindings

> 
> +
> +void dc_fu_common_hw_init(struct dc_fu *fu)
> +{
> +	enum dc_fu_frac frac;
> +	int i;
> +
> +	dc_fu_baddr_autoupdate(fu, 0x0);
> +	dc_fu_enable_shden(fu);
> +	dc_fu_set_linemode(fu, LINEMODE_DISPLAY);
> +	dc_fu_set_numbuffers(fu, 16);
> +
> +	for (i = 0; i < ARRAY_SIZE(dc_fetchunit_all_fracs); i++) {

for (i = DC_FETCHUNIT_FRAC0 ; i < DC_FETCHUNIT_FRAC_NUM; i++) ?

> +		frac = dc_fetchunit_all_fracs[i];
> +
> +		dc_fu_layeroffset(fu, frac, 0, 0);
> +		dc_fu_clipoffset(fu, frac, 0, 0);
> +		dc_fu_clipdimensions(fu, frac, 1, 1);
> +		dc_fu_disable_src_buf(fu, frac);
> +		dc_fu_set_pixel_blend_mode(fu, frac);
> +	}
> +}
> +

[...]

> +enum dc_link_id dc_lb_get_link_id(struct dc_lb *lb)
> +{
> +	return lb->link;
> +}
> +
> +void dc_lb_pec_dynamic_prim_sel(struct dc_lb *lb, enum dc_link_id prim)
> +{
> +	int fixed_sels_num = ARRAY_SIZE(prim_sels) - 4;
> +	int i;
> +
> +	for (i = 0; i < fixed_sels_num + lb->id; i++) {

This function and the next one silently skip writing link ID if it is
incorrect. Can it actually become incorrect? If not, I'd say, it is
better to drop the loop and the array. If you are not sure, there should
be some kind of dev_warn() or drm_warn().

> +		if (prim_sels[i] == prim) {
> +			regmap_write_bits(lb->reg_pec, PIXENGCFG_DYNAMIC,
> +					  PIXENGCFG_DYNAMIC_PRIM_SEL_MASK,
> +					  PIXENGCFG_DYNAMIC_PRIM_SEL(prim));
> +			return;
> +		}
> +	}
> +}
> +
> +void dc_lb_pec_dynamic_sec_sel(struct dc_lb *lb, enum dc_link_id sec)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(sec_sels); i++) {
> +		if (sec_sels[i] == sec) {
> +			regmap_write_bits(lb->reg_pec, PIXENGCFG_DYNAMIC,
> +					  PIXENGCFG_DYNAMIC_SEC_SEL_MASK,
> +					  PIXENGCFG_DYNAMIC_SEC_SEL(sec));
> +			return;
> +		}
> +	}
> +}
> +

[...]

> +
> +static int dc_lb_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	struct dc_pe *pe = dc_drm->pe;
> +	void __iomem *base_pec;
> +	void __iomem *base_cfg;
> +	struct dc_lb *lb;
> +
> +	lb = devm_kzalloc(dev, sizeof(*lb), GFP_KERNEL);
> +	if (!lb)
> +		return -ENOMEM;
> +
> +	lb->id = (enum dc_lb_id)(uintptr_t)device_get_match_data(dev);
> +
> +	base_pec = devm_platform_ioremap_resource_byname(pdev, "pec");
> +	if (IS_ERR(base_pec))
> +		return PTR_ERR(base_pec);
> +
> +	base_cfg = devm_platform_ioremap_resource_byname(pdev, "cfg");
> +	if (IS_ERR(base_cfg))
> +		return PTR_ERR(base_cfg);
> +
> +	lb->reg_pec = devm_regmap_init_mmio(dev, base_pec,
> +					    &dc_lb_pec_regmap_config);
> +	if (IS_ERR(lb->reg_pec))
> +		return PTR_ERR(lb->reg_pec);
> +
> +	lb->reg_cfg = devm_regmap_init_mmio(dev, base_cfg,
> +					    &dc_lb_cfg_regmap_config);
> +	if (IS_ERR(lb->reg_cfg))
> +		return PTR_ERR(lb->reg_cfg);
> +
> +	lb->link = lb_links[lb->id];

lb->link = LINK_ID_LAYERBLEND0 + lb->id ?

> +
> +	pe->lb[lb->id] = lb;
> +
> +	return 0;
> +}
> +
> +static const struct component_ops dc_lb_ops = {
> +	.bind = dc_lb_bind,
> +};
> +

-- 
With best wishes
Dmitry

