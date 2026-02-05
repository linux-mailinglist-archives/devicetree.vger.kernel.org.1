Return-Path: <devicetree+bounces-263017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKxbGKyZhGmh3gMAu9opvQ
	(envelope-from <devicetree+bounces-263017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:22:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD57F32D9
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EBD43009FB0
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD0963A0B0C;
	Thu,  5 Feb 2026 13:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRt/BFMm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A41178F39;
	Thu,  5 Feb 2026 13:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770297744; cv=none; b=R68G5NdKRPa7GNjYJOy+XmOHuo7L9dsjh+P5Q9mgENApWaZcN5sBO8SaCyqhB72+5Nc5GSsXoDwwYr2naXBVNfmKVba6Ws/6Zl+rijBky1tFsUZgzUnkYsfD/Vjx2SRbn5pr+QxbHijPAch1cepvswwG9LobqI+6mBw9mY6xskU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770297744; c=relaxed/simple;
	bh=TkfBnRNycUzOt57ZGltou8dZywkW6jXvCL0D1cY1hQk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LHujiAt/V55AUNNVXWYBzekmfu2IK5910wGr3dNozaV324ag5drQeO5+yy83sjkNu8954549/GzcTzNVc2Pr43L0fpu0Y0LTIdtbQGy3G7cDyvci1TM0sy2tgBpTLHf+YVfD34B3DVl8K4r86b5elfIOdeTPN6U7B9WXaMetPIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRt/BFMm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8500AC4CEF7;
	Thu,  5 Feb 2026 13:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770297744;
	bh=TkfBnRNycUzOt57ZGltou8dZywkW6jXvCL0D1cY1hQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sRt/BFMmWrKitSaNmQpRkeFL+wUlu0tz2R5EEbdfnxqfPxqObnM5CjORh/y3Pl1Yc
	 XgGI2FT5G8myHoMBFHQD2+SAPR4kEIABNiZaShlcIMcoXEgs8cyqfpNtzqrtK4sqfx
	 G4nadJP8LWubRDvacLfmFQYuTs/x1XJozZp5bRUEBzkb057RAo71EEtHU7uw99WOuX
	 VsdOlCtEBHgmUJfA7WKYre9QEwKqsJYhwI6mZxJ9QUnoqea6GRd9F17ATu+XpjuqdL
	 WlbtKvApqLx2dy5Ic3yIs4UxZrfrkOy6bdIQEPHEIWmNLnYgK14FxXLK2fMvlAw83n
	 K1z9AeIgYA7kg==
Date: Thu, 5 Feb 2026 14:22:21 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joey Lu <a0987203069@gmail.com>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ychuang3@nuvoton.com, schung@nuvoton.com, yclu4@nuvoton.com, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] drm/nuvoton: add MA35D1 display controller driver
Message-ID: <20260205-classic-innocent-angelfish-5c3cd2@quoll>
References: <20260129040532.382693-1-a0987203069@gmail.com>
 <20260129040532.382693-4-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260129040532.382693-4-a0987203069@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263017-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nuvoton.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: ECD57F32D9
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 12:05:32PM +0800, Joey Lu wrote:
> Add DRM driver support for the Display Control Unit (DCU)
> found in Nuvoton MA35D1 SoCs.
> 
> Signed-off-by: Joey Lu <a0987203069@gmail.com>
> ---
>  drivers/gpu/drm/Kconfig                  |   1 +
>  drivers/gpu/drm/Makefile                 |   1 +
>  drivers/gpu/drm/nuvoton/Kconfig          |  21 +
>  drivers/gpu/drm/nuvoton/Makefile         |   7 +
>  drivers/gpu/drm/nuvoton/ma35_crtc.c      | 372 ++++++++++++++
>  drivers/gpu/drm/nuvoton/ma35_crtc.h      |  67 +++
>  drivers/gpu/drm/nuvoton/ma35_drm.c       | 371 ++++++++++++++
>  drivers/gpu/drm/nuvoton/ma35_drm.h       |  48 ++
>  drivers/gpu/drm/nuvoton/ma35_interface.c | 193 ++++++++
>  drivers/gpu/drm/nuvoton/ma35_interface.h |  30 ++
>  drivers/gpu/drm/nuvoton/ma35_plane.c     | 603 +++++++++++++++++++++++
>  drivers/gpu/drm/nuvoton/ma35_plane.h     | 115 +++++
>  drivers/gpu/drm/nuvoton/ma35_regs.h      |  88 ++++

No maintainers? Why would we want to take unmaintained code?

> +static void ma35_mode_fini(struct ma35_drm *priv)
> +{
> +	struct drm_device *drm_dev = &priv->drm_dev;
> +
> +	drm_kms_helper_poll_fini(drm_dev);
> +}
> +
> +static int ma35_clocks_prepare(struct ma35_drm *priv)
> +{
> +	struct drm_device *drm_dev = &priv->drm_dev;
> +	struct device *dev = drm_dev->dev;
> +	int ret;
> +
> +	priv->dcuclk = devm_clk_get(dev, "dcu_gate");
> +	if (IS_ERR(priv->dcuclk)) {
> +		dev_err(dev, "Failed to get display core clock\n");

Don't spam logs on defers. Syntax is in entire probe path: return
dev_err_probe

> +		return PTR_ERR(priv->dcuclk);
> +	}
> +
> +	ret = clk_prepare_enable(priv->dcuclk);

Why this cannot be devm_clk_get_enabled?

> +	if (ret) {
> +		dev_err(dev, "Failed to enable display core clock\n");
> +		return ret;
> +	}
> +
> +	priv->dcupclk = devm_clk_get(dev, "dcup_div");
> +	if (IS_ERR(priv->dcupclk)) {
> +		dev_err(dev, "Failed to get display pixel clock\n");
> +		return PTR_ERR(priv->dcupclk);
> +	}
> +
> +	ret = clk_prepare_enable(priv->dcupclk);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable display pixel clock\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int ma35_clocks_unprepare(struct ma35_drm *priv)
> +{
> +	struct clk **clocks[] = {
> +		&priv->dcuclk,
> +		&priv->dcupclk,
> +	};
> +	unsigned int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(clocks); i++) {
> +		if (!*clocks[i])
> +			continue;
> +
> +		clk_disable_unprepare(*clocks[i]);
> +		*clocks[i] = NULL;

Huh, pretty complicated and pointless code. This should be devm and bulk
API...

> +	}
> +
> +	return 0;
> +}
> +
> +static int ma35_drm_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct ma35_drm *priv;
> +	struct drm_device *drm_dev;
> +	void __iomem *base;
> +	struct regmap *regmap = NULL;
> +	int irq;
> +	int ret;
> +
> +	ret = of_reserved_mem_device_init(dev);
> +	if (ret && ret != -ENODEV) {
> +		dev_err(dev, "Failed to get optional reserved memory: %d\n", ret);
> +		return ret;
> +	}
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base)) {
> +		dev_err(dev, "Failed to map I/O base\n");

Why aren't you using dev_err_probe?

> +		ret = PTR_ERR(base);
> +		goto error_reserved_mem;
> +	}
> +	regmap = devm_regmap_init_mmio(dev, base, &ma35_drm_regmap_config);
> +	if (IS_ERR(regmap)) {
> +		dev_err(dev, "Failed to create regmap for I/O\n");
> +		ret = PTR_ERR(regmap);
> +		goto error_reserved_mem;
> +	}
> +
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0) {
> +		ret = -ENODEV;
> +		goto error_reserved_mem;
> +	}
> +
> +	priv = devm_drm_dev_alloc(dev, &ma35_drm_driver,
> +				     struct ma35_drm, drm_dev);
> +	if (IS_ERR(priv)) {
> +		ret = PTR_ERR(priv);
> +		goto error_reserved_mem;
> +	}
> +
> +	platform_set_drvdata(pdev, priv);
> +	drm_dev = &priv->drm_dev;
> +	priv->regmap = regmap;
> +	INIT_LIST_HEAD(&priv->layers_list);
> +
> +	ret = ma35_clocks_prepare(priv);
> +	if (ret) {
> +		drm_err(drm_dev, "Failed to prepare clocks\n");

Why do you print error twice? Once in the function, second time here?

> +		goto error_reserved_mem;
> +	}
> +
> +	ret = devm_request_irq(dev, irq, ma35_drm_irq_handler, 0,
> +			       dev_name(dev), priv);
> +	if (ret) {
> +		drm_err(drm_dev, "Failed to request IRQ\n");
> +		goto error_clocks;
> +	}
> +
> +	/* modeset */
> +	ret = ma35_mode_init(priv);
> +	if (ret) {
> +		drm_err(drm_dev, "Failed to initialize KMS\n");
> +		goto error_clocks;
> +	}
> +
> +	/* plane */
> +	ret = ma35_plane_init(priv);
> +	if (ret) {
> +		drm_err(drm_dev, "Failed to initialize layers\n");
> +		goto error_clocks;
> +	}
> +
> +	/* crtc */
> +	ret = ma35_crtc_init(priv);
> +	if (ret) {
> +		drm_err(drm_dev, "Failed to initialize CRTC\n");
> +		goto error_clocks;
> +	}
> +
> +	/* interface */
> +	ret = ma35_interface_init(priv);
> +	if (ret) {
> +		if (ret != -EPROBE_DEFER)
> +			drm_err(drm_dev, "Failed to initialize interface\n");
> +
> +		goto error_clocks;
> +	}
> +
> +	drm_mode_config_reset(drm_dev);
> +
> +	ret = drm_dev_register(drm_dev, 0);
> +	if (ret) {
> +		drm_err(drm_dev, "Failed to register DRM device\n");
> +		goto error_mode;
> +	}
> +
> +	drm_client_setup(drm_dev, NULL);

Best regards,
Krzysztof


