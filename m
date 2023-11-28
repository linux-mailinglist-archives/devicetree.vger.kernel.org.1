Return-Path: <devicetree+bounces-19676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C477FBCCD
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 15:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94DCC1F20FD3
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 14:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB36F4F8B7;
	Tue, 28 Nov 2023 14:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cIATjqDj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAD3518D
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:33:36 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-54b18c9b21bso4248606a12.0
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 06:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701182015; x=1701786815; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ht2ziauETJEZ5ooOgSIcfIF2srBXrKGrHalcRJ6Da6Q=;
        b=cIATjqDjokOePYqiJkB8+1WZ3R8GpJu3CWQ+QI/ytU+zxPyfvk3f8nt/r4aD25DdG/
         m4fA1RaCfwtUjRiFFZRVnI/V0hN1Hb6zxvZKq5iugNtfdBgVoR6HRHL3vW9SDquwjil6
         n/Ov/Ff7oafqS/HFoh2Te7tjRxLKfrc3+bwfO2Qay1iHmTyY4hXtjPgjKt41cpxTC5/6
         E80VQsufObungZXMijDMF3Sj9lBBxs/pglS3GeOw/PUCeDL2SRsMwwC34Z3Tx3pNLHC1
         bJ3KgNFTPgaQ/VyjvwXdP5nauP1WaQJvxC/GLMbiSvzk7nI7Ujp1cp1EmAZu8ytZYf4R
         KF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701182015; x=1701786815;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ht2ziauETJEZ5ooOgSIcfIF2srBXrKGrHalcRJ6Da6Q=;
        b=wSMTNnK0jjezrTRe+IQU1bWI2Fzx8YMZZNfrAMyw+d7abCdzgypjtJlnEOCaXJXfn/
         2g8dvwSiBkv6CYYT6l8tJ4HlJwPiVALenz50CQpgGWGdToihvw7KtrV/5o29IujidaM/
         pHGmye628K2HHDQj5RuA2o6XRNJF6FaBEPjmUxm50N0OrpYVrQF4uKDCGEDMXydZR2ud
         dCUT8TeoXmkZVf0QBhlAjECKoe2QjPpHH4GvquIhVEAS3+0URQv2PtHp0TLKR81jiFW/
         DdoHIldDYI1UFRqpDHhH6ePYrY6oJRqsajZ61pWUcadocjFBOI+BMNN9Kd2otB6hREBY
         Ujng==
X-Gm-Message-State: AOJu0YwkiGWSCDflLvJc3iNXyOofAJzov85mDt8kuwHzmYRwasTqmycX
	n76qahp29zBW/YRkG6ZDYb/Vsw==
X-Google-Smtp-Source: AGHT+IHXD7aM2ZeNGnDVMOtLhI4qSaFZgj7c7zW1stdL4ysTw5eiRPayC6CRPdF+LkQNjWDG5bk9Jw==
X-Received: by 2002:aa7:ca50:0:b0:54b:253e:5342 with SMTP id j16-20020aa7ca50000000b0054b253e5342mr7315651edt.21.1701182015456;
        Tue, 28 Nov 2023 06:33:35 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id er21-20020a056402449500b0054b2040ea46sm4109154edb.61.2023.11.28.06.33.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Nov 2023 06:33:34 -0800 (PST)
Message-ID: <6e7a0168-5bff-4373-a1c9-e4c1917be0d9@linaro.org>
Date: Tue, 28 Nov 2023 15:33:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/9] arm64: dts: ti: k3-am625-beagleplay: Add overlays
 for OV5640
Content-Language: en-US
To: Jai Luthra <j-luthra@ti.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Aradhya Bhatia <a-bhatia1@ti.com>,
 Devarsh Thakkar <devarsht@ti.com>, Vaishnav Achath <vaishnav.a@ti.com>,
 Julien Massot <julien.massot@collabora.com>,
 Martyn Welch <martyn.welch@collabora.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
References: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
 <20231128-csi_dts-v3-4-0bb11cfa9d43@ti.com>
 <g6m7mwhifsmsy3c5gvkqfiktw6cjdd3aaz55att325yhacncga@eoklyawsppi4>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <g6m7mwhifsmsy3c5gvkqfiktw6cjdd3aaz55att325yhacncga@eoklyawsppi4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/11/2023 11:27, Jai Luthra wrote:
> Hi,
> 
> On Nov 28, 2023 at 15:39:46 +0530, Jai Luthra wrote:
>> Three different OV5640 modules are supported using the FFC connector on
>> BeaglePlay:
>> - Digilent PCam 5C
>> - ALINX AN5641
>> - TEVI-OV5640-*-RPI
>>
>> The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while
>> the TEVI module supplies a 24Mhz XCLK, thus requiring a separate
>> overlay.
> 
> Sorry looks like I forgot to pull Andrew's R-By tag from v2 [1], 
> hopefully this works:
> 
> Reviewed-by: Andrew Davis <afd@ti.com>

Sorry, usually not. At least would not work for my scripts, because I do
not use b4 parameter to accept tags from other people. I don't know
whether the case is here, but I would recommend to wait a day and then
resend with short explanation.

Best regards,
Krzysztof


