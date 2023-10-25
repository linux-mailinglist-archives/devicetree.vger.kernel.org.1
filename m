Return-Path: <devicetree+bounces-11782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4007D6925
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B843CB21077
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A579208B6;
	Wed, 25 Oct 2023 10:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ynE9MSsA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8863D15B4
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:42:01 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7719D19BE
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 03:41:35 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so818216466b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 03:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698230494; x=1698835294; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p6yBkmGk++gZrR/1VNdnYfOUojQRlFrBsIXCqzWYVOk=;
        b=ynE9MSsAmlx82Y7RLue25kqzXVMIJwDzYuxZ1F1L/LWbJhJUx2qcdPb2FLkKMXQtU2
         4RVB6x1ChoteCE1fRrsWKGMdmEL/H9Cij831Hsr02RbxxZWiI2t0FHilMrqY+abCBZj0
         7Og+RL3yXVi6g1WdVnbqPo74R/VJb+QotMrVybhj3uQbQoKXQM/TumEVS+eMiAIumKCa
         BBd7qjsJU5gG1ed+UX95pRHEgmfAefUWwzvDhZyxl4hHCKgFBRRenRt8Cr3XQxh4uh3l
         jxGCJVNUiw8MaA2SBjxIYQfc+5CgzhEA2S0TAjO7MoKJ6jsLzFBqJC3F9pB6TDTjfBaV
         FFnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698230494; x=1698835294;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p6yBkmGk++gZrR/1VNdnYfOUojQRlFrBsIXCqzWYVOk=;
        b=iaajgj8wG4QFX1SHhq7XKpiD2cTfkfkQRnWqIN2DRSmwUIABxZJw33dNWrSk8XGN51
         OHDhwxRokQGDkgzsozmGDGLF79HeRRfMmOViOAandDD/30+8JiGjXTjujV8S5CEwcqnP
         cIjDdqitcmeFnrk7YB9VwQdjJCg0l0IRLpVf/uZm7c/5b+DTOsbuP4kD8d83wFN8CNH/
         o1O9nBORonx4ufCLcg7G50oeDCWZRcGZuq7OElDAEZjDcVnzxFtESNQzLWzTAXQ2dDWU
         KgOE4PWZ3585IqNkmoiBHwnObl2mFut9s2a5DLvwbIpcuNnUNNdmfPPNM89r6IdgQqXF
         IhPg==
X-Gm-Message-State: AOJu0YwIX1xTWxBwPx72qRImSkVTVCOEwj5V+N7Vz5Lmbcg/CnKFK9CF
	ZTWJzy4cnQnd1oJLxwRQ3U5ZVA==
X-Google-Smtp-Source: AGHT+IE8JIb6S4NEzKUFV1FxIqeJVjY6So6t4m/bN2io8F4TTJ8fiTmrEINCKakRl438+SwUzhcMWA==
X-Received: by 2002:a17:907:7d93:b0:9c4:b8c9:1bf2 with SMTP id oz19-20020a1709077d9300b009c4b8c91bf2mr12639833ejc.60.1698230493697;
        Wed, 25 Oct 2023 03:41:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id h13-20020a1709062dcd00b009ae54585aebsm9692532eji.89.2023.10.25.03.41.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 03:41:33 -0700 (PDT)
Message-ID: <3d7a2dba-53f6-4625-8981-fbeb469418c1@linaro.org>
Date: Wed, 25 Oct 2023 12:41:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 01/20] dt-bindings: PCI: Add PLDA XpressRICH PCIe host
 common properties
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, John Clark <inindev@gmail.com>
Cc: Minda Chen <minda.chen@starfivetech.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mason Huo <mason.huo@starfivetech.com>,
 Leyfoon Tan <leyfoon.tan@starfivetech.com>,
 Kevin Xie <kevin.xie@starfivetech.com>
References: <20231020104341.63157-1-minda.chen@starfivetech.com>
 <20231020104341.63157-2-minda.chen@starfivetech.com>
 <8ced1915-7b94-4abc-bd8b-cb4bf027fa01@linaro.org>
 <bd441e1d-73ae-4abc-8eb2-877419acb2df@starfivetech.com>
 <97e2decd-f6a3-91cb-6ca7-539f53b686f3@gmail.com>
 <20231025-dotted-almighty-ae489e9eb764@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231025-dotted-almighty-ae489e9eb764@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/10/2023 12:28, Conor Dooley wrote:
> Hi John,
> 
> On Mon, Oct 23, 2023 at 11:09:50PM -0400, John Clark wrote:
>>> On 2023/10/20 19:04, Krzysztof Kozlowski wrote:
>>>> On 20/10/2023 12:43, Minda Chen wrote:
>>>>> Add PLDA XpressRICH PCIe host common properties dt-binding doc.
>>>>> Microchip PolarFire PCIe host using PLDA IP.
>>>>> Move common properties from Microchip PolarFire PCIe host
>>>>> to PLDA files.
>>>>>
>>>>> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
>>>>> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
>>>>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>>>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>>>> ---
>>>>>   .../bindings/pci/microchip,pcie-host.yaml     | 55 +-------------
>>>>>   .../pci/plda,xpressrich3-axi-common.yaml      | 75 +++++++++++++++++++
>>>> Where was this patch reviewed?
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>> This Conor's review tag. v2 : https://patchwork.kernel.org/project/linux-pci/patch/20230727103949.26149-2-minda.chen@starfivetech.com/
>>> This is Rob's review tag v3: https://patchwork.kernel.org/project/linux-pci/patch/20230814082016.104181-2-minda.chen@starfivetech.com/
>>
>> Tested-by: John Clark <inindev@gmail.com>:
>> https://github.com/inindev/visionfive2/tree/main/kernel/patches
> 
> I suspect you don't mean that you tested this individual dt-binding, but
> rather that you tested the whole series. If so, you should probably
> provide this tested-by against the cover-letter instead of this bindings
> patch.

Yeah, otherwise I would like to hear how do you test bindings (other
than dt_binding_check which is something similar to testing as compiling
code).

Best regards,
Krzysztof


