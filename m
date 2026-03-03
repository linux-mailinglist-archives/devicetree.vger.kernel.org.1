Return-Path: <devicetree+bounces-270355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG+EGxSZpmltRgAAu9opvQ
	(envelope-from <devicetree+bounces-270355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:17:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A461EAACC
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BBBC9304AA02
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB3CD38657F;
	Tue,  3 Mar 2026 08:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uxerb8oa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BC8386C28
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525763; cv=none; b=PZm1EHAxAs7TUo+xHNXkt4m3C/J29HV3SotIweRfUqUz1ncZLYaVX1/U61221wQLOXjFspFD+oZeeyMIzSqeXeFWlBHxhNMkXwYJRYKGvjUiyi/SYcrsnwYC3VeNe+mNRdS9a83OlnPZj30AHg3ZS0pLcs0dtRWVO+c/wuKdnWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525763; c=relaxed/simple;
	bh=h7UQp+wCCdGxuPRthbKJCaMnTN9z9Rmtr0lUehGbgh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BaEg/x3UqZLbaqYulzzog+rBhcwy4Zqk3C+23sBqvFcf8mdlnYZaMBYxL7ZmsHtCe57/xCSnswumiF56BgfTS7DBSRglWYUT/SgPaT2V9k6oSkOshvi4DfzCoO/itdxHVmxXe62POTVi6uuOm2MKg1l+wvqG0NanQxs/MTF4Xx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Uxerb8oa; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3598c008455so1195036a91.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772525753; x=1773130553; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TOoaOEZuNJH/wFIt6h7FeWwE1+oo5QuN+aJxkWYzY4s=;
        b=Uxerb8oaCCHITvXnvichS4DlkVfxUmTYqIM/l3tpXAA09/+TyIp3uZJ5vXxIGRtrBK
         6y3bo/4Vv5uq5gDzXgf53kb+p/59adyBYKD5aA8RgEhabxFSlBkUy4Ec1I3igW6lZHdv
         vozrHne30y+YNhjT1T+6339N7hNY7LlUQV8t6nZuj2/XRAXYDmXMk9W2HjCVMnC8/aCH
         DKLgBomVazYQRSwTIi8NALJnv15zDHcrSLp5mS4tyok6VyrG3kn105zV0v57ug9c1PmY
         PDZpRh397b9q2op3fXaEyjA7y4LnRmXreSgY6CiTPc3ucLY0xMh/eElURSwk7Ge7lmiw
         4usA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772525753; x=1773130553;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TOoaOEZuNJH/wFIt6h7FeWwE1+oo5QuN+aJxkWYzY4s=;
        b=NjA69tzhguJD14CWRISCfhC9UGb63URcy309ByGsfHjUOKERftCbylDrPoATh7xGbp
         yqkAyeX6p6AIRkUEtaWKluVV4A0run9ChGil+I6I3HA2AI1toCgeq576YVp2LN1LmZ8W
         sL9pXxB7l+5PgsjO5Y/WY76sDpjohzEOHXEeEOqyctOUPdE7mHsgWdiHrMHJ4VEAglTr
         flH6ZYMhWGZRuPzaZ0SzdjSsOFSWaAg3WVq9iGgIXD/Pm1xWCBpnHe1tX+XqbZ10HTqj
         K+zHkcht3coVoRhPSxZZ4zmSz28VBCN6hglx9yszAE/WPrrG7z8w1o0LDyuinc2ITNBN
         balg==
X-Forwarded-Encrypted: i=1; AJvYcCViFoNLVNM/4rt5GtXnW9KKZiRkrJcUf0d0LZ1iPUXj8e+OrDXizeBaXo3DRLV5IrTjfo4CSdtyx791@vger.kernel.org
X-Gm-Message-State: AOJu0YzQb0wpIqvj5sLeXIT0lzvxstnn8Ngji1pviOUpYUkztgjkZDlV
	RuIiQvUhmR9qF6OK94KA4W6viR2sKDIdZYf26NiAhN6hlEfZg6iowkfg
X-Gm-Gg: ATEYQzyaEXMg/3pjwmNC9Kdy6GL3R+2Ec5HGzNMjDPY0m4YmuXKayQE0njEVp6nwqIJ
	oweBmnqqGawwDyPn10RazlM7gPBpYMrPJdYB2rk3JnWGRhLSy+uMoNDfuhoM78xvi3X8WLrtpQg
	osKAyTxFDTu0TaT2yCxYQAvwLk43IGU2Vr6V20f+Uej/Cjc70OmSU6PIksfZMgiuMfbVyDpo02C
	G7ZJWpAjIHZztryf/1L/bAGp6PzGeJhYVqCY8SFKw/E1nfo5y3KtQjcb2B9caRHUhuK7B90DeoA
	r2fbIqHfLexfiD+IWZeUJa+8H7I2jJ76CYU4VbGL3dUXCpcUIBFAM+M9/UdTQ6OuR/E/ctP2zDE
	Oq8qpGC26hepX1DmqDP6qNZses1b9+wMG9+/5+OUx6v21EDo+cHjlS4mhHqVmaaUSBqYlhnkh6y
	LeFdOR7zSWB5RganlnPu1FIFd43f3bjwzScni2XcqKZFbiAaD60qq6m0cX5UbRtGp6rGMLi460G
	TaE
X-Received: by 2002:a17:90b:4b50:b0:354:a662:47ff with SMTP id 98e67ed59e1d1-35965d188d6mr12983648a91.35.1772525752831;
        Tue, 03 Mar 2026 00:15:52 -0800 (PST)
Received: from [192.168.0.101] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c408296sm1377885a91.5.2026.03.03.00.15.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 00:15:52 -0800 (PST)
Message-ID: <b69d5393-f122-44e9-96d9-342f458c3487@gmail.com>
Date: Tue, 3 Mar 2026 16:15:44 +0800
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
 <f556ef68-dac3-4652-ac21-ea4bbb4e912c@gmail.com>
 <9cccf8cd84b394f66b85e2af3bef0a3ecd154747.camel@icenowy.me>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <9cccf8cd84b394f66b85e2af3bef0a3ecd154747.camel@icenowy.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D9A461EAACC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270355-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[icenowy.me,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[verisilicon.it:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


On 2/10/2026 8:02 PM, Icenowy Zheng wrote:
> 在 2026-02-09星期一的 16:45 +0800，Joey Lu写道：
>> On 2/6/2026 11:09 PM, Icenowy Zheng wrote:
>>> 在 2026-01-29星期四的 12:05 +0800，Joey Lu写道：
>>>> ========== 8< ============
>>>> +#endif
>>>> diff --git a/drivers/gpu/drm/nuvoton/ma35_regs.h
>>>> b/drivers/gpu/drm/nuvoton/ma35_regs.h
>>>> new file mode 100644
>>>> index 000000000000..0f4a7a13e7d8
>>>> --- /dev/null
>>>> +++ b/drivers/gpu/drm/nuvoton/ma35_regs.h
>>>> @@ -0,0 +1,88 @@
>>>> +/* SPDX-License-Identifier: GPL-2.0+ */
>>>> +/*
>>>> + * Nuvoton DRM driver
>>>> + *
>>>> + * Copyright (C) 2026 Nuvoton Technology Corp.
>>>> + *
>>>> + * Author: Joey Lu <a0987203069@gmail.com>
>>>> + */
>>>> +
>>>> +#ifndef _MA35_REGS_H_
>>>> +#define _MA35_REGS_H_
>>>> +
>>>> +#define MA35_FRAMEBUFFER_CONFIG                   0x1518
>>> Please check my Verisilicon DC8200 driver, which is already part of
>>> drm-misc-next now.
>>>
>>> The display controller here seems to be a earlier one from
>>> Verisilicon.it looks like a DC8000, or maybe a more earlier one?
>> The DCU is a Vivante DCUltra IP rather than a DC8000 series.
>>
>> It's an earlier generation display controller and was customized for
>> Nuvoton, so it doesn't have a public model ID.
>>
>> Because of that lineage, parts of the register layout and
>> functionality
>> remain similar to older DC IPs.
> The kernel seems to dislike different drivers for similar IPs.
>
>> Please refer to MA35D1 datasheet for more details.
> I checked it, and the register definitions looks compatible with DC8000
> registers at [1]. However no identification information is shown in the
> manual.
>
> I may get a MA35D1 board after the Lunar New Year (although it looks a
> little expensive), is it easy to bring up mainline kernal on arbitary
> MA35D1 boards?
>
> [1]
> https://github.com/milkv-megrez/rockos-u-boot/blob/c9221cf2fa77d39c0b241ab4b030c708e7ebe279/drivers/video/eswin/eswin_dc_reg.h
Our team is actively working on upstreaming support for MA35D1. It is 
possible to bring up the mainline kernel on arbitrary MA35D1 boards, but 
for the best experience I strongly recommend using our Buildroot[1] or 
Yocto[2] tooling available on the official GitHub. These provide 
board-specific configurations and greatly simplify the process.

If you decide to get an MA35D1 board yourself, our Buildroot/Yocto setup 
will help you get started quickly and ensure you have the right patches 
and configurations in place.

Currently, the mainline kernel version is 6.6, which is sufficient for 
checking registers and basic functionality. For more complete feature 
support, our Buildroot/Yocto tooling remains the recommended path.

[1] https://github.com/OpenNuvoton/buildroot_2024

[2] https://github.com/OpenNuvoton/MA35D1_yocto-v5.0

Best regards,

Joey


