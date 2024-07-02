Return-Path: <devicetree+bounces-82207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9799491EE02
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 07:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49EB4281BD5
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 05:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7913B2C861;
	Tue,  2 Jul 2024 05:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GXogSPsN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43FD171BA
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 05:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719896455; cv=none; b=Ai99lfLoa7N23pTJK9VbtgUqj2WHGtqZqhFkqgHIPLZEm84RE4V6TIcJ5co4aOj2OZRUAzZ/7iBYMIDJZSH5bG9JaYqIXvZhHYHj12iRzgWBJcmkFRmi3Y5TY2WlCGdCx7XYHIMzaeWCHK9h8G3H/BW7T19i/Wp5va9vKug9WEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719896455; c=relaxed/simple;
	bh=dFheDiLhIaI57YogQUyG+EpL5SkPPbKUv/2WG6RhHmE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Feq9VEAYd3EdwPIMZ2mE/SrapCGyJmzN4FBjLZ9EsJaaf4GMJcncBw2yPfbytgQK3dJXptNn3vWrXGKdkl1BeeRqvXZvpfbidt29IhEl5fnkXxK0Bv87orE32JrwWecc4PmvZm3AJP+18w7UDY8Njlv+UwRmLivtkTHNyFsBgjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GXogSPsN; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-364a3d5d901so2180367f8f.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 22:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719896452; x=1720501252; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rnm24fX3ACp6jY+bm6Eu7uHx1/D3EkceBo3lQmEL8aQ=;
        b=GXogSPsN79NYnuBYZdhmmqQqmHCefYN/Rc9DOR4Pl80XsyDk2nwf0+Rv5R9imzyAE3
         /PIkeaCSp3hktKhip1aikUJFZMU9//D1dTWH373gJjZc2YlnypGccGaA8rvltTx4P8Fq
         cN9dWnmrTGgpPpl2OAOciaT8tslRts474IaIq5XBTyvSN1QBXLJvJoUkoBRAQQfHowm0
         uwnAhq/pk/TAGQ94NvVqMvhFXjuVxc6VKrCFfeHQEYibh8DLAgrqIdYroc7zk6ROo8tq
         6416BbPbw19bcJ+rkWOsvUrB08qoikmth3t+rDjxFlb6nMvdYsFLfsyP13TLppnwaWSk
         PJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719896452; x=1720501252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rnm24fX3ACp6jY+bm6Eu7uHx1/D3EkceBo3lQmEL8aQ=;
        b=TwOuUUqUKKQfZx0LmZrnZ8I0t5GmkMMT9xvQEeutnjdvKvaRvfP3ys8q3vMWNfy9Ab
         nts9GIHQEvv1Cs1uaQ73PGw3nr2rW/XlwRwz3/8HjHc4oTSWldzNQ2uxYsD1YLoPy95c
         0xteR/DAnkN7HoDAPWs0AGPG3Lymg1SitR7N27i73Pt66ui1mG+QqkntNF+CTTleH2H7
         of53xl95zHEuB4hobzGL4UipJLn11NodU3UzqUVgsd7O7sud0VuDeG63YKQmc1guPQJx
         FwbUcrwitlNdd+z42kM9vXZQur/0Nusc5rMc46mRWAcSmQCNTC6KkxkcxKljdh7Exzcp
         LA1w==
X-Forwarded-Encrypted: i=1; AJvYcCWrPfdf7yoxOB0QASXM9LwzHhi181a7LxC24lfl2SPXPzbORye2zkakYPBhXOWwys54U26Uc+j2a1ZZj/1/FbTXlMpNpFQdz77cng==
X-Gm-Message-State: AOJu0YwhizVLKsFZVucdQ4xwCre9sYXbBlk7JmF9gXlTQIB6zvLv+8OW
	/lzGAMTrsqa0GjxRrb9ExgPRmhDXUeoegcOOIFgRF9BSjAcYnUyG28uwSYnAb2k=
X-Google-Smtp-Source: AGHT+IEcg+p7l64JGDDwcQheoiWKVppnJcQN5fXI7KKnVigl7fXrrsPqoGfLQMv4M+WgyBBjDPqvCA==
X-Received: by 2002:a05:6000:1b04:b0:35f:2550:e276 with SMTP id ffacd0b85a97d-367756a3afdmr4042716f8f.5.1719896451663;
        Mon, 01 Jul 2024 22:00:51 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.178])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a10305fsm11871090f8f.96.2024.07.01.22.00.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 22:00:51 -0700 (PDT)
Message-ID: <3bafcbea-6aa5-43ca-9d12-3916be3fe03d@linaro.org>
Date: Tue, 2 Jul 2024 06:00:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] dt-bindings: mtd: macronix,mx25l12833f: add
 SPI-NOR chip
To: Erez <erezgeva2@gmail.com>
Cc: Esben Haabendal <esben@geanix.com>, Erez Geva <erezgeva@nwtime.org>,
 linux-mtd@lists.infradead.org, Pratyush Yadav <pratyush@kernel.org>,
 Michael Walle <mwalle@kernel.org>, linux-kernel@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20240629103914.161530-1-erezgeva@nwtime.org>
 <20240629103914.161530-4-erezgeva@nwtime.org>
 <1c457520-07b7-4bde-b040-e8bca959a4f5@linaro.org>
 <CANeKEMOODBNZA6efh0E0Ga_KaVs5Y3WLcUftRhNwYHhnXO=GNw@mail.gmail.com>
 <CANeKEMO42rJt5Ob4_HDcZ3eEMvuMOPvRaFaLwL8SA65NtxSV7A@mail.gmail.com>
 <1d56c3b2-7adf-45b9-a509-956340f3f17b@linaro.org>
 <CANeKEMMe-Onpn7xWQHgWz1Ps_uQPEMa7HrKA00HpoKjG+DCJNQ@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CANeKEMMe-Onpn7xWQHgWz1Ps_uQPEMa7HrKA00HpoKjG+DCJNQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 7/1/24 6:08 PM, Erez wrote:
> On Mon, 1 Jul 2024 at 12:15, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>
>>
>>
>> On 7/1/24 10:46 AM, Erez wrote:
>>> When using mx25l12805d, we do not read SFDP.
>>> As it uses the no-SFDP flags.
>>> When using mx25l12833f hardware with mx25l12805d driver, it did not
>>> try to read the SFDP.
>>> Yet mx25l12833f does have SFDP, when I remove the no-SFDP flags, the
>>> driver fetch the SFDP.
>>>
>>> Secondly SFDP does not contain OTP information.
>>>
>>> mx25l12805d has two OTP regions of 128 KiB and 384 KiB (yes asymmetric).
>>> While mx25l12833f has two OTP regions of 512 KiB.
>>>
>>> How do we handle it?
>>
>> You would first try to parse SFDP and initialize the flash based on
>> SFDP. If there's no SFDP then you fallback to the flags declared at
>> flash declaration. Esben had a try recently, see [1]. I don't know if
>> there's any progress in that direction.
>>
>> Also, you haven't mentioned anything about the testing. Do you have the
>> flash?
>>
>> [1]
>> https://lore.kernel.org/linux-mtd/20240603-macronix-mx25l3205d-fixups-v2-0-ff98da26835c@geanix.com/
> 
> Looking at "mtd: spi-nor: macronix: workaround for device id re-use"
> I guess it can be applied to all Macronix devices.

No, no, we're going to do it individually just where it's needed.
Issuing unsupported commands is not that great.

> Adding something like the following in macronix_nor_default_init():
> 
> if (info>no_sfdp_flags)
>     info>no_sfdp_flags |= SPI_NOR_TRY_SFDP
> 
> It seems Macronix did many reuse of IDs.
> I saw it with "mx25l12833f" reusing "mx25l12805d".
> And Esben saw it with MX25L3233F reusing "MX25L3205D".
> 
> The only thing I notice is the flash using the same size.
> A sort of "backward" compatible.
> 
> Erez

