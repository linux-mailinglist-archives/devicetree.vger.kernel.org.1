Return-Path: <devicetree+bounces-116914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 884429B45FE
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 10:50:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B97631C22228
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 09:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2226C204926;
	Tue, 29 Oct 2024 09:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ds/U5qkv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC3220409B
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 09:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730195414; cv=none; b=eAS/mzE72bcNvEcC/SSKixqmgVDaJzHMPGA0g4neUZJi/k3T1yTUwi3MPfk1BPLM5ZSiXpL1PM5jPiom9Uu2dv8vJ7ZDOKElwoC+v4Qh50yk+ne/vC7Cobrp02PmHmvNr2duSG8ZkzVXzigIH08A5DNfS//w2owSf2ZSKmY9xNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730195414; c=relaxed/simple;
	bh=blGrvXyQ8dgv2iLCBmQDJQg8SgYY1wWYY9FXFSGskY4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aTCLyV9QB0P8Dw2oKYf0ewfNVwVb1L03Gt2aHssFqIkvXe+RISUvJFJgYCCbZlkzXjrHsmBuKczxO4cVI2aYmKTdqmMqwc15ajd8ras5Bq7swZ17J69adJVrPegeK1nGPwYIr2Ao8mGzZzMD8Eu/yRR+gb5yDQ50iuRSR7SDDQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ds/U5qkv; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-37d4d1b48f3so3864138f8f.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 02:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730195410; x=1730800210; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OoTvBOrAuRYQReshFO2dNXUuJfaDJJsaTs/Pc/IWOP8=;
        b=Ds/U5qkvscikzKQ93hV+Xi5cADhntBsC5u8DMeE6Ceo5h86Rze0N1RCNs39mv+hTFy
         GCvy9KoCDJHs/dbdmrKPd06aZflhC5g47NmF1P049DpjR3KTSpNXFXzKM/prB8zRJRUM
         uB80Dcye65IbhQoJ7lE6et9z0ve2t2ulOQV37ibQ6BmzwD/Sp7vlGkSTnAcqu63QZA70
         AxSiabZxvk/VILZjjodNggJTsh4oIA7qohRHO6bAe+nSiEURN5vwyN+o8wcHEaztyHsf
         w+BALncj/l4535TGF0bI9UmSyvDjDSNQcPiGkK00uQdHXuiL/lUSUVLMkT/o7D9HywM/
         SyvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730195410; x=1730800210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OoTvBOrAuRYQReshFO2dNXUuJfaDJJsaTs/Pc/IWOP8=;
        b=w0GD1PO4+jv+0tiEph/kbI2+g12FvOkSsGwI1/OrWbqOdcA1CCC/AtgdpDucRNjPwy
         bMl1Jx+UPmz+y8YnG7fDgGw13ciENmnSuwoDIbA/jM8QOX/n3eA5WKSb4IumJxcSexG0
         nBVvhpwME1VeSvCnkvhYYAsQoxk0wRkRTHYd2Yhm5vAES2yUXMsxrnP8OBkATZTSg1PW
         RsvayePA0JjGI581pOS4SQivna7iPAxPOQ/QPN5USX2cVupmpfK7D3JMumKamrU2/LZ6
         jXfGQxNmWNRX47IcwpG0+FUgBapmoxJcviyDXw3kf2RtyOzcgtsMAUcyV4FuiCHi7eTe
         /ypA==
X-Forwarded-Encrypted: i=1; AJvYcCUfK3upIrsWZG/DoFCubiN5ssxb/a/vP6mkOCxeu42oJ66FAD4abcxVMNMWaxlPI0f21DUASjsrgFXV@vger.kernel.org
X-Gm-Message-State: AOJu0YzDZSJXCSLwN9CnrSIMgkOYb81WEArgV/s3FI5ymvPvpGt6Fm1+
	3iqLQPL7XRlPvhJhnY5YHjcjufmIH6sY5q/0Gff1EXNoMwvINlRq/UcYNZfHkdo=
X-Google-Smtp-Source: AGHT+IG8XiDibHrJEMH96PoQ8A9rLpt+HJm76xNOeHtTIaWfK/6v5TMKsOr0lvl5ZC2cOMzvQ499EQ==
X-Received: by 2002:a5d:66c8:0:b0:374:b6f3:728d with SMTP id ffacd0b85a97d-380611f48c7mr8065520f8f.46.1730195410305;
        Tue, 29 Oct 2024 02:50:10 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b47952sm11897956f8f.48.2024.10.29.02.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 02:50:09 -0700 (PDT)
Message-ID: <58142044-b232-48d6-8c98-7a0ac0fab099@linaro.org>
Date: Tue, 29 Oct 2024 09:50:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] mtd: spi-nor: support vcc-supply regulator
To: Michael Walle <mwalle@kernel.org>, Marc Kleine-Budde
 <mkl@pengutronix.de>, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Pratyush Yadav <pratyush@kernel.org>
References: <20240930-spi-v2-0-ed7f6bcbe0df@nxp.com>
 <20240930-spi-v2-2-ed7f6bcbe0df@nxp.com>
 <20240930-wonderful-wealthy-aardwolf-b455d6-mkl@pengutronix.de>
 <20240930-amaranth-stallion-of-fantasy-67701d-mkl@pengutronix.de>
 <D4PERKZ4GL6B.1WKA1I3MYSQVL@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <D4PERKZ4GL6B.1WKA1I3MYSQVL@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/7/24 8:50 AM, Michael Walle wrote:
> Hi,
> 
>>>> +	ret = devm_regulator_get_enable(dev, "vcc");
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>
>>> What happens if the SPI-NOR doesn't have a "vcc" regulator?
>>
>> ...the SPI-NOR will use the dummy regulator.
> 
> Which then prints a warning "using dummy regulator". Is that the
> usual way to go?
> I mean the regulator is actually mandatory because it is the main
> voltage rail for the flash. To get rid of the warning one can add a
> fixed-regulator (which is correct anyway). But OTOH, the device tree

I think it's fine to have the warning. It will help people write a
better device tree.

> lists it as optional (marking it as required isn't an option either
> because virtually all device trees won't have that property).
> 
> -michael

