Return-Path: <devicetree+bounces-277580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGrqBsuOu2lmlgIAu9opvQ
	(envelope-from <devicetree+bounces-277580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:51:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBDB2C6566
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D66A300F2AC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12422FF643;
	Thu, 19 Mar 2026 05:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AHZGmw4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98C5926D4F7
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773899458; cv=none; b=kXq1JAkDR4bQ8N+FfGnHbBBM6fLZdG4gIQBTftfWcDdrNiNwaUCKkGAiJUnP3WxfwGlA230ir2LAjiW2onVkbWaxzVJq5t1pbgyvQYGlYoTlTXy3HbAbYdUOPIvTa+0g6VtMlNU1X5E6xCRKhyvDceMiPfDRbg6IRckSzl7DvXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773899458; c=relaxed/simple;
	bh=MawAzpxE219MvSlVaJ+0R5jtOtD1/dpHGN0floVbngk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ghTmBliIYziL4tu7ApofXGUgKNGsbuUp8jARx4MhF1xN0GcTclb13O9AkoKYTel48w32thsBFoX+atHVD0ivkMe5UIF9i3Bh0woX4jYF1pbm1YJMud3wiA8mgnlDriAh6v7pg3VQLgT+lfagKjVY6GW52dAaFcJgZ7eDuu968YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AHZGmw4K; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-66873d8cc9dso133890a12.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 22:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773899456; x=1774504256; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FU3dYOZ5IUxYIeKpkZZZr4uovnrxVzn2MOOjX+dDH/M=;
        b=AHZGmw4KmLX86laRxFKsxIV/TZxJB8B+eXvjU5u9jPJCN7WGm2OfwV04/pO4P8fmbq
         xcITO5vILH2D4gSZHgmYaAmbjSMKF624jwAZfNtTh2bJqIywG9geKUfu8EhIJYTUqAuh
         Kfcwb/ODBSG/RpVh/Jy5bbCGPEil6XBigExHs/Wb3Jgn8Vw0Pk13B4M7pPBq5pD6zvY2
         wVRj6USWm7vaxOeoBuM9yL6fV2EAhVLTKyXwelyNFbRVeP+zfTWS+MGawOuU9pijGc5s
         MQLidUzXhMCPKm7kYOK04c+7ixQapNH6WASCETsf1mPXzT7sNKEEbbvSMRT9w26sTPWz
         fffg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773899456; x=1774504256;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FU3dYOZ5IUxYIeKpkZZZr4uovnrxVzn2MOOjX+dDH/M=;
        b=n3GGdTQdltx3BNhvURFhYoS61K9bi3IRao5AuaedHGYGbqpYXBajGUUZWs9kbHw6dU
         +5IFxA6HvEREbfzCriQ/jkuxx2ov8APtA5+mRyahVu13x4GgOGct98DW8S30x6J8FGUS
         uX1NRkaloda9NDumepomO2abbVOoXPS2HGmY+iqcBtwQrfup1btQsmp6a2QuQKCyNjzb
         GLZybpxHiencBmDs6RXa7ZT+2aACOSFEOQTr4ZRdh+YZ/QetqHu2rkYEVfiyRy15USPW
         LSvoVvqIRA/V9M3f0NP9VeKOXojdlVEyb/HnK1ruyNOEKtFgs5TE6ktSw2Bg2/cEeD1q
         cVeA==
X-Forwarded-Encrypted: i=1; AJvYcCUdY29BX+yUhc5wqtoAD36ErtEXw8EQm6qX+2UolwyUyqdHmcvoAJAd9DLBO/rfmD4YYEdmXG2Orb1K@vger.kernel.org
X-Gm-Message-State: AOJu0YxnWKAGP571WmsfP+A8rSwlNzlAHmhNdkwMKHjXDO8rCk56LSv1
	yrgJxtq6P6zj7RcPaUcbjy8WV5yIkuRxH0LrzUqOOWGJiaAy46Cpvo5z
X-Gm-Gg: ATEYQzwbqglTsliZAmuZHVVczxYnXpEudHZCVerMIGDfbqSdfJBk5FgKpv/aQZEL9/n
	qyvTrTX7PyVHPNBH0JfxEzK8RjKpiLOxrfZ7MV3ju42Snb4NUEKfHEBPFbreozGmRp17waijB5M
	/yRBGYjAKG2tDdZMD6RzB9am0L0O8AYGQD4kRdjQXHLIEg3LKb5mdroXDkkkx+j1BZdB2HJCDMg
	4bIQCRX9YBEgei6YPnYS+a1IoC46wfDu4VHi3SXt4R9hNtCwcDCZ6g1TJkn4AI2s0nAVR/oaADo
	KNVyxUF4ikvAhkVwoyM7bBqwtgObCjkKtPwNkB4iCmCG0bIXNYclXzfISXH68CT1x9L1JeV8JiM
	D/dL3lCCH901zqu4mN1pUSho9Tc4fk3XbwUDdT9i++GQv2iS/7/4iFxBJ8rn4ubE5Ws6mDo6G5e
	b2aYDmO8o2xDPBrPTwX8TaoezM/HKT8zkynRhGCg==
X-Received: by 2002:a05:6402:1ed5:b0:667:6eeb:9aa8 with SMTP id 4fb4d7f45d1cf-667b2c03461mr4405868a12.15.1773899455763;
        Wed, 18 Mar 2026 22:50:55 -0700 (PDT)
Received: from [10.52.58.58] ([193.118.55.72])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-667b129e69asm2889513a12.22.2026.03.18.22.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 22:50:55 -0700 (PDT)
Message-ID: <7c7034a7-686a-42c2-bdba-6f31b5179f7c@gmail.com>
Date: Thu, 19 Mar 2026 06:50:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: Add clock guard DT description
To: Rob Herring <robh@kernel.org>, Vyacheslav Yurkov <V.Yurkov.EXT@bruker.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20260318-feature-clock-guard-v1-0-6137cb4084b7@bruker.com>
 <20260318-feature-clock-guard-v1-2-6137cb4084b7@bruker.com>
 <20260318225510.GA639444-robh@kernel.org>
Content-Language: en-US
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
In-Reply-To: <20260318225510.GA639444-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277580-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uvvmail@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.980];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1FBDB2C6566
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18.03.2026 23:55, Rob Herring wrote:
> On Wed, Mar 18, 2026 at 05:43:40PM +0000, Vyacheslav Yurkov wrote:
>> Describe device tree binding for virtual clock controller guard.
> No idea what this means. Please explain how I would identify this h/w.
>
> We generally don't do bindings for virtual devices and we don't do
> single clock bindings (other than some we are stuck with).
>

I described a use case in my cover letter (PATCH 0). Perhaps our 
approach to tackle the issue is not correct in the first place. The term 
"virtual clock controller guard" is something we named it, but it's 
literally just a clock provider which combines several other clocks and 
input GPIO signals in order for the consumers to check whether they are 
allowed to probe already or have to wait until the input clocks are enabled.

So in essence it's like a helper driver to simplify consumers probe 
procedure. Does it make sense? If you don't do bindings for virtual HW, 
how else would you approach this?

