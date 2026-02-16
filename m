Return-Path: <devicetree+bounces-265915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id U35PLUNkk2k/4QEAu9opvQ
	(envelope-from <devicetree+bounces-265915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 19:38:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE1D147026
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 19:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9F1D3021D0A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423C72E0B6E;
	Mon, 16 Feb 2026 18:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TG3GZ1kV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FD71C69D
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 18:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771267129; cv=none; b=m4ZzHgBXfbm3nYTxNSyKLJidnjSBk58Vu/d/jB44PALVq50nYQdJ6KnYZ8YyN98KdWRuBs0TIFa5DvyTQvOXBmluGyU2qWOk2B2MLHdids/m0dD+9vOaGFU0K9T/K93tIv3jkDx91RrBGa2ix6D6tkwlcQTkVllHoEstc21zZ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771267129; c=relaxed/simple;
	bh=Hga/yI7lb3JU4eP+Zv7hPwnm8zmrz/Hem1JLcJbvYnk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jtF3HoKFRX+9jT68xGg2LyIMX/P01YrvhL3TraJQdWyTo5Bd5aAGLRDmgOYXisXKlz69zW3oFLoQFKsaUrGqFStZdx8wq9KQgbozdwDk7uEKePksyYYql+2ujnjIzy8HHlqEn3MniCoc4t+pswinDB9HAsUThK+3hNrZ6cAt2+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TG3GZ1kV; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7d4b9c839b1so1318066a34.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 10:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771267125; x=1771871925; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aDiQ566T8bkw/d5Doj5hiSSr6BOtEFdXBHTWP9g1Fv0=;
        b=TG3GZ1kV+rFmYYSEa0GTVqjnVGyFI1eOQulX8sS3JUIfJNgvgp7zzCLtD5RD7CNrqB
         q7iALtebS0T+2aeUh6gavtq4G/SfeYTJtBqxKKvrk7k8MYa0E41F3EJReJ2QPTVuF6dK
         r1igJ2BtQdWTA0lKlNxYOf1f5CuRFQaf1G8NgSwzWdJ+EL+VIIVOk+0dHGt0xZhUVbxB
         4vMtIrcKPYKrwkZEnCdXBFujf1ax5B9V1cNQgIQmjdsX69Kir+/Tnr1DHNAX316F4IkN
         s5NS58mpeahc/ItQOp3q7/R8b9Ao0wk6+ahyo+UgKLhUM1rbEsF/1DyXxaF25gqZWN8i
         wpCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771267125; x=1771871925;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aDiQ566T8bkw/d5Doj5hiSSr6BOtEFdXBHTWP9g1Fv0=;
        b=nl1Rl53t85T9jYhL6jZZalUOb5zHv0CZ6u+6ZFWjex5C6eCkGq51YbSZU8CQOcvUbQ
         jLXAbSL7BzVVq0i1dWm8ZKt1gh1UJAjKx+k3IcAMSTCtYvtT6J7yAMcWlmpVLAsFAgi9
         kNX8Yvv/gruwY5sTWUZizTkeGXTdZHLFVbmfliRh0AkcTRWlW25DCvBf/S5xqU1zkSJu
         1lmg0SApNGgugmeaqZvNjnDxdbpiKcF2/6KCuwxH7O3exSBKiAoqcbcvSI2V/7uEpove
         BkGhVHRegxSGGokoZfTY1+MjhdXEruTH+5S+h7GanmyevK7FHkCr71Pm1V7mIcEghBHd
         adhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzgM80rYVGY/eVnmbu77dOFznNdDgONEXj5wTa3IlCSuKY4Av3HfrI1XR4B0T0cGdvhTadcncHluqb@vger.kernel.org
X-Gm-Message-State: AOJu0YxU0ctmMhD5ipQsSSjh6iJnpClihV62tWwdYPGzHs18D+zBGyGt
	C6Us84FrekQzh78T/ugF2iihXog9EfsTOpPINR0Mfaj+c5DyNwRWCrsXhz3QLgnMxeA=
X-Gm-Gg: AZuq6aKj2HRNQ0U+Y+GytoefdKDJV2ova6jjI1Ty5IrUpo3ry7i1Qb28uWKGmVRhHx9
	UJ5dq8NSYpFSMm880B0gHEUXfiP7C3lprY6AoLVjr44UWKReTKsDLL/Me5HFNN3w61LTFqaBe2N
	KBEhB13/NqVXIsDJcHSdHxPMyD/A/uxkUqe5dFZmSdT4X2C5xCElkRm2DKAo9Q9JVvEY9YNTCch
	lTXjrjGHkfSPVyJ1k1iuEJ9Q5IcE/fp5fC1zXqzk8qxSobYL5l4upESU2pwMtiMgcboAuUMYZ+p
	wWVCMRKPS63sRzg5olTcdpq0USMTtjASq0am8gNpFROxFu4Yp8YFOkRFewHNcyeRAqobdy2klW/
	RN4NZPSE6eFihWcKUzuU1E36P573n4ZYe9cFr7VhhPytbe5oLp+igH9X/FTmm/bw17oSsXIPpdU
	1umdYxQmSiuw6utJdQnAihwdFz0uRiVYBJp/QadnJuVqrUoUtfJJYT8/IoJKANeNCsbOeE8vNu
X-Received: by 2002:a05:6820:4687:b0:676:778d:dfc6 with SMTP id 006d021491bc7-67768ccc026mr4066989eaf.38.1771267124634;
        Mon, 16 Feb 2026 10:38:44 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:2d75:8cf2:6289:6a96? ([2600:8803:e7e4:500:2d75:8cf2:6289:6a96])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6777c128a11sm6499574eaf.0.2026.02.16.10.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 10:38:44 -0800 (PST)
Message-ID: <623dc31e-cfa9-4cf7-a6ca-5044333e47bb@baylibre.com>
Date: Mon, 16 Feb 2026 12:38:43 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: dac: add support for Microchip
 MCP48FEB02
To: Conor Dooley <conor@kernel.org>
Cc: Ariana.Lazar@microchip.com, andriy.shevchenko@intel.com,
 nuno.sa@analog.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 robh@kernel.org, jic23@kernel.org, andy@kernel.org, krzk+dt@kernel.org,
 linux-kernel@vger.kernel.org, conor+dt@kernel.org
References: <20260212-mcp48feb02-v1-0-ce5843db65db@microchip.com>
 <20260212-mcp48feb02-v1-1-ce5843db65db@microchip.com>
 <20260212-germless-favoring-c27ab4c53128@spud>
 <aY4yaVP2TQFRI1E4@smile.fi.intel.com>
 <a3bab395580cd83410c1c7364283285586c9b128.camel@microchip.com>
 <5818b02c-4456-4484-9443-da7429cea3dc@baylibre.com>
 <20260216-shiny-itunes-00a31d1f4db7@spud>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260216-shiny-itunes-00a31d1f4db7@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265915-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1FE1D147026
X-Rspamd-Action: no action

On 2/16/26 11:34 AM, Conor Dooley wrote:
> On Mon, Feb 16, 2026 at 09:37:35AM -0600, David Lechner wrote:
>> On 2/16/26 7:31 AM, Ariana.Lazar@microchip.com wrote:
>>> Hi all,
>>>
>>> Thank you for your reviews.
>>>
>>>
>>> On Thu, 2026-02-12 at 22:04 +0200, Andy Shevchenko wrote:
>>>> EXTERNAL EMAIL: Do not click links or open attachments unless you
>>>> know the content is safe
>>>>
>>>> On Thu, Feb 12, 2026 at 06:00:06PM +0000, Conor Dooley wrote:
>>>>> On Thu, Feb 12, 2026 at 02:48:34PM +0200, Ariana Lazar wrote:
>>>>>> This is the device tree schema for iio driver for Microchip
>>>>>> MCP48FxBy1/2/4/8 series of buffered voltage output Digital-to-
>>>>>> Analog
>>>>>> Converters with nonvolatile or volatile memory and an SPI
>>>>>> Interface.
>>>>>>
>>>>>> The families support up to 8 output channels.
>>>>>>
>>>>>> The devices can be 8-bit, 10-bit and 12-bit.
>>>>>>
>>>>>> Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
>>>>>
>>>>> Other than the interface, what's actually different between this
>>>>> and the
>>>>> 47? Could they share the same binding?
>>>>
>>>> If that is the case, I don't think we even need a brand new driver,
>>>> the
>>>> existing one should be refactored to adapt SPI interface.
>>>>
>>>> --
>>>> With Best Regards,
>>>> Andy Shevchenko
>>>>
>>>>
>>>
>>>
>>> I have decided to submit two separate drivers, even though the chips
>>> share similar functionality, in order to make it easier for the client
>>> to identify the supported chips.
>>>
>>> For example the I2C family of devices has: 3 different resolutions,
>>> with 4 different channel numbers available for a particular part and
>>> most important you can get the same part with or without EEPROM.
>>> That means the I2C driver will cover 24 different devices. The SPI
>>> family follows the same pattern, covering another 24 devices.
>>>
>>> Microchip also has some devices (I2C and SPI) with Nonvolatile Memory
>>> (similar to EEPROM but limited to fewer than 32 writes) and I want to
>>> add these families to the existing drivers while maintaining the split
>>> by interface.
>>>
>>> Please tell me if you have anything against this approach (having 2
>>> different drivers split based on interface and each of them to support
>>> at least 24 different part numbers).
>>>
>>> Best regards,
>>> Ariana
>>
>> The usual way we support parts with the same register map that can have
>> an I2C or a SPI bus it to make three modules: <name>_core.c, <name>_i2c.c
>> and <name>_spi.c. If you look through the iio folders, you will see many
>> drivers like this.
>>
>> The _i2c.c and _spi.c files will just contain the chip info tables that
>> contain all of the differences between the chips and pass that to a
>> common probe function in the _core.c module.
>>
>> It seems like this approach should work in your case as well.
> 
> These usually have merged bindings too, right? Only real difference is
> going to be that the spi devices will need
> spi-peripheral-properties.yaml which obviously the i2c ones wont.

Correct.

