Return-Path: <devicetree+bounces-183474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A94D7AD0CFD
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:06:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60711170391
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7249720CCCA;
	Sat,  7 Jun 2025 11:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dU9LX0QW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC69AEC4
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749294380; cv=none; b=gSgImSIK+wjus5jCKuWvfHgZ68DtCC8mrSuxy08TKTGlbGMhw/Jc7WJXWDzeDuYr2bhj2I7dNuZnuGJU6BtevZ1G2CKhDzngVR3mv6vSc/d5v1xXETm6AgFwIiy0i9s9eT6EooCQ1ut/V2QhN766cF1s182L6fWFdd2e4NLdBlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749294380; c=relaxed/simple;
	bh=5ldzH4ZNYIWtvnwYYCHyuHTiMOfJNsRN3aVHEUUXdu4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=eeuSemX2AA8Xnpw5oiUNBxg4RkZV8CMHiV5dhEEkNzRECycH6vwwkj7tdBesnkDRldyFlRMeTONOq9IvUajMB/3hKIRUpI0pkUfhItS8HNI5gUXeOlsJ3WU4H2Bcxqe0YDln3DP5dkRZDRBySCA+XLC+vcQDAknsH1swZhOyJW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dU9LX0QW; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ad1b94382b8so475807166b.0
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749294377; x=1749899177; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lt3KSgBpR6WlPCg8kfTF1qJDUFvaJVzc7YWDJmWgEtQ=;
        b=dU9LX0QWyJ4s3EolXehZbmmvpkryvPktlzW0INEC3j68qmcGyz3AXiLaaCA2iblFtb
         4O0A6q+9bKOwDyA6z/YHnbydOIlFVMQbzsmjZLnONnkAWdNEaUq6Wwk53ulbhd25027g
         +Mz+Oh1CLj4nUqAmAQk8JQD3RcMhSdMmUqrxVnYAbDrCCnSmCAIZMEuzKlp+EzzVLnPM
         sSAK85pkHRP8YhkRryZl+NijaTWMfspmtuVAWEkw5LXH76+8TIQ4Vclywhi98fJ6qCFh
         kblrBknP+xNe334sztxAz4Waxk2uYk1nJvc2UfRG42MDdNwWjw7gQa4ZioPnwSu6FSoR
         Rq8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749294377; x=1749899177;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lt3KSgBpR6WlPCg8kfTF1qJDUFvaJVzc7YWDJmWgEtQ=;
        b=fdD7xecdr1Di1S4hOU/WKC6dH9RX5+ENEZo6bsrEiOdyNg2YkWIKFiNKQd4/uyLbN6
         XMp8VSOOLWUuaUpu/+HAzI6tyqro+jF+nbCJ9rF30P+zZ0xPeTIPeuJSmpgB56WGznxi
         6hZ57NTfM0FSHCklXZAbdwNVqYKNGfNrx8kKZIrjZQXtTDFk8qEmsklqLVHgchQeFq4Y
         008fX/+7h47sIbRHaJUWBvWw3IslbQuA6/AWIBX/KF93UKMBfeQf5imBP3C+o6LCkWyW
         FWCqb4lx6jKshdgfBThjo1TWo7177o6Z26EK1NYhOXm7IMCPaqvY8ytTlMkX7YLIIauW
         L6Jg==
X-Forwarded-Encrypted: i=1; AJvYcCXuMqbajqzMgACpp/Be1F1Wn8k8JHOZ1o6C9sDMfzNqyZDarrbTsVvDD9+r/Zm+t2SclR2cDMEYJzvn@vger.kernel.org
X-Gm-Message-State: AOJu0YwpKWQn7iLozgUQQtWG1TPT4JAZWBlL7btJ/Xg7ZQ6MS7AXl5kz
	qS+Im1aM2bXEueYOCaI1N/KvI9A2UqAfNrHm0NYuMd+bA2Wjno146jn1K1I95yVOEEw=
X-Gm-Gg: ASbGnctUVK74DHDhf2Ul3Ile9MoohFWWtZegHfCdM6DeQaBxXEHHYDm/CSpqBO8TnzU
	Nfb6whoAnBH+3fYNwMkCWsUWex9N7cVg26DrXFP3edJytQvq06L7unPoR0XiZb1cy7jEPmE4FhC
	FH55ORPdTGtum2WbC7+935dQBkLJkqAnjRMqTpf1y+bKpqWg1QCcbUN18s9G7pAsWwPIto8YXSF
	/1hfuG3+ySmVDtr6tAviFrzYDbOwxnYWlDCDwaW3wGq64pXO7H9z9vE3Pj2TZW3AkfxRJpUh9U5
	j3K05SwP0ocdmgdKb8Kzc6U5EdjL/w1nVa/kKQZwHoQqxbW3FXW3ZkhCCusMemE+f9pw3V8=
X-Google-Smtp-Source: AGHT+IFSdfYKiUl2BcWvfS2STzA+hJhoZRwqIV3NcFsc20+0JtxX/iLZTbnRW+MTzqjMbWbFfUkh9w==
X-Received: by 2002:a17:907:2d92:b0:ad2:4b0c:ee8c with SMTP id a640c23a62f3a-ade1a92d206mr578163266b.35.1749294377136;
        Sat, 07 Jun 2025 04:06:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db5572csm257834366b.38.2025.06.07.04.06.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:06:16 -0700 (PDT)
Message-ID: <b9921d00-399c-4b4d-a880-320607b7d041@tuxon.dev>
Date: Sat, 7 Jun 2025 14:06:14 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] ARM: dts: microchip: sama5d27_som1: rename
 spi-cs-setup-ns property to spi-cs-setup-delay-ns
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250521054309.361894-1-manikandan.m@microchip.com>
 <20250521054309.361894-2-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521054309.361894-2-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.05.2025 08:43, Manikandan Muralidharan wrote:
> The naming scheme for delay properties includes "delay" in the name,
> so renaming spi-cs-setup-ns property to spi-cs-setup-delay-ns.
> 
> Fixes: 09ce8651229b ("ARM: dts: at91-sama5d27_som1: Set sst26vf064b SPI NOR flash at its maximum frequency")
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
> changes in v2:
> - add fixes tag
> ---
>  arch/arm/boot/dts/microchip/at91-sama5d27_som1.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_som1.dtsi b/arch/arm/boot/dts/microchip/at91-sama5d27_som1.dtsi
> index 8ac85dac5a96..13c28e92b17e 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_som1.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_som1.dtsi
> @@ -44,7 +44,7 @@ flash@0 {
>  					compatible = "jedec,spi-nor";
>  					reg = <0>;
>  					spi-max-frequency = <104000000>;
> -					spi-cs-setup-ns = <7>;
> +					spi-cs-setup-delay-ns = <7>;
>  					spi-tx-bus-width = <4>;
>  					spi-rx-bus-width = <4>;
>  					m25p,fast-read;


