Return-Path: <devicetree+bounces-151560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E61A4635C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 292D11899F1A
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D77212FB4;
	Wed, 26 Feb 2025 14:45:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FBAD19CC3E;
	Wed, 26 Feb 2025 14:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740581144; cv=none; b=gqd7xMArMMDD25w6ubGCStcFjxacJ+CFzLJ7Du8E71cjEUrNukjAmIC/vDz4Mq3nFfFFy3aXt+Bj9mIoN4tVy3cSqDAxQTZ8yVEOP+Bso0LYQSyDQbs+stRQDRYyPSvGexB9+VbhxMpNbUtdzjyceut5TlMbGfxQ+FebmzHvt2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740581144; c=relaxed/simple;
	bh=Lg72jrw/Xo0J31MuM3LePl7jo/OM8W/lrhtD3OOUG68=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YcKSNbI1OvbRE8bjXcu27nFe6EVJ/a5xyK3Yq8JhG3Q5/Epjope5t9Mrxr9Aj6h1U5rUk4FRrcYJasacCLdpLd4O1YafQMfZu9pvqItnm0dIabEwlmPwP5tUwQXXL6cCdWK01IY5Q+ydigo21vNIsFN1+H/5/6sAVjCcYHfjOnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=210.160.252.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
X-CSE-ConnectionGUID: qCLXnFmISqmlnkoa6SHDYg==
X-CSE-MsgGUID: 6RRETp7zT6y6/qdcxflhgw==
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 26 Feb 2025 23:45:39 +0900
Received: from localhost.localdomain (unknown [10.226.92.96])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id C77924043714;
	Wed, 26 Feb 2025 23:45:34 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v24 0/4] Add support for RZ/G2L GPT
Date: Wed, 26 Feb 2025 14:45:19 +0000
Message-ID: <20250226144531.176819-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RZ/G2L General PWM Timer (GPT) composed of 8 channels with 32-bit timer
(GPT32E). It supports the following functions
 * 32 bits x 8 channels
 * Up-counting or down-counting (saw waves) or up/down-counting
   (triangle waves) for each counter.
 * Clock sources independently selectable for each channel
 * Two I/O pins per channel
 * Two output compare/input capture registers per channel
 * For the two output compare/input capture registers of each channel,
   four registers are provided as buffer registers and are capable of
   operating as comparison registers when buffering is not in use.
 * In output compare operation, buffer switching can be at crests or
   troughs, enabling the generation of laterally asymmetric PWM waveforms.
 * Registers for setting up frame cycles in each channel (with capability
   for generating interrupts at overflow or underflow)
 * Generation of dead times in PWM operation
 * Synchronous starting, stopping and clearing counters for arbitrary
   channels
 * Starting, stopping, clearing and up/down counters in response to input
   level comparison
 * Starting, clearing, stopping and up/down counters in response to a
   maximum of four external triggers
 * Output pin disable function by dead time error and detected
   short-circuits between output pins
 * A/D converter start triggers can be generated (GPT32E0 to GPT32E3)
 * Enables the noise filter for input capture and external trigger
   operation

This patch series aims to add basic pwm support for RZ/G2L GPT driver
by creating separate logical channels for each IOs.

v23->v24:
 * Fixed the warning reported by bot by dropping the unused variable i
   from rzg2l_gpt_probe().
 * Updated 2024->2025 in copyright.
v22->v23:
 * Updated #pwm-cells value from 2->3 as it is the recommended value for
   new drivers.
 * Updated Limitation section supporting only same period for both IOs of
   a hardware channel.
 * Updated parameter of RZG2L_GET_CH from a->hwpwm
 * Updated parameter of RZG2L_GET_CH_OFFS from i->ch
 * Updated parameter of RZG2L_GTIOR_{GTIOx,OxE,OUT_HI_END_TOGGLE_CMP_MATCH
   from a->sub_ch
 * Replaced variables user_count->channel_request_count and
   enable_count->channel_enable_count in struct rzg2l_gpt_chip.
 * Added missing prefix for calculate_period_or_duty().
 * Updated comment section in rzg2l_gpt_config()
 * Added check for period in rzg2l_gpt_config() and return error if
   there is mismatch in period of both IOs.
 * Started using devm_reset_control_get_exclusive_deasserted() and
   dropped rzg2l_gpt_reset_assert()
 * Dropped unnecessary bootloader enabled channel code from probe.
 * All error messages now start with a capital letter.
v21->v22:
 * Started using guard(mutex)calls.
 * Replaced round up->down operation in rzg2l_gpt_calculate_pv_or_dc() as
   it converts a nanosecond value to a register value.
 * Replaced devm_clk_get->devm_clk_get_enabled() to make clock on during
   the lifetime of driver and get rid of bootloader_enabled_channels
   variable. Also dropped rzg2l_gpt_rpm_put(), pm_runtime.h header and
   pm runtime calls, that simplified the probe() and other functions.
 * Replaced return type of the rzg2l_gpt_enable() as void as it is not
   returning any error.
 * Dropped lock from enable() and disable() as caller is holding the lock.
   this way we won't release the lock just to allow a called function to retake
   it.
v20->v21:
 * Added documentation about the relation between channels and outputs and
   subchannels.
 * Dropped using the local variable offs for calculating channel regs and
   instead start using macros.
 * Replaced u8->bool for the  bootloader_enabled_channels variable in
   struct rzg2l_gpt_chip
 * Replaced duty_cycles->duty_ticks and period_cycles->period_ticks as it
   represent hw ticks.
 * Introduced RZG2L_MAX_TICKS macro for max hw ticks and dropped the
   variable max_val from struct rzg2l_gpt_chip.
 * Updated comment related to 64-bit overflow calculation in
   calculate_period_or_duty().
 * Simplified handling of bootloader_enabled_channels[pwm->hwpwm] == true
   in a single place in rzg2l_gpt_apply()
 * For config error case, don't call pm_runtime_put_sync() and with
   enable()->acquire pm_runtime reference and disable()-->release the
   pm_runtime reference
 * Split the cleanups into two. One for reset_control_deassert() earlier
   in .probe() and dropped rstc variable from struct rzg2l_gpt_chip.
 * Added warn_once() message in probe() for bootloader setting wrong
   prescale values.
v19->v20:
 * Added locks for rmw operations in rzg2l_gpt_{en,dis}able().
 * Dropped decremeng enable_count based ch_en_bits in rzg2l_gpt_disable().
 * Added a comment in calculate_period_or_duty() related to overflow.
 * Replaced ch_en_bits->bootloader_enabled_channels and used this variable
   in probe(), apply() and remove() for simplification
 * Replaced pm_runtime_enable()->devm_pm_runtime_enable()
v18->v19:
 * Replaced RZG2L_UP_COUNTING->RZG2L_GTUDDTYC_UP_COUNTING macro.
 * Aligned RZG2L_GET_CH and RZG2L_GET_CH_OFFS macro
 * Dropped chip and clk from struct rzg2l_gpt_chip as started using
   devm_pwmchip_alloc() and devm_clk_rate_exclusive_get() to replace it.
 * Replaced rate->rate_khz in struct rzg2l_gpt_chip and added a check in
   probe() to make sure rate is multiple of 1000.
 * Replaced container_of->pwmchip_get_drvdata() to get device data.
 * Added a check in rzg2l_gpt_disable() not to decrement enable_count if
   ch_en_bits is set by the probe.
 * Dropped rzg2l_gpt_mul_u64_u64_div_u64()
 * Simplified calculate_period_or_duty() using rate_khz
 * Simplified rzg2l_gpt_config() using min macro for calculating period
   and duty_cycle.
 * Added checks in rzg2l_gpt_config() to prevent second channel setting
   shared register.
 * Updated error handling rzg2l_gpt_apply()
 * Added local variable dev for &pdev->dev in probe()
 * Added local varibles rate, chip and clk in probe()
 * Dropped err_clk_rate_put label as started using
   devm_clk_rate_exclusive_get()
 * Replaced rzg2l_gpt->chip as data for devm_add_action_or_reset().
 * Added error message for rate > 1GHz in probe.
v17->v18:
 * Added units.h for KILO macro.
 * Replaced RZG2L_GTCCR{A,B}->RZG2L_GTCCR(i)
 * Introduced macros RZG2L_GTIOR_{GTIOx,OxE} to handle subchannels.
 * Replaced RZG2L_IS_IOB()->rzg2l_gpt_subchannel()
 * Replaced the cache period->period_cycles.
 * Updated rzg2l_gpt_is_ch_enabled() to return early if counter is not
   running.
 * Updated calculate_period_or_duty() for avoiding overflows.
 * Updated rzg2l_gpt_calculate_pv_or_dc() with simplified calculation for
   DIV64_U64_ROUND_UP() and dropped the cast for U32_MAX in min_t.
 * Replaced mul_u64_u32_div->rzg2l_gpt_mul_u64_u64_div_u64() helper.
 * Dropped pm pointer from struct rzg2l_gpt_driver() and simplified clk
   handling in probe().
 * Updated copyright from 2023->2024.
 * Moved bitpos near to the user in patch#4.
v16->v17:
 * Added ret = dev_err_probe() to avoid return success in probe().
 * Dropped unneeded MODULE_ALIAS().
 * Dropped .owner from struct rzg2l_gpt_ops.
 * Fixed build issue reported by kernel test robot <lkp@intel.com> by
   replacing DIV_ROUND_UP()->DIV64_U64_ROUND_UP() in
   rzg2l_gpt_calculate_pv_or_dc().
 * Added max_val to struct rzg2l_gpt_chip to compute maximum period
   supported by the HW in probe() and limit its value in apply() to
   avoid 64-bit overflow with computation.
 * Added helper function calculate_period_or_duty() to avoid losing
   precision for smaller period/duty cycle values
   ((2^32 * 10^9 << 2) < 2^64), by not processing the rounded values.
 * Replaced mul_u64_u64_div_u64()->mul_u64_u32_div() as the former is
   giving warnings with CONFIG_PWM_DEBUG enabled for very high values. 
v15->v16:
 * Replaced the macro DIV_ROUND_UP_ULL->DIV64_U64_ROUND_UP
 * Added DIV_ROUND_UP in rzg2l_gpt_calculate_pv_or_dc() to avoid loss of
   precision.
 * Replaced min->min_t() in rzg2l_gpt_calculate_pv_or_dc().
 * Added a comment for rzg2l_gpt_config()
 * Replaced mul_u64_u32_div()->mul_u64_u64_div_u64() in rzg2l_gpt_config()
 * Fixed the logical condition related to counter stop in
   rzg2l_gpt_config().
 * Dropped pm_runtime_resume_*() from rzg2l_gpt_config() as it is managed
   by rzg2l_gpt_apply().
 * Moved pm_runtime_resume_*() from rzg2l_gpt_{en,dis}able() to
   rzg2l_gpt_apply().
v14->v15:
 * Added enable_count and ch_en_bits variables to struct rzg2l_gpt_chip
   based on feedback for pwm_mtu3 driver.
 * Updated copyright header and commit description by replacing "This patch
   adds"-> "Add"
 * Replaced macro RZG2L_GET_CH_INDEX->RZG2L_GET_CH and replaced ch_index->ch
   throughout
 * rzg2l_gpt_{enable,disable}() enables/disables PWM based on the
   enable_count.
 * Replaced pm_runtime_get_sync->pm_runtime_resume_and_get and propogated
   the error in rzg2l_gpt_get_state() and rzg2l_gpt_config()
 * Reduced variable scope in rzg2l_gpt_get_state() by moving most of
   variables inside the if statement.
 * Updated rzg2l_gpt_get_state() by moving duty > period check
   inside the top if block.
 * Added helper functions rzg2l_gpt_calculate_pv_or_dc()to simplify config. 
   Also Improved the logic in rzg2l_gpt_calculate_pv_or_dc() by using
   min(period_or_duty_cycle >> (2 * prescale), (u64)U32_MAX);
 * Updated rzg2l_gpt_get_state() by moving duty > period check
   inside the top if block.
 * Simplified rzg2l_gpt_config() for updating registers
 * Dropped pm_runtime_get_sync() and used bitmap variable "ch_en_bits"
   to make balanced PM usage count in rzg2l_gpt_reset_assert_pm_disable()
   For case were unbind is called before apply where pwm is enabled by
   bootloader.
 * Added error check for clk_rate_exclusive_get() and clk_get_rate() in
   probe().
 * Dropped prescale from struct rzg2l_gpt_chip.
 * Replaced of_match_ptr(rzg2l_gpt_of_table)->rzg2l_gpt_of_table in struct
   rzg2l_gpt_driver
 * Updated commit description of patch#4 by replacing "This patch add"->
   "Add".
v13->v14:
 * Moved the patch from series[1] to here.
 [1] https://lore.kernel.org/linux-renesas-soc/20221215205843.4074504-1-biju.das.jz@bp.renesas.com/T/#t
 * Add Rb tag from Rob for patch#2
 * Removed parenthesis for RZG2L_MAX_HW_CHANNELS and RZG2L_CHANNELS_PER_IO
 * Removed duty_cycle variable from struct rzg2l_gpt_chip and added comment
   for cache for prescale variable.
 * Fixed a bug in rzg2l_gpt_cntr_need_stop().
 * Reordered rzg2l_gpt_config() just above apply()
 * Replaced pwm_is_enabled()->pwm->state.enabled in config
 * Replaced pm_runtime_resume_and_get with unconditional
   pm_runtime_get_sync() in config().
 * Restored duty_cycle > period check in rzg2l_gpt_get_state().
 * Added error check for clk_prepare_enable() in probe() and propagating
   error to the caller for pm_runtime_resume()
 * clk_get_rate() is called after enabling the clock and
   clk_rate_exclusive_get()
 * Simplified rzg2l_gpt_probe() by removing bitmap variables.
 * Added pm_runtime_idle() to suspend the device during probe.
 * Moved overflow condition check from config->probe().
 * Simplified rzg2l_gpt_reset_assert_pm_disable().
 * Removed the parenthesis for RZG2L_MAX_POEG_GROUPS.
 * Renamed rzg2l_gpt_parse_properties()->rzg2l_gpt_poeg_init() as it
   not only parse the properties but also implements the needed register
   writes.
 * Added acomment here about the purpose of the function
   rzg2l_gpt_poeg_init()
 * Removed magic numbers from rzg2l_gpt_poeg_init()
 * Fixed resource leak in rzg2l_gpt_poeg_init().
v12->v13:
 * Added test logs in [1] below
 * Replaced Kconfig dependency from ARCH_RENESAS->ARCH_RZG2L
 * Sorted #include <linux/limits.h> alphabetically
 * Added a comment for mutex_lock to fix check patch warning
 * Replaced data type of duty_cycle from unsigned int->u32 as
   the maximum value stored is U32_MAX.
 * Improved rzg2l_gpt_config() by removing unwanted duty_cycle related
   code.
 * Improved rzg2l_gpt_get_state() by setting
  "val = rzg2l_gpt->duty_cycle[pwm->hwpwm];",  and factor
  "tmp = NSEC_PER_SEC * (u64)val;" out of the if-statement.
 * Started using DEFINE_RUNTIME_DEV_PM_OPS(), and dropped __maybe_unused
   from the callbacks.
v11->v12:
 * Added return code for get_state()
 * Cache duty cycle/prescale as the driver cannot read the current duty
   cycle/prescale from the hardware if the hardware is disabled. Cache the
   last programmed duty cycle/prescale value to return in that case.
 * Updated rzg2l_gpt_enable to enable the clocks.
 * Updated rzg2l_gpt_disable to disable the clocks.
 * Updated rzg2l_gpt_config() to cache duty cucle/prescale value
 * Updated rzg2l_gpt_get_state to use cached value of duty cycle/prescale,
   If the PWM is disabled.
 * Simplified rzg2l_gpt_apply()
 * Added comments in rzg2l_gpt_reset_assert_pm_disable()
v10->v11:
 * Used bitmap_zero for initializing bitmap varable.
 * Fixed clock imbalance during remove for the case bootloader turning
   on PWM and module unload is called just after the boot.
 * Fixed over flow condition in get_state() for a prescale value of
   2 & more.
 * Improved rzg2l_gpt_cntr_need_stop() based on prescale as it is the
   only runtime variable.
 * Added array for Cache variables state_period and prescale
 * Probe caches the prescale value set by the bootloader.
 * Updated rzg2l_gpt_config() to make use of array variables.
v9->v10:
 * Updated the example gpt4: pwm@10048400-> gpt: pwm@10048000
 * Keep Rb tag from Rob as the above change is trivial one.
 * Updated the error handling in probe(), clk_disable_unprepare called
   on the error path.
 * Removed ch_en array and started using bitmask instead.
v8->v9:
 * Added Rb tag from Rob.
 * deassert after devm_clk_get() to avoid reset stays deasserted,in case
   clk_get() fails.
 * Removed ch_offs from struct rzg2l_gpt_chip and use macro instead.
 * Updated error handling in probe()
v7->v8:
 * Removed Rb tags from Rob and Geert as it modelled as single GPT
   device handling multiple channels.
 * Updated description
 * Updated interrupts and interrupt-names properties
 * Updated binding example
 * Modelled as single PWM device handling multiple channels
 * Replaced shared reset->devm_reset_control_get_exclusive()
 * Added PM runtime callbacks
 * Updated PM handling and removed "pwm_enabled_by_bootloader" variable
 * Replaced iowrite32->writel and ioread32->readl
 * Updated prescale calculation
 * Introduced rzg2l_gpt_is_ch_enabled for checking enable status on both
   IO's
 * Moved enable/disable output pins from config->enable/disable.
 * Added rzg2l_gpt_cntr_need_stop() for caching prescalar/mode values.
v6->v7:
 * Added the comment for cacheing rzg2l_gpt->state_period.
 * Fixed boundary values for pv and dc.
 * Added comment for modifying mode, prescaler, timer counter and buffer
   enable registers.
 * Fixed buffer overflow in get_state()
 * Removed unnecessary assignment of state->period value in get_state().
 * Fixed state->duty_cycle value in get_state().
 * Added a limitation for disabling the channels, when both channels used
v5->v6:
 * Updated macros RZG2L_GTIOR_GTIOB_OUT_HI_END_TOGGLE_CMP_MATCH and
   RZG2L_GTIOR_GTIOB_OUT_LO_END_TOGGLE_CMP_MATCH with computation
   involving FIELD_PREP macro.
 * Removed struct rzg2l_gpt_phase and started using RZG2L_GTCCR macro
   for duty_offset.
 * replaced misnomer real_period->state_period.
 * Added handling for values >= (1024 << 32) for both period
   and duty cycle.
 * Added comments for pwm {en,dis}abled by bootloader during probe.
v4->v5:
 * Added Hardware manual details
 * Replaced the comment GTCNT->Counter
 * Removed the macros RZG2L_GPT_IO_PER_CHANNEL and chip.npwm directly
   used in probe.
 * Removed the unsed macro RZG2L_GTPR_MAX_VALUE
 * Added driver prefix for the type name and the variable.
 * Initialization of per_channel data moved from request->probe.
 * Updated clr parameter for rzg2l_gpt_modify for Start count.
 * Started using mutex and usage_count for handling shared
   period and prescalar for the 2 channels.
 * Updated the comment cycle->period.
 * Removed clk_disable from rzg2l_gpt_reset_assert_pm_disable()
 * Replaced pc->rzg2l_gpt.
 * Updated prescale calculation.
 * Moved pm_runtime_{get_sync,put} from {request,free}->{enable,disable}
 * Removed platform_set_drvdata as it is unused
 * Removed the variable pwm_enabled_by_bootloader 
 * Added dev_err_probe in various probe error path.
 * Added an error message, if devm_pwmchip_add fails.
v3->v4:
 * Changed the local variable type i from u16->u8 and prescaled_period_
   cycles from u64->u32 in calculate_prescale().
 * Replaced mul_u64_u64_div_u64()->mul_u64_u32_div()
 * Dropped the comma after the sentinel.
 * Add a variable to track pwm enabled by bootloader and added comments
   in probe().
 * Removed unnecessary rzg2l_gpt_reset_assert_pm_disable() from probe.
 * Replaced devm_clk_get()->devm_clk_get_prepared()
 * Removed devm_clk_get_optional_enabled()
v2->v3:
 * Added Rb tag from Rob for the bindings.
 * Updated limitation section
 * Added prefix "RZG2L_" for all macros
 * Modified prescale calculation
 * Removed pwm_set_chip_data
 * Updated comment related to modifying Mode and Prescaler
 * Updated setting of prescale value in rzg2l_gpt_config()
 * Removed else branch from rzg2l_gpt_get_state()
 * removed the err label from rzg2l_gpt_apply()
 * Added devm_clk_get_optional_enabled() to retain clk on status,
   in case bootloader turns on the clk of pwm.
 * Replaced devm_reset_control_get_exclusive->devm_reset_control_get_shared
   as single reset shared between 8 channels.
v1->v2:
 * Added '|' after 'description:' to preserve formatting.
 * Removed description for pwm_cells as it is common property.
 * Changed the reg size in example from 0xa4->0x100
 * Added Rb tag from Geert for bindings.
 * Added Limitations section
 * dropped "_MASK" from the define names.
 * used named initializer for struct phase
 * Added gpt_pwm_device into a flexible array member in rzg2l_gpt_chip
 * Revised the logic for prescale
 * Added .get_state callback
 * Improved error handling in rzg2l_gpt_apply
 * Removed .remove callback
 * Tested the driver with PWM_DEBUG enabled.

RFC->v1:
 * Added Description in binding patch
 * Removed comments from reg and clock
 * replaced rzg2l_gpt_write_mask()->rzg2l_gpt_modify()
 * Added rzg2l_gpt_read() and updated macros
 * Removed dtsi patches, will send it separately

RFC:
 * https://lore.kernel.org/linux-renesas-soc/20220430075915.5036-1-biju.das.jz@bp.renesas.com/T/#t


Biju Das (4):
  dt-bindings: pwm: Add RZ/G2L GPT binding
  dt-bindings: pwm: rzg2l-gpt: Document renesas,poegs property
  pwm: Add support for RZ/G2L GPT
  pwm: rzg2l-gpt: Add support for gpt linking with poeg

 .../bindings/pwm/renesas,rzg2l-gpt.yaml       | 401 +++++++++++++
 drivers/pwm/Kconfig                           |  11 +
 drivers/pwm/Makefile                          |   1 +
 drivers/pwm/pwm-rzg2l-gpt.c                   | 526 ++++++++++++++++++
 4 files changed, 939 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/renesas,rzg2l-gpt.yaml
 create mode 100644 drivers/pwm/pwm-rzg2l-gpt.c


base-commit: e8af7c083520a7b9b027b2bb282464013a96047d
-- 
2.43.0


