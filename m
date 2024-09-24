Return-Path: <devicetree+bounces-104675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB5C983C9D
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 08:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 471AB1F2195C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 06:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F761B85F1;
	Tue, 24 Sep 2024 06:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CHsnr4g5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D47770E4
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 06:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727157877; cv=none; b=ZuUkh+yuzZRasg41OIgFoWKsREbUDHn1k0JlfFus/teHGyUnBmn/Osr/oMme4MuHfMIjHzIf+jkRqMOkIPWzIUz01l1zip8A5JQu0kq4WprMQiEynteu/LwgtDwTiVL3wES7Fe6SCFLwcottmm/I8Npkbiq9S4dygjJZJkh0XLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727157877; c=relaxed/simple;
	bh=6rcrW71ZP88vsJq+Rm3jrHCL2rSoJ6nT6MfAts5dF4Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nxe/CBPD3W5groO99vV7xeNO4rRKVWiSuTb07cKnqOImTb2xl9cOJNRiND7osbm/vAH7pLa+6M7AGsZBhTPx171NgOguRd2YHne+2c5Vj4vyNRfyMBXM8h/AZ6xHEjFB1It7Fg1N+aiHSyZ4tv+hpMNT9wt3W+caopj2RMJmWK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CHsnr4g5; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42cd74c0d16so49095095e9.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 23:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727157874; x=1727762674; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6rcrW71ZP88vsJq+Rm3jrHCL2rSoJ6nT6MfAts5dF4Y=;
        b=CHsnr4g53BO2RPxdx1f8ta7YntgnFLu2jWhX3pqwPL+jZPDE2R/1XeSVyKncwZ7DJg
         NCfVahb4RrnMwM0QqYj7QYzXFDcje9owH1bQhvCszgwO/9g5QRsJLnJCU6huuQ7IZP4m
         dQw45oHKGh2hwVQRuMxPPjrk/Glfff0FnsXIs8N9iJrPdaWBi//d17Fhvosbr2/ouDw4
         6ky2TNpRBLSkXPBM+1xkAoDlpKzknO3iUrBLsDIBrHNg/1CKkmiNL3DF3K/C0R1tMnGj
         lTlD3qoWunBeJCoyI5jkUliZwDrqeWjOpyM0XuIlgV4WcGP2GuEf0KjG1cdoIERbqoEl
         KN6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727157874; x=1727762674;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6rcrW71ZP88vsJq+Rm3jrHCL2rSoJ6nT6MfAts5dF4Y=;
        b=DsPRvg7C96Mq+Sp0wJ/o20BmwSloBNlIKdRBicsHptNCyQI9DKY4uPKhtv+gt2jcMA
         YFMNwhmz5BSDlFFPp8g10YIadMF+0j01YVApru6EPp2tnXS1gMnWQ+MLMN23JHuGnSFh
         wewWwrJe1ZNn8MLYzsvovCg9ZlYg+D8Q67LGkkY5sPobEDdO78W8JNAy6MfpTtImib88
         DiuwZdo3708htAObHwSNFviu9l/jjEPUZJDeYO7HJaPpayErvNktvT25y0soigDKySE6
         FzUqJUO2JmaokQJMy4RJvkWfeY9xMhxOGNifujr7t9NFv3eaY9z/Mbis0LNUYBuhGhb3
         aCMw==
X-Forwarded-Encrypted: i=1; AJvYcCUbyCAmIIFuBRfiPn7uqiyDuPCulAbtU/DijU0bLWO7Z4sjo1ZlYbY9Wgq7qOI/rOL7xENuX+9TU9QR@vger.kernel.org
X-Gm-Message-State: AOJu0Ywewm1iKitLbuFtBkBbawp3LmvTCx6mHt6A2GidAYvC0B5IS5K4
	Zqx7FXs908vUlZyfprwdTToWmbnE8GxmWtxa4VTEa8YUhWawy/RDvqtnSLXgQW4=
X-Google-Smtp-Source: AGHT+IEVDQFzeiyRgulfL9oGUpluoLBy4clrJQHLJVmYY4jTv+qxHoQ6jSCN1aN2Pe29faDnW0Sk+A==
X-Received: by 2002:a05:600c:3b8c:b0:42c:b74c:d8c3 with SMTP id 5b1f17b1804b1-42e7add1c1cmr101358965e9.32.1727157873871;
        Mon, 23 Sep 2024 23:04:33 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.20])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cbc2c1ef1sm665368f8f.35.2024.09.23.23.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 23:04:32 -0700 (PDT)
Message-ID: <6663a723-547b-4f91-afce-7775c86d0c0c@linaro.org>
Date: Tue, 24 Sep 2024 07:04:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] mtd: spi-nor: core: add manufacturer flags
To: Erez <erezgeva2@gmail.com>
Cc: Erez Geva <erezgeva@nwtime.org>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>,
 linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Esben Haabendal <esben@geanix.com>
References: <20240920181231.20542-1-erezgeva@nwtime.org>
 <20240920181231.20542-2-erezgeva@nwtime.org>
 <4e0cf43c-4843-451c-ac6f-86775dbccb2b@linaro.org>
 <CANeKEMOmhAPM1j1_ihzcC2wL6jKsWXPCGfZs+euS8mRvtqgE5A@mail.gmail.com>
 <2c87568d-3caa-4162-91de-094684f1b268@linaro.org>
 <CANeKEMO4ckeJZHKEOKHVeamPzR045jpwkXWfJS9S6rBiMTayuQ@mail.gmail.com>
 <688d3e68-c339-4a44-b6b5-366dd5f12965@linaro.org>
 <CANeKEMNKF5WtVgzxbMnLFsqRHNOz=+gD-if8aBqsWwjgDvz3GA@mail.gmail.com>
 <ca2c03f7-0769-4b2a-b743-3ebda9e29755@linaro.org>
 <CANeKEMNdGvteumpvLHhDoiVoZwPJ4iOs+Ej8KDoXR9-Vz0-rvQ@mail.gmail.com>
 <CANeKEMOH=CTC9GY5LFLj0mx2OoytR-9bOsFM7edDQ6-e=CaNgw@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CANeKEMOH=CTC9GY5LFLj0mx2OoytR-9bOsFM7edDQ6-e=CaNgw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/23/24 10:41 PM, Erez wrote:
> What if we put a JEDEC ID + SFDP Macronix OTP probing code under a
> kernel configuration with a poorer warning?

No, we don't add kernel configs for such things.

