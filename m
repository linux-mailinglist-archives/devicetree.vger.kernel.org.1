Return-Path: <devicetree+bounces-276926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPtyLOs7umnsTAIAu9opvQ
	(envelope-from <devicetree+bounces-276926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:45:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EEC2B5FB4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 00C613027342
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D26B21D5B0;
	Wed, 18 Mar 2026 05:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iZBHDrQN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1832F7478
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773812713; cv=none; b=ZGdHbwjONID//zZycfa+X7qbDDy2RxvtV6mJGFk4qdX586nNITeAQKzTE4KdCy6FHUBDyXkuEGdWls16cLxNtfboK87cN0Fch2vWw8sRuJ7uzabBqTvLsE25i/xqowG0ivIgLjwYqVZo7paxq+xVleGQxvROYNPKr3vA0we7xsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773812713; c=relaxed/simple;
	bh=3s9fQsPJcAqDaIVp71vWa4mMo/mzI4f0sQ9MaHH4Auk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ltl/ntpqbudOUCzJhfhxbQX+tNK4/23pzSiJKsjX/k7oKZoNcUlg4eejBy09uYRhRGRshmV87eHIpOEh7GRfrKChMQJefVT737o1vmeGV/NRiXcgj17JgRdacp2pxmS2S3qF9VRUeFGPUSfI2+Lim1B/9uGiWzp3vtO6DCTLuQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iZBHDrQN; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a8fba3f769so31122105ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 22:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773812711; x=1774417511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aSnRYfqfJcyjaevNaNbpmhAT4WJV+y2G/dIlTdsAPy0=;
        b=iZBHDrQNkluPw+ehlEk6FAwBZbMOSMesrSVtSjSC4rfMWoIniUHX3dfYflZCM3CKWO
         qd/0ape1gBqX+Yb6guSwwQvXpDdri019u9nu/rfS91j8FuoLpvDL2RKQdcZXwGxTceLq
         Dvw5jaPZGImWlHWpwMD0nzO2V2U7MMqMTAtgFR/Rm+E+GKLkIRDxJ98SA5vob0b/prZm
         M75dhQG1fTi743M2x2xy2IE7fSwPs/jurOlViteC6GSaZQkZ2SXk9LJAxPM8bUXhgDNw
         c1L/NBGGcM+d+71cjJvHlkLiPTpByOApJIYKuYlaNsOqDdTrAeMy1riEYo05QGmwgd19
         F2tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773812711; x=1774417511;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aSnRYfqfJcyjaevNaNbpmhAT4WJV+y2G/dIlTdsAPy0=;
        b=ZG9psUzbMpoWF4SyEnLAY+UB20i8IyJc4FGkVr68OQnyUsFPTvFEGbVAeVk4DlZcWp
         MSwQnEO8Igfjr57w+W2eNM9DTgjxKuxDP5X0uS5mx8KNDC13849aFPEFb8ufTKtH3+a2
         ckZ+5DxfHt7nTQ+wvs33QE/31bUMy5LRGeINJJAL/jXCcZbR6uUx9e85EC6TsP+YNauM
         yFM7phN/bWVmpvIJM1IJpK45AXZe2fsM4WRxH6HDRlvHXPYR6WfBO7GNKPOYmU2Hz6Nc
         4t6y3UAkba9Fhe1d8uoKfNgAlS+DzzMh4c8DNHTIKd9AiHPFPz41PeMUg7gOAl3QFz9+
         kDuw==
X-Forwarded-Encrypted: i=1; AJvYcCXwQmFRYIlZV0EDGF9GAwwJn1Eu4P2EPekuUQ65EzmIwW53c5qrrsKNdhdr+HkdQlAi6RQX9joFQbQq@vger.kernel.org
X-Gm-Message-State: AOJu0YwHxIhN1UICi4T5pi8zETilQrxOzYglw8cknB177Y5Sv7BVoiOK
	KAeDdgq9EvB0As1sInMarUMHameXB3+41pEm+AjXZWo4xTw7itY2YyoA
X-Gm-Gg: ATEYQzwvKM3pEJYNMFJcZniGHx+3aqVXglLUUeJiTe2lFL0SNm2vvKD9c8Oc46Gvp0C
	fdlIvOnTdo16fZezmp9DuVcx4p4KDwmoVWMg6DoOO+Yk7YKyfHqkTGYNqrGDRlUOwIqFYkdOr83
	x8BATiitF+Blw+wBV+cUJ+VkzKxNkWaCMaAndB5zOw2zT0SMpAb8hiuHrhy02K5cCst9e4oQhRT
	j/ntE79Yn9Yz5CdqP1s9d+XEGe73/URxaZdGnvux23Sb0D9SQMv+eCDaEcBFPAkFAXdpPuDsIM5
	/paZW7GNL2Mr2XNuWautszMA7E4x0u62nabuOJOChtA2wQVvkiWi/MbHdI2BjZy9T35yItSqTEF
	qj7E6v+rCtar4hkh2YW5xZG3FSIsLjSDFuf65uUrwrvddeXoioDpbAfhFLodSgVXmR26XjfoyfA
	UIVhe4FRNqLt5IcOZAOKmDtHisxs8mXLFS7y6hXY8iziiimKk=
X-Received: by 2002:a17:902:ca8d:b0:2ae:4fc8:3f5d with SMTP id d9443c01a7336-2b06e4399acmr12760325ad.48.1773812711359;
        Tue, 17 Mar 2026 22:45:11 -0700 (PDT)
Received: from [172.16.20.13] ([136.226.252.245])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5f0ac2sm13463195ad.52.2026.03.17.22.45.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 22:45:10 -0700 (PDT)
Message-ID: <49b79a0d-844b-4fee-bccb-706187ed76d1@gmail.com>
Date: Wed, 18 Mar 2026 11:15:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: tessolveupstream@gmail.com
Subject: Re: [PATCH v2 0/2] drm: bridge: ti-sn65dsi83: Improve dual-link LVDS
 support
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Marek Vasut <marex@nabladev.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 valentin@compulab.co.il, philippe.schenker@toradex.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <9f694b2d-44bc-46ad-8aa3-b464c2f0da13@nabladev.com>
 <176ed865-11a6-42de-89e0-06951b59a430@gmail.com>
 <DH0X7QW3AH3C.PRNRA8CRSSKA@bootlin.com>
Content-Language: en-US
In-Reply-To: <DH0X7QW3AH3C.PRNRA8CRSSKA@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276926-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 26EEC2B5FB4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 12-03-2026 21:19, Luca Ceresoli wrote:
> Hello Sudarshan,
> 
> and thanks Marek for copying me, I hadn't noticed this series.
> 
> On Thu Mar 12, 2026 at 1:35 PM CET, tessolveupstream wrote:
> 
> [...]
> 
>>> +CC Luca
>>>
>>> You might want to look at recently posted:
>>>
>>> [PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual LVDS output
>>
>> Thanks for pointing this out.
>> I tried applying the patch “[PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual LVDS output” on top of the current tree and
>> removed the changes that I had previously added in the driver.
>> However, with this patch applied, I am currently seeing only the backlight turning on and no image on the LVDS panel.
>> For reference, the LVDS panel used on our platform is G133HAN01.1 and the
>> DSI-to-dual-link LVDS bridge is SN65DSI84ZXHR.
> 
> Thanks for having tried.
> 
> Can you please test with both the fixes in the series applied + the test
> pattern feature and report the results you get with and without test
> pattern enabled?
> 
> The patches to apply are:
> 
>  - https://lore.kernel.org/all/20260226-ti-sn65dsi83-dual-lvds-fixes-and-test-pattern-v1-1-2e15f5a9a6a0@bootlin.com/
>  - https://lore.kernel.org/all/20260226-ti-sn65dsi83-dual-lvds-fixes-and-test-pattern-v1-2-2e15f5a9a6a0@bootlin.com/
>  - https://lore.kernel.org/lkml/20260309-ti-sn65dsi83-dual-lvds-fixes-and-test-pattern-v2-1-e6aaa7e1d181@bootlin.com/
> 

Thanks for the suggestions.

I tested the three patches together as mentioned, but the LVDS panel 
still only shows the backlight and no image. I also tried removing the 
test-pattern patch and retesting with only the remaining two fixes, but 
the result remained the same — only the backlight turns on and no image 
is displayed.
>> During our earlier debugging, we went through several trial-and-error
>> iterations and also received support from TI. According to TI, when
>> operating in dual-link mode the horizontal timing parameters must be
>> divided by two before being written to the device. Without this
>> adjustment, the panel either does not light up or shows corrupted output.
>>
>> TI also shared a set of recommended register settings for dual-link mode,
>> which were derived using the TI DSI-Tuner tool. These settings helped us
>> get the panel working on our hardware during testing.
>> For reference, the register configuration suggested by TI is as follows:
>>
>> 	regmap_write(ctx->regmap, REG_RC_LVDS_PLL, 0x05);
>> 	regmap_write(ctx->regmap, REG_RC_PLL_EN, 0x00);
>> 	regmap_write(ctx->regmap, REG_DSI_CLK, 0x53);
>> 	regmap_write(ctx->regmap, REG_LVDS_FMT, 0x6f);
>> 	regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x00);
>> 	regmap_write(ctx->regmap,
>> 		     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_LOW, 0x00);
>> 	regmap_write(ctx->regmap,
>> 		     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_HIGH, 0x00);
>> 	regmap_write(ctx->regmap,
>> 		     REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW, 0x10);
>> 	regmap_write(ctx->regmap,
>> 		     REG_VID_CHA_HORIZONTAL_BACK_PORCH, 0x28);
>> 	regmap_write(ctx->regmap,
>> 		     REG_VID_CHA_VERTICAL_BACK_PORCH, 0x00);
>> 	regmap_write(ctx->regmap,
>> 		     REG_VID_CHA_HORIZONTAL_FRONT_PORCH, 0x00);
>> 	regmap_write(ctx->regmap,
>> 		     REG_VID_CHA_VERTICAL_FRONT_PORCH, 0x00);
>>
>> If it would help, we can test any proposed changes on our hardware.
> 
> The first thing I suggest doing on your side is testing with the 3 patches
> mentioned above.
> 
> If you display works, good! Let us know (you can also add your Tested-by /
> Reviewed-by tags to the test_pattern patch too if applicable).
> 
> If it doesn't work, compare the individual register values to find the
> differences, try to figure out why the working setting works and how to
> apply that change to the driver in away that keeps other boards
> working. You're welcome to come back here to discuss it in case you can't
> find out on your own.
> 

I tested the three patches as suggested, but the panel still shows only the 
backlight with no visible image. I’m unsure how to translate the working 
register values into a generic fix based on display timings. Any guidance 
on the right direction would be helpful.
> Hope this helps,
> Luca
> 
> --
> Luca Ceresoli, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com


