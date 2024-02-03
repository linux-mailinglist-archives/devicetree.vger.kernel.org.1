Return-Path: <devicetree+bounces-38306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 164038487B8
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 17:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CBFB1C22857
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 16:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6536F5F85E;
	Sat,  3 Feb 2024 16:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RbEwRR11"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419DB5F57D
	for <devicetree@vger.kernel.org>; Sat,  3 Feb 2024 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706979336; cv=none; b=B5D/nPGyw7rGNlYAfVe+y2tdCoONU1yJ+H/3QElr0ngQIO+G8T+fqAfgo4y6FEvrWn/xBxNy/q8YkVTATXCj4S1G8yds28gs2AM8KZNoMV6dLSG0Y3nz+LbJL70ZZjIEd/2Ujg5M9tAUDl/ZbHlPdZ6qJasFVlh12qrtFenNESM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706979336; c=relaxed/simple;
	bh=/NLVF1BRdTKdkNHovpu9sjD9dds+/D3zv5oCZ658snI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=grMSCQRpJScG0ITPr5g1KzxHVLQtVwsQaAZHF7OfKECbSB+ApSeXebBRbaGTsUZrViYBsc3GEBzb+McLO3sEGAnpGmz+GU1zme3zzwfaZHtgKj2XiA90Rg3mrJzQ6KzgWZfHAygKYiWlFizyz+dr3hCxDYW8dr/7N98pN1OImfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RbEwRR11; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a370328e8b8so216705866b.3
        for <devicetree@vger.kernel.org>; Sat, 03 Feb 2024 08:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706979332; x=1707584132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SIcfBI8j3SY4C6skX3RWuCYwc9RWkEzDm65JNEkKU2k=;
        b=RbEwRR11n4CBUhllPqqtYcl2+TOwf72G5J5xsFp1druPAZB3s7WfcJt6y84W6Q3Vd0
         1x0tI/x3vlEvm/ibqzcMkbYf0BIuAd/rLL8FXX+x2gn2v0ShjTj4Snfhh3y39KdtYnik
         5hHNuq7jq3C/aldl4L++dpxbZI93Fp+88fqhHqT8El0QQNcigcwm2xE9Ly2NOQLcJgKj
         gBHufPl07vzZoYpn3zb6TYg7yRfLZ9zpqPhFdOF+01NKPyGh+/DcLJMpi1VnCRUrw4bJ
         V7OgVFqGg/eQiHHfnDildsW6e8xync39+8qvMiznRc4D+HSkGgOzUhAlAn9tAIkmIwXF
         FKSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979332; x=1707584132;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SIcfBI8j3SY4C6skX3RWuCYwc9RWkEzDm65JNEkKU2k=;
        b=OY/MXhXAlcV26VB5aDuRnNATtLFL7wEIBZEjDqB9znmIEoX//hWa1D6c2jIdlEyqDv
         rZ320auJ9Iil9kCAF/fr5GhgCHuDqoUPfggsJJ9b7JDItHO0bnI2joeGxBkmctY7oKh6
         H8qGRpbcho9auFWsGsWlXoq7+otSzYPCHulxH9tNByStWkb+j0Oj2cTQF1wsHkCvYjuU
         73e0xprvdMtQh3onHS5BECMgAgFweYtfVT+h0y1phC/HOKGjnxmlxCfYNzmy3aWzMaQV
         T0BXuGbapiYz+G6Rr9jcauEjdneLc3v5S2gro5DUy8ZqXvP6LEBGTihaXwo7Vz8vSogf
         SUdQ==
X-Gm-Message-State: AOJu0Yza/6bplVYLOXNBoG20iOeCjq7rXNRtcjeJtIexglorsk6IDVtZ
	XnHzNbWYrzSTlQXJhIWPtTFYGFL3/ezWKg6ZuW5jU9ILLjrlR3ME7/BPHe6OqXc=
X-Google-Smtp-Source: AGHT+IGYtksWuIrR9wJUNuVMQwflqn+XMSQ6BBLJCB/1rzkvxjElvfMu7LvbVq2CHey/CbhUBffpqA==
X-Received: by 2002:a17:906:c209:b0:a35:cb41:33e0 with SMTP id d9-20020a170906c20900b00a35cb4133e0mr4056336ejz.27.1706979332302;
        Sat, 03 Feb 2024 08:55:32 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX85Mo40qUN1QCyrBwi8zLORNiRJbV+OGWgTGj7Rj+aUpUu0RnrPTtq2Ba/grDoaQC9fBT31tJ+VBTUX2z/xas2yIPrINYLP8z+mUZUdDKtt2Gwha59TJ2ZvDxZS4CB69KqgOD0hTaHkgwhI8b9n2Kqc3433T0/W4ZEA6f1DqETjvq3Q0S97Wu4BBCYoEbrtJkDfiFKL0bf/a17yjz9fiDqlKpb1L0TBu3xMq6kJf0feakwvOHDdR2Sw0Jxy8Gx+f1VG7ztMzFvYUz2BlJ4SWPkWpoDzFI1VBsX28E9ef4ZvskA7BNJcZXX61NJoE75Hx9gPJI1iFGXcsv1VM1l2JdNsepEmyLgOkrDUfl5TU7fAwAoVth8R6BeyBPr29Aq1/MwjhibaH03CY+Fv48z0CfWZoYLO319bdZUF/CY+i5blAeFWtoKX7wmy8ObN9nTATE=
Received: from [192.168.50.4] ([82.78.167.154])
        by smtp.gmail.com with ESMTPSA id ao3-20020a170907358300b00a36ca9cd705sm2174007ejc.75.2024.02.03.08.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Feb 2024 08:55:31 -0800 (PST)
Message-ID: <76ccbfd5-ed5e-4443-b741-d7b2e90f6c18@tuxon.dev>
Date: Sat, 3 Feb 2024 18:55:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] ARM: dts: microchip: sam9x60_curiosity: Add
 power-supply properties for sdmmc nodes
Content-Language: en-US
To: Mihai.Sain@microchip.com, krzysztof.kozlowski@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240123083158.7339-1-mihai.sain@microchip.com>
 <20240123083158.7339-2-mihai.sain@microchip.com>
 <c289a167-031a-44cc-ab62-0fb0adcab2bb@linaro.org>
 <PH8PR11MB68047F3DD9D23C6749D7F86082742@PH8PR11MB6804.namprd11.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <PH8PR11MB68047F3DD9D23C6749D7F86082742@PH8PR11MB6804.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Mihai,

On 23.01.2024 11:07, Mihai.Sain@microchip.com wrote:
> Hi Krzysztof,
> 
> I'm sorry for quoting (email is sent from Outlook).
> The sdmmc controller from SAM9 MPUs doesn't support the IO voltage signaling/switching required by the UHS sd-card.
> On the electrical schematics of the boards the controller and sd-card power pins are connected to 3V3 regulator.
> On the SAMA5 MPUs there is support for IO voltage switching but since we have issues with the tuning procedure required but the UHS cards,
> we want to keep vqmmc at 3V3 in order to use high-speed mode.

Can you capture this information in each patch description?

> 
> Best regards,
> Mihai Sain
> 
> ----------------------------------------------------------------------
> 
>> diff --git a/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts 
>> b/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
>> index c6fbdd29019f..457c54dde0b7 100644
>> --- a/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
>> +++ b/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
>> @@ -452,6 +452,8 @@ &sdmmc0 {
>>       pinctrl-0 = <&pinctrl_sdmmc0_default &pinctrl_sdmmc0_cd>;
>>       cd-gpios = <&pioA 25 GPIO_ACTIVE_LOW>;
>>       disable-wp;
>> +     vmmc-supply = <&vdd1_3v3>;
>> +     vqmmc-supply = <&vdd1_3v3>;
> 
> For this and all other patches:
> 
> It is surprising that you use the same supply for both. Looks like inaccurate description. It is possible, but I think unlikely because usually VQMMC has lower voltage than 3.3V.
> 
> Best regards,
> Krzysztof
> 

