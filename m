Return-Path: <devicetree+bounces-166948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A0DA890D9
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 02:46:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FC77189B870
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 00:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3574224CC;
	Tue, 15 Apr 2025 00:46:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129B68F58;
	Tue, 15 Apr 2025 00:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744677979; cv=none; b=Zd3yEWr5LzANGmDQhf28k8Ee5RbBMMpCrJKrn4V0mYqsg+7cZpAUOtIKNYDiIokZ6LHv9MkSkVvNa1szrXYVq3f+EyySLGrYqsNrYJCb5y+MmXr0L5BuSdpZNtZShjdN1JzrS6F+F8MNiOegELNr7KBKrJtfcRGR0gPqv/77MpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744677979; c=relaxed/simple;
	bh=5Ra9HefpnGdHlynjivQ7wJIBCcZvrzxJjc2FoEMS5Zg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B+0e8M/NX2umA4LnIkd3eN2nhv5ah6wOlehGxZ0RoJXogfSl0IVExMILn5aXnYDIuKodP1N+lN6hEcQMUD1roLn97n9sViXXiKMkvl3J2PGGccY5bpR5kPlKvW/CLchM4Ohfn7kid0aDrIGnGtfi4z221n1VhLwx1PTDLw1OZZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.27.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 96BF6343022;
	Tue, 15 Apr 2025 00:46:16 +0000 (UTC)
Date: Tue, 15 Apr 2025 00:46:12 +0000
From: Yixun Lan <dlan@gentoo.org>
To: Haylen Chu <heylenay@4d2.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Haylen Chu <heylenay@outlook.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	spacemit@lists.linux.dev, Inochi Amaoto <inochiama@outlook.com>,
	Chen Wang <unicornxdotw@foxmail.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>
Subject: Re: [PATCH v7 0/6] Add clock controller support for SpacemiT K1
Message-ID: <20250415004612-GYB29591@gentoo>
References: <20250412074423.38517-2-heylenay@4d2.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250412074423.38517-2-heylenay@4d2.org>

Hi Haylen Chu:
   I'm quite happy with this version, as all the issues are solved,
Thanks for working on this. I will give my RY and start to queue them.

Hi Stephen Boyd,
  My plan to send a PR for inclusion to the clk tree in the 6.16
merge window. But, let me know if there is still problem I overlooked.


On 07:44 Sat 12 Apr     , Haylen Chu wrote:
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
> successfully brought up I2C, RTC, MMC and ethernet controllers.
> 
> It has been a very long time since I sent v1 of the series, thanks for
> everyone making suggestions and keeping track. I'm looking forward for
> furthermore reviews, or getting it finally merged.
> 
for the whole series

Reviewed-by: Yixun Lan <dlan@gentoo.org>

> Changed from v6
> - Update copyright date
> - Collect reviewed-by tags
> - k1-pll binding
>   - replace tabs with space in binding header
> - driver
>   - remove the file accidentally added in v6
>   - remove undesired rates from PLL2 configuration entries
>   - update comment for PLL{1,2} rates
>   - misc style changes
>   - remove CLK_IS_CRITICAL from uart0 clocks and cpu_c1_hi_clk
> - TWSI8 support
>   - Add a comment to describe the quirk
> - defconfig change
>   - improve the commit message
> - Link to v6: https://lore.kernel.org/all/20250401172434.6774-1-heylenay@4d2.org/
> 
> Changed from v5
> - Correct "Spacemit" to "SpacemiT" in commit messages and code
> - Always use space instead of TAB in comments for consistency
> - dt-bindings
>   - Rename binding header to "spacemit,k1-syscon.h"
>   - apply review tags
> - driver code
>   - remove "default" properties from Kconfig
>   - misc style and naming improvements
>   - make ccu_read() directly return the read value, drop ccu_poll() and
>     reorder the arguments to ccu_{read,update} macros
>   - drop ccu_common.reg_swcr2
>   - clock tree for K1
>     - define PLL3 with the correct offset of SWCR3 register
>     - synchronize PLL configuration entries with the vendor kernel
>     - reformat clocks definitions
>     - explain why PLLs require the MPMU syscon to function
>     - log a message when failing to register a clock
>     - simplify clock registration with ARRAY_SIZE()
>   - ddn
>     - correctly handle masks which doesn't start from BIT(0) when
>       calculating the best rate
>     - improve precision of frequency calculation
>     - derive _{den,num}_shift from corresponding masks with __ffs()
>   - mix
>     - match the full mask of gate in ccu_gate_is_enabled()
>     - add a note about "frequency change" bit and simplify FC-triggering
>       logic
>     - drop unnecessary local variables and initialization from clock
>       operations
>     - round to the closest rate in ccu_mix_calc_best_rate()
>     - change names of all mix subtypes to follow the order of mux ->
>       factor/div -> gate -> fc
>     - drop unused _flags argument from CCU_GATE_FACTOR_DEFINE()
>   - pll
>     - ensure PLLs are initialized to a known state
>     - drop extra check in ccu_pll_enable()
>     - round to the closest rate in ccu_pll_round_rate()
> - TWSI8 support
>   - Split cleanly from the main driver commit
> - devicetree
>   - drop extra "*-cells" and "ranges" properties
> - Enable SpacemiT K1 CCU in RISC-V defconfig
> - Link to v5: https://lore.kernel.org/all/20250306175750.22480-2-heylenay@4d2.org/
> 
> Changed from v4
> - bindings:
>   - Drop CLK_*_NUM macros from binding headers
>   - Rename spacemit,k1-ccu.yaml to spacemit,k1-pll.yaml, change to
>     describe only the PLL in APBS region
>   - k1-syscon.yaml
>     - drop spacemit,k1-syscon-apbs, it should be the PLL device
>     - drop child nodes
>     - describe the syscons as clock, reset and power-domain controllers
>     - drop "syscon" from the compatible list, as these syscons aren't
>       compatible with the generic one
> - driver:
>   - misc style fixes and naming improvements
>   - drop unused fields from data structures
>   - drop unused clock types: CCU_DDN_GATE
>   - ddn type:
>     - improve the comments
>     - dynamically calculate appropriate rates
>     - hardcode the x2 factor
>   - mix type
>     - drop val_{disable,enable} for gate subtype
>     - drop unncessary polling when enabling a gate
>     - encode subtypes directly in struct ccu_mix
>     - generate clock names from identifiers of the data structure
>     - rename CCU_DIV2_FC_MUX_GATE_DEFINE to CCU_DIV_SPLIT_FC_MUX_GATE
>   - pll type:
>     - correctly claim the parent clock
>     - make rate tables const
>     - drop SWCR2-related fields
>     - combine fields of registers as a whole instead of working with
>       each field
>   - clock tree for k1:
>     - removed duplicated offsets
>     - drop the placeholder 1:1 factor, pll1_d7_351p8
>     - workaround the quirk of TWSI8 clocks
>     - fix the definition of ripc_clk, wdt_bus_clk, dpu_bit_clk and
>       timers_*_clk
>     - drop structure spacemit_ccu_priv and spacemit_ccu_data
>     - rework clock registration
>     - split the PCIe clocks correctly (there're three distinct clocks
>       for each PCIe port)
> - devicetree:
>   - adapt the new binding
> - Link to v4: https://lore.kernel.org/all/20250103215636.19967-2-heylenay@4d2.org/
> 
> Changed from v3
> - spacemit,k1-ccu binding
>   - allow spacemit,mpmu property only for controllers requiring it
>     (spacemit,k1-ccu-apbs)
> - spacemit,k1-syscon binding
>   - drop unnecessary *-cells properties
>   - drop unrelated nodes in the example
> - driver
>   - remove unnecessary divisions during rate calucalation in ccu_ddn.c
>   - use independent clk_ops for different ddn/mix variants, drop
>     reg_type field in struct ccu_common
>   - make the register containing frequency change bit a sperate field in
>     ccu_common
>   - unify DIV_MFC_MUX_GATE and DIV_FC_MUX_GATE
>   - implement a correct determine_rate() for mix type
>   - avoid reparenting in set_rate() for mix type
>   - fix build failure when SPACEMIT_CCU and SPACEMIT_CCU_K1 are
>     configured differently
> - use "osc" instead of "osc_32k" in clock input names
> - misc style fixes
> - Link to v3: https://lore.kernel.org/all/20241126143125.9980-2-heylenay@4d2.org/
> 
> Changed from v2
> - dt-binding fixes
>   - drop clocks marked as deprecated by the vendor (CLK_JPF_4KAFBC and
>     CLK_JPF_2KAFBC)
>   - add binding of missing bus clocks
>   - change input clocks to use frequency-aware and more precise names
>   - mark input clocks and their names as required
>   - move the example to the (parent) syscon node and complete it
>   - misc style fixes
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
>   dt-bindings: soc: spacemit: Add spacemit,k1-syscon
>   dt-bindings: clock: spacemit: Add spacemit,k1-pll
>   clk: spacemit: Add clock support for SpacemiT K1 SoC
>   clk: spacemit: k1: Add TWSI8 bus and function clocks
>   riscv: dts: spacemit: Add clock tree for SpacemiT K1
>   riscv: defconfig: spacemit: enable clock controller driver for
>     SpacemiT K1
> 
>  .../bindings/clock/spacemit,k1-pll.yaml       |   50 +
>  .../soc/spacemit/spacemit,k1-syscon.yaml      |   80 ++
>  arch/riscv/boot/dts/spacemit/k1.dtsi          |   75 ++
>  arch/riscv/configs/defconfig                  |    2 +
>  drivers/clk/Kconfig                           |    1 +
>  drivers/clk/Makefile                          |    1 +
>  drivers/clk/spacemit/Kconfig                  |   18 +
>  drivers/clk/spacemit/Makefile                 |    5 +
>  drivers/clk/spacemit/ccu-k1.c                 | 1164 +++++++++++++++++
>  drivers/clk/spacemit/ccu_common.h             |   48 +
>  drivers/clk/spacemit/ccu_ddn.c                |   83 ++
>  drivers/clk/spacemit/ccu_ddn.h                |   47 +
>  drivers/clk/spacemit/ccu_mix.c                |  268 ++++
>  drivers/clk/spacemit/ccu_mix.h                |  218 +++
>  drivers/clk/spacemit/ccu_pll.c                |  157 +++
>  drivers/clk/spacemit/ccu_pll.h                |   86 ++
>  .../dt-bindings/clock/spacemit,k1-syscon.h    |  247 ++++
>  17 files changed, 2550 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/spacemit,k1-pll.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
>  create mode 100644 drivers/clk/spacemit/Kconfig
>  create mode 100644 drivers/clk/spacemit/Makefile
>  create mode 100644 drivers/clk/spacemit/ccu-k1.c
>  create mode 100644 drivers/clk/spacemit/ccu_common.h
>  create mode 100644 drivers/clk/spacemit/ccu_ddn.c
>  create mode 100644 drivers/clk/spacemit/ccu_ddn.h
>  create mode 100644 drivers/clk/spacemit/ccu_mix.c
>  create mode 100644 drivers/clk/spacemit/ccu_mix.h
>  create mode 100644 drivers/clk/spacemit/ccu_pll.c
>  create mode 100644 drivers/clk/spacemit/ccu_pll.h
>  create mode 100644 include/dt-bindings/clock/spacemit,k1-syscon.h
> 
> -- 
> 2.49.0
> 

-- 
Yixun Lan (dlan)
Gentoo Linux Developer
GPG Key ID AABEFD55

