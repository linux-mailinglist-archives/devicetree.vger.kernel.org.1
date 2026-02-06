Return-Path: <devicetree+bounces-263244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOgxFBWXhWk7DwQAu9opvQ
	(envelope-from <devicetree+bounces-263244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:24:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB25DFAEE8
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 37D093008253
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 07:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D370230B510;
	Fri,  6 Feb 2026 07:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jVNXwGue"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FC22D0635
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 07:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770362643; cv=none; b=Rxd1zatG+uQN2pusEMQfzQrm2TQOPwLXAzXKjUsAvu2pcV0/R2afzxX7xG3ByG4rB8ukv3aT4t912gn87nTLI+4d9K2vf7HKe5JB2LYVZ8mUwyYBVHHF7XrCyLUlE/R8VabSGpRinv76lIrkdI90CeaUZaLIu16APb05jaZLALU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770362643; c=relaxed/simple;
	bh=A9sw8gQ4DbOw1Fcm2jX/M1L64CeftV5KmgJ5KjNv2OU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oTLPlAXC3XOW6OqJjMC6NSV8JD+3hI5GdrpPon3uOnOSo1Cq/rgENze+kMMik+PpSEpZISYttrTtDCS1v2+VajI9KjS1IEXYwIk9UsdE8pSMH1c6sn6etw/hiC2Fd7qDE5N8sG1w+opaTlIwbyGYfW/HY2CW8O5T64tEAW6GO4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jVNXwGue; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a7bced39cfso19426545ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 23:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770362643; x=1770967443; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GlI/MBV6xozWTc1OM4u2SGSvVebdjrM1lCT9WkwRC+M=;
        b=jVNXwGueN6IckB5L6bTtJYe+3ELukwMvv0SyuJCFXjPCcE2U9z9164SHOUG6fHjtFp
         wkk13bXdu9u/P9l77nn7rm028Jt44dWHk5zc4cwSjSl/K56VKnVjNSqF5VO9x7xaGrIq
         f1XAdoZ+KXcT+7IwV2xuEr7VbUDriuvwRXGrLgOQxRkj+zYzBeRXpX00HR6boipoMEqw
         3nu9g8twpXxJvs8utVjqvum3wiyTucF0vDH4I1k/Q6NeKZkKxruJ9ZchIgP0xYH9jAGC
         SPpzFaVdDL2z89WFfRsvC8AGrb0/En00AELtRf2KUn1ugt+PC2apU2a6aRTOxc+HQQzA
         JCmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770362643; x=1770967443;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GlI/MBV6xozWTc1OM4u2SGSvVebdjrM1lCT9WkwRC+M=;
        b=koTdCzAIT9wmWOXNZne/g0XqEdZ5Rl1nzgMH56ZpTNutcJTIXPXa8U5ID8l2BF2xFq
         f8bh72kvseWFZ9CNHPY8C01KEwPMrmJVe9vVon1h7yzYu85O2ahJs6nicX/T/64aVwDM
         3Y3Xysq2f5kdOetIyVxDklAvjliskfN7cQtOEy6jmHS0JLWvrDnZ+P+xYxOELM+bxJrc
         RzBEuIWeKPvVC2HnrKfiQTcJ5i7lAW1f0FWABGVY4yjbxERVnhKFAXC5NPlI7USPdcPE
         dwTXs/GNvaRvab2LCsUZ7ISb4dGQKgTvBQ7IxkcbGzAu15ykahQboti0eNn00IxZdb8C
         TXXQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4hfQmZ8z34UJkNAJDEhCimqHU2NYr/WxU5BP7ltxNelYqThwfLikJZmgmb1obTwO0qc3l0A0Y81OQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyuRjX5taAn1pkGj8WPoBgknN3uy+lPY5uZFalGtR9GVM9fTD+t
	PXqcP1KNSAWL+L4+ORPa9t4n5D/t6dkWQJ8/JyajsQP17L3UoLf0yj4vBJVvO1F2
X-Gm-Gg: AZuq6aJz2/eeTxTLMhmnZIqYZ4vHAoqQ1Ytdyt4kHawg27Tymhjl1kyf1LIY7fEjX3H
	tBPlNcPZQruB5PNPMQYcT8S780VTEOZoaFind2vcl0g1P0cSKGMypPg/YPc5/l2jEN8eOHVH8BS
	raeu3zzwqbfsbGBCrnYsKmgGLR7irXemNaR/WCgomOo/CeFbPEghMh5vfBIH4tVEUEbJancIPfX
	UtbPTJPqMGuiGTyjwoElXvRGt7IEyR65jI5+nQL5Pr+GWJpb3dOHfaUiKRhra/jlK0W+qB7z1AI
	2Hcs4cH/eo1FB+DkVvCSkI/lYoSIV97oSDh/LHbTZrFT1AL2wU6yCq6CL+YNwrgUokI8b+BkamB
	L4QGavvlAyLt7i0pt8PmrVWqrJNySCYBuCzxKVWyTAkaPPjsnC+NJHKcgi4lpvY14DTFvQMtC/M
	9dewzV3tJT4tznH5v+RLzI5C2vKSAPC3z6T1UVhj022alhlo+JUIyZAzFAodLXWJBQ
X-Received: by 2002:a17:903:ad0:b0:2a8:fbfa:e825 with SMTP id d9443c01a7336-2a95194693emr18851275ad.37.1770362643089;
        Thu, 05 Feb 2026 23:24:03 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c50206sm14481175ad.19.2026.02.05.23.24.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 23:24:02 -0800 (PST)
Message-ID: <0a1a8f92-860f-4f4e-aad0-f743f099efc1@gmail.com>
Date: Fri, 6 Feb 2026 15:23:59 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drm/nuvoton: add MA35D1 display controller driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, ychuang3@nuvoton.com,
 schung@nuvoton.com, yclu4@nuvoton.com, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260129040532.382693-1-a0987203069@gmail.com>
 <20260129040532.382693-4-a0987203069@gmail.com>
 <20260205-classic-innocent-angelfish-5c3cd2@quoll>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260205-classic-innocent-angelfish-5c3cd2@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263244-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nuvoton.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
X-Rspamd-Queue-Id: DB25DFAEE8
X-Rspamd-Action: no action


On 2/5/2026 9:22 PM, Krzysztof Kozlowski wrote:
> On Thu, Jan 29, 2026 at 12:05:32PM +0800, Joey Lu wrote:
>> Add DRM driver support for the Display Control Unit (DCU)
>> found in Nuvoton MA35D1 SoCs.
>>
>> Signed-off-by: Joey Lu <a0987203069@gmail.com>
>> ---
>>   drivers/gpu/drm/Kconfig                  |   1 +
>>   drivers/gpu/drm/Makefile                 |   1 +
>>   drivers/gpu/drm/nuvoton/Kconfig          |  21 +
>>   drivers/gpu/drm/nuvoton/Makefile         |   7 +
>>   drivers/gpu/drm/nuvoton/ma35_crtc.c      | 372 ++++++++++++++
>>   drivers/gpu/drm/nuvoton/ma35_crtc.h      |  67 +++
>>   drivers/gpu/drm/nuvoton/ma35_drm.c       | 371 ++++++++++++++
>>   drivers/gpu/drm/nuvoton/ma35_drm.h       |  48 ++
>>   drivers/gpu/drm/nuvoton/ma35_interface.c | 193 ++++++++
>>   drivers/gpu/drm/nuvoton/ma35_interface.h |  30 ++
>>   drivers/gpu/drm/nuvoton/ma35_plane.c     | 603 +++++++++++++++++++++++
>>   drivers/gpu/drm/nuvoton/ma35_plane.h     | 115 +++++
>>   drivers/gpu/drm/nuvoton/ma35_regs.h      |  88 ++++
> No maintainers? Why would we want to take unmaintained code?
I'll add an entry in MAINTAINERS file.
>
>> +static void ma35_mode_fini(struct ma35_drm *priv)
>> +{
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +
>> +	drm_kms_helper_poll_fini(drm_dev);
>> +}
>> +
>> +static int ma35_clocks_prepare(struct ma35_drm *priv)
>> +{
>> +	struct drm_device *drm_dev = &priv->drm_dev;
>> +	struct device *dev = drm_dev->dev;
>> +	int ret;
>> +
>> +	priv->dcuclk = devm_clk_get(dev, "dcu_gate");
>> +	if (IS_ERR(priv->dcuclk)) {
>> +		dev_err(dev, "Failed to get display core clock\n");
> Don't spam logs on defers. Syntax is in entire probe path: return
> dev_err_probe
>
>> +		return PTR_ERR(priv->dcuclk);
>> +	}
>> +
>> +	ret = clk_prepare_enable(priv->dcuclk);
> Why this cannot be devm_clk_get_enabled?
I'll fix it.
>> +	if (ret) {
>> +		dev_err(dev, "Failed to enable display core clock\n");
>> +		return ret;
>> +	}
>> +
>> +	priv->dcupclk = devm_clk_get(dev, "dcup_div");
>> +	if (IS_ERR(priv->dcupclk)) {
>> +		dev_err(dev, "Failed to get display pixel clock\n");
>> +		return PTR_ERR(priv->dcupclk);
>> +	}
>> +
>> +	ret = clk_prepare_enable(priv->dcupclk);
>> +	if (ret) {
>> +		dev_err(dev, "Failed to enable display pixel clock\n");
>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int ma35_clocks_unprepare(struct ma35_drm *priv)
>> +{
>> +	struct clk **clocks[] = {
>> +		&priv->dcuclk,
>> +		&priv->dcupclk,
>> +	};
>> +	unsigned int i;
>> +
>> +	for (i = 0; i < ARRAY_SIZE(clocks); i++) {
>> +		if (!*clocks[i])
>> +			continue;
>> +
>> +		clk_disable_unprepare(*clocks[i]);
>> +		*clocks[i] = NULL;
> Huh, pretty complicated and pointless code. This should be devm and bulk
> API...
I'll use memory safe helpers instead.
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int ma35_drm_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct ma35_drm *priv;
>> +	struct drm_device *drm_dev;
>> +	void __iomem *base;
>> +	struct regmap *regmap = NULL;
>> +	int irq;
>> +	int ret;
>> +
>> +	ret = of_reserved_mem_device_init(dev);
>> +	if (ret && ret != -ENODEV) {
>> +		dev_err(dev, "Failed to get optional reserved memory: %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	base = devm_platform_ioremap_resource(pdev, 0);
>> +	if (IS_ERR(base)) {
>> +		dev_err(dev, "Failed to map I/O base\n");
> Why aren't you using dev_err_probe?
>
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
> Why do you print error twice? Once in the function, second time here?
>
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
> Best regards,
> Krzysztof

I'll  return raw error codes and let probe wrap them with dev_err_probe().

Thanks for the review.

Best regards,

Joey


