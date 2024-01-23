Return-Path: <devicetree+bounces-34118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 988A6838B2C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 10:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 126361F24B78
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17B15A0F0;
	Tue, 23 Jan 2024 09:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="irnNif80"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5155A0E7
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706003897; cv=none; b=FoA/orQUi/kRdpBdfCFK84fEli8Vp41G+6YgsmhIfcoaoHTMGIIjCN6gbXbTFGkT9HEfdw1ktDbwgF/kbTVjImJWv81dgTlPGzcxK7FvZEvwOAa0fNe9ZsTUn+zkbcvDmSVjFg8NniLcu715c1JzwWWAN726iJtyM6SYZMmyr48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706003897; c=relaxed/simple;
	bh=eR5qPvlgI6H6IpiKuooomJL6dF463M/T3mQAC68b1tw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=oo7FeCxWxriefz/+axeiSg8QQ7slDNFjDzMewvd4Q0RBb2GPdKZS0xE7kL232JeenwDK3GmluSyQSultlHbiGCBo5Po8/SJGvLCaIiRtlnLXYCHYabDcWPbT/R4Q6Rij0yGe3j5ul8zojt9v2kWx3B/dElan1sdB39S4PeyMEIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=irnNif80; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40e8fec0968so52944655e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 01:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706003894; x=1706608694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u22Qz3ajWOgWwClMOqK73JRgy3LS8g3FwLC8IJ6l77Q=;
        b=irnNif80tD6efdHavY34lkl/fwDY7XLiSdi28RBIjgdaaelPqHysn9aiAYSP0Mpqlf
         EPzh0GGRCPbIRA7mEhEuE3FQDHV3b0FdUH/m98cdBU6Uv6MInm/H+H1iLvZ2LjxVXbxY
         OteEKMhHExckKbVDsrlNtWSLNaCEe501V7YXOG3z8ZI2alv+MKZN1bU7+GA+7XdRWo3F
         LYGqltY5BhoeolJo4F37P25MzcoCJcebrDJ7pzT+CFjsziOJswKlfq1L5to+u1njj5Oe
         b/xJfJHuUBuVGsXNm0sWYDRi6Z/URKkWelkH4K7rwTNyWf5fZrE3Gm1M0mVJBaHLrJKQ
         BXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706003894; x=1706608694;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u22Qz3ajWOgWwClMOqK73JRgy3LS8g3FwLC8IJ6l77Q=;
        b=kiPGMg8dkDvEl4IpbuPtkmQc19Mikg/qHiSUF++B4gjz9Ell4PEuZ7Ge9msdDhmQOg
         YYl66Y1s4d11HA6eHLLMzjzokCXQ6jekf6ZzwraTOvHgY7DWCHlgI9ouJXU0PiA12KWP
         +hTVfwNiI0KqPPHeebB2FqNERNCtnsoMtjCKbuwHtta8bBbyO/9gRU9sx6VbGCt6noMo
         YaQbMzqAsw/D5s3E/gvi1pzBCoCDeOCFLWAssmwmc05mwaxqLEAn8X+K18QQuzXTQoxV
         Q8j3wrrLHPTBH+qKrZYX+i2r4v0FktqIlkjvgz7UY75+UwP8zsmGkOLtUDiMBIl5vCc9
         FwOw==
X-Gm-Message-State: AOJu0YwScv965o+gqvfmnGgvm5dF9mwn7awjcyTBRiCxM+PzcwlT/pOT
	NBkEtnHg7XqFeFcDLJrmNYtOJxq62+o85qOvltw8d4aqX7XQIzuKs9c40KwCAl0=
X-Google-Smtp-Source: AGHT+IHZbTo0A3ewz1TD4+4u8A1RIYvMGh2O8ALWu2EaO9a6nUyfk6IZVJx1Uy5V3VCq84n3gjapPQ==
X-Received: by 2002:a05:600c:a46:b0:40e:a5ec:45e7 with SMTP id c6-20020a05600c0a4600b0040ea5ec45e7mr412778wmq.137.1706003894650;
        Tue, 23 Jan 2024 01:58:14 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id bg23-20020a05600c3c9700b0040d91fa270fsm42202520wmb.36.2024.01.23.01.58.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 01:58:14 -0800 (PST)
Message-ID: <143b8da0-ee76-41a2-a26b-e7513e44e784@linaro.org>
Date: Tue, 23 Jan 2024 10:58:12 +0100
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
To: Mihai.Sain@microchip.com, claudiu.beznea@tuxon.dev, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240123083158.7339-1-mihai.sain@microchip.com>
 <20240123083158.7339-2-mihai.sain@microchip.com>
 <c289a167-031a-44cc-ab62-0fb0adcab2bb@linaro.org>
 <PH8PR11MB68047F3DD9D23C6749D7F86082742@PH8PR11MB6804.namprd11.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <PH8PR11MB68047F3DD9D23C6749D7F86082742@PH8PR11MB6804.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/01/2024 10:07, Mihai.Sain@microchip.com wrote:
> Hi Krzysztof,
> 
> I'm sorry for quoting (email is sent from Outlook).
> The sdmmc controller from SAM9 MPUs doesn't support the IO voltage signaling/switching required by the UHS sd-card.
> On the electrical schematics of the boards the controller and sd-card power pins are connected to 3V3 regulator.
> On the SAMA5 MPUs there is support for IO voltage switching but since we have issues with the tuning procedure required but the UHS cards,
> we want to keep vqmmc at 3V3 in order to use high-speed mode.

OK, it is fine for me.

Best regards,
Krzysztof


