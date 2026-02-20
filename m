Return-Path: <devicetree+bounces-266793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JqTrBDDkl2mE9wIAu9opvQ
	(envelope-from <devicetree+bounces-266793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 05:33:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C6B164AB1
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 05:33:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B15643012CCC
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 04:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D1A32B99E;
	Fri, 20 Feb 2026 04:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JiSu46Pk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4793B32AAD6
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 04:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771562028; cv=none; b=TiwzK60bthLCGDzwt1sFkM5rV1JQUv997wcZnnHlRu85AbIwolAAkKmQWaGX//c5nqOxDbGesKrBoOoCTIgS/1kMFCBlyrMIbMzugbyhvkVy8M5TQ9Gaqz22tnDzXsf/LzuhIqD/7Tc2jOrGy2II6WRggjDWXdio/cjBoVCwwD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771562028; c=relaxed/simple;
	bh=cqQX4otJwlu/EBzCiT+EMmNhTOOeWS2QSPRS41i3ge4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ut7FMUNrV0qc/kjs+JKQ/YGIXqGw9YJhQQXCSObg8eiqJWACCOkfb6Bo2QRcn2ZisomP3n8C0WG6AhG5caZk7nnCNjtvZNrEm5qo9t3kyiTVyiNhp4eOqxPpsbeZNt2AxOSqWElcqULDOBxi75ixseCd33T26e4diH1SHZqAn3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JiSu46Pk; arc=none smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-1274204434bso2064764c88.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 20:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771562025; x=1772166825; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vNvTcmQCYkNV3OvuP9WNSN7cpBfsnIcgezoEmqNLxoI=;
        b=JiSu46Pkj6G4vnhbM69k/5pC7eHg/djAItnoqwQuQ6AKlvPB1cNg39kANI4csVLpTS
         LLGZE1tRFWaj4AVh2FPq89e++l1eJ/D4ll9gah/Ky7BklBhcLVnvgBgZ9Xg8QIHm+6ur
         RbdvjsBQCIkorc3zUcvye6Vo5gKYGYEh17ryV3kBvJpy8SDvTIYlKdTrBxcSvGVeqRZi
         we/j2mnwaR4z0zB9elTunG2Uxytcy4oMOTF2aktynK7ez/o2dax7wowThRfpRuWdw+Cb
         sMWmQy3Dkf/ry2pP0yKTpNaUwVIxTSW3L4Ult4r9vGOoKJINjTd+F0m/cffjP8l2+ByI
         qVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771562025; x=1772166825;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vNvTcmQCYkNV3OvuP9WNSN7cpBfsnIcgezoEmqNLxoI=;
        b=m79bXDhmlEaGlkqOvzJAmxKIgXLQg52oIDuQ2J5j/p8oS3gZFHXIAyhMVQSbztCHcy
         A4z3OdncHmJKOZG7Vfc56jZEfxLjhmgr9YsW/+sL/+rHFY9JzXqTogoIOM9D7o9H2VX+
         BCNNKc1rJvImha35OAtZSX0h93UARuPQEL3ry22n8/7KZ8mr28mJJ3s4+i0E0qoTyTD1
         dlkCrfGBwGt3WrTVDLoMW/hvL79tz46lAKl1NKwTr8OXisABViICB8PnSTQsciqDOku9
         lXcL5MNe/33pW550Hj4g7DNsyzY0DSeOUkHZcdAD+wqBn7xmKfbhnKMlG28kyCI0LVKC
         XQUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmmJv9WG68lGfmuY97UJQrNjqk6RPvGzYNYA3qW8JFgJApz8oEi7PUHLqTf4OAeD4TQ8cbqyWC06HX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6F2YqSvK2kj6Il+WHIObwVFbKC42mVwHkUYwv6oyXtmpJigQ3
	FHYnhb0Sltzo5XmFzowzDkbBTJ6lazDTRmxx3IDJvFOHXV5MQCLXde0o
X-Gm-Gg: AZuq6aJ52aUDpAmDq1WHOut8SqujFbRzLvlK/Kl6Wm3G5clqLBRGAbFEBKEy/qhYuTu
	0fL8gBWoxWCL6pScmsZ1S1QHGks+/sTXI+MIGAlG5XvbcAe6GFe2XuABCbdLTDNPlfjI12TpTrP
	47kPoSDavftG3tS7iWgaXZiIXS7qoPYNtLoVKGxwONoJ6TdOdzMQtdjrTVil8VRkdmSKReLd/tP
	aEg6Qpr6PLooCFtBit38qmAK1O7EuGMFU13MPy6aJfuohhSeUD39Vg2cmWNQspsfCkb85p7lOZL
	VTtKVPTo3sDQB7DcmEE16OOw7TSkIg/6ReKhi1GORIdL/nieUdk4Wuxqf9lEZ8KG+2UJeZ9Wt+6
	jAJn19kt3GOijLWLBfsZIxbHVOyS0LcB5AZ6qiH2S+kVnDs1uXI0cxwbkcl6OhdPtxGk6zOp4ES
	JjM+aEDpI2F2C5dr+7DO6KHBDXtpO5xshrOwcyT5p6vNWpvxk7T5wrgvl7mFHa63+hDmA4YwXa1
	U6FKQ==
X-Received: by 2002:a05:7022:1602:b0:11f:1e5b:2dd6 with SMTP id a92af1059eb24-1275faa7f90mr1954175c88.17.1771562025308;
        Thu, 19 Feb 2026 20:33:45 -0800 (PST)
Received: from [192.168.68.65] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742cc83e6sm24382881c88.15.2026.02.19.20.33.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 20:33:44 -0800 (PST)
Message-ID: <1ebc2e1b-f1aa-4559-90a0-feb628d5bfe1@gmail.com>
Date: Thu, 19 Feb 2026 20:33:43 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, beomho.seo@samsung.com,
 jcsing.lee@samsung.com, dmitry.torokhov@gmail.com,
 linux-input@vger.kernel.org, nick.reitemeyer@web.de
References: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
 <532531d2-8f26-4ffa-9355-7821a4d64200@oss.qualcomm.com>
 <1e74b956-a45a-4d3e-b7fa-e4d5dc0390db@gmail.com>
 <97d9d942-236c-4f8a-902e-0ad2ab684a76@oss.qualcomm.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <97d9d942-236c-4f8a-902e-0ad2ab684a76@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266793-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,samsung.com,gmail.com,web.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guptarud@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 76C6B164AB1
X-Rspamd-Action: no action

Hello all,


Top posting for once (context below).

Not too sure what the next steps are to get the tm2 touchkey in. Should 
I resend the patch, contact someone else that can help provide guidance, 
or something else?


Adding Dmitry Torokhov (official maintainer) and Nick Reitemeyer (person 
who introduced this variant).


Thanks,

Rudraksha


On 12/16/25 04:59, Konrad Dybcio wrote:
> On 12/9/25 8:10 AM, Rudraksha Gupta wrote:
>>>> Add the tc360 touchkey. It's unknown if this is the actual model of the
>>>> touchkey, as downstream doesn't mention a variant, but this works.
>>>>
>>>> Link:
>>>> https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/input/keyboard/cypress_touchkey_236/Makefile#L5
>>> This driver mentions a register called CYPRESS_MODULE_VER - maybe
>>> it could help confirm the model?
>>>
>>> Konrad
> [...]
>
>> When run on mainline, this is what was outputted:
>>
>> samsung-expressatt:~$ cat /sys/bus/i2c/devices/0-0020/module_version
>> 0x06
>> samsung-expressatt:~$ cat /sys/bus/i2c/devices/0-0020/fw_version
>> 0x09
>>
>>
>> fw_version matches downstream ClockworkMod Recovery dmesg:
>>
>> ~ # dmesg | grep "FW Ver"
>> <3>[    2.201312] cypress_touchkey 16-0020: Touchkey FW Version: 0x09
>> <3>[    2.206317] cypress_touchkey 16-0020: Touchkey FW Version: 0x09, system_rev: 8
>>
>>
>> Unfortunately, I'm not to sure what the other variant versions are, so I will CC the driver's maintainers:
>>
>> MODULE_AUTHOR("Beomho Seo <beomho.seo@samsung.com>");
>> MODULE_AUTHOR("Jaechul Lee <jcsing.lee@samsung.com>");
> Sounds like the best idea, I have no clue either
>
> Konrad
>

