Return-Path: <devicetree+bounces-307962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jaB3OjozJmp+TQIAu9opvQ
	(envelope-from <devicetree+bounces-307962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 05:12:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4943665266A
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 05:12:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QiRr2Q7p;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307962-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307962-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33BF2300A8D1
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 03:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2211634751E;
	Mon,  8 Jun 2026 03:11:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E297C346AE1
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 03:11:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780888295; cv=none; b=JSWYbB9EFcyJ/CeRLMwciv5lsbZ+fAFzKTBoHPwHtEQEbzEabroQSROOcd96nXEX9av105Mo++Rhyi7RKQDXZLZx7YvzScsvmEzbtJJgJ6TqgkIM/idUwuLlDQ7fkaa1ljJZ4GKJDLy/pBdtIvwj8ULw1r8hXTCwu/qcfS2uQY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780888295; c=relaxed/simple;
	bh=eMMFZ7PoTVFU+HtZAfAiBJKr6ct6C46CfD1rFsryOhY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gXddmjo1AH8cJ97nkT65Q9G6TNEbawdI6fnDtKSq9d2zebLxv/Y97XyfReMwMDt9b8A1zUNLJM/seRXSTxGeUTrcVgDGcHjC7UTv3byxm8LnozFLAmjkzFhenGqw2m+QBc35hkF0mhHqmHfKNR6j+wos4C8eKK+aveRBSHj+kO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QiRr2Q7p; arc=none smtp.client-ip=209.85.214.176
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2c0c3315c5dso40892385ad.3
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 20:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780888291; x=1781493091; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=o6AQpyw9cz+Q5RmbdlhznksmZIhCHg9E+Gub5iwssz8=;
        b=QiRr2Q7p0y2f4g1k4E5KY4bzGMkFqOSApjsrwGPZWT5kR+Ye2F2Fp5zlEUj+DMGinC
         o9DojXxLRJig6k1r7HwcMgozLQCnsw4zR3onKu+MR/ur+aydWXoTVVoEOJ9qBYMK4jWE
         17QQrdS+n26QxtvYi6qhu5c6whgbqvFkROksQfL4bl9ilfzS5wnUOeDz4bHNFkqGkIEv
         oriz3sl5MyJlo+Q3RS5h0YbOqfsG7LtTxTnkSaIm9t/Ba7obTAH9f9CFlU9JNljBHVog
         Y9ZW/Q2/fxFUAlzMvzDoptERzLOZhBhLUcmHso2cYAtFLxmSR17X2QOTeFCZlSiFMYWP
         ylqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780888291; x=1781493091;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o6AQpyw9cz+Q5RmbdlhznksmZIhCHg9E+Gub5iwssz8=;
        b=Eu7wtiYimjxLRfY4MEgm0wt0ffsSxTYks8TaSv7B9rEmR96vOm/PCREJIAw4cjQutP
         Z5VK4Kzca7F6aNeUx6p80EVM04lkTt8up2i18nRjLJO9WEmhtHveFGx5OTIHeSt1OUwN
         Fx0sBF9PI8roLfcQ5JhYL640pACIVVw2Qkp+vYCHRzsuV9l6IiERGygWMhQ2krg/uZj8
         ZeZB/+zlnPLO3lZxhbU4j69Au85/TFrLPSYv9V0s6CbZrjbL4mu4eJoaglKpp7KUF9es
         axg8g7pQwFOPICe7nQwzMxaDiHKHu2yo9FtNUHreywXQdXni60+2rESoOAnP6Cp9IbjI
         U9Uw==
X-Forwarded-Encrypted: i=1; AFNElJ+6ONm3Xh0jorCg36Ac4wuLT+mlt3bwWb5g8wWr4yGZVWjYlvunmBLB/vIKaCfQyMhN8OtTlQd0YwOA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz3kRxLI4fRADnmJ0I9jromBro2dC9cIm1d5qwjL+HEXD8+Wox
	w2vqkDhj1XJWGxdPWQlgEiPlboQhpbwMhZuLkvdOxRJ1qe3Xj33IWCUZ
X-Gm-Gg: Acq92OFOJEdD4fi8+g2Xv6y7ojW1VSl+DrlqetL/1nynIuwnDsw7tzYHl7uF73R4SnN
	aEvWrUFNs09tqNrp4wcqiKGi+uLGuDo3AbMyQpei4x0xtDnWVyHSnhSfEnyzEADJ0UhXWNjzmsy
	XRFgWF2Ps7n0usau/w3kYlwK3aH/PAlnM3DGKsFPHNfossH41VmKG7u8bnbYE3U94DNhm9mGQ4R
	Hy/AqtnTYymLKsLdhpMSiQOMkzckSSkJLbUP6uhSYa8PHUy9SRrFWhFesxQf468BEWmnXs6Ng5I
	w9pb8mC7GD03sipoe22FR0hLDUf51Ri5Quxjc4zpI6QrrzeNl4e90d02s2DvZgjmIVuFefS2l5a
	Khc3Jwq2aXyAGbA9OzQoCCP6R2VXj9fMEny8YMdCWXUQw/AIGguj18n4WFMo1+QB/gxrC4Y5Q4M
	pGCSqeMLngM5eprtgPyz6BX4g1fGDnOxvELxL1AbZ1LPYIhwfPLc1TQEk2Tp/dITOQTcN6bcvtq
	Gs+RLS78pM=
X-Received: by 2002:a17:902:f711:b0:2c0:ab82:6ba7 with SMTP id d9443c01a7336-2c1e85ad8d7mr154959505ad.33.1780888290954;
        Sun, 07 Jun 2026 20:11:30 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d395sm218827905ad.17.2026.06.07.20.11.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2026 20:11:30 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <3ed9e0ed-d6fe-4b9f-aca9-590290a78f4a@roeck-us.net>
Date: Sun, 7 Jun 2026 20:11:29 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] hwmon: (adt7462) Add of_match_table to support
 devicetree
To: sashiko-reviews@lists.linux.dev,
 Romain Gantois <romain.gantois@bootlin.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-hwmon@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260603-adt7462-bindings-v1-2-301304bcf774@bootlin.com>
 <20260603114026.709611F00893@smtp.kernel.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260603114026.709611F00893@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307962-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:romain.gantois@bootlin.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:from_mime,roeck-us.net:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4943665266A

On 6/3/26 04:40, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] Using `of_match_ptr()` prevents the driver from being matched via ACPI PRP0001 when `CONFIG_OF` is disabled.
> --
> 
> commit c2691e00dcd763957c6a2291880ea9079be2bbda
> Author: Kory Maincent <kory.maincent@bootlin.com>
> 
> hwmon: (adt7462) Add of_match_table to support devicetree
> 
> This commit adds an of_match_table to the adt7462 driver to enable
> devicetree probing.
> 
>> diff --git a/drivers/hwmon/adt7462.c b/drivers/hwmon/adt7462.c
>> index 174dfee47f7a7..ef6e5252dc0a4 100644
>> --- a/drivers/hwmon/adt7462.c
>> +++ b/drivers/hwmon/adt7462.c
> [ ... ]
>> @@ -1814,10 +1814,17 @@ static const struct i2c_device_id adt7462_id[] = {
>>   };
>>   MODULE_DEVICE_TABLE(i2c, adt7462_id);
>>   
>> +static const struct of_device_id __maybe_unused adt7462_of_match[] = {
>> +	{ .compatible = "adi,adt7462" },
>> +	{ },
>> +};
>> +MODULE_DEVICE_TABLE(of, adt7462_of_match);
>> +
>>   static struct i2c_driver adt7462_driver = {
>>   	.class		= I2C_CLASS_HWMON,
>>   	.driver = {
>>   		.name	= "adt7462",
>> +		.of_match_table = of_match_ptr(adt7462_of_match),
> 
> [Severity: Low]
> Does using of_match_ptr() here prevent the driver from being matched via
> ACPI PRP0001 when CONFIG_OF is disabled?
> 
> When CONFIG_OF is disabled, of_match_ptr() evaluates to NULL, hiding the
> of_match_table from the driver core. This prevents the driver from being
> matched using ACPI PRP0001, which relies on OF compatible strings even on
> systems without Device Tree.
> 
> Would it be better to drop of_match_ptr() and assign the table directly,
> along with removing the __maybe_unused attribute from adt7462_of_match?
> 

I agree.

Guenter


