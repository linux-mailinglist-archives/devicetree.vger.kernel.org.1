Return-Path: <devicetree+bounces-263886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBFXF72eiWlU/wQAu9opvQ
	(envelope-from <devicetree+bounces-263886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:45:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F13DC10D262
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3F291300133D
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47FA7325714;
	Mon,  9 Feb 2026 08:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nq/mnx5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19593242D91
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770626747; cv=none; b=HPXaXTxhxbm/dbRklMkKet9ZXCxLdvgZQd7mHMzqfgqjhaGvg+v8YH7jZudINQuc/O8i6ubzDjYFPdVmav6FhhPmtXJsnqDVmPtikEhkX1NZfrPAPglEeyJwECeT6bazzQTbml3nQQJw8uxzlT7lQio8CEdpvIc4e/VyKKxDehw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770626747; c=relaxed/simple;
	bh=Mc/d/BijOjqO29N1HEQjWPn+Z1VbV+gB5KK51oU08Is=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gU4w/dk3VPlNbN3lo/g04Rw1GxbtPU6q29/e939bCo0v1PS56xsfTJUnVDNkuRw5i9IbpxCZeiwCR4j7WVxdcSr+1/zgiQoLpnrtECoBk6BOIXwtBvMYDnzBYX3O+hAYK32SLa6BcKdgonHeOGnve6RUL5cCNjVXWEhq8OvQ2LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nq/mnx5s; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-81e8b1bdf0cso3073135b3a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770626746; x=1771231546; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DmVyyltTZXCiISWlqL6e2pkka9bcBWHjYQjn85OjRHg=;
        b=Nq/mnx5s45girV61/fFzUn/LI/8qNMkKjM5U7EbYuw59LizoGJXzvBknjOWdmNXI6l
         fA9XRA8uLWe8lujgjm1kvGX6HoZxdxrUOmUreEl5iERiRjJWyIlX5SxL3NKfQcgGO6kN
         qVWd2Up3Vuv6ix1N2gdMxbV02+7wsR+6J72XQ9+uVY1emYxfFTrbSdVeG/z2LTdvRd7Q
         6tflZF4ItRBvwefGwMRXk+1riknKvFeKBPf3H0LRGhSOn1C0dPRtQr8c9ngjpv6kRbbT
         01/opxwhO7lFW3OjiSYA/3D3b3hDe/j2OcyOfdTmeMSPig47XueQnDkuRaWX+DRmUYdD
         lEXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770626746; x=1771231546;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DmVyyltTZXCiISWlqL6e2pkka9bcBWHjYQjn85OjRHg=;
        b=Yc3GkFc/d+wBOOZNZYignqhZF9E6q32424Nt+sV47PpB5A4NgTUzZR2kP1wU8YJAwD
         u/gnRYOF+t+KtaOCTaQIIhct6NHRsSyN+ZX/vSFzxidXI2M0Pmo9Dd8/neFi8vhSUi1Y
         N7wmMJAjHN9IHR2PKm553Tf65USCiHyt+Hd+4O9CETbjyJBYv19Zz9v5hV7FXdzBLjUJ
         pY6HhDPCPkp8fMZddMA3lab9VbqZGXDqH7Iux2aBOXnWXMQ5WLD74e+tPdE2oaIyZj2G
         LGmHyBRKck4Uo/AXj4wbj5LAPYgcs3svCma03iEYIBpTK+eCnpQ6BTACpb+/yJIyWPE4
         s3EQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9vgGCGPKL/LHxTRXWK12UjJs1kDPp6JZReBiWpbJdCSxSRvll/cYrJhf6Y7u5QcAHrNFwVUorQjoo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2EAM6vikRNCeEXeeEMHQYWDvsehglX1+VkFywCGfGTRWBnt6d
	LPZJf0Nw6tYZxRyNd4GC2QnZBdCvi9Q+q2H8c/EgZxp2WDfnBQzL5h4r
X-Gm-Gg: AZuq6aJMsFPWzfsmtSgFBD9Ri3Z/Qlrit6J9152aAuYgO688FvWGqFu99xUUhrMvAaN
	XqQ+IVDLTEQjaDiQsuTYBh+04RN114v809qHRmzUuzV+j1lgydFKJXG+I5jKiDNr3lCg4wxiz8Q
	R77g/vxoUzZuC6omm4ANLjFdxMx5wPXV6Mr9u1RrYYHou7kHQC8fe3G545tPczZLFttWIkgHSri
	zsFgYYMbilVz59e2E1Qu+aZO0al5zfZ4vTS5WR9OATBiKsACLT4AwVedba9kHTkqyFSnajyfgY7
	skKANwFLvYUNl/agGgyJE9c0ZldfjIGglYiy4RZdKT7ddCvXsI0VAYecowWMKXCw+jIATeYq66Z
	azk/dMfgzX1Nsm9M6LpnjGmkLAFVdM5ft6HFY5KxlMihH3kGQUpwihSZ/PRYKp0/oBLWUKwOL2o
	vfoIFGWy6HJYlUQVuyvnRrLHzhT7IbCD1L3LN7UaRwy3c+uWVKBkxwjgn4YWZ9AtLU
X-Received: by 2002:a05:6a00:1949:b0:822:6830:5900 with SMTP id d2e1a72fcca58-82441609809mr8859019b3a.6.1770626746380;
        Mon, 09 Feb 2026 00:45:46 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441695f7dsm10130745b3a.23.2026.02.09.00.45.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:45:45 -0800 (PST)
Message-ID: <f556ef68-dac3-4652-ac21-ea4bbb4e912c@gmail.com>
Date: Mon, 9 Feb 2026 16:45:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drm/nuvoton: add MA35D1 display controller driver
To: Icenowy Zheng <uwu@icenowy.me>, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ychuang3@nuvoton.com, schung@nuvoton.com, yclu4@nuvoton.com,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260129040532.382693-1-a0987203069@gmail.com>
 <20260129040532.382693-4-a0987203069@gmail.com>
 <8806eaf82fbef4cd51bb4e4bb44d60894b3504b4.camel@icenowy.me>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <8806eaf82fbef4cd51bb4e4bb44d60894b3504b4.camel@icenowy.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263886-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[icenowy.me,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,verisilicon.it:url]
X-Rspamd-Queue-Id: F13DC10D262
X-Rspamd-Action: no action


On 2/6/2026 11:09 PM, Icenowy Zheng wrote:
> 在 2026-01-29星期四的 12:05 +0800，Joey Lu写道：
>> ========== 8< ============
>> +#endif
>> diff --git a/drivers/gpu/drm/nuvoton/ma35_regs.h
>> b/drivers/gpu/drm/nuvoton/ma35_regs.h
>> new file mode 100644
>> index 000000000000..0f4a7a13e7d8
>> --- /dev/null
>> +++ b/drivers/gpu/drm/nuvoton/ma35_regs.h
>> @@ -0,0 +1,88 @@
>> +/* SPDX-License-Identifier: GPL-2.0+ */
>> +/*
>> + * Nuvoton DRM driver
>> + *
>> + * Copyright (C) 2026 Nuvoton Technology Corp.
>> + *
>> + * Author: Joey Lu <a0987203069@gmail.com>
>> + */
>> +
>> +#ifndef _MA35_REGS_H_
>> +#define _MA35_REGS_H_
>> +
>> +#define MA35_FRAMEBUFFER_CONFIG                   0x1518
> Please check my Verisilicon DC8200 driver, which is already part of
> drm-misc-next now.
>
> The display controller here seems to be a earlier one from
> Verisilicon.it looks like a DC8000, or maybe a more earlier one?

The DCU is a Vivante DCUltra IP rather than a DC8000 series.

It's an earlier generation display controller and was customized for 
Nuvoton, so it doesn't have a public model ID.

Because of that lineage, parts of the register layout and functionality 
remain similar to older DC IPs.

Please refer to MA35D1 datasheet for more details.

>> +#define MA35_FRAMEBUFFER_ADDRESS                  0x1400
>> +#define MA35_FRAMEBUFFER_STRIDE                   0x1408
>> +#define MA35_HDISPLAY                             0x1430
>> +#define MA35_HSYNC                                0x1438
>> +#define MA35_VDISPLAY                             0x1440
>> +#define MA35_VSYNC                                0x1448
>> +#define MA35_PANEL_CONFIG                         0x1418
>> +#define MA35_DPI_CONFIG                           0x14B8
>> +#define MA35_CURSOR_ADDRESS                       0x146C
>> +#define MA35_CURSOR_CONFIG                        0x1468
>> +#define MA35_CURSOR_LOCATION                      0x1470
>> +#define MA35_CURSOR_BACKGROUND                    0x1474
>> +#define MA35_CURSOR_FOREGROUND                    0x1478
>> +#define MA35_FRAMEBUFFER_UPLANAR_ADDRESS          0x1530
>> +#define MA35_FRAMEBUFFER_VPLANAR_ADDRESS          0x1538
>> +#define MA35_FRAMEBUFFER_USTRIDE                  0x1800
>> +#define MA35_FRAMEBUFFER_VSTRIDE                  0x1808
>> +#define MA35_INDEXCOLOR_TABLEINDEX                0x1818
>> +#define MA35_INDEXCOLOR_TABLEDATA                 0x1820
>> +#define MA35_FRAMEBUFFER_SIZE                     0x1810
>> +#define MA35_FRAMEBUFFER_SCALEFACTORX             0x1828
>> +#define MA35_FRAMEBUFFER_SCALEFACTORY             0x1830
>> +#define MA35_FRAMEBUFFER_SCALEFCONFIG             0x1520
>> +#define MA35_HORIFILTER_KERNELINDEX               0x1838
>> +#define MA35_HORIFILTER_KERNEL                    0x1A00
>> +#define MA35_VERTIFILTER_KERNELINDEX              0x1A08
>> +#define MA35_VERTIFILTER_KERNEL                   0x1A10
>> +#define MA35_FRAMEBUFFER_INITIALOFFSET            0x1A20
>> +#define MA35_FRAMEBUFFER_COLORKEY                 0x1508
>> +#define MA35_FRAMEBUFFER_COLORHIGHKEY             0x1510
>> +#define MA35_FRAMEBUFFER_BGCOLOR                  0x1528
>> +#define MA35_FRAMEBUFFER_CLEARVALUE               0x1A18
>> +#define MA35_DISPLAY_INTRENABLE                   0x1480
>> +#define MA35_INT_STATE                            0x147C
>> +#define MA35_PANEL_DEST_ADDRESS                   0x14F0
>> +#define MA35_MEM_DEST_ADDRESS                     0x14E8
>> +#define MA35_DEST_CONFIG                          0x14F8
>> +#define MA35_DEST_STRIDE                          0x1500
>> +#define MA35_DBI_CONFIG                           0x1488
>> +#define MA35_AQHICLOCKCONTROL                     0x0000
>> +#define MA35_OVERLAY_CONFIG                       0x1540
>> +#define MA35_OVERLAY_STRIDE                       0x1600
>> +#define MA35_OVERLAY_USTRIDE                      0x18C0
>> +#define MA35_OVERLAY_VSTRIDE                      0x1900
>> +#define MA35_OVERLAY_TL                           0x1640
>> +#define MA35_OVERLAY_BR                           0x1680
>> +#define MA35_OVERLAY_ALPHA_BLEND_CONFIG           0x1580
>> +#define MA35_OVERLAY_SRC_GLOBAL_COLOR             0x16C0
>> +#define MA35_OVERLAY_DST_GLOBAL_COLOR             0x1700
>> +#define MA35_OVERLAY_CLEAR_VALUE                  0x1940
>> +#define MA35_OVERLAY_SIZE                         0x17C0
>> +#define MA35_OVERLAY_COLOR_KEY                    0x1740
>> +#define MA35_OVERLAY_COLOR_KEY_HIGH               0x1780
>> +#define MA35_OVERLAY_ADDRESS                      0x15C0
>> +#define MA35_OVERLAY_UPLANAR_ADDRESS              0x1840
>> +#define MA35_OVERLAY_VPLANAR_ADDRESS              0x1880
>> +#define MA35_OVERLAY_SCALE_CONFIG                 0x1C00
>> +#define MA35_OVERLAY_SCALE_FACTOR_X               0x1A40
>> +#define MA35_OVERLAY_SCALE_FACTOR_Y               0x1A80
>> +#define MA35_OVERLAY_HORI_FILTER_KERNEL_INDEX     0x1AC0
>> +#define MA35_OVERLAY_HORI_FILTER_KERNEL           0x1B00
>> +#define MA35_OVERLAY_VERTI_FILTER_KERNEL_INDEX    0x1B40
>> +#define MA35_OVERLAY_VERTI_FILTER_KERNEL          0x1B80
>> +#define MA35_OVERLAY_INITIAL_OFFSET               0x1BC0
>> +#define MA35_GAMMA_EX_INDEX                       0x1CF0
>> +#define MA35_GAMMA_EX_DATA                        0x1CF8
>> +#define MA35_GAMMA_EX_ONE_DATA                    0x1D80
>> +#define MA35_GAMMA_INDEX                          0x1458
>> +#define MA35_GAMMA_DATA                           0x1460
>> +#define MA35_DISPLAY_DITHER_TABLE_LOW             0x1420
>> +#define MA35_DISPLAY_DITHER_TABLE_HIGH            0x1428
>> +#define MA35_DISPLAY_DITHER_CONFIG                0x1410
>> +#define MA35_DISPLAY_CURRENT_LOCATION             0x1450
>> +
>> +#endif

