Return-Path: <devicetree+bounces-43773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3E185B845
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 10:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8296B1C22A31
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 09:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129916350F;
	Tue, 20 Feb 2024 09:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vhq1LWR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2F460DFC
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 09:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708422714; cv=none; b=ShctBoO+25RTbyp0fTictUEB+g93F+2LxdTvVr764pKTsC5Qg/5DNa0rwrQepulAPNCp5pUiWaEBX91qBiJ7S3C5+VcAQmB9en9tl/gYqz6mmeavYgeYHYyss4820xexc8K6SGHNbhvcYOsJhXBpHB2Ujs9OrpHh5SUo8GvXMWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708422714; c=relaxed/simple;
	bh=dC9uwPiTZHj4taOBqs1I6jvdR6XY3mTYB+tl1/uv7Ho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HYfLxHPvxWbTOlM6t+SIStGEu71yMnCIrzyBAXbuJgmoVYNC0PM7Nj0lpe8XIhS6KPioZGSIMWWjZPuuJlYbYNGVWQXLrwoWo38C2eBTBxk0yRuQnd2B8dGJ8fEtqbbnumBoyMFpn9HShPUHSGltp02qwH3eMUwYoYRvg8aPAiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vhq1LWR9; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4126d65ace3so4506705e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 01:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708422710; x=1709027510; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0RenwpV1wCWXdQE8HUV6E1FIiS3Inhpf0Brj+eLHTms=;
        b=vhq1LWR9/exuJz+Xv+RqqojkwzDRxW4aPltZOQNk1iAEfYYZ2l1uB2SL9M2Jcaf8X7
         VApy1VoeVgPUbdtHs/op8aq4Emsgi5RRwMBES74NgYYiJNr3NIeG4IPJVxVYhoKOryTe
         yFyk9CI4axGlagrFleNwTG/qQPa4/8cPl6kFCvj8/H9rvwl7tkVUOxRL1eXmPBdZBl4b
         vXiGqpSfhw6OaWSdpGxVFeh6Es3pwjqtyWVYRdwzdSFk+uZ4Gc7ahSwfxU55xlzYKyPJ
         GrMP21mSCy2QzafhTnoU4a0CQ6LreFVCoMCXHesHPJCRn8OzDwhMTHuSOxo5uEL1nt+3
         3E3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708422710; x=1709027510;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0RenwpV1wCWXdQE8HUV6E1FIiS3Inhpf0Brj+eLHTms=;
        b=ORYUxeqvZCi6w42R/q5IMk8G32m62OOhDP4odssUstcMQCAg9Rf8lB7QZROpLvzU1L
         mopZ0amQynTs4mr6WHelYGo6kcEi/+ylo0rN52Oe5lOKSVYBFA34Dbb1EDgprMh5ZO+u
         oPedlj+N7cMfJVxUA3L5wDeZux3JZSCJmxFyAfypcmxdpNxU0HboNZ5lqYdHGlECLoDE
         SvCCYAidqG+zerqe0OmesO5w/IY7plQRcrQdo/tSa4/wPs8jSBHuz03o6NivbseNO7Ps
         Ana89UEi6M3vi6JI4SWOq9ANxOHp2cn4nt5FdNv01kpolOcYGa2b3IcBCf28eAPpruFD
         cbNw==
X-Forwarded-Encrypted: i=1; AJvYcCUluaN4jhQsN4UbRB0Lhgy8+6wgBnUbRtMctagBcwgi8SpCQd5duc0aaxWtdHFDyWaQMRNUhdplzjIz2Pg0qVTQXa2hNykz5lH7eg==
X-Gm-Message-State: AOJu0YxxsOt/GxCBhfeNY3JrekQu1FFDT0IlDdBA6HNnIeEwranGxlUa
	dvY50qQRuWOW0v+45JwxkD3RdKPlIzpxitzFTGpPhCa5r7qKKodjeBlfoB0U/iZOSggBV5L+8UX
	G
X-Google-Smtp-Source: AGHT+IH4wqhquqdf5pGlA05BfVHrZnulEbNm3cs1oqrP7KWbJYb2Q6BOF9gmOEmOAXqEnCCswdDOAQ==
X-Received: by 2002:a05:6000:118a:b0:33d:66be:6da4 with SMTP id g10-20020a056000118a00b0033d66be6da4mr1211486wrx.29.1708422710622;
        Tue, 20 Feb 2024 01:51:50 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n16-20020a5d4010000000b0033b888a0a63sm13016570wrp.0.2024.02.20.01.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 01:51:50 -0800 (PST)
Message-ID: <47c8bbe3-610d-40cc-b505-e9ce9a371ef7@linaro.org>
Date: Tue, 20 Feb 2024 10:51:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: arm: renesas: Document Renesas RZ/V2H{P}
 System Controller
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240219160912.1206647-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240219160912.1206647-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240219160912.1206647-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/02/2024 17:09, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add DT binding documentation for System Controller (SYS) found on
> RZ/V2H{P} ("R9A09G057") SoC's.
> 
> SYS block contains the SYS_LSI_DEVID register which can be used to
> retrieve SoC version information.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>


> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    extal_clk: extal-clk {
> +        compatible = "fixed-clock";
> +        #clock-cells = <0>;
> +        clock-frequency = <24000000>;
> +    };

Drop the node, not relevant.

> +
> +    sys: system-controller@10430000 {
> +        compatible = "renesas,r9a09g057-sys";
> +        reg = <0x10430000 0x10000>;
> +        clocks = <&extal_clk>;
> +        resets = <&cpg 1>;
> +    };

Best regards,
Krzysztof


