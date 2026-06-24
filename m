Return-Path: <devicetree+bounces-315262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GDNsNMTmO2pVfAgAu9opvQ
	(envelope-from <devicetree+bounces-315262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:16:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6A76BF040
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:16:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=Astq86Lv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315262-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315262-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3886B300F9D4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C99F3BE172;
	Wed, 24 Jun 2026 14:14:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0823BE16C
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 14:14:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782310488; cv=none; b=C8zhT/QqlopS0EC6UfZ6U/jxaPOPguOhkLLjcWSCZG4OLOjZ4n8cZr5/7d9bhXlWXiLNt92qkMH1licSQJ+D2fVg9/YKXs02thSxxXCiS4eS2FtSTWqsJv4AxcjrdTWpNhzTeZuOi7bdQa6+ocIDntsR7jdpkozeGmj218LAByM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782310488; c=relaxed/simple;
	bh=VElC9oMArW8E5DVw0C3OZ8uCAD3W1Xad/JX5R0ZfH4Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YDErJmhjQY+Z40lodXGCSS1n2rcaA4R++BFyQH8gEV4PyNGc2RN/MYkpCrY+k2PojgnRC2+57MKApUcR069PArLCqfhLaCOsBnQrT2WpUj8bMWPuBQpRI/+7MBcygfQHvMQ22mlZ7hifF5OUhjIDSadZmsPW0V82jGxrb5kHoOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=Astq86Lv; arc=none smtp.client-ip=209.85.221.179
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-59cd803792aso719376e0c.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 07:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782310486; x=1782915286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EKXkM/V9V+5iFe2v+ihivIbTjpQHj54cW+T1VhjBSuY=;
        b=Astq86LvePsh3PutKYaFFizihoqbeHKR/2P4MhRLIDcTqIZgPpYkQeo32E08fGgmsN
         oBR2hZvC3k3kwQJjIBdFcOcx6KybePc+fDET1E8XAhUcoM/XrAxgkYPj5Ef/RGSKzucW
         Ojg6QaMSK2QYO3FqEP4gO2H3Vp2isrXEDS+httJNBesTPX2EJ7YPmxwWp/WDe400s7t8
         3hynz5BjwJiQACYezdZ+esMl2GifDQA8v6hmgXlC3KGrnyvHPXQN1R0KmHefvBcow6Yp
         3AAr1RVD09NgjBvpjnxmIhzoUO05x08xwCnL5w2b16d9C/eDLXcBCA3rxgXzlQV7EBIj
         pi/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782310486; x=1782915286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EKXkM/V9V+5iFe2v+ihivIbTjpQHj54cW+T1VhjBSuY=;
        b=eplVlMeHulggrb4IKnbuwvOPpejfCuTBqLepC5dZc5cHM0CoPB8Nhntc3UmzhzkEMq
         AQ2/SDyhKa6uCuCv6eg0qiUq3rXxD2ThId54YxNs1TuyinW91ZWXLtbFjlP2pkTHHuJf
         EGyDuTg4Fwk1GIHkQrBSaArogRHfRl9NaDxio+xHx4XDzZ9JRa2JoVvug7zfjtVk3fUI
         YeT5rsmgxgSROm4fms1m8QppKyxlvnjUyBKeKb+VFLRj0JXgJEj8AEXXGcjJ01nPxVc8
         s6gcmuGkM/CEEyhdhGZi9eUYsiSLk0qG6K+L1+lY+qVMujKHarZJjHuCSjjAjuC8IeOW
         EixQ==
X-Forwarded-Encrypted: i=1; AHgh+RpeCTbhdBje9E62gBA8FMJO2e3AOlhWSbQPykMfTyI1JpMq/abZe/D/A3KjE6Zuklhbjap2xc99sQjo@vger.kernel.org
X-Gm-Message-State: AOJu0YwgbrMeVw2cutZThkEOUOtwniCVs6IewJitcUdsvhgSuwdFpvT2
	5s6hXSI2RmQ+4XP86b6bmdxEziFweztaeWS9amZrctQvvz/MHHw0ssn4vWOPgezTVhU=
X-Gm-Gg: AfdE7clmzFTO/vF1qWc6cPoDoSshakoU4iu3cca1525kYip54fnZxHMNjCEEJLxLJzG
	8DrhVwNCESTnDWMk9xeTBkqrwMa7ZnzO0GjQMllVi6jEMjEhg78eCxm9a6/XIfGBZ6wts52SgM3
	ntD2EJUaDk2lKBQ0IxoFueF/vsNQW62Lk1cjBQJk1r0cJE7/c4/UrD5HrXEQ+8Jro9GgbOyOglQ
	DSFdMrOgPeP2oF3nRfYrnkfptHXun36A7BJmIYRX1tehTcZ0bhuu0hXckJBC0Xrf7P8fCtT++Kq
	bAkqudghS2bxvAN2QYIt9pKXoUdMZ9Vex3bLkCP8wqlI1cNXYomupOZ5uhuf1HYqB56hU0JLIgT
	Ys0Q5neQ5QprlIbaquAIPEak6XD93UBsQq4fBbBSno1xPVv1/6QdUWE6H5dLohyZon1G1gXJj2K
	e5GNne14v8bjBsyjG/3an8zEC1Fke5mdEjk4th9XzwdsAMWpdSCvPyrIkCNG5F3fw=
X-Received: by 2002:a05:6122:6c02:b0:5bc:42be:f7c4 with SMTP id 71dfb90a1353d-5bc42bf0a82mr1061612e0c.3.1782310485652;
        Wed, 24 Jun 2026 07:14:45 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:68dc:b788:b3ac:e34e? ([2600:8803:e7e4:500:68dc:b788:b3ac:e34e])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bbfb878c91sm10694600e0c.6.2026.06.24.07.14.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 07:14:44 -0700 (PDT)
Message-ID: <f57e9c71-189e-4316-aec4-5779d6211db7@baylibre.com>
Date: Wed, 24 Jun 2026 09:14:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: iio: dac: Add DAC8163
To: Lukas Metz <lukas.metz@gmx.net>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
References: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
 <20260623-dac8163-work-v1-2-5b508158faa0@gmx.net>
 <5a19c272-e8fc-4fa9-b137-842b6ed6649b@baylibre.com>
 <ajt0vibLhh6Mmhoc@berta-MS-7693>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <ajt0vibLhh6Mmhoc@berta-MS-7693>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315262-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lukas.metz@gmx.net,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.net];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B6A76BF040

On 6/24/26 1:25 AM, Lukas Metz wrote:
> Thanks a lot for the review. This is my first time submitting a
> patch so im grateful for the detailed comments and suggestions.
> 
> On Tue, Jun 23, 2026 at 02:17:04PM -0500, David Lechner wrote:
>> It is more logical to put the dt-bindings patch first in the series
>> before the driver that makes use of it.
> 
> I will reorder the commits in v2.

For future reference, you don't need to respond to comments that you
agree with (save us time reading).

> 
>> There are a couple of more SPI properties needed since this is not a "normal"
>> SPI device. We can only write and not read because there is no D_OUT pin. So
>>
>> spi-rx-bus-width:
>>   items:
>>     - const: 0
>>
>> will describe this. 
> 
> I will the add the suggested changes to v2. Are there any other poperties 
> i have missed? Same for the other comments regarding vendor-prefix, 
> spi-max-frequency, avdd-supply and vref supply name.
> 
>> We also want the binding to be complete even if the driver doesn't all of it, so
>> `clear-gpios` and `sync-gpios` probably make sense too.
> 
> SYNC pin is the chip select pin of the device as described below. In
> that case i dont need to add it here right?

Ah, OK. It is probably worth mentioning that in the top-level description
here in the bindings.

> 
>> Usually, we don't bother with a property like this since it is redundant.
>> If an external reference supply is given, then it gets used, otherwise
>> the internal reference is used.
> 
> That sounds logical. I will remove the property completly.
> 
>> These chips don't appear to have a chip select pin, so this comment
>> doesn't make sense to me. More logical would be to just use dac@0
>> and reg = <0>; since it should just be ignored.
> 
> The SYNC pin on the device acts like a chip select pin.
> According to the datasheet: when the pin goes low it enables the input shift
> register. At least that was my understanding. On my board i have tested the 
> driver with the chip select signal connected to the SYNC pin. The
> example comes straight from my own device tree where i have two devices
> on the bus. Thats why i used reg<1> here but i can change it to 0 and
> remove the comment.>  
>> The pin is marked active low in the datasheet, so I would expect
>> this to be GPIO_ACTIVE_LOW.
> 
> I wasnt sure about that. The pin needs to be held low continuously. I
> thought when the pin is marked active low and i initialize the pin with
> GPIOD_OUT_LOW the result will be that the pin is held high. To match the
> datasheet description seems logical though.
> 

The GPIOD_OUT_LOW and GPIOD_OUT_HIGH names in the kernel are not ideal.
Think of them as "deasserted" and "asserted". If the devicetree has
GPIO_ACTIVE_LOW, then GPIOD_OUT_HIGH will "assert" the pin by pulling
the voltage low (because it is active low).


