Return-Path: <devicetree+bounces-164720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFF8A82138
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 11:44:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0EFB1BA2600
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 09:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5232B25C6FA;
	Wed,  9 Apr 2025 09:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="THwnFTdk"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE7A25484C
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 09:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744191842; cv=none; b=GqaDU9tDvuIgj8SzEBrgF0Yqo26w3d4In0SHCPUqLKtSi+rc0m/pZDId7hSgqGzQkjfNMFpblVYwZF2jtYlmofrUMSnr/68Kg7AtEgi/VnkQtnWPADaH3LA2jq7pE5otPk6Yf7DaPpUg1eVN2K35rWCTnq4pxH/sGkjRCRsQdG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744191842; c=relaxed/simple;
	bh=qgbt78J6YUlj9E/mqPX2zDzf7z9lsZzNRFMWS/p05hU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=iZDV+HT5P/4oDrSM/sKD1JzhHcEb2fI6OI6pEsQmPSucsUeBVSdQ7g/ge2agODadqYFknuYa8vUgLdTwIfB2sNLKrCjlo7DAPJ/ABVTQqdTwYD3wiH0O4OJEsXu/taeXiz+MFdcUOaX8g48+oHtbBERSTdvwsCYWnsxtKzUM/4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=THwnFTdk; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744191839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=G7znzCj/gfMRbAPJAEPE1rTbQF7vTbZ1Y1hJc3xX8N8=;
	b=THwnFTdkOqieDievgHeG/SqRgOB5nTyJod4QImtnUO/RDqONCjL9zaqIh4RuDhK+TGCoBn
	y4m49+h72h3HN108Yjl+wFSv6pwN19SBFyF9BwezUabSVqPj8uHjkfGqqktKa0gnD3h8ac
	pVQxo9xTsyf02iVppJSFm/YAnWIRAsI=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-538-2OM_ZMENONq5cQXJ25Jfbw-1; Wed, 09 Apr 2025 05:43:58 -0400
X-MC-Unique: 2OM_ZMENONq5cQXJ25Jfbw-1
X-Mimecast-MFC-AGG-ID: 2OM_ZMENONq5cQXJ25Jfbw_1744191837
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-39c2da64df9so4364117f8f.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 02:43:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744191837; x=1744796637;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G7znzCj/gfMRbAPJAEPE1rTbQF7vTbZ1Y1hJc3xX8N8=;
        b=IH/4Z8U76AigUWynA76v5DE1HdyNB2x7bx3nvpg4TFFxxthAICc3ZLrJSIX5LNvljS
         i58FqNHUkcMH/uxp7XL+99QhyQceC51vM3zaMNte2HfqZU+VyBcELj4th5vs2NcXb2xD
         zFRELvLlRVQsgde+wbIe428LpsHucffR5gdarXCHPiJebI4/rp4CMc1u1y3j5PD7+O9B
         xoAj2d8zKZzvIBcaC+M9pyGRnhJphu3ros//HeVhJst4C9kLDVas3T9n49lXlevuAn6n
         Mp5yZits8b3Ocg3AJabYGJSISYu7pGfRrtYQDLIP0Az4JRIvBT0XKECdmkH8xa5TZ/B6
         AX0g==
X-Forwarded-Encrypted: i=1; AJvYcCXvK7vQtZRYEfdaRGrb7wSZDzCHLdJUl2PTROHranL3H2PMtTQzoEnMA9U+IGsWUf8T3tUdjTUmgTmK@vger.kernel.org
X-Gm-Message-State: AOJu0YzJw4114qguYnjGPmin5HbavC35uuur9C909jrfJcbv0Q9XnJgv
	BlRe7doKRETiYPimv2t3FjQ+RYioyuguROBojd695Q2mn2o9J9xqB77vB6B9WVZTHAOoUnbcjTC
	UC16yTnIKCaxekWgErP4N16YPRoNHV50cHA56MLu+K4POEIyWFFrWK126kn0=
X-Gm-Gg: ASbGnctmpG2sAN3fRx+H7b/ChweKoI2OVvgOoSFL6qRo5idDoB6T/sSuCMMDdDh8vvi
	HirPeVtR4aPGErafuuJOn2ryHjDVkCmO6TGodXJrB9AsJg3CFYbL+ptPk3ja8fbSLNm8987C41W
	MeDtCeHiQJPygNc4sh2ffhyk+buIdnQDUA076jL2HNt9zo6492m0bPB+AMG6B+pew0Q2lheb3dH
	FMNQtSRmyM50E7n7pD05Gw0gHoqXb+s9r1J2jHoc4eWsl4mpXTY8JZgmTidWD471Ynj2nSwLb8z
	V18ojuufNK546GdAQxqxPvDmyq1GMsqBk9YKPX72Pgk8jbx4ixmFcw5mjktyxrVEDNMgIg==
X-Received: by 2002:a5d:64c4:0:b0:391:3915:cffb with SMTP id ffacd0b85a97d-39d885612a7mr1577993f8f.43.1744191836706;
        Wed, 09 Apr 2025 02:43:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGu4u3BK/v6GJbjaLAKLe1GqebFBXWq85va/hCAimH4+nbm9+X2gTzlrwLpJ0IJFLslffWkQ==
X-Received: by 2002:a5d:64c4:0:b0:391:3915:cffb with SMTP id ffacd0b85a97d-39d885612a7mr1577958f8f.43.1744191836268;
        Wed, 09 Apr 2025 02:43:56 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d893f113csm1113919f8f.69.2025.04.09.02.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 02:43:55 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas
 Zimmermann <tzimmrmann@suse.de>
Subject: Re: [PATCH v3 2/3] drm/st7571-i2c: add support for Sitronix ST7571
 LCD controller
In-Reply-To: <Z_YWq4ry6Y-Jgvjq@gmail.com>
References: <20250408-st7571-v3-0-200693efec57@gmail.com>
 <20250408-st7571-v3-2-200693efec57@gmail.com>
 <87cydn9bkx.fsf@minerva.mail-host-address-is-not-set>
 <Z_Uin2dvmbantQU4@gmail.com>
 <87ecy1g8z8.fsf@minerva.mail-host-address-is-not-set>
 <Z_YWq4ry6Y-Jgvjq@gmail.com>
Date: Wed, 09 Apr 2025 11:43:54 +0200
Message-ID: <87bjt5fz51.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

[...]

>> 
>> That's a god question, I don't really know...
>> 
>> But fbdev does support XRGB8888, which may be another good reason to add
>> it and make it the default format. Yes, it will cause an unnecessary pixel
>> format conversion but the I2C transport is so slow anyways that compute is
>> not the bottleneck when using these small displays.
>
> Hrm, I now realised that I have another issue.
> Not all LCDs that will be attached to the ST7571 controller will be
> grayscale.
> The display I've attached to the ST7571 is a monochrome LCD for example.
>

Oh, that's very interesting. This means that vendors are using a more capable IC
(i.e: ST7571) for display controllers + LCD panels board designs, even where they
could had used a less capable one (i.e: ST7765). That is, using an IC that supports
2-bit grayscale when they could just used one that only supported monochrome pixels.

From a quick search, I found for example this one from SinoCrystal:

https://displaysino.com/product_details/SC128128012-V01.html

> Maybe the right way to do it is to only support XRGB8888 and specify 
> if the display is monochrome or grayscale in the device tree.
>
> Or do you have any good suggestions?
>

I don't know the proper way to handle this, but what I would do is to include
the actual boards as entries in the OF device ID table instead of just the ICs.

And then for each entry you can specify what formats are supported, e.g:

static const uint32_t monochrome_formats[] = {
	DRM_FORMAT_XRGB8888,
        DRM_FORMAT_R1
};

static const uint32_t grayscale_formats[] = {
	DRM_FORMAT_XRGB8888,
        DRM_FORMAT_R1
        DRM_FORMAT_R2
};

static const struct of_device_id st7571_of_match[] = {
	/* monochrome displays */
	{
		.compatible = "sinocrystal,sc128128012-v01",
		.data = monochrome_formats,
	},
...
        /* grayscale displays */
	{
		.compatible = "foo,bar",
		.data = grayscale_formats,
	},
};

and then in your probe callback, you can get the correct format list for
the device matched. Something like the following for example:

static int st7571_probe(struct i2c_client *client) {
       const uint32_t *formats = device_get_match_data(client->dev);
       ...

       ret = drm_universal_plane_init(..., formats, ...);
       ...
};

Likely you will need to define more stuff to be specific for each entry, maybe
you will need different primary plane update handlers too. Similar to how I had  
to do it the ssd130x driver to support all the Solomon OLED controller families:

https://elixir.bootlin.com/linux/v6.11/source/drivers/gpu/drm/solomon/ssd130x.c#L1439

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


