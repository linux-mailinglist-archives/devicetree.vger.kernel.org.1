Return-Path: <devicetree+bounces-277678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGExN43Ku2leoQIAu9opvQ
	(envelope-from <devicetree+bounces-277678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:06:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F6C2C9394
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A84723068DBA
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C16523815C4;
	Thu, 19 Mar 2026 09:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NtxRgZMT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1AA3806CD
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773914105; cv=none; b=T3AXsaivm1zElw73HalzBjereuLcVYoXVN/9GFZfyBL+O9KggHNeZzFEDLqq9NJcxrfSqNir7t1NBirnc4lqIzar6zj/Hoqb+3hz2qc/6UeQ0VVWgpNroNjlPivrwAWUq6BLBpJwQ9VhLU6EkxUsR3+rlS3zj1qnQkDfHCYXqU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773914105; c=relaxed/simple;
	bh=ZqzR5jim9m8W90WhiNlr2pFC3KSYojmyxNMT+fYEmAw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bIfLdqZn/Z5PAI/cAM/ERHnqFGf+56X8wpJUTWe+IQxrx3AdImxB8yXkEy62gu5kSRQ9R1xHlugJ5qfB3hCdusjjNfXE5/hKhf7LVAlHWrSaVqDTJSgSG81xlCd9cz0aJC2kJtjexmRAT0ubpOKWSmjgAaQK+UJlG8j2RwmGF9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NtxRgZMT; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c7412b07f22so815251a12.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773914103; x=1774518903; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r1/D9HJg8CdQe3sCd1w5lE5XoL+bpuuZ1Z5WHjbt018=;
        b=NtxRgZMTSST3HcgelywyoqxllcQDlZrMpusU752eZDb9sIeVu9y0wVI3uzP9Tk9qTO
         U24nEkqO4i2/tEwzdkSkyT3IJgkXFnjvrjAlYR7l674KrtNJ6W5Mn358XMkZbUJdcWBJ
         l3YCQuKzTYCfek+tvxa/DVCFEKfPftk7vGlhn51jQqRkbbg9kss9wqSR1Z6Q/6C0jXnl
         2dn7hXTKnY+CchBjw3frpWYawZw77fS1CLMcgYgmkYnei5jzRH+NxmCY4s4BL0ya1aAm
         Yvu/JuYGb6ck7UdEnaegKbZ+kpSztR5YQmbE72adEZ4tHi4mQEDR8Hfy/pWZNFsQyK23
         IMQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773914103; x=1774518903;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r1/D9HJg8CdQe3sCd1w5lE5XoL+bpuuZ1Z5WHjbt018=;
        b=h17eVkh4mQsqIH1TgA8tgSALx/+SIMNIUzpasEO+VQui6tavFLECp6NS+VTNL2kNsn
         XrToah0XW84xxs4T/VhNFafdZltD9oO7rF6tjx6JrxQhC+6hyLy/1aFTDijYaDykXs3j
         9eQ/eSTSTWEPLUe4iGdRC2EVh1VdkPBVv7e5IMqNVzHv08I1H7AfONMizXaZ8Jostvr9
         SAGNxuTxhu7OJ8GIP9A8y/m+pKZLz0KTI2wkYi+2vuONolRvN/s/KGMx/9o4mivV7grI
         NfqaQEfoGWXrPXA98tLrYF2fp0BmgfCbhv4RrH7U1Rr3BL9hWseo9QjwGwnpxGXgGm60
         +Yag==
X-Forwarded-Encrypted: i=1; AJvYcCUzJVg/yse4etNw5L1/wTc/Z8m+EEYQY211G/3BmPjkBXv2Z+qC6t/4S7KoR5MyrxfFVdhd+XEB6luH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9iP4Y+id94xw/8M0b13+FCdeYNSAY2eVP5Suw+jyDzTKC/KxO
	JVc5t9ySc6hvpBBFKjbXj8RtyYmXPNgB4DkKhSYo7feaATqIijgrRkz1
X-Gm-Gg: ATEYQzwhYBChCTtgIUmHkaIX+6WKszHEqZY3b5JEDSiAtXVHdr4vbxk1s8oyR27U1PW
	GSV9rmdGMqg+0MGQ+0HQ1kWTVZsOfrhlOk9A16Yr217jqz9SdiyyaluT0kEWpATlbXmGF958fyO
	5xpMOYuyprUMzxfVE7ddzETaNSZvxnoTMITBNhn6V7+WeXQeeZ4metfi5NBrScVHx16Dd3RX0oT
	zU5IOhTdnAwzxYMpYoI5dQ/spYdH8V4KAB4JqHx+1zMOcBiR8BxU0+A626U7zgeDo064BE+tjFs
	Eo7rhplPGln6H0KFJuoeSpwH0trzKvFlL3ZtdKcRNi2VHg/NDi6xnOn5xnJqxEsGpaLYNj1hKuZ
	wxzr8rjogxQNiPKb/lRREKDac4272kQXCwosxJO4ybP9yyPRSfQAUtWWPPBEiZSwT7bbn2RGuk2
	gvGBoefTf5E2pMO2UcD9IpmPDGvz2qgU0m5jfuGA2JhybipTE=
X-Received: by 2002:a05:6a21:7d03:b0:39b:8571:3051 with SMTP id adf61e73a8af0-39bb25aabf2mr2527165637.28.1773914103190;
        Thu, 19 Mar 2026 02:55:03 -0700 (PDT)
Received: from [172.16.20.13] ([136.226.252.245])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e0b38d0sm4593977a12.1.2026.03.19.02.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 02:55:02 -0700 (PDT)
Message-ID: <a937f714-d013-4ac2-a52b-2893fc16f225@gmail.com>
Date: Thu, 19 Mar 2026 15:25:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
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
 <49b79a0d-844b-4fee-bccb-706187ed76d1@gmail.com>
 <DH5S3DYT0PJQ.11ABZFGEU6ZPC@bootlin.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <DH5S3DYT0PJQ.11ABZFGEU6ZPC@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277678-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.934];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 38F6C2C9394
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 18-03-2026 14:21, Luca Ceresoli wrote:
> Hello Sudarshan,
> 
> On Wed Mar 18, 2026 at 6:45 AM CET, tessolveupstream wrote:
>>>>> You might want to look at recently posted:
>>>>>
>>>>> [PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual LVDS output
>>>>
>>>> Thanks for pointing this out.
>>>> I tried applying the patch “[PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual LVDS output” on top of the current tree and
>>>> removed the changes that I had previously added in the driver.
>>>> However, with this patch applied, I am currently seeing only the backlight turning on and no image on the LVDS panel.
>>>> For reference, the LVDS panel used on our platform is G133HAN01.1 and the
>>>> DSI-to-dual-link LVDS bridge is SN65DSI84ZXHR.
>>>
>>> Thanks for having tried.
>>>
>>> Can you please test with both the fixes in the series applied + the test
>>> pattern feature and report the results you get with and without test
>>> pattern enabled?
>>>
>>> The patches to apply are:
>>>
>>>  - https://lore.kernel.org/all/20260226-ti-sn65dsi83-dual-lvds-fixes-and-test-pattern-v1-1-2e15f5a9a6a0@bootlin.com/
>>>  - https://lore.kernel.org/all/20260226-ti-sn65dsi83-dual-lvds-fixes-and-test-pattern-v1-2-2e15f5a9a6a0@bootlin.com/
>>>  - https://lore.kernel.org/lkml/20260309-ti-sn65dsi83-dual-lvds-fixes-and-test-pattern-v2-1-e6aaa7e1d181@bootlin.com/
>>>
>>
>> Thanks for the suggestions.
>>
>> I tested the three patches together as mentioned, but the LVDS panel
>> still only shows the backlight and no image. I also tried removing the
>> test-pattern patch and retesting with only the remaining two fixes, but
>> the result remained the same — only the backlight turns on and no image
>> is displayed.
> 
> Sure, the test pattern patch does not change anything, unless you enable
> the test pattern.
> 
>>> The first thing I suggest doing on your side is testing with the 3 patches
>>> mentioned above.
>>>
>>> If you display works, good! Let us know (you can also add your Tested-by /
>>> Reviewed-by tags to the test_pattern patch too if applicable).
>>>
>>> If it doesn't work, compare the individual register values to find the
>>> differences, try to figure out why the working setting works and how to
>>> apply that change to the driver in away that keeps other boards
>>> working. You're welcome to come back here to discuss it in case you can't
>>> find out on your own.
>>>
>>
>> I tested the three patches as suggested, but the panel still shows only the
>> backlight with no visible image. I’m unsure how to translate the working
>> register values into a generic fix based on display timings. Any guidance
>> on the right direction would be helpful.
> 
> What you should do is:
> 
>  1. with your patches, and while the display is enabled (and working) do
> 
>      cat /sys/kernel/debug/regmap/4-002c/registers >regs.working
> 
>  2. remove your patches, add the 3 I mentioned, and while the display is
>     enabled (but only backlight is working) do
> 
>      cat /sys/kernel/debug/regmap/4-002c/registers >regs.broken
> 
> Then compare regs.working and regs.broken. Which registers differ? Can you
> give a reason for the differences?
> 
> You can come back with these values here so we may discuss them.
>

I followed your suggestion and captured the register dumps in both cases.
~# cat regs.working
00: 35
01: 38
02: 49
03: 53
04: 44
05: 20
06: 20
07: 20
08: 01
09: 01
0a: 85
0b: 28
0d: 01
10: 26
11: 00
12: 53
18: 6f
19: 00
1a: 03
1b: 00
20: 80
21: 07
24: 00
25: 00
28: 21
29: 00
2c: 10
2d: 00
30: 0e
31: 00
34: 28
36: 00
38: 00
3a: 00
3c: 00
e0: 00
e1: 00
e5: 00

~# cat regs.broken
00: 35
01: 38
02: 49
03: 53
04: 44
05: 20
06: 20
07: 20
08: 01
09: 01
0a: 85
0b: 28
0d: 01
10: 26
11: 00
12: 55
18: 0f
19: 05
1a: 03
1b: 00
20: 80
21: 07
24: 38
25: 04
28: 21
29: 00
2c: 15
2d: 00
30: 0e
31: 00
34: 2c
36: 0e
38: 1d
3a: 08
3c: 00
e0: 00
e1: 00
e5: 00

In the working case, several of the timing registers remain at 0, 
while in the broken case they are programmed with non-zero values.
> Luca
> 
> --
> Luca Ceresoli, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com


