Return-Path: <devicetree+bounces-272596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iH7YG5GmrWlG5gEAu9opvQ
	(envelope-from <devicetree+bounces-272596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:40:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 112F3231174
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A584F300D47B
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 16:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52DCE332603;
	Sun,  8 Mar 2026 16:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="cLyX4/DY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED5930DEC6
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 16:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772988046; cv=none; b=bfYBxCMGkQVs/v/lZI9zPF5B0PxZgor45np5YahVXEL5EZzbZhw1U8IP1OhfMRfA6+QQgO2/fRTmZSodiJmZNLpI7oo6bBZWsIM/FHi+5Z/I4IQ/dq2m1X417vs3SZ1q+bEAvQ5w1RKRzg80XH4ko95b42yLbNHMbgixUox237U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772988046; c=relaxed/simple;
	bh=zn4Ro29sKafgC6ar+k3SGedz+twMxlFBK9evosd8IM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=u8qvFehRdIOM4ttuvscwFmc4y3MNoQuGGRT0FhvHIjL9bxXRnNpiUQo0bAeYmJPtaGSZ2NjhcGqG78dS+0d/WiJi1eWLU6xXnWKyLHWPZSf3dH5mlIdtAxqL0nKiFoLafC2Tt7gRhB2M8E+ehIxPPvlEUW261y0EWvhYem+ND3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=cLyX4/DY; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48535a0ef86so4560475e9.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 09:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772988042; x=1773592842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3PyMN9ppxtG+J2rzulMPcaCg1huHspZ+ZEiksw/I16M=;
        b=cLyX4/DYL/ZGqGMgROxG+BOpxX9Hcvdzqcr+ruj48MoQzGEshXjp/O6ZmitdJgtU1Q
         6A6cPWQQ7NNnpREdIglQx9TvkGJW+cfbpaYh04rUY3MWmHx2eYQ30/3jUO5pHMuSiubm
         CovavZkPw7m86VSzcv8uowANoJuCJEA52/2lDGSZGCXAsBWGMr/xGfuFF159xcamclHM
         liw/23uCDVEQ0x0zfeXCRmCiNcoSQGAkEoDmoXc8ytUPfaOXkBDKvCYTxGtBHWl/Pa+E
         VnpbTLBuHWogcfDqG+nLhjUgruQHqc9KGwQ2ejP8/tWpwx/ptIbfJmqODpixwD3XByZJ
         HXFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772988042; x=1773592842;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3PyMN9ppxtG+J2rzulMPcaCg1huHspZ+ZEiksw/I16M=;
        b=XsFVocAFgWZfQ/C9HDBwUfKNQF3Y7fe8HDDETejpKDTMCgWYO53ym0QHiqrIoaoaYU
         mUyKgB4aEYBZA3V6HVAfVVVYJh7P0++wPeb3yL0jQTxRV5osYb7OCJPQvxZDX7uJXweY
         rNfYnQNH+BXeg5Msflylc5zB4eGFz9+WcV8ExRlwgkv6aM7BNQF7Sqe+cxf3X4+GUzEP
         MjqJfNTTsT3Qig+a3Y5IvT3q8tTwTEwqJesrvIKf9Qke2o+QG2qsXBS2ohrbqTwI7Xbo
         8Pv8g/OqlB6YqbZTEXXiIjN9/Fds//lrmfUDoBikoblN9OBj7U59yD4v6POq/2gFFzMb
         u+eg==
X-Forwarded-Encrypted: i=1; AJvYcCXsUA27zjsoV1m8Kq3uj2DP/9CMoyjMauekIvsL2eZW6nvocr2z5SdiLdTZWIHAv6SQsrUv2ho6/cAQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzfEB8qsBVw5D5JlKy4k4wk4WqbF7F8WPSpNgHZd3EAPvNUrltl
	7W/n33C4MgYZubTxn9Xxd2D45+ajCGTPQT6JoDz4UDBYmDlPAVLBqvjkWQAOTsglYCUqMX+EM6E
	Q3mZK
X-Gm-Gg: ATEYQzwpvztMhLjQRDUL2Db8+dhwOVTQV2uqpKpQlv0BZsQv0l8aYMtR9EuvgcPRJVb
	5+fRFkfTzNscUAz5MmPZnw5bNGhPrA1oxolGQONZl2jFzvgzhpR917i9DL1LAKLHeEMi1Bwhaq9
	quee3Mtmfe1AlDOXjJou6QHjFbbD+0YkPjMiJkknyqdPnh7lDfSZXhcLf1LpcCQ+R+GF09fcPRH
	60CFIIKp4CG2eni78k40f0BZogTzZNxJRkgtigT5ZUxjtvRcgBapvXWtKNl6UthDzZhW7rAVgEp
	m7HdMECwn5Tw+9NNmP89/AVlWrbOTTePKApDYE27ylfHjxyXgwQEFH6s8MRRiMb4txapEvnQcRx
	YBcjvZR1m06WLy+dSqsXZLsRbkiBECuvVZxEXr/VZyL+lFfMGmeEARj/aKBXI2YzuYV6KT7Ebkv
	e+2pwHEFVCrKOFYAnB1Mc3kdOPxjFwmw==
X-Received: by 2002:a05:600c:34d2:b0:483:badb:6191 with SMTP id 5b1f17b1804b1-48526923595mr140938685e9.8.1772988041927;
        Sun, 08 Mar 2026 09:40:41 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485244b6e9esm112420115e9.5.2026.03.08.09.40.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 09:40:41 -0700 (PDT)
Message-ID: <9157e13f-909b-430f-b2cf-b520bcbd56a9@tuxon.dev>
Date: Sun, 8 Mar 2026 18:40:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/19] nvmem: microchip-otpc: Expose UID registers as
 2nd nvmem device
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>, Alexander Dahl <ada@thorsis.com>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-8-ada@thorsis.com>
 <05128a16-553d-49d5-b09d-2c3e03cb4421@tuxon.dev>
 <20260220-maximize-glance-a0abd1806c44@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260220-maximize-glance-a0abd1806c44@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 112F3231174
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-272596-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.953];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,tuxon.dev:dkim,tuxon.dev:mid]
X-Rspamd-Action: no action

Hi, Alexander,

On 2/20/26 12:38, Alexander Dahl wrote:
> Hello Claudiu,
> 
> thanks for your feedback on this, see my remarks inline below.
> 
> Am Sat, Jan 31, 2026 at 06:11:56PM +0200 schrieb Claudiu Beznea:
>>
>>
>> On 1/20/26 17:44, Alexander Dahl wrote:
>>> For SAM9X60 the Product UID x Register containing the Unique Product ID
>>> is part of the OTPC registers.
>>
>> SAMA7G5 as well.
>>
>>> We have everything at hand here to just
>>> create a trivial nvmem device for those.
>>
>> Please massage a bit the patch description to match https://www.kernel.org/doc/html/v6.13/process/submitting-patches.html#describe-your-changes
>>
>>>
>>> Signed-off-by: Alexander Dahl <ada@thorsis.com>
>>> ---
>>>
>>> Notes:
>>>       v3:
>>>       - no changes
>>>       v2:
>>>       - Use dev_err_probe() for error reporting (thanks Claudiu)
>>>       - Move required register definition over here from removed patch
>>>
>>>    drivers/nvmem/microchip-otpc.c | 38 +++++++++++++++++++++++++++++++++-
>>>    1 file changed, 37 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/nvmem/microchip-otpc.c b/drivers/nvmem/microchip-otpc.c
>>> index 34c0d7611f3e4..b35ed13b004bb 100644
>>> --- a/drivers/nvmem/microchip-otpc.c
>>> +++ b/drivers/nvmem/microchip-otpc.c
>>> @@ -25,10 +25,14 @@
>>>    #define MCHP_OTPC_HR			(0x20)
>>>    #define MCHP_OTPC_HR_SIZE		GENMASK(15, 8)
>>>    #define MCHP_OTPC_DR			(0x24)
>>> +#define MCHP_OTPC_UID0R			(0x60)
>>>    #define MCHP_OTPC_NAME			"mchp-otpc"
>>>    #define MCHP_OTPC_SIZE			(11 * 1024)
>>> +#define MCHP_OTPC_UID_NAME		"mchp-uid"
>>> +#define MCHP_OTPC_UID_SIZE		16
>>
>> I think you can drop these as they are used (individually) in a single place.
> 
> If you don't mind I would rather keep it here together with already
> present similar definitions, instead of sprinkling new literals over
> this c file.

OK for me.

Thank you,
Claudiu

