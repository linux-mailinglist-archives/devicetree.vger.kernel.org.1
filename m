Return-Path: <devicetree+bounces-190802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FDCAECAC3
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 01:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24316189B311
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 23:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7611B230BF6;
	Sat, 28 Jun 2025 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eJMIj9kG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E4B126C1E
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 23:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751153434; cv=none; b=hGlchdp8aT8Z43EpbHELomLo2DouBPyYzFouUSpIXzHX53vOBd4pXwFdXROj699tloJriDevYCrGTxVt3QFva+fuVZS0K1OmRi16chpK33oWjp08A9+sCEZjMbcI0fiZXOGPGumKFSAtbYgUWpt1GE5hHdYE/sIGTUXVqazQOkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751153434; c=relaxed/simple;
	bh=0L3TcnOnAT37xurn4zHF7Uelnh1A1OIPxvlh7Hv5QGQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eg0WNXg+Fu/FipeXk5GvknYsQGRJtrvVihMVVtQFfeVJoxcSOUaIGNAyJ9drXu4CFrfcUFbKsEjrP9P1qPF1BZHzB5vftCFy8K+ad1fF38gasE4/9Ba8pka/U222l6E4GdKF74tr+HPsGA8L6snHJU6enhydTkewQ/+akHFE4ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eJMIj9kG; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2ebb468cbb4so929470fac.2
        for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 16:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751153431; x=1751758231; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3LV2whTVcFBv8HGVSk50MOoWwYm/BUMUzIcy7LK/5Gk=;
        b=eJMIj9kGY+TCzlzUxoZ9vT58J5vLtzhtCwnoVWwn+6IKmnb/QVg08tLzfh9y/rp1/2
         Kwivh55qtslzt3hnv2QKN7Dx66w89ZV9FKjMQ3EFL0IpVAAzL3qht7hSpuuPZRh7hWco
         BwUwulm/iZijHB61og4RFmUxP0M3SmJ3OFy24UM2LZS/fLXh3s/JAoojTAoGXZf3SC/X
         YdfzUdEZa+Nb5bnKW/Ea4NdtjufBok7ESgfYpYel/CNQBDxh0yxKchin48Dk8YWQslTc
         mROnDP+8iCOBggSrRghyoTr/eSAKebCBLExQWrZCB7VatLAUm8YP8I4aq4k0ckiAsneS
         iXqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751153431; x=1751758231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3LV2whTVcFBv8HGVSk50MOoWwYm/BUMUzIcy7LK/5Gk=;
        b=tt4hh4mD8YRLlqcVEDdoFuDLWlcKCL8sXdew1CevPZETG7totA4EIkMaaFK1SMI66c
         z6S80bWaLhs6uurq4tmK2robBx8F3FVNNO/w9eZFQ4K2HIocbUjh5DDS39jZMDVkZ3hZ
         94jChEzRQwe+lDX8ko5xB2MYV0uShSSnjX05PCvxj17kBQGcCKrAXHkarUic+z3yqr8i
         a2uTnL+0JFsQsx6xwWmOZGpnUf7lSUIdt3kaATJp+UhrjRmEJEk6hCyWpe6vAXCfNMgJ
         n1bZDBsG7tdo30FFZLSw/l5sga110lYEJVLs2nSbccwkzO4fuaIkHS3Wpjm68i7ECOBX
         14mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJABeGNygQJm/UTgZsICP/MppNffERr5eJUMOJM6ZR+t+bY2MOILKDs3980CVEMWUdeWtTf8iKII6o@vger.kernel.org
X-Gm-Message-State: AOJu0YyMkedobgXqmOlbxrlE/Fln3Tde4hztM1+X7dhvMax9CJH88vlV
	lOBh6EfexJxnrIlxnQvkAiIxR4GlAiqIhmZrf+HNEmvVl3OjG+mnZCgSUBfRl3pZWRs=
X-Gm-Gg: ASbGncsul/TpNhZ+IHUmMJGpZ1RbYLFM2xv+hWg1ouvvR4qHOsaORLAJNJUX8KprjtJ
	F6kfqL5Yb2oHPJOte7/DlGG2X7DXnyW5MRuGWOdTIub7N5HgCmABkqZrJBOmVDMwtbtJ/h40ddv
	hq3qk8dUqhxs3XET1T4Z5VY3tkKG1D7uTOK738A7IgOcD/3oOAvI9OtB8fCnbW+4RNY3uqJr6JD
	M0mDX9ha9dOz3DJYIZsUjNwBKWFGjJqGVy7X0mkpZU8njXbICAjhBOtQhBni3ia68Ysqx9AreJi
	kzC/3vZVucchBuTxXaH5rvHDVAhL2ZtAqZlJ6vQ078hrVYuU6pkWcrhuCEie8giJwUDK6HYBMJj
	tVN9VwoR0FUL1qxA+NsUVFfe1j/qLaKz36QvQBxE=
X-Google-Smtp-Source: AGHT+IFPRb5c72fGGjzcl2TWNpxe5UqjFvHdpbDERh59UE43Z4EhY5vjoD630Wsnz6iYSlvBePYWyg==
X-Received: by 2002:a05:6870:cd89:b0:2ea:7101:7dc1 with SMTP id 586e51a60fabf-2efed73119bmr5062597fac.33.1751153431549;
        Sat, 28 Jun 2025 16:30:31 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:3092:a48c:b0c6:cbf4? ([2600:8803:e7e4:1d00:3092:a48c:b0c6:cbf4])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2efd50fa38asm1750229fac.40.2025.06.28.16.30.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Jun 2025 16:30:30 -0700 (PDT)
Message-ID: <bd72b92e-bf8d-4fc2-84ae-4f9fd8b40c37@baylibre.com>
Date: Sat, 28 Jun 2025 18:30:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] iio: adc: ti-adc128s052: Add lower resolution
 devices support
To: Sukrut Bellary <sbellary@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matti Vaittinen <mazziesaccount@gmail.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>,
 Angelo Compagnucci <angelo.compagnucci@gmail.com>, Nishanth Menon
 <nm@ti.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250614091504.575685-1-sbellary@baylibre.com>
 <20250614091504.575685-5-sbellary@baylibre.com>
 <CAHp75Vf=zQ+pdo5V1fAq2qWEpdUfNfWdO+_iW0wETWSniXisyA@mail.gmail.com>
 <aGB2Fnv797Wrenza@dev-linux>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aGB2Fnv797Wrenza@dev-linux>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/28/25 6:09 PM, Sukrut Bellary wrote:
> On Sat, Jun 14, 2025 at 09:45:43PM +0300, Andy Shevchenko wrote:
>> On Sat, Jun 14, 2025 at 12:15 PM Sukrut Bellary <sbellary@baylibre.com> wrote:
>>>
>>> The adcxx communicates with a host processor via an SPI/Microwire Bus
>>> interface. The device family responds with 12-bit data, of which the LSB bits
>>> are transmitted by the lower resolution devices as 0.
>>> The unavailable bits are 0 in LSB.
>>> Shift is calculated per resolution and used in scaling and raw data read.
>>>
>>> Lets reuse the driver to support the family of devices with name
>>> ADC<bb><c>S<sss>, where
>>
>> I believe it's incorrect, i.e. it's something like ...S<ss><?>, where
>> <?> is something you need to clarify, and <ss> is definitely a speed
>> in kSPS.
>>
> Thank you for the review.
> I am not sure about the last s in <sss>.
> It could be TI's silicon spins versioning.
> I couldn't find any information about it in any of the datasheets.
> I can drop the last s or mark it as <ssx> and specify the first two <ss> as
> maximum speed.
> 
I have a hunch that the last digit has to do with pinout/number of
power supplies. adc128s052 has two supplies V_A and V_D while the
others only have V_A.

If this sounds vaguely familiar, it is because it was discussed
today in this thread [1] that Jonathan CC'ed you in. :-)

[1]: https://lore.kernel.org/linux-iio/20250628162910.1256b220@jic23-huawei/


