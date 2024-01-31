Return-Path: <devicetree+bounces-37011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF43843795
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE051B25678
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 907E44E1B3;
	Wed, 31 Jan 2024 07:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pect7BMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD93A58137
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706685585; cv=none; b=Up85GNv/8q4nQ8zUvp/M2oHWnkvpD9sPlXFk7ndhw+QVUVS6XNk15GcJTUIUmVH5OAwUwGzXMoLaOIIoYq1ORR9FUc8Ld+ig/bytRJ3OOjFBpMCmdX3Kdk2eUw07JKk61yH9jw/npLFOaK4RHlnWln0FXTovTL1GKZSAAMX3L+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706685585; c=relaxed/simple;
	bh=eZ+l+wLYJ2MeDMddYNHMwdCwUGTL0/3u/r/f3w7FWCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Py67xyn8ItRSxKSZ2XmuagZikYA0iTFGqYQqC9IFPtOVP7Ae/oAUI5eOw/0R6WETMpa5Lq8Q28c2mKcUT7nD4bC3tg4SWtdvLcfTpeD12fNcxUvWFLhx5l/a+l1Ag9FNvhX81J19YIE33MQIsxgCNsDZa6dYjG02b90PoVcgJ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pect7BMu; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a29c4bbb2f4so515388366b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706685582; x=1707290382; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KUU5ZoGCbRyIKRX82P6J3FpHavAE7JR3VdNwhkZXt4A=;
        b=pect7BMuIciNjXTb+zfpmkV8GX7b7vsTw3RdCAOHQT+cLeU6hPuzVwyTAqKr5XnoNv
         fn6LFVf3/rZ3HNcYrsWUVGPc5FO1hdMCZBXDSDgossgdDTP1N2i6cVQpP6wVMjo8C4Iv
         o+bsNJncb/W1r7gZ71opsbLlaROkvVoxQgNzcedBRPYW9yd3H1hhTJndCMIlY9uOcVkO
         2to8ZkVoizKMw0h8f2uCOlKOIPgCIUQRi83Ty9B/Ii/JspI86HOVwx3TxUH834UOZRbe
         waEiXvGwhUZJ066aTOulkRTgQj4q86RpZHerpLRN2c2x+9CRHhN7PNroi2euUiyxMxYn
         NOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706685582; x=1707290382;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KUU5ZoGCbRyIKRX82P6J3FpHavAE7JR3VdNwhkZXt4A=;
        b=NLMK8mwhRT9LxNkSkuK261mJqDS1JnfRA9b9O4p71U+jxx8FNsVSo3lohMa5uUDTZf
         Bh3I/vVxKgOOhWTv9+mwFFGXgIWhr0WaeHW6hgFbJwUkmpFEy2XjWQj44jL55JTFjAFg
         eABIa1adgKpI9NhaXDbnzU3N+w2DjZ18BSjDOy0cP83aXOt+V0Hehu9ejs+lSwdnSTSU
         rK1/m74TxPFb2wWSS9Z6ISGJoWGmHqC9yqI58vpFfold3jQCWeqZvvR5LibO609QvP/Q
         wvzAwG91IZK1ucRnlrr46Isyiuq8k8R5KN9AY7Kv08E3Poq0u9knjFLmmdsJmUKMZrpr
         iQxA==
X-Gm-Message-State: AOJu0YySwKa+1OJ6j6XQE33dZ9pNIFFWz3zkYDmog3tR0U4DcaaOEcPl
	rHrF0VVxhglt5RJltfHTu4j2+BVGJLNwesmZbROhGGQ+GbL8p8K6WiHurSH2e+c=
X-Google-Smtp-Source: AGHT+IFPqlMSfu3cp6otULlKJfAcpttJPDZ5Z9teZIomxyVXxBpafaf8B7ByOKjyEiTca0+Q8re+tA==
X-Received: by 2002:a17:906:11d7:b0:a31:805b:4172 with SMTP id o23-20020a17090611d700b00a31805b4172mr464623eja.9.1706685582003;
        Tue, 30 Jan 2024 23:19:42 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVyIVbRNfdYv2GFprKZHsR4lg4A/z5JIvSC6nU8j9cZwWg5roTHwNsnWdIUpDI1Pp0s4/pNjm3FINYBi0MLFHS6+YOGD07TbSwylGmAotFW91dMrWNPaDwAjMQ+iU0Q31wcdb5xmQ2BTrpitwBVN01VpzAqHVuA4xaeBSlzJmJ7FgWiTEqGAvf/Cxu21YWVGaacoRuZAVmXh0H6sMBmtTha6EHg5wZQPGGNc9oNq00hCpfUJZA42T7pugO7gQKhP1yjKKhVnSrEb/I25INYmmlYm7StCki/tvRjhMK1PrNZhr+Ewrfgwye0O/guJxxGkcbG+S5IIOex0MFUl9Bu2bkU3lxHptrF9DhVmjxeuteFgC3W7PqpLPeLvnBfoQYXL86sjdB6yT4GgOcYY5KnPI2YlVBJbq+KegiVR68=
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id ck15-20020a170906c44f00b00a35ec7eddfesm2316959ejb.50.2024.01.30.23.19.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 23:19:41 -0800 (PST)
Message-ID: <a04aa883-d9b8-480b-a9df-8c31bef1165c@linaro.org>
Date: Wed, 31 Jan 2024 08:19:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] ARM: dts: samsung: exynos5420-galaxy-tab-common: sort
 node properties
Content-Language: en-US
To: Henrik Grimler <henrik@grimler.se>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20240130-galaxy-tab-s-cleanup-v1-0-d4e17857241d@grimler.se>
 <20240130-galaxy-tab-s-cleanup-v1-1-d4e17857241d@grimler.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240130-galaxy-tab-s-cleanup-v1-1-d4e17857241d@grimler.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/01/2024 21:40, Henrik Grimler wrote:
> Sort all node properties according to dts coding style guidelines, to
> make dtsi easier to follow.
> 
> Signed-off-by: Henrik Grimler <henrik@grimler.se>
> ---
>  .../dts/samsung/exynos5420-galaxy-tab-common.dtsi  | 23 +++++++++++-----------
>  1 file changed, 11 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi b/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
> index f525b2f5e4e0..0c1aeafc025b 100644
> --- a/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
> +++ b/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
> @@ -103,8 +103,8 @@ &cpu4 {
>  };
>  
>  &gpu {
> -	status = "okay";
>  	mali-supply = <&buck4_reg>;
> +	status = "okay";

Such changes should come from a tool, but since we do not have them, I
don't want to bother with properties re-shuffling.

Best regards,
Krzysztof


