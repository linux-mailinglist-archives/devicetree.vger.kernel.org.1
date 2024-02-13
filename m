Return-Path: <devicetree+bounces-41331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 535DE853304
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 15:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B70DB22000
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 14:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10C3C5786C;
	Tue, 13 Feb 2024 14:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fMkX2/eK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378C957865
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 14:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707834225; cv=none; b=cWRR4KzdFHSMLy3kJBKN7zOX9ow3g2jt/Oj36Swiz0Hpb00pV1M/wpt71sx5mWGvGrBALbJZBZK803y9XhuTj/TJ2r/3L5Jr0F8DLDARVQI57VUTLLucYhUPc4grUE4isQ7hR69ypR1FkP1L+LR4dk6LVTe/rRR3FWB8R0h+Iy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707834225; c=relaxed/simple;
	bh=YbgFGlQXw868vvvDk1XE94NqnqgyN6nO8kNfee6ROsk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SmutkRz+ylFtSPzpLyVVc5z41W8XHzn/vjgZhOH9RwEQ62tWT/G6K6tSo3iR6HI9CX01xQos3spoOHEVOktU3eslKjMcB91WPrfcYTlwkm64gjHokwB8+lE51iZJSQm6n5zjOTjQREUO+t8G6h6vMjgGY2T+IuvsRnU+PoCjOxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fMkX2/eK; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-411c3b299caso4322275e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 06:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707834222; x=1708439022; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bnXhTRguW0xSNMCPfA6GHBCpy42I8rpo6smtBUVp2zQ=;
        b=fMkX2/eKZMRl8tEDr2OD8MuaV8ePEF36DS0g+IuLphrWnolByunA7bkwe3nXxyd/6T
         5DZPyYXcDltCqhKNJh/SrKzlheTHrGtxdSHLj3n6KQs+kh5Sdl6QW+hVgJ44xLllyUMB
         RWINFB5rEkG4Zua3PSEcaDUJkyyZI/ehDEwymtSgzZvr19FmK7lebsWn0KAPG3eBMApI
         P2nxvyNUmQfneJ/rG+4jmG0hdWFLtXD/nYaq03Fk11JopRemljqz4Sg1e+a5d7L3rg9e
         lnVgN4JK1d6drfUW+urIDSmVDbbVv73DDoxn5dXg7jc2pbWvWYtjdhrpXvfHvdfNL4TV
         iDJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707834222; x=1708439022;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bnXhTRguW0xSNMCPfA6GHBCpy42I8rpo6smtBUVp2zQ=;
        b=JT3+aQxmJTZyO37620e4e1nUvKrU9jVmaoPF3DccC9VUaGYvyyPAz/xTwjAFOmWYUf
         VN7wQg7vND7RITgQ9G0BJYNBg4Zs+fF3jD99tPDB/paGUYHkTpnF6pFTNflHvcr/muPk
         Ow3A2ciO8e+lWv71JkU9GXcsNsR0JzP+jxXC45O3TohnaRDnDASckP+K52tS87KzwZ2d
         jWSWneacKJ//Gnc3o9Ja2du0O/jC4e4F3w8PWhAO4sEgdHe5f4xonNrr5pKL24uwtawo
         vdyvbVGPIH32KUCHFDjOQhEJo99X1GJh6UsZngYFaZsYOsEdht6Qe/H6QUfp2ecANffo
         c7/g==
X-Forwarded-Encrypted: i=1; AJvYcCVeDS6CO24XW9YRTxEGaC6+Ca0liFWaYPeWJtTPDXOndxAaT6Z95FuDC4ppgvD5z8/lWOCvUqXSBEkdx6hBeVGVJXzbQTe16h4izw==
X-Gm-Message-State: AOJu0Yy1dzif60frfy4rmnVRl7ZfHGRveyhIPla2wRW8uw3oiLyMPuO/
	ix7c/9ZpBk7VlQ8SdEP+x+uI32gsX2OezQi06Me/d7dvMwnpY4Q10JJEMkVqnkw=
X-Google-Smtp-Source: AGHT+IGFslU5KlnrtZu/fqJXPDWeMTECYGF+yTuj85YQbGTVhSvMJUrXD+70cMLMKulhwZNFAeaMrw==
X-Received: by 2002:a05:600c:3542:b0:40e:c2b8:ad3c with SMTP id i2-20020a05600c354200b0040ec2b8ad3cmr7722652wmq.32.1707834222338;
        Tue, 13 Feb 2024 06:23:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVDGBPZFgCUjaKAy9RwOzSWbzNrd7r5slXvUZsSNmGugRcR2/FSYEpuXAAD1RIcYbaYqzWXN2T2MTJiI+luyGALSFycOz/Dx+ZJDQJANvvHwTrwX/jf7bR8DZDP9IIIj3WoFKXs6bJy3scXC5No8SdjIX9s5E72jYfb2dIF0IcDoCQiRCSGQnIRurl48+bJimdmQgZ2hPGDTZ5H0duckYLjxFvbuIouC0AxaEyNT9A/3ZJqggcq55uAIU3lC7Z89CHz8TOa+QXqlcavJ9XnQOHa6EmrP+VVBKUlF0o2cFb1YKJY0eIth5/iLTVbrhGuyfUoEKhMLLcqi+798aCdYHhwEB+Knh8COIUFo7y0in+31OKD9HGJz4zZ7Hr64xyl
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id v1-20020a05600c214100b00410395dc7d1sm11809391wml.7.2024.02.13.06.23.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 06:23:42 -0800 (PST)
Message-ID: <ea2d11e2-3d6f-4dac-aa96-b18b174af00c@linaro.org>
Date: Tue, 13 Feb 2024 15:23:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: amlogic: add fbx8am board
Content-Language: en-US
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <7ff2d053-7645-4016-99b1-646242463547@freebox.fr>
 <76638bd7-f290-4729-8d15-98e1bccfbb40@linaro.org>
 <b6a02f8b-8782-48bd-8916-36bbd996d4c3@freebox.fr>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <b6a02f8b-8782-48bd-8916-36bbd996d4c3@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 11:49, Marc Gonzalez wrote:
> On 13/02/2024 09:42, Krzysztof Kozlowski wrote:
> 
>> On 12/02/2024 18:51, Marc Gonzalez wrote:
>>
>>> The fbx8am boards are based on the Amlogic Meson G12A S905X2 SoC,
>>> and the SEI510 board design.
>>
>> ...
>>
>>> +	ao_5v: regulator-ao_5v {
>>
>> No underscores in node names.
>>
>> Didn't you get such comment before?
> 
> For the record, this submission is, mostly, a copy of meson-g12a-sei510.dts
> 
> Thus, I did not consider diverging from meson-g12a-sei510.dts
> 
> $ git grep -i ' [_a-z0-9-]*_[_a-z0-9-]* {' arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | wc -l

I'll fix meson stuff.

> 6
> 
> $ git grep -i ' [_a-z0-9-]*_[_a-z0-9-]* {' arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
> arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      ao_5v: regulator-ao_5v {
> arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      dc_in: regulator-dc_in {
> arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      emmc_1v8: regulator-emmc_1v8 {
> arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      vddao_3v3: regulator-vddao_3v3 {
> arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      vddao_3v3_t: regultor-vddao_3v3_t {
> arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts:      vddio_ao1v8: regulator-vddio_ao1v8 {
> 
> 
> IIUC, you're saying it is preferable to fix the node names in new trees,
> even if it means diverging? (Using dashes instead of underscores?)


IMHO, yes.

Best regards,
Krzysztof


