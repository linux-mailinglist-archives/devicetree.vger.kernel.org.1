Return-Path: <devicetree+bounces-11125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA677D45CE
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 05:10:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D6A31F222AF
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 03:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E6FD2113;
	Tue, 24 Oct 2023 03:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JoCBA+H3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461821863
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 03:09:59 +0000 (UTC)
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0539495;
	Mon, 23 Oct 2023 20:09:53 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-4196ae80fc3so23678041cf.0;
        Mon, 23 Oct 2023 20:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698116992; x=1698721792; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hN9IUFI6BlAMzBsGDYubLRAFahODywghGKhRYzTefJ0=;
        b=JoCBA+H3BjsQOXFAEd1iNGBQQEHovnT0cxDA3TI5zWVAkQ+PXL8j789BU0VHN/3eqZ
         7xsl1yvNaHcIVo8aFui3zXvTIqh6e6g4BooYqR5R7T3S2i8ZtRcMSz9mng021NeoOweW
         i3uTdR9IybZa1YEcZYSdYQyT1CjSqIi68jJSAqaSZ/3ikpf3vwI/cDR+wl5py/Vmf4t+
         iKHjFnSokPfeTLQUCf9CgKqwB2q5Yo3yEskWzgBHtcSDYLdRo/OH4HoSOoq15wWjxek0
         18daSS+1zVbBJjy8S11xfcyxo8LD0lFnU5y2X8+7XadrfQjKPvSt8aFRuUr5JNVbS2X7
         Sb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698116992; x=1698721792;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hN9IUFI6BlAMzBsGDYubLRAFahODywghGKhRYzTefJ0=;
        b=mq/OHwKpeH6S6OuQhTS7ogcY3P2HHKX90NOfdV+rKEf6cOqQC1mnvdQolsS/ZJo41f
         fzlidDKVsUoNaGzd2f8kqDsefUz331ygEm3H7LR6NaeSdNlEZOd9y0SJ/5axEl/3g3Y0
         UbiglwTUiVKTcgUQwNm6MQV0kUxyTmmxQYvkqm1c55aE/hUObtiAm0uenyuk5Vs3ioO+
         SQZ+524A9VxY2F4Ndwcy43CHjiOs4ba5SUNU5Qdks3VgSbXoW5Mn712B8pInZCO7iwNu
         PfhA7JP9DGihN63Z39t3R1ST+GWoXXXRnGzX6bsYmjIb7NTIvj7aDidxTsZaoMNcP3TD
         xDHA==
X-Gm-Message-State: AOJu0Yz77Ef0EFyAuAoOEV7/viLgst4cFQWP073e9xLMuLRJoJNQ85uf
	zkTHFJHavh2aIjxYZ9516Io=
X-Google-Smtp-Source: AGHT+IFgtt7qitr+NPw6HUCaMALJuH0l8Wik05EqRQK2bUBhL+33C5ajSP6/54/3OXj0qZQjqMFg0A==
X-Received: by 2002:a05:622a:15cd:b0:403:a9aa:571f with SMTP id d13-20020a05622a15cd00b00403a9aa571fmr12883815qty.16.1698116991997;
        Mon, 23 Oct 2023 20:09:51 -0700 (PDT)
Received: from [192.168.20.212] (cpe-107-15-246-199.nc.res.rr.com. [107.15.246.199])
        by smtp.gmail.com with ESMTPSA id j13-20020ac84f8d000000b00419b67d2823sm3179750qtw.34.2023.10.23.20.09.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 20:09:51 -0700 (PDT)
Message-ID: <97e2decd-f6a3-91cb-6ca7-539f53b686f3@gmail.com>
Date: Mon, 23 Oct 2023 23:09:50 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.12.0
Subject: Re: [PATCH v9 01/20] dt-bindings: PCI: Add PLDA XpressRICH PCIe host
 common properties
Content-Language: en-US
To: Minda Chen <minda.chen@starfivetech.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
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
From: John Clark <inindev@gmail.com>
In-Reply-To: <bd441e1d-73ae-4abc-8eb2-877419acb2df@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

> On 2023/10/20 19:04, Krzysztof Kozlowski wrote:
>> On 20/10/2023 12:43, Minda Chen wrote:
>>> Add PLDA XpressRICH PCIe host common properties dt-binding doc.
>>> Microchip PolarFire PCIe host using PLDA IP.
>>> Move common properties from Microchip PolarFire PCIe host
>>> to PLDA files.
>>>
>>> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
>>> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
>>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>> ---
>>>   .../bindings/pci/microchip,pcie-host.yaml     | 55 +-------------
>>>   .../pci/plda,xpressrich3-axi-common.yaml      | 75 +++++++++++++++++++
>> Where was this patch reviewed?
>>
>> Best regards,
>> Krzysztof
>>
> This Conor's review tag. v2 : https://patchwork.kernel.org/project/linux-pci/patch/20230727103949.26149-2-minda.chen@starfivetech.com/
> This is Rob's review tag v3: https://patchwork.kernel.org/project/linux-pci/patch/20230814082016.104181-2-minda.chen@starfivetech.com/

Tested-by: John Clark <inindev@gmail.com>: 
https://github.com/inindev/visionfive2/tree/main/kernel/patches


