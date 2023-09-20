Return-Path: <devicetree+bounces-1816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 871317A8804
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:18:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 358D6282782
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1FC33B786;
	Wed, 20 Sep 2023 15:18:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23F83B2B0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:18:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4909EC433C7;
	Wed, 20 Sep 2023 15:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695223128;
	bh=8uiAwNlwIiRqWE0ApHreYnM+DpN8P4kLiV1cm/3ApK0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BkAFa/4MccJyATNKuptlrqmyLfpiEH8eFOdCn5u+7m68jYWzQJ2tLrISx+MxCvBDv
	 EKxtUNGzH6sgBACTY8CAujI8ZN8LFEe6hCigQbIQQah540p/eHIWohCqK87hKcxPEL
	 iJoxd5v88Vik3Ja3VhcY7E5GWLkVPUC+UXKp6T5d+HupLg51qR0d6RMbt33S7oheOA
	 VJvmBMFPnRQUBtzmcwdYu18KbaA1sBuxU2WBFFIfIUam+i+sUgcHSUZ3XZJwqS4AK+
	 jydo6ZUDTEdksbrVp3jECtYbu8xPrDKtrvz5OxaJ+UOg37wG95LTywqeLTDLdEIusg
	 58eXWQsk/XTfQ==
Message-ID: <e8f26137-1284-4f45-a74d-a0a5f2aa2f93@kernel.org>
Date: Wed, 20 Sep 2023 18:18:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: ti: am642-evm: Add overlay for NAND
 expansion card
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
Cc: vigneshr@ti.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, srk@ti.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230920133450.54226-1-rogerq@kernel.org>
 <20230920133450.54226-3-rogerq@kernel.org>
 <20230920135802.3ej2wcuaruqjidel@uncouth>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230920135802.3ej2wcuaruqjidel@uncouth>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 20/09/2023 16:58, Nishanth Menon wrote:
> On 16:34-20230920, Roger Quadros wrote:
>> The NAND expansion card plugs in over the HSE (High Speed Expansion)
>> connector. Add support for it.
>>
>> Signed-off-by: Roger Quadros <rogerq@kernel.org>
>> ---
>>  arch/arm64/boot/dts/ti/Makefile               |   1 +
>>  arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso | 140 ++++++++++++++++++
>>  2 files changed, 141 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso
>>
>> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
>> index 06d6f264f292..ece74085a6be 100644
>> --- a/arch/arm64/boot/dts/ti/Makefile
>> +++ b/arch/arm64/boot/dts/ti/Makefile
>> @@ -29,6 +29,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62p5-sk.dtb
>>  
>>  # Boards with AM64x SoC
>>  dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
>> +dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-nand.dtbo
>>  dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
>>  dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
>>  dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
> 
> Also see https://lore.kernel.org/all/20230911165610.GA1362932-robh@kernel.org/
> 
> you may not get the dtbo installed when doing make dtbs_install
> 
> [...]
> 

$ v8make dtbs_install INSTALL_DTBS_PATH=/tmp
  INSTALL /tmp/ti/k3-am625-beagleplay.dtb
  INSTALL /tmp/ti/k3-am625-phyboard-lyra-rdk.dtb
  INSTALL /tmp/ti/k3-am625-sk.dtb
  INSTALL /tmp/ti/k3-am625-verdin-nonwifi-dahlia.dtb
  INSTALL /tmp/ti/k3-am625-verdin-nonwifi-dev.dtb
  INSTALL /tmp/ti/k3-am625-verdin-nonwifi-yavia.dtb
  INSTALL /tmp/ti/k3-am625-verdin-wifi-dahlia.dtb
  INSTALL /tmp/ti/k3-am625-verdin-wifi-dev.dtb
  INSTALL /tmp/ti/k3-am625-verdin-wifi-yavia.dtb
  INSTALL /tmp/ti/k3-am62-lp-sk.dtb
  INSTALL /tmp/ti/k3-am62x-sk-hdmi-audio.dtbo
  INSTALL /tmp/ti/k3-am62a7-sk.dtb
  INSTALL /tmp/ti/k3-am62p5-sk.dtb
  INSTALL /tmp/ti/k3-am642-evm.dtb
  INSTALL /tmp/ti/k3-am642-evm-nand.dtbo
^^^^
  INSTALL /tmp/ti/k3-am642-phyboard-electra-rdk.dtb
  INSTALL /tmp/ti/k3-am642-sk.dtb


What did I miss?

-- 
cheers,
-roger

