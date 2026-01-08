Return-Path: <devicetree+bounces-252891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDFFD042A9
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:07:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D33573300451
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC1702D9796;
	Thu,  8 Jan 2026 15:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nB0oP2Gd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com [209.85.167.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DAB264A74
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767887823; cv=none; b=gcwy340EudwIvUkj3UBZJS8WJGE55GNoZA9k8ExBJRDnan0WfIze9JTuyHFFIDYyfdpgSs4f/7iSXb7YZ0iCtZEv5XIHZAC8xFElxSrDqGJxqI/+YcHQq52FgA7XZoR2k+VThkVI7aSIsmaSAdBoahBVIQsKyZUnKAUbK+dqh4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767887823; c=relaxed/simple;
	bh=3WxyY58R5RF4H49rbz20YiptJDUIV6EodvIQ0DXLKdE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sYaSqtyHdm+55ffb+uHoAQSfLGGTDT++HflEk8hlh1q7ryDLdSEaWOVn9ySFOyLPgfaI/J4tdShfZdzu7l+O1lmtD23pBkI5NzsKlByB1ZxyOZEO+U0qYcWvxVyqGUjkkqVPhz1P/32K+4BipOFfjiL8R2YycHH1mrHpK1JryyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nB0oP2Gd; arc=none smtp.client-ip=209.85.167.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f196.google.com with SMTP id 5614622812f47-45a84c6746cso127901b6e.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767887819; x=1768492619; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z0+ELb9bQZu0kUreFc+yy4vgvyvuKYmmuSxPTDF+G0o=;
        b=nB0oP2GdgPdgFBXH6MQWO3DDLbBE+6EKA3Y5Zo0wrTyl2IUnQbY89xV4AE0uUyZD5z
         4AQcJG5v0+5N6J1BJQnZiEZQ5v5RVkDB6WlFkW0EszMq5ZK48vrRYtg9OLzTzanMWQkx
         FjQwoh6bI9Mxknzh4dEI2MdWQ+4LHY2zCCMN/vQpipiXlSfD51St7DCtJS29SgktG77w
         qG12xfdU0ZKCX0rZVM3poKV7sRwb62jBiJ1utcnP0PTdvaDlt5PFYc+uZgdRhPGXkexL
         QkqxMMjXNXy1ZAKVyReOhkWAXZiu97fI5Lns+XrZZYSVz45n9926kaA40VBIYGDyQ/CQ
         DIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887819; x=1768492619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z0+ELb9bQZu0kUreFc+yy4vgvyvuKYmmuSxPTDF+G0o=;
        b=mukg5DPlBCtjjdVIhXmLW8Xbf7ISNOthMF5Ieptxw2JTcLi+/CT0zdmsHSVlTTIGR2
         8DWQWKcIxxhM5XvVaPgzYQQ9sZHmrwn1jkBCJVvcPXu/VVd2WIyL+u63i386G9K37cHI
         DpX4jNfnDKprqeMlG9Ts1IBrJbQAJew/Otq4jLp4//OnorCs9Mb/qx8tkyaB1ymUDv+W
         ZQ5pLHxPhGkWdBcK6pgkd3Kh8j+wL+Fr/eQprAH/DSTQc0zgt93GXlVA4qOBxaepKLlX
         jifXIjnRRqp1dax+DscYU6TCXqKVI5QKFavYTwFlbmCF+Ja2UGnfzMzm5VB6wpig/dSP
         BFAg==
X-Forwarded-Encrypted: i=1; AJvYcCU7uDl2zm6yN3fQTShl5DGDmLDSK+Sij7+w+dwHJinJjILZ2Lknjptr2THSklMfRCRLqlKP+/OH03H2@vger.kernel.org
X-Gm-Message-State: AOJu0YyPtoF38vctjc9irPuTe9adkS8Dnxz28f4Q48FcUE182btfcP46
	Ncyu8XbBrVVjFvh/2jlV4TUsX2PJET4gxRTAOyGOdFght7ii0nWJHA9qPAVmTUPCEzg=
X-Gm-Gg: AY/fxX6cfKJSAXHGdQiyiak2FkF1rnsL05r0nVDKK/+oZAVwoLgQef21Tjd9iHLUsen
	03IaOlGOUEuBay1x4aU/cpESFYJqJ8RMZScuK8N/rd3cMzcUXH+UJxboiDoHp1yRTQ8Rh2N/RQ2
	f1Azw91HRQ1tStzGNu+PbSC6zcwqTMRBqNHWsIv1pykSaCkbp3tKR0nNDjSphYGGw/3CiFQ7QyP
	GRWFfpG9g/V0G6NOE5qAs3zLXBNWs8Ze30VY95d9Q78DmKVCpAmuGkd69Wq2WbCoxUa7/IzakxI
	id1KvQhyrCr07c3DKeDWoNvMESInQrRX+tukPBBnq8zEbdhAPF9EhwfO9sQrRMMcmNJpyI64Axo
	a7odcFj0bCcQwEPZ1/zV3H+VnaYQlXa0QKDbeF40Lx/gG5Fk1x9fMeea4udSH89WbZgogX7g8rn
	mOFTaz+OJ8zjvTKsFwKc0ggHcAD/YyE9PXWaa1LOeTZVhGOjaQMI/tqf9WFWmd
X-Google-Smtp-Source: AGHT+IFwUW2T7bI5xvApxv4384NTKdeNIA2TmBS2bO3HBU4plxZjZ1bXoeq7L5luyn6AbAoj1AAj9g==
X-Received: by 2002:a05:6808:250b:b0:43f:1d72:592 with SMTP id 5614622812f47-45a6bdbe64emr2767749b6e.23.1767887819203;
        Thu, 08 Jan 2026 07:56:59 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c69c:7b5c:ce9b:24be? ([2600:8803:e7e4:500:c69c:7b5c:ce9b:24be])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45a5e1b1285sm3623783b6e.8.2026.01.08.07.56.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:56:58 -0800 (PST)
Message-ID: <c93a528c-39d6-4e29-b64a-ecf75032b60d@baylibre.com>
Date: Thu, 8 Jan 2026 09:56:57 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/9] spi: Documentation: add page on multi-lane support
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-5-145dc5204cd8@baylibre.com>
 <aV-mpFCF_ET3AZ1B@debian-BULLSEYE-live-builder-AMD64>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aV-mpFCF_ET3AZ1B@debian-BULLSEYE-live-builder-AMD64>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/8/26 6:44 AM, Marcelo Schmitt wrote:
> Actually, one more thing ...
> 
> On 12/19, David Lechner wrote:
>> Add a new page to Documentation/spi/ describing how multi-lane SPI
>> support works. This is uncommon functionality so it deserves its own
>> documentation page.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
> ...
>> +- :c:macro:`SPI_MULTI_BUS_MODE_STRIPE`: Send or receive two different data words
>> +    at the same time, one on each lane. This means that the buffer needs to be
>> +    sized to hold data for all lanes. Data is interleaved in the buffer, with
>> +    the first word corresponding to lane 0, the second to lane 1, and so on.
>> +    Once the last lane is used, the next word in the buffer corresponds to lane
>> +    0 again. Accordingly, the buffer size must be a multiple of the number of
>> +    lanes. This mode works for both reads and writes.
>> +
>> +    Example::
>> +
>> +        struct spi_transfer xfer = {
>> +            .rx_buf = rx_buf,
>> +            .len = 2,
>> +            .multi_lane_mode = SPI_MULTI_BUS_MODE_STRIPE,
>> +        };
>> +
>> +        spi_sync_transfer(spi, &xfer, 1);
>> +
>> +    Each tx wire has a different data word sent simultaneously::
> In this example, the controller is reading data so the rx wires have different
> data word received?

Yes, I tried to make that clear below by having a different value
for each.
> 
>> +
>> +        controller    < data bits <     peripheral
>> +        ----------   ----------------   ----------
>> +            SDI 0    0-0-0-1-0-0-0-1    SDO 0
>> +            SDI 1    1-0-0-0-1-0-0-0    SDO 1
>> +
>> +    After the transfer, ``rx_buf[0] == 0x11`` (word from SDO 0) and
>> +    ``rx_buf[1] == 0x88`` (word from SDO 1).


