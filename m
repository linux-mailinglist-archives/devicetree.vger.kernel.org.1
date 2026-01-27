Return-Path: <devicetree+bounces-259719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AECaKn4zeGlRowEAu9opvQ
	(envelope-from <devicetree+bounces-259719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 04:39:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B838FA8F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 04:39:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9DB1F3004F24
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FECC30BF64;
	Tue, 27 Jan 2026 03:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jq4HjAev"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345913093C4
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769485179; cv=none; b=XeQsmtXRG+Craw4ArbaoeKG2G8Uhuxg6WxmuSlEU80J2TNhhuKwJJoTjISoRN74k7w4s1ZFC4RMKbyC+skc+Uih65hYPTiJD+5tiPm2deFGkNAyne04tSRHsC16jUlinOL3i9JLDeKPh4+5eTGV4Hml2vqxw1X7TLbmdZz0tsPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769485179; c=relaxed/simple;
	bh=f/l07Q7dbLox7GOiq9q5OnxBg2fn7O4WuFfKXnrq5HA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c7ZPxtU1Hq//e3ZTlok/aqSZSDzcxDHzQN3ovGA0IECHLNBcMLs/Ycy1j0NjuTC2Z+ZZeZnbC/I2tWje55gTBvjhnzpMNa41h6bq60Y32IQ5LzKPBxVV2x4BM3mUYp05CZ/A7s6GKnVQMVgWertstoL8PzyEy7hX/v5R2viWZWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jq4HjAev; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c05d66dbab2so3499572a12.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769485176; x=1770089976; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S+wJDvvkLgH2UDTYsi9MlTpptgvACrcwt0Fqg9GukiA=;
        b=jq4HjAevoWFolrra/kwsPod2NOVMb/BAziTuSR5Q8xNiLbj7V0HoeVfW4qaJIsosQR
         jip1eTQMVbkTPVgosOllFyvca3KjLiucwvGctCrkfRIxYBBUa+XadHx0ZYQup9xSQLpH
         8ODO4/yull6N6fsdDAZiCL0Nu62XdseOiZUgltbe6q1ltFAPN20Vd+USEHCAi4xrwueJ
         mhg9FzInvy6joXfQ5/zVG1198hQ/zjXrbWmuYHVlbpav7weLEMNd8i5u+By05fvDa4ZQ
         ZObDcuAN/isxdhZPXK8MDQf2LYwRFjKfMQ+Yv/t8BH48Wruv/6A0Z+yDbat0E7s/UCdX
         7AFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769485176; x=1770089976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S+wJDvvkLgH2UDTYsi9MlTpptgvACrcwt0Fqg9GukiA=;
        b=wKMSu9p5H1BWB84O736Bw5CjQqoDF0mJyqBIO1O+LbLbm9OqCmbwSFfXhKqdgHJ3ds
         3m7MK87JkjDIrWXF2ItIQGC9nTwixCEVLJBhXDaYqHqzSggKvj21XRwxIOjqx0d/F0Hq
         SgRWS5JjMHPAvGONzILM2zOlFjOwWnww84SlXPTHGqXsVxHWumUgYz3sxIeY8xqloFM9
         4WzDmFHp4Dj3Dgmq1QcW9rhUrGbkcszocMkGblbTLVuoYfmvJumiF4o5Q5VGXajjlN1x
         KxWaHVSxRiHtSRP5bNazs/WK4Sz1kQ2tLdOZtD4SvdCtdUH4x2uRnZsYbyV2eIw8AYoE
         /ZIA==
X-Forwarded-Encrypted: i=1; AJvYcCXaZ65E+TA+xY5CBFK8fKLg0nw9fOv5LU6tGomTPkGRZfW04fsrkUSN5S8CamO+AWvkT+jKyuSrKSi7@vger.kernel.org
X-Gm-Message-State: AOJu0YzAXb2vqMd4ooOWick2JT6/OK8vr/Rx/bGr6AjbBlvkGU6osBc/
	hR/xF13ZUksqRfAVyMgT8C0+8FdvaL8GJm++cXgT4QVOuwCVugwuiXBc
X-Gm-Gg: AZuq6aJ+0XMFgaEG3ZEHUcuRzOYkGCGhc68l7v0n3tYZrMdxof2EGdYtM22vYmAnueN
	xB7U1zhrevDLV5UQ6c9SdTPy2Oh+qOdX3UrIsXZWr5OrhgjnXHAa089CNNjOwB0MrMK+Wp9e0gZ
	F/icG4goz58UxCQkVQjpiRXdacHPjJyu4sCv+LbYbdMQu5S1qLZQxMAV97m5V6B7UNmpALMrGk9
	QjVpdnyhLfs2CapfvBYyt8DJgdqeu7gh/uXb8zlKCBKNzCJ62tR7I1iaXdYPo/zWdvYqrO/79nH
	x39Gpvuio4DriRFKfrVfkO7dRae8+Dz/c7bY+WXHBJBaNTuAcz2SySYpznPbZ2OjEMCSfDGLxxc
	ETrB1Y6DhR6SUJyCmQcx94h7lFUk5VbznZhwcHMpc9+W28tgljITY1rJTLm90Z81Jz0YiP5huUC
	LA3THPIkBemktWkJqQQEJRe1VUTE3X2ZOd6XM6JDP1CUzeE57mzzpGBBOUtCr7jweJ
X-Received: by 2002:a17:902:db02:b0:29e:e925:1abb with SMTP id d9443c01a7336-2a870dc06ddmr4403575ad.27.1769485176393;
        Mon, 26 Jan 2026 19:39:36 -0800 (PST)
Received: from [192.168.0.102] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802daa62fsm102726925ad.18.2026.01.26.19.39.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 19:39:35 -0800 (PST)
Message-ID: <debbde23-d040-46de-9ecc-45e17f537b19@gmail.com>
Date: Tue, 27 Jan 2026 11:39:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/nuvoton: add MA35D1 display controller driver
To: Maxime Ripard <mripard@kernel.org>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, ychuang3@nuvoton.com, schung@nuvoton.com,
 yclu4@nuvoton.com, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260126085727.2568958-1-a0987203069@gmail.com>
 <20260126085727.2568958-4-a0987203069@gmail.com>
 <20260126-caracara-of-sudden-unity-b4dcd7@houat>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260126-caracara-of-sudden-unity-b4dcd7@houat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259719-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,suse.de,kernel.org,nuvoton.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 45B838FA8F
X-Rspamd-Action: no action


On 1/26/2026 8:50 PM, Maxime Ripard wrote:
> On Mon, Jan 26, 2026 at 04:57:27PM +0800, Joey Lu wrote:
>> +static int ma35_crtc_atomic_set_property(struct drm_crtc *drm_crtc,
>> +					 struct drm_crtc_state *state,
>> +					 struct drm_property *property,
>> +					 uint64_t value)
>> +{
>> +	struct ma35_crtc *crtc = ma35_crtc(drm_crtc);
>> +
>> +	if (property == crtc->dpi_format_prop)
>> +		crtc->dpi_format = value;
>> +	else if (property == crtc->dither_enable_prop)
>> +		crtc->dither_enable = value;
>> +	else if (property == crtc->dither_depth_prop)
>> +		crtc->dither_depth = value;
>> +	else
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
>> +
>> +static int ma35_crtc_atomic_get_property(struct drm_crtc *drm_crtc,
>> +					 const struct drm_crtc_state *state,
>> +					 struct drm_property *property,
>> +					 uint64_t *value)
>> +{
>> +	struct ma35_crtc *crtc = ma35_crtc(drm_crtc);
>> +
>> +	if (property == crtc->dpi_format_prop)
>> +		*value = crtc->dpi_format;
>> +	else if (property == crtc->dither_enable_prop)
>> +		*value = crtc->dither_enable;
>> +	else if (property == crtc->dither_depth_prop)
>> +		*value = crtc->dither_depth;
>> +	else
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
> You shouldn't have any driver specific properties.
>
> The bar to add new ones is pretty high too (see
> https://www.kernel.org/doc/html/latest/gpu/drm-kms.html#requirements and
> https://www.kernel.org/doc/html/latest/gpu/drm-uapi.html#open-source-userspace-requirements)
>
> So I'd suggest you to drop them for now.
Got it. I'll drop them and rely on internal defaults.
>> +int ma35_crtc_init(struct ma35_drm *priv)
>> +{
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +	struct device *dev = drm_dev->dev;
>> +	struct ma35_crtc *crtc;
>> +	struct ma35_layer *layer_primary, *layer_cursor;
>> +	struct drm_plane *cursor_plane = NULL;
>> +	int ret;
>> +
>> +	crtc = devm_kzalloc(dev, sizeof(*crtc), GFP_KERNEL);
>> +	if (!crtc)
>> +		return -ENOMEM;
> Allocating a crtc with a devm helper isn't memory safe. You must use a
> drmm helper.
I'll fix it.
>> +static int ma35_drm_probe(struct platform_device *pdev)
>> +{
>> +	struct device_node *of_node = pdev->dev.of_node;
>> +	struct device *dev = &pdev->dev;
>> +	struct device_node *mem_node;
>> +	struct resource res;
>> +	struct ma35_drm *priv;
>> +	struct drm_device *drm_dev;
>> +	void __iomem *base;
>> +	struct regmap *regmap = NULL;
>> +	int irq;
>> +	int ret;
>> +
>> +	/* Check for reserved memory. Fallback to dynamic allocation if undefined */
>> +	mem_node = of_parse_phandle(of_node, "memory-region", 0);
>> +	if (mem_node) {
>> +		ret = of_address_to_resource(mem_node, 0, &res);
>> +		if (ret) {
>> +			dev_err(dev, "Failed to parse reserved memory resource: %d\n", ret);
>> +			of_node_put(mem_node);
>> +			return ret;
>> +		}
>> +		of_node_put(mem_node);
>> +		dev_info(dev, "registering reserved memory %pR\n", &res);
>> +
>> +		ret = of_reserved_mem_device_init(dev);
>> +		if (ret && ret != -ENODEV) {
>> +			dev_err(dev, "Failed to init memory region\n");
>> +			goto error_early;
>> +		}
>> +	}
> That part doesn't make much sense to me. Can you explain / add a comment
> on why simply calling of_reserved_mem_device_init doesn't work?
You're right. I'll simplify the code to rely solely on that helper and 
remove the misleading comment.
>> +	base = devm_platform_ioremap_resource(pdev, 0);
>> +	if (IS_ERR(base)) {
>> +		dev_err(dev, "Failed to map I/O base\n");
>> +		ret = PTR_ERR(base);
>> +		goto error_reserved_mem;
>> +	}
>> +	regmap = devm_regmap_init_mmio(dev, base, &ma35_drm_regmap_config);
>> +	if (IS_ERR(regmap)) {
>> +		dev_err(dev, "Failed to create regmap for I/O\n");
>> +		ret = PTR_ERR(regmap);
>> +		goto error_reserved_mem;
>> +	}
>> +
>> +	irq = platform_get_irq(pdev, 0);
>> +	if (irq < 0) {
>> +		ret = -ENODEV;
>> +		goto error_reserved_mem;
>> +	}
>> +
>> +	priv = devm_drm_dev_alloc(dev, &ma35_drm_driver,
>> +				     struct ma35_drm, drm_dev);
>> +	if (IS_ERR(priv)) {
>> +		ret = PTR_ERR(priv);
>> +		goto error_reserved_mem;
>> +	}
>> +
>> +	platform_set_drvdata(pdev, priv);
>> +	drm_dev = &priv->drm_dev;
>> +	priv->regmap = regmap;
>> +	INIT_LIST_HEAD(&priv->layers_list);
>> +
>> +	ret = ma35_clocks_prepare(priv);
>> +	if (ret) {
>> +		drm_err(drm_dev, "Failed to prepare clocks\n");
>> +		goto error_reserved_mem;
>> +	}
>> +
>> +	ret = devm_request_irq(dev, irq, ma35_drm_irq_handler, 0,
>> +			       dev_name(dev), priv);
>> +	if (ret) {
>> +		drm_err(drm_dev, "Failed to request IRQ\n");
>> +		goto error_clocks;
>> +	}
>> +
>> +	/* modeset */
>> +	ret = ma35_mode_init(priv);
>> +	if (ret) {
>> +		drm_err(drm_dev, "Failed to initialize KMS\n");
>> +		goto error_clocks;
>> +	}
>> +
>> +	/* plane */
>> +	ret = ma35_plane_init(priv);
>> +	if (ret) {
>> +		drm_err(drm_dev, "Failed to initialize layers\n");
>> +		goto error_clocks;
>> +	}
>> +
>> +	/* crtc */
>> +	ret = ma35_crtc_init(priv);
>> +	if (ret) {
>> +		drm_err(drm_dev, "Failed to initialize CRTC\n");
>> +		goto error_clocks;
>> +	}
>> +
>> +	/* interface */
>> +	ret = ma35_interface_init(priv);
>> +	if (ret) {
>> +		if (ret != -EPROBE_DEFER)
>> +			drm_err(drm_dev, "Failed to initialize interface\n");
>> +
>> +		goto error_clocks;
>> +	}
>> +
>> +	drm_mode_config_reset(drm_dev);
>> +
>> +	ret = drm_dev_register(drm_dev, 0);
>> +	if (ret) {
>> +		drm_err(drm_dev, "Failed to register DRM device\n");
>> +		goto error_mode;
>> +	}
>> +
>> +	drm_client_setup(drm_dev, NULL);
>> +
>> +	return 0;
>> +
>> +error_mode:
>> +	ma35_mode_fini(priv);
>> +
>> +error_clocks:
>> +	ma35_clocks_unprepare(priv);
>> +
>> +error_reserved_mem:
>> +	of_reserved_mem_device_release(dev);
>> +
>> +error_early:
>> +	return ret;
>> +}
>> +
>> +static void ma35_drm_remove(struct platform_device *pdev)
>> +{
>> +	struct ma35_drm *priv = platform_get_drvdata(pdev);
>> +	struct device *dev = &pdev->dev;
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +
>> +	drm_dev_unregister(drm_dev);
>> +	drm_atomic_helper_shutdown(drm_dev);
>> +
>> +	ma35_mode_fini(priv);
>> +
>> +	ma35_clocks_unprepare(priv);
>> +
>> +	of_reserved_mem_device_release(dev);
>> +}
>> +
>> +static void ma35_drm_shutdown(struct platform_device *pdev)
>> +{
>> +	struct ma35_drm *priv = platform_get_drvdata(pdev);
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +
>> +	drm_atomic_helper_shutdown(drm_dev);
>> +}
>> +
>> +static __maybe_unused int ma35_drm_suspend(struct device *dev)
>> +{
>> +	struct ma35_drm *priv = dev_get_drvdata(dev);
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +
>> +	return drm_mode_config_helper_suspend(drm_dev);
>> +}
>> +
>> +static __maybe_unused int ma35_drm_resume(struct device *dev)
>> +{
>> +	struct ma35_drm *priv = dev_get_drvdata(dev);
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +
>> +	return drm_mode_config_helper_resume(drm_dev);
>> +}
>> +
>> +static const struct of_device_id ma35_drm_of_table[] = {
>> +	{ .compatible = "nuvoton,ma35d1-dcu" },
>> +	{},
>> +};
>> +MODULE_DEVICE_TABLE(of, ma35_drm_of_table);
>> +
>> +static const struct dev_pm_ops ma35_pm_ops = {
>> +	SET_SYSTEM_SLEEP_PM_OPS(ma35_drm_suspend, ma35_drm_resume)
>> +};
>> +
>> +static struct platform_driver ma35_drm_platform_driver = {
>> +	.probe		= ma35_drm_probe,
>> +	.remove		= ma35_drm_remove,
>> +	.shutdown	= ma35_drm_shutdown,
>> +	.driver		= {
>> +		.name		= "ma35-drm",
>> +		.of_match_table	= ma35_drm_of_table,
>> +		.pm = &ma35_pm_ops,
>> +	},
>> +};
>> +
>> +module_platform_driver(ma35_drm_platform_driver);
>> +
>> +MODULE_AUTHOR("Joey Lu <a0987203069@gmail.com>");
>> +MODULE_DESCRIPTION("Nuvoton MA35 series DRM driver");
>> +MODULE_LICENSE("GPL");
>> diff --git a/drivers/gpu/drm/nuvoton/ma35_drm.h b/drivers/gpu/drm/nuvoton/ma35_drm.h
>> new file mode 100644
>> index 000000000000..68da6b11a323
>> --- /dev/null
>> +++ b/drivers/gpu/drm/nuvoton/ma35_drm.h
>> @@ -0,0 +1,48 @@
>> +/* SPDX-License-Identifier: GPL-2.0+ */
>> +/*
>> + * Nuvoton DRM driver
>> + *
>> + * Copyright (C) 2026 Nuvoton Technology Corp.
>> + *
>> + * Author: Joey Lu <a0987203069@gmail.com>
>> + */
>> +
>> +#ifndef _MA35_DRM_H_
>> +#define _MA35_DRM_H_
>> +
>> +#include <linux/regmap.h>
>> +#include <linux/types.h>
>> +#include <drm/drm_device.h>
>> +
>> +#include "ma35_regs.h"
>> +#include "ma35_plane.h"
>> +#include "ma35_crtc.h"
>> +#include "ma35_interface.h"
>> +
>> +#define DRIVER_MAJOR	1
>> +#define DRIVER_MINOR	0
>> +
>> +#define MA35_INT_STATE_DISP0	BIT(0)
>> +
>> +#define MA35_DISPLAY_ALIGN_PIXELS	32
>> +#define MA35_DISPLAY_PREFER_DEPTH	32
>> +
>> +#define MA35_CURSOR_WIDTH	32
>> +#define MA35_CURSOR_HEIGHT	32
>> +
>> +#define MA35_DISPLAY_MAX_ZPOS	3
>> +
>> +#define ma35_drm(d) \
>> +	container_of(d, struct ma35_drm, drm_dev)
>> +
>> +struct ma35_drm {
>> +	struct drm_device drm_dev;
>> +	struct regmap *regmap;
>> +	struct list_head layers_list;
>> +	struct ma35_crtc *crtc;
>> +	struct ma35_interface *interface;
>> +	struct clk *dcuclk;
>> +	struct clk *dcupclk;
>> +};
>> +
>> +#endif
>> diff --git a/drivers/gpu/drm/nuvoton/ma35_interface.c b/drivers/gpu/drm/nuvoton/ma35_interface.c
>> new file mode 100644
>> index 000000000000..48d1535ace2f
>> --- /dev/null
>> +++ b/drivers/gpu/drm/nuvoton/ma35_interface.c
>> @@ -0,0 +1,192 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Nuvoton DRM driver
>> + *
>> + * Copyright (C) 2026 Nuvoton Technology Corp.
>> + *
>> + * Author: Joey Lu <a0987203069@gmail.com>
>> + */
>> +
>> +#include <linux/types.h>
>> +#include <linux/clk.h>
>> +
>> +#include <drm/drm_atomic_helper.h>
>> +#include <drm/drm_bridge.h>
>> +#include <drm/drm_connector.h>
>> +#include <drm/drm_drv.h>
>> +#include <drm/drm_edid.h>
>> +#include <drm/drm_encoder.h>
>> +#include <drm/drm_gem_dma_helper.h>
>> +#include <drm/drm_modeset_helper_vtables.h>
>> +#include <drm/drm_of.h>
>> +#include <drm/drm_panel.h>
>> +#include <drm/drm_print.h>
>> +#include <drm/drm_probe_helper.h>
>> +#include <drm/drm_simple_kms_helper.h>
>> +
>> +#include "ma35_drm.h"
>> +
>> +#define ma35_encoder(e) \
>> +	container_of(e, struct ma35_interface, drm_encoder)
>> +#define ma35_connector(c) \
>> +	container_of(c, struct ma35_interface, drm_connector)
>> +
>> +static void ma35_encoder_mode_set(struct drm_encoder *encoder,
>> +	struct drm_crtc_state *crtc_state,
>> +	struct drm_connector_state *conn_state)
>> +{
>> +	struct drm_device *drm_dev = encoder->dev;
>> +	struct ma35_drm *priv = ma35_drm(drm_dev);
>> +	struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
>> +	int result;
>> +
>> +	clk_set_rate(priv->dcupclk, adjusted_mode->clock * 1000);
>> +	result = DIV_ROUND_UP(clk_get_rate(priv->dcupclk), 1000);
>> +	drm_dbg(drm_dev, "Pixel clock: %d kHz; request : %d kHz\n", result, adjusted_mode->clock);
>> +}
>> +
>> +static int ma35_encoder_atomic_check(struct drm_encoder *encoder,
>> +					struct drm_crtc_state *crtc_state,
>> +					struct drm_connector_state *conn_state)
>> +{
>> +	struct ma35_interface *interface = ma35_encoder(encoder);
>> +	struct drm_display_info *display_info = &conn_state->connector->display_info;
>> +
>> +	interface->bus_flags = display_info->bus_flags;
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct drm_encoder_helper_funcs ma35_encoder_helper_funcs = {
>> +	.atomic_mode_set	= ma35_encoder_mode_set,
>> +	.atomic_check		= ma35_encoder_atomic_check,
>> +};
>> +
>> +static const struct drm_connector_funcs ma35_connector_funcs = {
>> +	.reset			= drm_atomic_helper_connector_reset,
>> +	.fill_modes		= drm_helper_probe_single_connector_modes,
>> +	.destroy		= drm_connector_cleanup,
>> +	.atomic_duplicate_state	= drm_atomic_helper_connector_duplicate_state,
>> +	.atomic_destroy_state	= drm_atomic_helper_connector_destroy_state,
>> +};
>> +
>> +static int ma35_connector_get_modes(struct drm_connector *drm_connector)
>> +{
>> +	struct ma35_drm *priv = ma35_drm(drm_connector->dev);
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +	struct drm_mode_config *mode_config = &drm_dev->mode_config;
>> +	struct ma35_interface *interface = ma35_connector(drm_connector);
>> +	int count;
>> +
>> +	if (!interface->drm_panel) {
>> +		/* Use the default modes */
>> +		count = drm_add_modes_noedid(drm_connector,
>> +				mode_config->max_width, mode_config->max_height);
>> +		drm_set_preferred_mode(drm_connector,
>> +				mode_config->max_width, mode_config->max_height);
>> +
>> +		return count;
>> +	} else {
>> +		return drm_panel_get_modes(interface->drm_panel, drm_connector);
>> +	}
>> +}
>> +
>> +static const struct drm_connector_helper_funcs ma35_connector_helper_funcs = {
>> +	.get_modes		= ma35_connector_get_modes,
>> +};
>> +
>> +static void ma35_encoder_attach_crtc(struct ma35_drm *priv)
>> +{
>> +	uint32_t possible_crtcs = drm_crtc_mask(&priv->crtc->drm_crtc);
>> +
>> +	priv->interface->drm_encoder.possible_crtcs = possible_crtcs;
>> +}
>> +
>> +static int ma35_bridge_try_attach(struct ma35_drm *priv, struct ma35_interface *interface)
>> +{
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +	struct device *dev = drm_dev->dev;
>> +	struct device_node *of_node = dev->of_node;
>> +	struct drm_bridge *bridge;
>> +	struct drm_panel *panel;
>> +	int ret;
>> +
>> +	ret = drm_of_find_panel_or_bridge(of_node, 0, 0, &panel, &bridge);
>> +
>> +	if (ret) {
>> +		drm_info(drm_dev, "No panel or bridge found\n");
>> +		return ret;
>> +	}
>> +
>> +	if (panel) {
>> +		bridge = drm_panel_bridge_add_typed(panel, DRM_MODE_CONNECTOR_DPI);
>> +		if (IS_ERR(bridge))
>> +			return PTR_ERR(bridge);
>> +	}
>> +
>> +	interface->drm_panel = panel;
>> +	interface->drm_bridge = bridge;
>> +
>> +	ret = drm_bridge_attach(&interface->drm_encoder, bridge,
>> +				NULL, 0);
>> +	if (ret) {
>> +		drm_err(drm_dev, "Failed to attach bridge to encoder\n");
>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +int ma35_interface_init(struct ma35_drm *priv)
>> +{
>> +	struct ma35_interface *interface;
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +	struct drm_encoder *drm_encoder;
>> +	int ret;
>> +
>> +	/* encoder */
>> +	interface = drmm_simple_encoder_alloc(drm_dev,
>> +					struct ma35_interface, drm_encoder, DRM_MODE_ENCODER_DPI);
>> +	if (!interface) {
>> +		drm_err(drm_dev, "Failed to initialize encoder\n");
>> +		goto error_early;
>> +	}
>> +	priv->interface = interface;
>> +	drm_encoder = &interface->drm_encoder;
>> +	drm_encoder_helper_add(drm_encoder,
>> +			       &ma35_encoder_helper_funcs);
>> +
>> +	/* attach encoder to crtc */
>> +	ma35_encoder_attach_crtc(priv);
>> +
>> +	/* attach bridge to encoder if found one in device tree */
>> +	ret = ma35_bridge_try_attach(priv, interface);
>> +	if (!ret)
>> +		return 0;
>> +
>> +	/* fallback to raw dpi connector */
>> +	ret = drm_connector_init(drm_dev, &interface->drm_connector,
>> +					&ma35_connector_funcs,
>> +					DRM_MODE_CONNECTOR_DPI);
> drmm_connector_init
I'll fix it.
>> +static int ma35_plane_atomic_check(struct drm_plane *drm_plane,
>> +				      struct drm_atomic_state *state)
>> +{
>> +	struct drm_device *drm_dev = drm_plane->dev;
>> +	struct ma35_layer *layer = ma35_layer(drm_plane);
>> +	struct drm_plane_state *new_state =
>> +		drm_atomic_get_new_plane_state(state, drm_plane);
>> +	struct drm_crtc *crtc = new_state->crtc;
>> +	struct drm_framebuffer *fb = new_state->fb;
>> +	struct drm_crtc_state *crtc_state;
>> +	bool can_position;
>> +	u32 format;
>> +
>> +	if (!crtc)
>> +		return 0;
>> +
>> +	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
>> +	if (WARN_ON(!crtc_state))
>> +		return -EINVAL;
> You don't necessarily have a crtc state in drm_atomic_state. You should
> use drm_atomic_get_crtc_state.
I'll fix it.
>> +static int ma35_cursor_plane_atomic_check(struct drm_plane *drm_plane,
>> +				      struct drm_atomic_state *state)
>> +{
>> +	struct drm_device *drm_dev = drm_plane->dev;
>> +	struct drm_plane_state *new_state =
>> +		drm_atomic_get_new_plane_state(state, drm_plane);
>> +	struct drm_framebuffer *fb = new_state->fb;
>> +	struct drm_crtc *crtc = new_state->crtc;
>> +	struct drm_crtc_state *crtc_state;
>> +
>> +	if (!fb)
>> +		return 0;
>> +
>> +	if (!crtc)
>> +		return -EINVAL;
>> +
>> +	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
>> +	if (WARN_ON(!crtc_state))
>> +		return -EINVAL;
> Ditto
>
I'll fix it.
>> +static int ma35_plane_set_property(struct drm_plane *drm_plane,
>> +	struct drm_plane_state *state, struct drm_property *property,
>> +	uint64_t val)
>> +{
>> +	struct ma35_layer *layer = ma35_layer(drm_plane);
>> +
>> +	if (property == layer->blend_mode_prop)
>> +		layer->config.blend_mode = val;
>> +	else if (property == layer->src_alpha_mode_prop)
>> +		layer->config.alpha_mode[0] = val;
>> +	else if (property == layer->dst_alpha_mode_prop)
>> +		layer->config.alpha_mode[1] = val;
>> +	else if (property == layer->src_color_prop)
>> +		layer->config.src_color = val;
>> +	else if (property == layer->dst_color_prop)
>> +		layer->config.dst_color = val;
>> +	else if (property == layer->swizzle_prop)
>> +		layer->config.swizzle = val;
>> +	else if (property == layer->colorkeylo_prop)
>> +		layer->config.colorkeylo = val;
>> +	else if (property == layer->colorkeyup_prop)
>> +		layer->config.colorkeyup = val;
>> +	else if (property == layer->background_prop)
>> +		layer->config.background = val;
>> +	else if (property == layer->foreground_prop)
>> +		layer->config.foreground = val;
>> +	else if (property == drm_plane->hotspot_x_property)
>> +		state->hotspot_x = val;
>> +	else if (property == drm_plane->hotspot_y_property)
>> +		state->hotspot_y = val;
>> +	else
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
>> +
>> +static int ma35_plane_get_property(struct drm_plane *drm_plane,
>> +	const struct drm_plane_state *state, struct drm_property *property,
>> +	uint64_t *val)
>> +{
>> +	struct ma35_layer *layer = ma35_layer(drm_plane);
>> +
>> +	if (property == layer->blend_mode_prop)
>> +		*val = layer->config.blend_mode;
>> +	else if (property == layer->src_alpha_mode_prop)
>> +		*val = layer->config.alpha_mode[0];
>> +	else if (property == layer->dst_alpha_mode_prop)
>> +		*val = layer->config.alpha_mode[1];
>> +	else if (property == layer->src_color_prop)
>> +		*val = layer->config.src_color;
>> +	else if (property == layer->dst_color_prop)
>> +		*val = layer->config.dst_color;
>> +	else if (property == layer->swizzle_prop)
>> +		*val = layer->config.swizzle;
>> +	else if (property == layer->colorkeylo_prop)
>> +		*val = layer->config.colorkeylo;
>> +	else if (property == layer->colorkeyup_prop)
>> +		*val = layer->config.colorkeyup;
>> +	else if (property == layer->background_prop)
>> +		*val = layer->config.background;
>> +	else if (property == layer->foreground_prop)
>> +		*val = layer->config.foreground;
>> +	else if (property == drm_plane->hotspot_x_property)
>> +		*val = state->hotspot_x;
>> +	else if (property == drm_plane->hotspot_y_property)
>> +		*val = state->hotspot_y;
>> +	else
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
> Same comment for the properties than for the CRTC.
I'll drop them and rely on internal defaults.
>> +static int ma35_layer_create(struct ma35_drm *priv,
>> +			      struct device_node *of_node, u32 index,
>> +			      enum drm_plane_type type)
>> +{
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +	struct device *dev = drm_dev->dev;
>> +	struct ma35_layer *layer;
>> +	int ret;
>> +
>> +	layer = devm_kzalloc(dev, sizeof(*layer), GFP_KERNEL);
>> +	if (!layer) {
>> +		ret = -ENOMEM;
>> +		goto error;
>> +	}
> This needs to be allocated using drmm
I'll fix it.
> Maxime

Thank you very much for the detailed and careful review.

Joey


