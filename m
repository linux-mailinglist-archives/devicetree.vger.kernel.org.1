Return-Path: <devicetree+bounces-287366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBx6FKBi3mlqDgAAu9opvQ
	(envelope-from <devicetree+bounces-287366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 17:52:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F793FC272
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 17:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 056213005D15
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 15:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731B03EC2E3;
	Tue, 14 Apr 2026 15:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b="pXmNRxtP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB42C3E958F
	for <devicetree@vger.kernel.org>; Tue, 14 Apr 2026 15:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776181695; cv=none; b=DlAEsl0ToBlJodDY/oglosHK+eM2zM0Kbujv1yq81QLSfZBV9ko+LL2nXCDJT88m9tzeGqTeYShIRooCO98MeMdDWSwYu1S6TEpuGu9cNyTzHqAcVbKPJsobGRsSmzvVM5JVLT4xZcYY67328Uo3VACsdzUrZL3eNZlUkBtyhN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776181695; c=relaxed/simple;
	bh=ikNeOhmOPowGIBwTP2RDR/ooE3V0oQJWo5zR1OOYVA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZQfB7YC47QB3vjz+EHrmrc9Q5cCf757G5r8/dU/b7XwcW3M9n6itKxpzZckw+eWL3lHRNYgFOqGNtK8rWRib9YlQmPiIf4vNdLG7U96nn1mHc8DxSsN1OWfyilMc4BYkU2sjRFTPyCuxBCEJQjLQ/ibNWugOYOtSGpf29CmFjv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b=pXmNRxtP; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-4043b27ddeaso2977104fac.1
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2026 08:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1776181692; x=1776786492; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i1qpwzTA4mcNAyi8583h1bBEahEbIPk2eqNHcWexf+0=;
        b=pXmNRxtP4DpCN3oDJYSdy5qpfIIxDDGaYMJKtcp1h/+fVgJfyhN/PJT+LwGDukXbGj
         sxOMYAdtPverLqtSSynz4HwvOmHhR7BhIndvuUvINUXpV6NyEIZGj3G1gMBjDHNq9dhE
         6uIqmerQT7H9/FTx2a1AR3z5PRjpjT6VLc+PkjRAn/n+rGp+Wx8ZjaUzuNvi46/9OoVl
         IJOU7+S2uPB8HShlti08hyxW6pqIlbR1qsVWdTJlo/l6GnO8Dvcqen09nfzbLBNoWIIa
         wijDs+PDTgx0IzuGikpPYwpNxG1+8zqH+flZamX9Og5QAAD0t9bIM8cRTcJEMWK6fEpP
         aslg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776181692; x=1776786492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i1qpwzTA4mcNAyi8583h1bBEahEbIPk2eqNHcWexf+0=;
        b=e9ZKTLDeUHDSPWCAXRVnj5tjonKP6+gkRKyY85wlZSOdRzyfWNh6+eYdTJkHtYDEIO
         Wg8LGzMrAPbxyC/mY9rNK6xy7shX6yqbKaF8BekktFCyijS6PATrqKYFz24slYoP/i0U
         bfrOgmHFspdaKI0QGqgwLnt5IyAVfzUmgTzbfiRnE++QtR8P9/JtQR0CH3C8oou8K+0d
         IByVHDDJoe9BinqVXDsuy3YAVy6NWALaEZIlfe9RaGpsJRIytVBG2RgPMTHJ4wDrWyix
         aHIPPUB1FccEML7gchoMjV90ZFQMDheaoJ/DPB70CSPjnUaqiaH7UXlKvl0KvB6tS6Q0
         /jFA==
X-Forwarded-Encrypted: i=1; AFNElJ8TBhbXNE5qoHBn4QwLdrvW5WyG1JSQq6ud63MNdhTGjDn7vFO7+NG70Ha7VEstp5WJNqL/DjZbr0Qx@vger.kernel.org
X-Gm-Message-State: AOJu0YwZg5m3hWAMg03Sbcv7tmOZGu2UUVYec2WNcFlGRueoLVHBjoJa
	tfgxjd+tnbCNfVxTfK8eUdkUwqn5aOxhpJxRhplwdcmJmsIq8c9VWRnkc/HY5u0RAkY=
X-Gm-Gg: AeBDievZ8QVyUxKRoHkSfT33aYu7oAni2QNJt50aZmTkidhkrOQ6tqAZQAy5i7729mT
	wP38nqg7QDtMtahBmtwwhxqMC+9g31pOWTRc2v80Urb2Sd7IyH/hOzceN9uZsxpFzVtuWQqQ9aL
	CatnkM1HC3I9PwXOixqu9SnrTzxwpOaSb1OHFaEPt/j6QTXU++1iHsp2ei0bORIpn1wyrxbK+BY
	t0AWfBM4Hgvom6nihDlO3s1fEcSz9qDxihL/l2SB8kCrXWsHxuFOvzK8AE0Whffyl851Iuh5Q21
	XDTCPsEEAofENxyMvN/u64XOGHhOg4PgdkKuF8SYGIOTDs0WN1tzsEpXwh2VmKeOddDk44YR8Vm
	aNJZklsWapts4sVRKueS2QI0UDDq5uKSlB2c71IqC4qCuAuBf2Q8nZaUJX/cjQiiqzAfbymoj2n
	FPT3mkhGFWQSdzegGCTPk+H58XaXp0hVsSwkaLD/cU3vk6jMJJmvAH8JOpy3H1s3InuB1YRCn3l
	g==
X-Received: by 2002:a05:6870:ac87:b0:41c:4c93:4234 with SMTP id 586e51a60fabf-423e113e7bcmr9431171fac.35.1776181691738;
        Tue, 14 Apr 2026 08:48:11 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:5bfd:a817:5527:c417? ([2600:8803:e7e4:500:5bfd:a817:5527:c417])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-423dd42130dsm11757546fac.8.2026.04.14.08.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2026 08:48:11 -0700 (PDT)
Message-ID: <16816b5d-2316-43be-99ca-6b54d4326371@baylibre.com>
Date: Tue, 14 Apr 2026 10:48:10 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: dac: mcp47feb02: add MCP48FEB02 SPI driver to
 MCP47FEB02 I2C driver
To: Ariana.Lazar@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 jic23@kernel.org, nuno.sa@analog.com, conor+dt@kernel.org, andy@kernel.org
Cc: Jonathan.Cameron@huawei.com, Conor.Dooley@microchip.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260403-mcp47feb02-fix2-v1-0-da60c773550e@microchip.com>
 <20260403-mcp47feb02-fix2-v1-2-da60c773550e@microchip.com>
 <1e05b8f9-e95e-458d-9179-ac8268023ae5@baylibre.com>
 <4b289795ffe7ce3505087446a5f2aee053ace561.camel@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <4b289795ffe7ce3505087446a5f2aee053ace561.camel@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20251104.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-287366-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20251104.gappssmtp.com:dkim,microchip.com:email,baylibre.com:mid]
X-Rspamd-Queue-Id: F2F793FC272
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/14/26 10:28 AM, Ariana.Lazar@microchip.com wrote:
> Hi David,
> 
>>> --- a/drivers/iio/dac/Makefile
>>> +++ b/drivers/iio/dac/Makefile
>>> @@ -54,6 +54,9 @@ obj-$(CONFIG_MAX5821) += max5821.o
>>>  obj-$(CONFIG_MCP4725) += mcp4725.o
>>>  obj-$(CONFIG_MCP4728) += mcp4728.o
>>>  obj-$(CONFIG_MCP47FEB02) += mcp47feb02.o
>>
>> Shouldn't we be removing this old file?
>>
>> The patch series would be eaiser to understand if it was split into
>> one commit to split the existing driver into two files and then
>> another commit to add support for the new parts.
>>
>>
>>> +mcp47feb02-objs := mcp47feb02-core.o

Ah, I missed this line.

>>> +obj-$(CONFIG_MCP47FEB02_I2C) += mcp47feb02-i2c.o
>>> +obj-$(CONFIG_MCP47FEB02_SPI) += mcp47feb02-spi.o
>>>  obj-$(CONFIG_MCP4821) += mcp4821.o
>>>  obj-$(CONFIG_MCP4922) += mcp4922.o
>>>  obj-$(CONFIG_STM32_DAC_CORE) += stm32-dac-core.o
>>
> 
> Thank you for the review.
> 
> I kept that line so the core module would compile as 'mcp47feb02.ko'.
> If you prefer, I can rename the core file to mcp47feb02.c and add just
> the lines for the SPI and I2C modules in the Makefile.

It looks like there is only a few other driver that implement
it the way you have. And only a few others that don't have "core"
in the C file name.

> 
> Another option would be to keep the core module named mcp47feb02-core.c
> and compile it as 'mcp47feb02-core.ko'.

It looks like this is the option most other drivers go with. So unless
there is a good reason to do otherwise, I would tend to go with the
most common pattern.

> 
> Best regards,
> Ariana


