Return-Path: <devicetree+bounces-164518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02788A815DB
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 21:37:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50BAA880EEA
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 19:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CDC24397B;
	Tue,  8 Apr 2025 19:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="xk+VwFb9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E527228CA9
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 19:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744141037; cv=none; b=j+xgBmJz5fY7r8rsJh1i6WLffH8Ek1Bgo5i0X+S+nnXIxB5MK1tSJ0WCV7eKZb7EJRYsklCGw+ZpHNbV5w7tf2pPS/WZj1Voapk/Pv1l0hDgldR5pFjTX+jUroTVUGoOw2a1Iq9Ib9JSOZ+7chfFNZoTJRKDIU8yhVNbacb9KIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744141037; c=relaxed/simple;
	bh=axfKGKUXl2vKUthGoKeFNG/MEykh/rk4VtDqVGsZVxM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KSHkzgX5CdNs+3ymRSUnKTJiauhQwvGseoHycMHVKqDx2qATFdMnGzXSohb8hzIDCsXbVUsqMwAv/CtgdpWjCmkUwp7D+RRd1qkIq1bJUhM3JXd8wuBApqPpgSf+1+Pd2xLJjmM0i/3Wv7O+U2H2aTm+5p6axOuZkyCBST8YnHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=xk+VwFb9; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-85e46f5c50fso141002939f.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 12:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744141033; x=1744745833; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ihyuAzlM82lJGBS3f8gR0AvjEGvhK/UKSLKfGaRe3Q=;
        b=xk+VwFb9CkizKgolbjnKv7Zcf1O27v8Y917vZeMGupDo6o6sSQdwEYP8+LtPraYd92
         lrh2l3ssqV7iegKSL1BekVMpX5X8BoYpX4uIjvA093sBDTfXfg730VK/Va7TTNz/S2S5
         lAVSHlyTt5Pr+FoT3ybLB3KlCjXYuRiXVdr7iByhOCNPXqrCIdq7mscwbZuTsXxICuxy
         WsnQ+RNDwccpstjo9TEsrHfYUU3EY06gMSDpEVV0WnyB4v5nwSkbS01+VgfVbHuUaqaA
         mHUEB2X2/xPpayzbox5M+JuihS8wTzGz5qWOa5StIFM049+DHoIkjo1JApvUCOugDIFq
         RiZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744141033; x=1744745833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ihyuAzlM82lJGBS3f8gR0AvjEGvhK/UKSLKfGaRe3Q=;
        b=HOc7EOUcvwJ1R0DAZsTYHXwYrbcIf4KXkdFW7WqqIbkrH5I5oMU1lgDyof14hQfzG+
         QlPQRL7eAulrs0DYZDLkdsbbG51Q1hhidgAyBZICKjRW26rPN/LBp8CMnv57oXUPATOw
         OB3Mbq5CWzBC3yltj/OZBOeLwT8ZEin3akIjRw98TjMAdyFyLY8NNsl1Qe7fOrNmepnb
         7cpSqXlB01aXAmNSu7xYKhRWWkekxmDkU3cTEY9PNWmFl3ABZYeGWZncXh8Oc8ewdmfG
         GJ4GFp6i53K3mSJF4EiWFS0yoQ+vFRQG1jSyUnssUQUE6M3gWJuaXh3Fc18nzH6+PD7z
         hHBA==
X-Forwarded-Encrypted: i=1; AJvYcCVlaYy56qyK7anOVy0zZl/9JE+oXpay/U+/4irP6qI+YXJumIiOTeLx2piJfx98SD1VfESXAs+qaXbU@vger.kernel.org
X-Gm-Message-State: AOJu0YzZCy64tBprbeZ+6lrv1NJ61p9UJ1GvCAQfx9S9yIBRkihom3wH
	j4dDUkQArpL/z4+qMSYpx+US+Cg40gfsVSFGHRb6ItVUQJqEb0x4lza3an0grDQ=
X-Gm-Gg: ASbGncvD2UAnclk2J8OECMiEJUI3Vz76h2ICxWA3RwH3TmvYRSImqKSoyDET1GNou+O
	cL2XVEMygD7ZEniv7ZwvyJyosEvsgVcp1GqVI6bJCj0OivpGrVQVy8x3uIqKBiLHbOrOifOf3N6
	2W0b9ahMkC+xV/eqImR8jFkpQZxkctCQH4kAeXbhkJVI3J6tAy0iSQnVEO59yafGeRaAl9hXt6+
	b4FfA63Abo51vzdwDpPmosuqkBQjUiWFUdkTPzgZcOaucCHdnCwaCvCrzhOVX23s1FH/VTENspL
	aWf2Hh7ZVflOsPqsblJeOm6on9dosFyIRwk/dkWaLscdRTzpQ9oYQYmTiTKt+D3mCHxQLQddiuE
	sqjn2iKgFWAHf88JFRPs=
X-Google-Smtp-Source: AGHT+IFV+oKnS5Z7XqBCLwJ9/iD/goXUd07nqMhjbhu1QnyS5iUMcUADUnd2WNgGghXi0kGlBzlckg==
X-Received: by 2002:a05:6602:4804:b0:85b:41cc:f710 with SMTP id ca18e2360f4ac-8616129c13dmr79765839f.12.1744141033044;
        Tue, 08 Apr 2025 12:37:13 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f4f44e3aa0sm653506173.126.2025.04.08.12.37.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 12:37:12 -0700 (PDT)
Message-ID: <cdf5d151-7ffb-416f-9032-930ffd230d8c@riscstar.com>
Date: Tue, 8 Apr 2025 14:37:11 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/6] Add clock controller support for SpacemiT K1
To: Haylen Chu <heylenay@4d2.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Yixun Lan <dlan@gentoo.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, Inochi Amaoto <inochiama@outlook.com>,
 Chen Wang <unicornxdotw@foxmail.com>, Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>
References: <20250401172434.6774-1-heylenay@4d2.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250401172434.6774-1-heylenay@4d2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/1/25 12:24 PM, Haylen Chu wrote:
> The clock tree of SpacemiT K1 is managed by several independent
> multifunction devices, some of them are
> 
> - Application Power Manage Unit, APMU
> - Main Power Manage Unit, MPMU
> - APB Bus Clock Unit, APBC
> - APB Spare, APBS
> 
> These four devices provide hardware bits for three purposes: power
> management, reset signals and clocks. Not every device is capable of all
> the three functionalities,
> 
> - APMU, MPMU: power, reset, clock
> - APBC: clock, reset
> - APBS: clock (PLL clocks)
> 
> This series adds support for clock hardwares in these four regions,
> which covers most peripherals except DDR and the realtime processor.
> 
> Tested on BananaPi-F3 board. With some out-of-tree drivers, I've
> successfully brought up I2C, RTC, MMC and ethernet controllers. A clock
> tree dump could be obtained here[1].
> 
> [1]: https://gist.github.com/heylenayy/73df0b6b075615a944990507112cfc5b

Thanks for your persistence on this.  I've added my Reviewed-by on
4 of 6 of your patches, and what remains are fairly small things to
address.

					-Alex

> Changed from v5
> - Correct "Spacemit" to "SpacemiT" in commit messages and code
> - Always use space instead of TAB in comments for consistency
> - dt-bindings
>    - Rename binding header to "spacemit,k1-syscon.h"
>    - apply review tags
> - driver code
>    - remove "default" properties from Kconfig
>    - misc style and naming improvements
>    - make ccu_read() directly return the read value, drop ccu_poll() and
>      reorder the arguments to ccu_{read,update} macros
>    - drop ccu_common.reg_swcr2
>    - clock tree for K1
>      - define PLL3 with the correct offset of SWCR3 register
>      - synchronize PLL configuration entries with the vendor kernel
>      - reformat clocks definitions
>      - explain why PLLs require the MPMU syscon to function
>      - log a message when failing to register a clock
>      - simplify clock registration with ARRAY_SIZE()
>    - ddn
>      - correctly handle masks which doesn't start from BIT(0) when
>        calculating the best rate
>      - improve precision of frequency calculation
>      - derive _{den,num}_shift from corresponding masks with __ffs()
>    - mix
>      - match the full mask of gate in ccu_gate_is_enabled()
>      - add a note about "frequency change" bit and simplify FC-triggering
>        logic
>      - drop unnecessary local variables and initialization from clock
>        operations
>      - round to the closest rate in ccu_mix_calc_best_rate()
>      - change names of all mix subtypes to follow the order of mux ->
>        factor/div -> gate -> fc
>      - drop unused _flags argument from CCU_GATE_FACTOR_DEFINE()
>    - pll
>      - ensure PLLs are initialized to a known state
>      - drop extra check in ccu_pll_enable()
>      - round to the closest rate in ccu_pll_round_rate()
> - TWSI8 support
>    - Split cleanly from the main driver commit
> - devicetree
>    - drop extra "*-cells" and "ranges" properties
> - Enable SpacemiT K1 CCU in RISC-V defconfig
> - Link to v5: https://lore.kernel.org/all/20250306175750.22480-2-heylenay@4d2.org/
> 
> Changed from v4
> - bindings:
>    - Drop CLK_*_NUM macros from binding headers
>    - Rename spacemit,k1-ccu.yaml to spacemit,k1-pll.yaml, change to
>      describe only the PLL in APBS region
>    - k1-syscon.yaml
>      - drop spacemit,k1-syscon-apbs, it should be the PLL device
>      - drop child nodes
>      - describe the syscons as clock, reset and power-domain controllers
>      - drop "syscon" from the compatible list, as these syscons aren't
>        compatible with the generic one
> - driver:
>    - misc style fixes and naming improvements
>    - drop unused fields from data structures
>    - drop unused clock types: CCU_DDN_GATE
>    - ddn type:
>      - improve the comments
>      - dynamically calculate appropriate rates
>      - hardcode the x2 factor
>    - mix type
>      - drop val_{disable,enable} for gate subtype
>      - drop unncessary polling when enabling a gate
>      - encode subtypes directly in struct ccu_mix
>      - generate clock names from identifiers of the data structure
>      - rename CCU_DIV2_FC_MUX_GATE_DEFINE to CCU_DIV_SPLIT_FC_MUX_GATE
>    - pll type:
>      - correctly claim the parent clock
>      - make rate tables const
>      - drop SWCR2-related fields
>      - combine fields of registers as a whole instead of working with
>        each field
>    - clock tree for k1:
>      - removed duplicated offsets
>      - drop the placeholder 1:1 factor, pll1_d7_351p8
>      - workaround the quirk of TWSI8 clocks
>      - fix the definition of ripc_clk, wdt_bus_clk, dpu_bit_clk and
>        timers_*_clk
>      - drop structure spacemit_ccu_priv and spacemit_ccu_data
>      - rework clock registration
>      - split the PCIe clocks correctly (there're three distinct clocks
>        for each PCIe port)
> - devicetree:
>    - adapt the new binding
> - Link to v4: https://lore.kernel.org/all/20250103215636.19967-2-heylenay@4d2.org/
> 
> Changed from v3
> - spacemit,k1-ccu binding
>    - allow spacemit,mpmu property only for controllers requiring it
>      (spacemit,k1-ccu-apbs)
> - spacemit,k1-syscon binding
>    - drop unnecessary *-cells properties
>    - drop unrelated nodes in the example
> - driver
>    - remove unnecessary divisions during rate calucalation in ccu_ddn.c
>    - use independent clk_ops for different ddn/mix variants, drop
>      reg_type field in struct ccu_common
>    - make the register containing frequency change bit a sperate field in
>      ccu_common
>    - unify DIV_MFC_MUX_GATE and DIV_FC_MUX_GATE
>    - implement a correct determine_rate() for mix type
>    - avoid reparenting in set_rate() for mix type
>    - fix build failure when SPACEMIT_CCU and SPACEMIT_CCU_K1 are
>      configured differently
> - use "osc" instead of "osc_32k" in clock input names
> - misc style fixes
> - Link to v3: https://lore.kernel.org/all/20241126143125.9980-2-heylenay@4d2.org/
> 
> Changed from v2
> - dt-binding fixes
>    - drop clocks marked as deprecated by the vendor (CLK_JPF_4KAFBC and
>      CLK_JPF_2KAFBC)
>    - add binding of missing bus clocks
>    - change input clocks to use frequency-aware and more precise names
>    - mark input clocks and their names as required
>    - move the example to the (parent) syscon node and complete it
>    - misc style fixes
> - misc improvements in code
> - drop unnecessary spinlock in the driver
> - implement missing bus clocks
> - Link to v2: https://lore.kernel.org/all/SEYPR01MB4221829A2CD4D4C1704BABD7D7602@SEYPR01MB4221.apcprd01.prod.exchangelabs.com/
> 
> Changed from v1
> - add SoC prefix (k1)
> - relicense dt-binding header
> - misc fixes and style improvements for dt-binding
> - document spacemit,k1-syscon
> - implement all APBS, MPMU, APBC and APMU clocks
> - code cleanup
> - Link to v1: https://lore.kernel.org/all/SEYPR01MB4221B3178F5233EAB5149E41D7902@SEYPR01MB4221.apcprd01.prod.exchangelabs.com/
> 
> Haylen Chu (6):
>    dt-bindings: soc: spacemit: Add spacemit,k1-syscon
>    dt-bindings: clock: spacemit: Add spacemit,k1-pll
>    clk: spacemit: Add clock support for SpacemiT K1 SoC
>    clk: spacemit: k1: Add TWSI8 bus and function clocks
>    riscv: dts: spacemit: Add clock tree for SpacemiT K1
>    riscv: defconfig: enable clock controller unit support for SpacemiT K1
> 
>   .../bindings/clock/spacemit,k1-pll.yaml       |   50 +
>   .../soc/spacemit/spacemit,k1-syscon.yaml      |   80 +
>   arch/riscv/boot/dts/spacemit/k1.dtsi          |   75 +
>   arch/riscv/configs/defconfig                  |    2 +
>   drivers/clk/Kconfig                           |    1 +
>   drivers/clk/Makefile                          |    1 +
>   drivers/clk/spacemit/Kconfig                  |   18 +
>   drivers/clk/spacemit/Makefile                 |    5 +
>   drivers/clk/spacemit/apbc_clks                |  100 ++
>   drivers/clk/spacemit/ccu-k1.c                 | 1321 +++++++++++++++++
>   drivers/clk/spacemit/ccu_common.h             |   48 +
>   drivers/clk/spacemit/ccu_ddn.c                |   83 ++
>   drivers/clk/spacemit/ccu_ddn.h                |   47 +
>   drivers/clk/spacemit/ccu_mix.c                |  268 ++++
>   drivers/clk/spacemit/ccu_mix.h                |  218 +++
>   drivers/clk/spacemit/ccu_pll.c                |  157 ++
>   drivers/clk/spacemit/ccu_pll.h                |   86 ++
>   .../dt-bindings/clock/spacemit,k1-syscon.h    |  247 +++
>   18 files changed, 2807 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/clock/spacemit,k1-pll.yaml
>   create mode 100644 Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
>   create mode 100644 drivers/clk/spacemit/Kconfig
>   create mode 100644 drivers/clk/spacemit/Makefile
>   create mode 100644 drivers/clk/spacemit/apbc_clks
>   create mode 100644 drivers/clk/spacemit/ccu-k1.c
>   create mode 100644 drivers/clk/spacemit/ccu_common.h
>   create mode 100644 drivers/clk/spacemit/ccu_ddn.c
>   create mode 100644 drivers/clk/spacemit/ccu_ddn.h
>   create mode 100644 drivers/clk/spacemit/ccu_mix.c
>   create mode 100644 drivers/clk/spacemit/ccu_mix.h
>   create mode 100644 drivers/clk/spacemit/ccu_pll.c
>   create mode 100644 drivers/clk/spacemit/ccu_pll.h
>   create mode 100644 include/dt-bindings/clock/spacemit,k1-syscon.h
> 


