Return-Path: <devicetree+bounces-274579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADfcAPSysmmYOwAAu9opvQ
	(envelope-from <devicetree+bounces-274579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:35:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 704F0271D7D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:34:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E4E93036393
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4324730148B;
	Thu, 12 Mar 2026 12:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hjhAY+2O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019E72DEA62
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773318897; cv=none; b=o+VRFHO0nECnkVZhvQo81SBjR6QbqTt6CgfE5xGy1Pd4WvBbO+u52Ez1azsdERrgScmRq2pPo8tgeUOoN3XP5JI4QQwxB+TLMF/z/Ecx/YEcvxKIzmzTlU31ZsFXeTFrg0B7p28XmuoKPxf+1hFJ2MLL7dyDr1Y92Wg4E9ysT/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773318897; c=relaxed/simple;
	bh=8anETn248/lbpRrxYoLNFCBodOwdNOa+FNpgk5FB/H4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NEtDzpDnzcmPLmlQ3BiyaaotuU4b/NC/wiAiUo129tXKUahPMV1ZrWPe3yWjSAUOt7F0sFWXiwkEggt9hPRpopt2R0jQvmIbo9DD8bJOnyEMn0o3PWWSJxM32MNVH6Sb8XKApZVMd21N/t61M18dUaXdHzI4KxnKife3Dq3Vfmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hjhAY+2O; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2ad21f437eeso8361455ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 05:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773318895; x=1773923695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iY6qluq0Nn+wzWD7asAwkfwR02cHSUhgsW/DTGcOm9M=;
        b=hjhAY+2O7OrxXlpu/debEIVH7KJ9jxuZrjCiiUZ9yUT5SsQ8PfNCTEn6MHCcT8uagc
         M6260xCdi/y+sBK3e+JiFu2ZamxmDusDE5wCC1Is0xgkkQtH5OJKBSh9JjiR2uvJ5BMz
         x3ijeDUdLZe9LtxV+9fvWkQujGeVuXqf88FbLZ8FO5b40OdatYtqENbvalgTe+i/CssQ
         p/k8+mQKAkUI2WGyIUN8AghzP7nqzsTZOd16NYGl1CMKBvQDn97EJmMF44rsDbfn4yU4
         1w8dI0vLID8SdC8qzZcVMp3BT64hynZ13866gpX1KPqKjcW+2E8IqfYT5KIkJb+CQeGK
         gasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773318895; x=1773923695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iY6qluq0Nn+wzWD7asAwkfwR02cHSUhgsW/DTGcOm9M=;
        b=LWgzJsRixLJwiZ5OUXN/ljTF6ZKzB1zCIREAWRRvX/sj/glN/ZPcZjjUmyjI1zi8So
         3cWE0YuTuX3LzvS8xXECNDfcYgllo622fcxHV/mJLarGNXND2k68CNRPED7+iHc1t9/v
         +qiSY5paIwv9ga0Z/1sDcLHsD70cfYbAnP7TByQlLLGC4QzUsTY+KinN4gOO2AZhNmHx
         HjQn51NclOkUAcUXRTK/jZZiXsAzLtBRKYz0kewDCy6N0PrPyxdRsv9wsn58dnhb8jE4
         Q1S26aHWhyh2GlOhQYVbKAW+WtJ7639nZOIrfkigCor0NoImn4/Ud1j3/wpq3gX7Nvho
         Iz3g==
X-Forwarded-Encrypted: i=1; AJvYcCWc9BkRk1Uwi8QOpLm0cJ5WeWuXvPbxq+STkLxrcSizbeS5FN0FqcmmldSxAs8869m/YsidMkWKmP7K@vger.kernel.org
X-Gm-Message-State: AOJu0YzT9cV/FYKvg51MHgTaICcA9dP+yALMT6A1Jn1cvX5hZKiogCWl
	K1yJrpJyPOY8k3XhDFAxvFEeJLkV9WwV4PP2jlI2jH8OumZkZGIazd4a
X-Gm-Gg: ATEYQzwDOlcOmJS58FVaewEouHojd4QmfPHq8RzFxBXMI19I/KJ/Gd1XM/tGYcoN6S4
	DSRt7lU1SYiyj0AJ/c74lsZfldpNZQrlj/WTBsLDKB6AgzYV2TKQrvzaxHA2IgFov2iYU/JDtnj
	lDsxs0Y2klMYfg0ATSJFL6WmQiS9B1w/PehewSfLvYb9VXq6ed+AtCJ+jWmyJjYWvSly/rQLlH8
	bV1yidBtKNlLoKcoMwKvjFCI78RsK34q3qOQEokcVTfi83GquB4yLzAkF0jjvXmubhLGn1m6moD
	FHGes3UDWK/8/h5OX8dgC2S2AEP1okVZo4QnBuIVhj1xIJ0irTD1H+0d28FPwLRQm/AVLQjoNKJ
	TlvtVD2JP5e9aCS/zvr3c0Ffwgh+gkpIgVZWSXQOFyTAbipcbAttbhHMeMhNvTFp+8CNmIQxrVq
	5PBuN3aigWkx58Cy+zHIWPBKrqLinAzeY=
X-Received: by 2002:a17:903:37c4:b0:2ae:7f85:33d1 with SMTP id d9443c01a7336-2aeba2e60d8mr31496605ad.0.1773318895227;
        Thu, 12 Mar 2026 05:34:55 -0700 (PDT)
Received: from [172.16.20.13] ([136.226.252.245])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae2228easm55925065ad.3.2026.03.12.05.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 05:34:54 -0700 (PDT)
Message-ID: <176ed865-11a6-42de-89e0-06951b59a430@gmail.com>
Date: Thu, 12 Mar 2026 18:05:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] drm: bridge: ti-sn65dsi83: Improve dual-link LVDS
 support
To: Marek Vasut <marex@nabladev.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 valentin@compulab.co.il, philippe.schenker@toradex.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <9f694b2d-44bc-46ad-8aa3-b464c2f0da13@nabladev.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <9f694b2d-44bc-46ad-8aa3-b464c2f0da13@nabladev.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274579-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 704F0271D7D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 12-03-2026 10:35, Marek Vasut wrote:
> On 3/12/26 5:37 AM, Sudarshan Shetty wrote:
>> Hi all,
>>
>> This patch series improves dual-link LVDS support in the SN65DSI83
>> DSI-to-LVDS bridge driver.
>>
>> Currently the driver programs identical horizontal timing parameters
>> for both single-link and dual-link LVDS modes. According to TI
>> documentation, when operating in dual-link mode the horizontal timing
>> values must be divided by two before being programmed into the device.
>> Without this adjustment, some panels fail to light up or produce
>> corrupted output.
>>
>> TI also provides recommended register settings for dual-link LVDS
>> operation. This series adds support for an optional DT property
>> ti,dual-link-video-mode that enables the required configuration
>> in the driver.
>>
>> When the property is present, the driver applies the recommended
>> register settings and uses a simplified DSI video mode configuration
>> to ensure correct dual-link LVDS operation.
>>
>> Summary:
>>   - Add DT binding for ti,dual-link-video-mode
>>   - Add driver support to enable dual-link LVDS configuration
>>   - Apply recommended register settings for dual-link operation
>>   - Adjust DSI mode flags when dual-link mode is enabled
>>
>> Changes in v2:
>>   - Introduce ti,dual-link-video-mode DT property
>>   - Add DT binding documentation for the new property
>>   - Update driver to read the DT property and apply dual-link
>>     configuration conditionally
>>   - Adjust DSI mode flags when dual-link video mode is enabled
>>   - Update commit messages
>>
>> Thanks,
>> Anusha
>>
>> Sudarshan Shetty (2):
>>    dt-bindings: display: bridge: ti,sn65dsi83: Add dual-link video mode
>>      property
>>    drm: bridge: ti-sn65dsi83: Add support for dual-link LVDS video mode
>>
>>   .../bindings/display/bridge/ti,sn65dsi83.yaml |  9 ++++
>>   drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 52 +++++++++++++++++--
>>   2 files changed, 57 insertions(+), 4 deletions(-)
> +CC Luca
> 
> You might want to look at recently posted:
> 
> [PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual LVDS output

Thanks for pointing this out.
I tried applying the patch “[PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual LVDS output” on top of the current tree and 
removed the changes that I had previously added in the driver.
However, with this patch applied, I am currently seeing only the backlight turning on and no image on the LVDS panel.
For reference, the LVDS panel used on our platform is G133HAN01.1 and the 
DSI-to-dual-link LVDS bridge is SN65DSI84ZXHR.

During our earlier debugging, we went through several trial-and-error 
iterations and also received support from TI. According to TI, when 
operating in dual-link mode the horizontal timing parameters must be 
divided by two before being written to the device. Without this 
adjustment, the panel either does not light up or shows corrupted output.

TI also shared a set of recommended register settings for dual-link mode, 
which were derived using the TI DSI-Tuner tool. These settings helped us 
get the panel working on our hardware during testing.
For reference, the register configuration suggested by TI is as follows:

	regmap_write(ctx->regmap, REG_RC_LVDS_PLL, 0x05);
	regmap_write(ctx->regmap, REG_RC_PLL_EN, 0x00);
	regmap_write(ctx->regmap, REG_DSI_CLK, 0x53);
	regmap_write(ctx->regmap, REG_LVDS_FMT, 0x6f);
	regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x00);
	regmap_write(ctx->regmap,
		     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_LOW, 0x00);
	regmap_write(ctx->regmap,
		     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_HIGH, 0x00);
	regmap_write(ctx->regmap,
		     REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW, 0x10);
	regmap_write(ctx->regmap,
		     REG_VID_CHA_HORIZONTAL_BACK_PORCH, 0x28);
	regmap_write(ctx->regmap,
		     REG_VID_CHA_VERTICAL_BACK_PORCH, 0x00);
	regmap_write(ctx->regmap,
		     REG_VID_CHA_HORIZONTAL_FRONT_PORCH, 0x00);
	regmap_write(ctx->regmap,
		     REG_VID_CHA_VERTICAL_FRONT_PORCH, 0x00);

If it would help, we can test any proposed changes on our hardware. 
Please let me know if incorporating these register settings or additional adjustments would be the right direction for supporting dual-link LVDS 
in this driver.
Is the current patch expected to fully support dual-link LVDS, or are 
there additional changes planned for the SN65DSI84 driver?


