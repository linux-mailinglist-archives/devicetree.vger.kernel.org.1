Return-Path: <devicetree+bounces-225436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C925BCDFC2
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 18:51:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D78724E29AA
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 16:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 255D42F8BEE;
	Fri, 10 Oct 2025 16:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="lH4AC0Vg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C51C1FBCA1
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 16:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760115092; cv=none; b=fQTjgm4hxKCspWgdHaFJFVzdmhphJLsZ5e7R3o6DRHB7ejtJTBTsF7ahLFOZUuYq18Hn6OouKI0v3inUVQxMSOx8xNWe3wwg5rY9IqeyJmD/ZvHv0HSrRiGPE1EKWwRVha7K67fmFbHQr7QzzjrS2qkP0GkGkf37bmB6tc+qCO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760115092; c=relaxed/simple;
	bh=NWxAP+OAiNf2NIMWmMefGk2A6rvq71H95dLg9mlcrJs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g1vGv9VQ2RwSQ9DzrcV+PgaJvaSLbYMmk/2+21OoM0p5pyXUTfpv3eKshQpABQu2PpyzC5LX0ZQec7YTgf9tPaTI9OxC5hYF5mwvACeoxTKPVLDJvK0NHHRCiXp9cEp/cHzr0ziMc07Cl7QwsOEegP8wtqPCZRdFXznvXWUcbN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=lH4AC0Vg; arc=none smtp.client-ip=209.85.166.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-93ba2eb817aso218573639f.2
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 09:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1760115089; x=1760719889; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oEIgQBXV9GwQ/0dS70LI3mvqTg3PMZTKu+jR89lRS3I=;
        b=lH4AC0VgNpK31e85SnhMNfHL1noDiTopxSH0KV9qwkvKc3Kim8TgYr0Jy2RL97CSfd
         WMnne/yFfT7mhR112REc6MyQN0y7f+gB9q8x6KvSK+kV63LD5+8eMmIPUgZaI1AM2xsR
         3HX4wF+4JJrEn455BcevKKz//VAjVP9T0A71dx4moq6DHPCMZ8eL633VCMlHfi7atwBK
         /BSnhb0Bi7YD9g0OXrAolfZq6N1h1Otlj2RXy9hhov5EEtekhTPZHf12CQZGky3yfAtJ
         wLlfb+M3TViT7bOh7VR4Njg4UKgueQ12taJbR67xiICQbfr83pAksh7n12AN4J3Zf5UI
         +Lrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760115089; x=1760719889;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oEIgQBXV9GwQ/0dS70LI3mvqTg3PMZTKu+jR89lRS3I=;
        b=uyFO9wVFXEJi4/QAZ62e/TwwrVnVDl3kWGSk40RfdxbNlDFxhA5/9rKbDWuEeGJidj
         HLZcQZt0P36xKmzvBHm+7oFiA0+HwG9mvqiIWXtJc/CoVcCU1dUIH2Dy+uIz6PiMaIeo
         NGAg5dl1t7RE0E41vOCd5QE5PfXmfj27To5+3Vhth2DZI5RTVRmKOhlwjCwzH+I/Msrf
         97tpnvtw7tPd+yYLC/dPc17QlsgA6iLO7hpz4fZgPT1r1p5o7ZKSfBzKznufPSzSI/ts
         ByZiB3mDIXmK/g5rtMbV0JPnTXv4xAL+TuXVNEFxB0MtW28irlaySWxXEHsOxFG1cj5H
         e6xw==
X-Gm-Message-State: AOJu0YxB5A6zZ+Usj7Vi8mIu5MdBNK7b/H90eXdt5lxjDq3DuX3SGyGE
	wrnM6hqJ9SrmtM1WFzyi3/rzsG194Cz4yccEbq/4FtcE/uoyxYSKKoJK5t35+zIt1BXFV/733Yd
	Fy2Rs
X-Gm-Gg: ASbGncszBFMYCe02tkW+84hi7fHniw1ynSG2kFwKkRP3D5eX0MlTM+rvMmNp8DvK+sS
	AgP86saSLSnfKEE0XdtvuSArZa//PtLnC4q5TJhkvMhAUqg2b6avcWUhZqJ/9VOnnJnouJIYP+2
	7BN0TtMUkkD4cxbHYqP0XQFTLo0BbLbtbtkFqIIR2WxoyDoSxegCLQjdi9rBFrmPkRmdrJpP83t
	2BYDj4WdtLVFV0FJK+h+cAeqSahkZv3R54f9bk+5dPU2GJ5GFXSoZ8SJZWneMDq2Wm3GoBirQpM
	4n3wa1fSohnycWnHOP6lEjh+PzWdi+nJQAL5rO6y6a9tAVObhKhVo4M1nQyoEle1mc4k2eKNwDx
	JNg8Tn4o22vArlCek3SYAiUnr9Yr8vuwUFmY1k9082Q==
X-Google-Smtp-Source: AGHT+IE3jpt/o7GLJZwpn6pE5MwHXBbBbWmYCLc2vN2apcU0MOIuhKG3h3YETs47jD8aWS8NvxasSQ==
X-Received: by 2002:a05:6602:6013:b0:8ef:d0e4:43d8 with SMTP id ca18e2360f4ac-93bd186600dmr1560312839f.3.1760115089131;
        Fri, 10 Oct 2025 09:51:29 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.207])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-93e25a95cbbsm111538339f.22.2025.10.10.09.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 09:51:28 -0700 (PDT)
Message-ID: <53f717fb-b79e-49e0-9c1d-cf626b9a99b0@sifive.com>
Date: Fri, 10 Oct 2025 11:51:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 17/18] riscv: dts: starfive: jh7100: Use physical
 memory ranges for DMA
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Conor Dooley <conor@kernel.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Emil Renner Berthing <kernel@esmil.dk>,
 Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
 <20251009015839.3460231-18-samuel.holland@sifive.com>
 <CAJM55Z_C_ce6wwCpNyGeozxBKW1krSrdzApvGumLn_p7K0hhYw@mail.gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <CAJM55Z_C_ce6wwCpNyGeozxBKW1krSrdzApvGumLn_p7K0hhYw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Emil,

On 2025-10-10 9:19 AM, Emil Renner Berthing wrote:
> Samuel Holland wrote:
>> JH7100 provides a physical memory region which is a noncached alias of
>> normal cacheable DRAM. Now that Linux can apply PMAs by selecting
>> between aliases of a physical memory region, any page of DRAM can be
>> marked as noncached for use with DMA, and the preallocated DMA pool is
>> no longer needed. This allows portable kernels to boot on JH7100 boards.
>>
>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>> ---
>>
>> Changes in v2:
>>  - Move the JH7100 DT changes from jh7100-common.dtsi to jh7100.dtsi
>>  - Keep RISCV_DMA_NONCOHERENT and RISCV_NONSTANDARD_CACHE_OPS selected
>>
>>  arch/riscv/Kconfig.errata                     | 19 ---------------
>>  arch/riscv/Kconfig.socs                       |  2 ++
>>  .../boot/dts/starfive/jh7100-common.dtsi      | 24 -------------------
>>  arch/riscv/boot/dts/starfive/jh7100.dtsi      |  4 ++++
>>  4 files changed, 6 insertions(+), 43 deletions(-)
>>
>> diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
>> index e318119d570de..62700631a5c5d 100644
>> --- a/arch/riscv/Kconfig.errata
>> +++ b/arch/riscv/Kconfig.errata
>> @@ -53,25 +53,6 @@ config ERRATA_SIFIVE_CIP_1200
>>
>>  	  If you don't know what to do here, say "Y".
>>
>> -config ERRATA_STARFIVE_JH7100
>> -	bool "StarFive JH7100 support"
>> -	depends on ARCH_STARFIVE
>> -	depends on !DMA_DIRECT_REMAP
>> -	depends on NONPORTABLE
>> -	select DMA_GLOBAL_POOL
>> -	select RISCV_DMA_NONCOHERENT
>> -	select RISCV_NONSTANDARD_CACHE_OPS
>> -	select SIFIVE_CCACHE
>> -	default n
>> -	help
>> -	  The StarFive JH7100 was a test chip for the JH7110 and has
>> -	  caches that are non-coherent with respect to peripheral DMAs.
>> -	  It was designed before the Zicbom extension so needs non-standard
>> -	  cache operations through the SiFive cache controller.
>> -
>> -	  Say "Y" if you want to support the BeagleV Starlight and/or
>> -	  StarFive VisionFive V1 boards.
>> -
>>  config ERRATA_THEAD
>>  	bool "T-HEAD errata"
>>  	depends on RISCV_ALTERNATIVE
>> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
>> index 848e7149e4435..a8950206fb750 100644
>> --- a/arch/riscv/Kconfig.socs
>> +++ b/arch/riscv/Kconfig.socs
>> @@ -50,6 +50,8 @@ config SOC_STARFIVE
>>  	bool "StarFive SoCs"
>>  	select PINCTRL
>>  	select RESET_CONTROLLER
>> +	select RISCV_DMA_NONCOHERENT
>> +	select RISCV_NONSTANDARD_CACHE_OPS
> 
> Hi Samuel,
> 
> Thanks for working on this! I think you also need to select DMA_DIRECT_REMAP
> here, otherwise devices complain that they can't allocate coherent memory at
> all.

It looks like the logic for selecting DMA_DIRECT_REMAP is all messed up.
Currently it's selected by RISCV_ISA_ZICBOM and ERRATA_THEAD_CMO, but really it
has nothing to do with CMOs and everything to do with being able to allocate and
map coherent pages. So it should be selected by the three PBMT options instead.
I'll fix this in v3. I didn't notice because I always had RISCV_ISA_ZICBOM enabled.

> But even with that added it still doesn't work for me with 6.17 on the JH7100,
> the sdcard isn't initialized properly, and I haven't figured out why yet. I
> seem to remember your previous version did work though.
> 
> Plain 6.17:          https://esmil.dk/pma/upstream.txt
> 6.17 + this series:  https://esmil.dk/pma/test.txt
> 
> The kernel config I'm using is available here:
> https://esmil.dk/pma/config.txt

There's a bug in this DT patch (see below). If that still doesn't work, please
ping me and I can help debug. I will also have access to a JH7100 board within
the next few days, so I will be able to test this SoC locally before sending v3.

Thanks,
Samuel

>>  	select ARM_AMBA
>>  	help
>>  	  This enables support for StarFive SoC platform hardware.
>> diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
>> index ae1a6aeb0aeaa..47d0cf55bfc02 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
>> +++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
>> @@ -42,30 +42,6 @@ led-ack {
>>  		};
>>  	};
>>
>> -	reserved-memory {
>> -		#address-cells = <2>;
>> -		#size-cells = <2>;
>> -		ranges;
>> -
>> -		dma-reserved@fa000000 {
>> -			reg = <0x0 0xfa000000 0x0 0x1000000>;
>> -			no-map;
>> -		};
>> -
>> -		linux,dma@107a000000 {
>> -			compatible = "shared-dma-pool";
>> -			reg = <0x10 0x7a000000 0x0 0x1000000>;
>> -			no-map;
>> -			linux,dma-default;
>> -		};
>> -	};
>> -
>> -	soc {
>> -		dma-ranges = <0x00 0x80000000 0x00 0x80000000 0x00 0x7a000000>,
>> -			     <0x00 0xfa000000 0x10 0x7a000000 0x00 0x01000000>,
>> -			     <0x00 0xfb000000 0x00 0xfb000000 0x07 0x85000000>;
>> -	};
>> -
>>  	wifi_pwrseq: wifi-pwrseq {
>>  		compatible = "mmc-pwrseq-simple";
>>  		reset-gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
>> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
>> index 7de0732b8eabe..34ff65d65ac7e 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
>> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
>> @@ -7,11 +7,15 @@
>>  /dts-v1/;
>>  #include <dt-bindings/clock/starfive-jh7100.h>
>>  #include <dt-bindings/reset/starfive-jh7100.h>
>> +#include <dt-bindings/riscv/physical-memory.h>
>>
>>  / {
>>  	compatible = "starfive,jh7100";
>>  	#address-cells = <2>;
>>  	#size-cells = <2>;
>> +	riscv,physical-memory-regions =
>> +		<0x00 0x80000000 0x08 0x00000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY) 0x0>,
>> +		<0x10 0x00000000 0x08 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY | PMR_ALIAS(1)) 0x0>;

This should be PMR_ALIAS(0), because I removed the special entry from the
beginning of this list.

>>
>>  	cpus: cpus {
>>  		#address-cells = <1>;
>> --
>> 2.47.2
>>


