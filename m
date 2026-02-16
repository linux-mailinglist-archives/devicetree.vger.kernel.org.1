Return-Path: <devicetree+bounces-265866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAQlDsg5k2mV2gEAu9opvQ
	(envelope-from <devicetree+bounces-265866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:37:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF49145AE8
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:37:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D8DA93003818
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B58DA318B86;
	Mon, 16 Feb 2026 15:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JZ3JqGMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949952D0C98
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 15:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771256259; cv=none; b=IZ1yhN38wI56jyPaIB4JuT+rpISGYFmleGYLKzofgUbH+9kMGXyhlOuP1a8aAc2X4fqvuGNIyEugO2dktAnIHv1nmEdxlEiPhaO/yHsClz0w7oGxJsJSx6Y4WytX+mhZhGT59lbwQMge/2DoxIml0M+dkx4NyATJ5ym5mIYqO84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771256259; c=relaxed/simple;
	bh=jLE5YYy+MDiih1RJ6gcLTrV1hmCmgEQPsAZQSUozZQU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iNHVgNK7PfGJHrjFm6Ywgh+vfIEy0PUBUzGh4/xIHJKAeuxNZV93iBdCnjMaik3h0WviU9fSHeKrWB+rDUMhjVdS1Sza9h+tU09isOfQG3XnX/MKp6PI5IQGXT3q1YkFgkEGHH5+1gy36zWDTrveAAAD0DsdCQKYJQC/nw6pApc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JZ3JqGMg; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7d4c3896e32so1339832a34.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 07:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771256256; x=1771861056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J0DKips6ivFwUBeIMB5IKo4Bf8gok8QOHPMtvnL1jZI=;
        b=JZ3JqGMg6U2zz4/X/ScINoR5WJmZALROCPOVUTlk4xaMku/FRN0/Bl9zJ0nZohMfOS
         NhCLYnpp1UF7jKOc8tLWqYK9SQyMcVmxuFmVJctlMBt7Y9iRpALw3+CSSRtGyzTfshA3
         MGV18ROg3zgsNuPRN4He8Sf6N8UI9mKrOky8ZRgTPYu5r/by4ugR8NSt75F9FMBb5++r
         PQcTrONpCIo1B7pmHDtySTtVXfpnNZ0hrl1gJl4Xlba3n6cWkSseTlbPMvbZKdIer3wH
         Wb6S0nYjWn7pi6cYk2L0v/w0Zm7FjSqiiRZbjKYTQhif9Tgygoy5LxWIyu09nipxK2BF
         V+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771256256; x=1771861056;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J0DKips6ivFwUBeIMB5IKo4Bf8gok8QOHPMtvnL1jZI=;
        b=ozv9dzgOzKfPzJD67ic0sIbRQrc1qy9n9L8ky7X02SmQ3/xzt7XRnnaecF8ot5FEBC
         8AhknKDsaEGcmuCaa4Q8ZT0G/D3hE7Rs6+gbdXCed/iiFHzklDyqxNhegPE7RkxG/OEM
         PT3tv3eafkR9vaaJIiChyCzvyLLfZkRRnDHyFYhr5F5NOvay403y8lO3VlP91k8wkuxP
         Ggq5HDQm9de2zijd/WTVoAnNku1hRr75C/pQE/HZymHSjmEB27WxMDKj/7MXtAaKz+K0
         CvbZVk7uLv/zd+NdtM2NvMKfxThGCvjk4F17DoesuMPRYJf0ri6Eg9Ji4nvyut/ZZET7
         O6yQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHaqlRwrTxRpiowDEbvpEzjB/LODSGDSGwe+Dh/EilpwgO15TkRNs3uatBZseSOlI/a4KWxNTNLi3x@vger.kernel.org
X-Gm-Message-State: AOJu0YxKAEx4+VHA8o2YV8b6BdUZj9rcERGKdyK4/DrtNYw920pG3SiN
	cypNkduca3Dh1s2ZgyLMrQJWYqrDGM83VbPw0AB7aToUpWFCjtIgwfztoJJeUMPFMQ0=
X-Gm-Gg: AZuq6aIB4Z1luGpPv4Z20cQH1ufIlYQSanoM840EqRKdE66suvG9vhEBLQSP+zGnYdm
	MS/ECx8Z91wfv/o0EHDOyhDjH1orIrUe9k45toQmLecUwIufJX45W2MghcmpTn8uOAAMvZ7Wkbf
	vpc/uh6t7mYo4HxsNqKQIUcQ36da9TLTtKX0VIKnk/63nMJMGTGAFD3+eZPBBBVjUFKW5eCAHeL
	Lvq9jjw3EIdxRpfCQ2SE4EGLFo9iA/KlIuM7V3MvOyCJgYDW/Yf/C4c/3EeElAqhsEHR/+TDOSs
	BlK7mp25be70S/hhRw4kuoupIxKrZiLq0AOX1RJZregOjr1P0uyn8Zd7Kc+MbU146SGgfBioiKG
	/uFd5ns7ZG6awlqudbeGc2ZOxDEdC5896mNBvCjF0DQM4freiT3gcCsTP37+7cVDaTdS/Iov1Po
	f6/A5RsKJkuKKD/qKDDaIKf/XiVTpdkU/7jTTuCnlyDdbGt7lw48Y522wT3f6ZZtE6SxFpTEsV
X-Received: by 2002:a05:6830:398a:b0:7c7:2df4:faa3 with SMTP id 46e09a7af769-7d4c4b18aaemr5980060a34.33.1771256256446;
        Mon, 16 Feb 2026 07:37:36 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:2d75:8cf2:6289:6a96? ([2600:8803:e7e4:500:2d75:8cf2:6289:6a96])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d4bb66a066sm9693597a34.19.2026.02.16.07.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 07:37:36 -0800 (PST)
Message-ID: <5818b02c-4456-4484-9443-da7429cea3dc@baylibre.com>
Date: Mon, 16 Feb 2026 09:37:35 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: dac: add support for Microchip
 MCP48FEB02
To: Ariana.Lazar@microchip.com, conor@kernel.org, andriy.shevchenko@intel.com
Cc: nuno.sa@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, jic23@kernel.org,
 andy@kernel.org, krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
 conor+dt@kernel.org
References: <20260212-mcp48feb02-v1-0-ce5843db65db@microchip.com>
 <20260212-mcp48feb02-v1-1-ce5843db65db@microchip.com>
 <20260212-germless-favoring-c27ab4c53128@spud>
 <aY4yaVP2TQFRI1E4@smile.fi.intel.com>
 <a3bab395580cd83410c1c7364283285586c9b128.camel@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <a3bab395580cd83410c1c7364283285586c9b128.camel@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-265866-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,microchip.com:email,baylibre.com:mid]
X-Rspamd-Queue-Id: 9FF49145AE8
X-Rspamd-Action: no action

On 2/16/26 7:31 AM, Ariana.Lazar@microchip.com wrote:
> Hi all,
> 
> Thank you for your reviews.
> 
> 
> On Thu, 2026-02-12 at 22:04 +0200, Andy Shevchenko wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you
>> know the content is safe
>>
>> On Thu, Feb 12, 2026 at 06:00:06PM +0000, Conor Dooley wrote:
>>> On Thu, Feb 12, 2026 at 02:48:34PM +0200, Ariana Lazar wrote:
>>>> This is the device tree schema for iio driver for Microchip
>>>> MCP48FxBy1/2/4/8 series of buffered voltage output Digital-to-
>>>> Analog
>>>> Converters with nonvolatile or volatile memory and an SPI
>>>> Interface.
>>>>
>>>> The families support up to 8 output channels.
>>>>
>>>> The devices can be 8-bit, 10-bit and 12-bit.
>>>>
>>>> Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
>>>
>>> Other than the interface, what's actually different between this
>>> and the
>>> 47? Could they share the same binding?
>>
>> If that is the case, I don't think we even need a brand new driver,
>> the
>> existing one should be refactored to adapt SPI interface.
>>
>> --
>> With Best Regards,
>> Andy Shevchenko
>>
>>
> 
> 
> I have decided to submit two separate drivers, even though the chips
> share similar functionality, in order to make it easier for the client
> to identify the supported chips.
> 
> For example the I2C family of devices has: 3 different resolutions,
> with 4 different channel numbers available for a particular part and
> most important you can get the same part with or without EEPROM.
> That means the I2C driver will cover 24 different devices. The SPI
> family follows the same pattern, covering another 24 devices.
> 
> Microchip also has some devices (I2C and SPI) with Nonvolatile Memory
> (similar to EEPROM but limited to fewer than 32 writes) and I want to
> add these families to the existing drivers while maintaining the split
> by interface.
> 
> Please tell me if you have anything against this approach (having 2
> different drivers split based on interface and each of them to support
> at least 24 different part numbers).
> 
> Best regards,
> Ariana

The usual way we support parts with the same register map that can have
an I2C or a SPI bus it to make three modules: <name>_core.c, <name>_i2c.c
and <name>_spi.c. If you look through the iio folders, you will see many
drivers like this.

The _i2c.c and _spi.c files will just contain the chip info tables that
contain all of the differences between the chips and pass that to a
common probe function in the _core.c module.

It seems like this approach should work in your case as well.



