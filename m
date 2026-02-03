Return-Path: <devicetree+bounces-262351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCGEJFctgmlFQAMAu9opvQ
	(envelope-from <devicetree+bounces-262351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:16:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF22CDC9C7
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 64F39303C3B5
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 17:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAB53D5242;
	Tue,  3 Feb 2026 17:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="E833CbFG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2C03D6469
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 17:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770138721; cv=none; b=vBdkfp92Iv3vWwvlqq2oEbba5Dq8f0pnRYrnBaQiAtrNaj52BKJPJs4betXJxTfGbwoM8rGc0eLjHyWNEDOVphAC7E06s3jXa08ifmbaK0++YI22c4ocyfLMdzNUdyb55jqY9jhIXs049mYHUskjWMZshDiiOajYsrTUqD7VAjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770138721; c=relaxed/simple;
	bh=KvVwtGkYOu5PUrbVCouPvp9ISvZPAAdo9DySfRKviFM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iyUaWsQ2PcVn5cH+5X7XX4kD+3O0yyarYCxA9PeQLxwAceCCd9OdhMkX7qPP2xNKgUVlZsDGDU4x4wP+nq9bhSJLqFqO5q2UQ5Vb1K7kGwW7j4yFqCqa7/UFD4x2g96+Qw30QR44h6IIyh3rCtRvddVV+3SCOqljl0O7pBtQFi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=E833CbFG; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-6610b05b37dso4742790eaf.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770138718; x=1770743518; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wy/dNsn4u7o/hART3NmXV1T9kIccTcgOCggRGW81zXY=;
        b=E833CbFG9bS7eGRz7RDodJUaeg7rVgQjtpwzJmr8FoEOt3kRviZf6HAPTNjzckqfTd
         ZAc7XJVGXdS8Idexo6B/8WeeIWWwO5UYI0JYCmGTo4V6Yf4i9MUCkq557tLkY4icQWLD
         2vhg8Ey83A5wqCkDzmbbQzSgzvR+wP0p2sckynfWOtxw51DJAAF4fc7qiE8FywZ6JhJG
         N/5xZa9X+hMdwN6L0SaAfcU5sAIQNw/85kU5lTH7HkHYK7GvlLw9j6O+eigfiCe6aLmz
         DkBNB4u5Cxe1hb8ILGJP8bM29Z/unudho4TJB7JOqyjUymHVT5HIdtelMvMtCWMOh5hK
         SyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770138718; x=1770743518;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wy/dNsn4u7o/hART3NmXV1T9kIccTcgOCggRGW81zXY=;
        b=TbYg72hTLAEopryzyCtZWZTVdHpfvxWFbmN81/FeG2JxfqvYeBC5fN5cK7kqLa4qxD
         nUQIYLchh0S4iIBmnIYisA8Q+fDZRFu7gSibdzV7PuLNENxGxgqg5AltMmvn0Ai2tmNx
         9bbJWq4sOu0w8pYJmArO/fp0kFTudAjQw6UB51zRLs4As4a6kNNXu4A42PwKsYffqoOW
         MFfzVkSsa/UrdoZrLL+rAQtMgNOzc1waCqK50DwtzfeRiVrErTgf94e63kkig4Mprfow
         DXRgKbBbLOLUjij5pVUSf3/15+TEiDCLIEjupIGGSY3VeaPlmgEwHqT9sJLuVjgZ6m3x
         5gpg==
X-Forwarded-Encrypted: i=1; AJvYcCVXNDnqQbHEtZL2UezXmR3eATkmOwa5zzhA8VMzcLvGELptnwahfIYTpmMYKfB6JfqtVuNsiM19HP2P@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ2A4LDNTFUytznZqx3Fdr/O/8oIL+mhevVowjFoqRTNbgl6oj
	DSiKVSTX569w0oqbLYcAj3/I5NGfopwk4bZcqXD2aaL6kYTvwtWtosQGwG7CiKRrdxQ=
X-Gm-Gg: AZuq6aJLX8NPy948sGFSGwcBXTa/Odqq1PCHa8xEhduNTwjkuoSE8TQodrMZoQm3dcW
	eQeBu8Z5YaoFTA2ryitryWz/uDAGMOI1jcb4efr9urfXwvafaKAhG7EZ7eIFn5VT3CB50CUb99D
	pKYCiPcJfcO3DZtjBV6kKXbJztcIu1UYd7Tr8uvyz3n8LCONgwn2q3Nwx9Pzp1rCwwi3eIX5ln1
	rfLy7NddT2f3Uexl/EWTSDpdxGyrYx/qqSMTSFgfH0EulsDdXNH8a/E5dUArFHbHTukYBE6h9EH
	Msf2JKEPfnbVnpu7d08K1LIZHgRSjQracWuycj7VXi8b8VlRu6xnc4uinLv0PYH2qaaakn4AX6P
	WBvhiufllahsExLzPVu53ydqP3u3eqWP2fNp9vSvPnXYZ99BeE6k4xbRnmXRwnKk6LxrTsogDS2
	ybEfQRNqwIH6f41/1LQsmDeQ07Tj2+53oLkTdsp6r+DZ81AO2ZR9C9ok4=
X-Received: by 2002:a05:6820:a01:b0:65b:257b:a898 with SMTP id 006d021491bc7-66a210468f5mr148431eaf.29.1770138717633;
        Tue, 03 Feb 2026 09:11:57 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8e13:880:992:e796? ([2600:8803:e7e4:500:8e13:880:992:e796])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-66a35f7a4besm27682eaf.17.2026.02.03.09.11.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 09:11:57 -0800 (PST)
Message-ID: <b920f61a-02f8-4e6f-a2a4-0899d399148f@baylibre.com>
Date: Tue, 3 Feb 2026 11:11:56 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: ad4080: add AD4880 support
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, "Sa, Nuno" <Nuno.Sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260129152731.154368-1-antoniu.miclaus@analog.com>
 <20260129152731.154368-2-antoniu.miclaus@analog.com>
 <5d2e85cd-caa2-43a6-a451-3b822bd0ef01@baylibre.com>
 <CY4PR03MB3399D81C92B07FEC8EFA09B19B9BA@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CY4PR03MB3399D81C92B07FEC8EFA09B19B9BA@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262351-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AF22CDC9C7
X-Rspamd-Action: no action

On 2/3/26 9:42 AM, Miclaus, Antoniu wrote:
> ...

...

>>> @@ -98,4 +127,22 @@ examples:
>>>            io-backends = <&iio_backend>;
>>>          };
>>>      };
>>> +  - |
>>> +    spi {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        adc@0 {
>>> +          compatible = "adi,ad4880";
>>> +          reg = <0>;
>>> +          adi,aux-spi-cs = <1>;
>>
>> We can already have multiple reg for a multiple CS device.
>>
>>              reg = <0>, <1>;
>>
>> So we shouldn't need a new adi,aux-spi-cs property for that.
> 
> Sure, that was the initial plan but for some reason going for multiple regs gets me to this:
> 
> [   11.396833]  spi_new_ancillary_device from ad4080_probe+0x4b8/0x5a4
> [   11.396861]  ad4080_probe from really_probe+0xc8/0x2c8
> [   11.397281] ad4080 spi1.0: chipselect 1 already in use
> [   11.397297] ad4080 spi1.0: failed to register ancillary device
> [   11.397317] ad4080 spi1.0: probe with driver ad4080 failed with error -16
> 
> While the aux-spi-cs works fine. Any tips?

The one existing user of spi_new_ancillary_device() used the multiple
regs like I suggested. So I wonder if that is broken too. The changes
for multiple CS for SPI parallel memories in the SPI core was made 2
years after that driver was added. So I could see how it could have
been broken without anyone noticing.

I didn't look at it too deeply yet. But my guess is that we need to
modify __spi_add_device() to change how it verifies the chip select.

If it is being called from spi_add_device(), don't change the behavior.
If it is being called from spi_new_ancillary_device(), then the
chip select should be verified as one assigned to the main device
rather than verifying that it is unused. I.e. don't call spi_dev_check_cs().


