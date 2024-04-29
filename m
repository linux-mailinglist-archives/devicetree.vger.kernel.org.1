Return-Path: <devicetree+bounces-63553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6117A8B555F
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:31:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E33501F22F47
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 10:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15BF031A66;
	Mon, 29 Apr 2024 10:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pG56B01O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583FA3D64
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714386696; cv=none; b=lfP5kMv5NGHLWXX2CTIzFgYr3WdB4HaoF3N7CS0NXFMxjMWcgrtbsvubnoHNEzPK/eFsEnzP2bNR4Ta+sMZbFcvwzwKZ5yklAV+hvxr+HM4rrUvRTA8pCAGMx2aBvTyCndd0p1+rfVyK9z1FIw2r4MDZD633faAKZ5+chE2ZnQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714386696; c=relaxed/simple;
	bh=Hw2qgATJSBTGrf75vTIAjwORxmNc8hxIwPuthSw1m2o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dqevQCBX0DwwyFLWg8U3VzpCTbrqAeumKx3M12uouj8IN6W8Y7ysvWyzXtdRtXv3VlOB6zWnuBLrWbohTPBJyXXrypga+vKSvwes3Y7i/O8MUNJY/ReTMeFz5BBsQtxQYqGsL4SbJzZKEltCpovqEJHyK4lF7tx/pnCXFz8nN18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pG56B01O; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a58eb9a42d9so214064966b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 03:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714386691; x=1714991491; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=M/qc+UCmLnHMxrZ1VRhlB4bll/7dc2yIJ4EBZbdYm6k=;
        b=pG56B01O9BI8oZo/XuP+I9kTrRbgR6tL6gDf3J+y9GMkql4z5JZq2eFRDtbO2qvO2U
         ETnMq4xrcIQG3hMn1g3adBMP2AZniKr/0UQybMlxSwyGoz15E/FASLzlFtu5v1/oJEcy
         +CR9wOSh7Lw84hr2J4I0jS1mwJ+WEN4cN1BbkgnFDO4R/LFwlIpjpHH6TJ/1OQ/psrCm
         zz7qEyphU47kANkp1PGECepstI2Xfb3wCtFn5QAWkXvuBQ8t81q/A990RtTCHfnIrcOp
         ytJEEWTtlalam5Ft0x2fpkXZeLUa2UxUKGdSJ+yKUuZNeje+tJk1fd/F82IePnySd23a
         ldZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714386691; x=1714991491;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M/qc+UCmLnHMxrZ1VRhlB4bll/7dc2yIJ4EBZbdYm6k=;
        b=pqYhM+/gxO/3o7qNjRcU0hzQLRvI76BSUgs/LM84Rsc8+U/5tbbvWRIZtn/bTWJ0a/
         Lq8Q3cVd8LxHBQbYT2Va2mq5sxTFYCcPsZk8bXfmmB1t8MPiUrIFxTUVMvEQUJye479X
         Op//wa1L4ERTtvLrrRaaPkdQwd7evMd/dDVWgJ1UyotmsbNL7yztenFTEKw+miGI5l8r
         hrKBT50REKaLwyPxg7EEaaRectVMYBLTveFTWnLtuYpEOUolrUw5gLloq5dPc7Z0oub1
         hPvP71QeQltkCOA8LJH9ldXgx9wHF3bUy4/rL/UpivPGo7Hs1JCR1MyGB3ccQ8ZS0dce
         T4UQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXew+QnoYf0tGuN8qm8jQ51r+No8/QFHphy1xmQT0+JfckzKVu5Tn6GljQI7WEqycE/Bn7h/RJPjGRg2dBAyyL5SDkGEEkJNyx1Q==
X-Gm-Message-State: AOJu0Yz2BV9bYh1eTDJFOThh2Ocf1sUmobsHd5z6oVWvyoJsP3m3NpRp
	bpqJlArAeD9Hmg8eMnhLX8cFCk4NTSgubE3QehWuatGkPEgTV5LpPJ2x8nzxYa4=
X-Google-Smtp-Source: AGHT+IGDILAl/gI5WFRQcZGMCIgMOSCZWPNCiwyYZv4utCwXuEL8OxsWERNpnlublyuLm5UCwOfwJg==
X-Received: by 2002:a17:906:71d4:b0:a58:f143:b458 with SMTP id i20-20020a17090671d400b00a58f143b458mr3403152ejk.62.1714386690650;
        Mon, 29 Apr 2024 03:31:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id c19-20020a170906155300b00a526a99ccecsm13661059ejd.42.2024.04.29.03.31.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 03:31:30 -0700 (PDT)
Message-ID: <1cf7f439-45cc-42cb-b707-4c87c00015ac@linaro.org>
Date: Mon, 29 Apr 2024 12:31:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] arm64: dts: ti: k3-j784s4: Add overlay for dual
 port USXGMII mode
To: Chintan Vankar <c-vankar@ti.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh@kernel.org>, Tero Kristo <kristo@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, s-vadapalli@ti.com
References: <20240329053130.2822129-1-c-vankar@ti.com>
 <20240329053130.2822129-6-c-vankar@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240329053130.2822129-6-c-vankar@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/03/2024 06:31, Chintan Vankar wrote:
> From: Siddharth Vadapalli <s-vadapalli@ti.com>
> 
> The CPSW9G instance of the CPSW Ethernet Switch supports USXGMII mode
> with MAC Ports 1 and 2 of the instance, which are connected to ENET
> Expansion 1 and ENET Expansion 2 slots on the EVM respectively, through
> the Serdes2 instance of the SERDES.
> 
> Enable CPSW9G MAC Ports 1 and 2 in fixed-link configuration USXGMII mode
> at 5 Gbps each.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> Signed-off-by: Chintan Vankar <c-vankar@ti.com>
> ---
> 
> Link to v5:
> https://lore.kernel.org/r/20240314072129.1520475-6-c-vankar@ti.com/
> 
> Changes from v5 to v6:
> - Updated order of properties in Device Nodes based on
>   https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-properties-in-device-node
> 
>  arch/arm64/boot/dts/ti/Makefile               |  6 +-
>  .../ti/k3-j784s4-evm-usxgmii-exp1-exp2.dtso   | 81 +++++++++++++++++++
>  2 files changed, 86 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j784s4-evm-usxgmii-exp1-exp2.dtso
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index f8e47278df43..2d798ef415e4 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -101,6 +101,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-j722s-evm.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am69-sk.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-j784s4-evm.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-j784s4-evm-quad-port-eth-exp1.dtbo
> +dtb-$(CONFIG_ARCH_K3) += k3-j784s4-evm-usxgmii-exp1-exp2.dtbo
>  
>  # Build time test only, enabled by CONFIG_OF_ALL_DTBS
>  k3-am625-beagleplay-csi2-ov5640-dtbs := k3-am625-beagleplay.dtb \
> @@ -148,6 +149,8 @@ k3-j721s2-evm-pcie1-ep-dtbs := k3-j721s2-common-proc-board.dtb \
>  	k3-j721s2-evm-pcie1-ep.dtbo
>  k3-j784s4-evm-quad-port-eth-exp1-dtbs := k3-j784s4-evm.dtb \
>  	k3-j784s4-evm-quad-port-eth-exp1.dtbo
> +k3-j784s4-evm-usxgmii-exp1-exp2.dtbs := k3-j784s4-evm.dtb \
> +	k3-j784s4-evm-usxgmii-exp1-exp2.dtbo\

I have doubts this commit was ever built. It clearly fails, just like
now linux-next fails.

Best regards,
Krzysztof


