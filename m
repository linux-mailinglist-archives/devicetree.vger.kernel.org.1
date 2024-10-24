Return-Path: <devicetree+bounces-115285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4529AEC3B
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 18:34:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AACCB1C23C0E
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 16:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399091FAEF2;
	Thu, 24 Oct 2024 16:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbcEnchI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE481FAEE7;
	Thu, 24 Oct 2024 16:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729787595; cv=none; b=Oh/743X73TwdciQyJXzYJSU/I2bEx2MVuAu8+p2qSowJ07ooZ7EPBYGpJJGnG1+JYfyHqUJ3bfx7h+MSH8PKFjr7JzrhwZJUryD7xu2hwG7JCUvF+t7CCwfDQEcld7jB6LNXn+PR7Z7VMMkQkmwgfsdSvNY+n5fA472Lsl69Quk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729787595; c=relaxed/simple;
	bh=HDBJ+uOpS26fWgvQvOCW/T7/SZyOlHewKBKNueUbUBA=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=BjbQQUMT0vJjIdHgpJg5hF/9Fp0vFQhg35cJRKS3zUgxazjkkVVC3v/usGOH65HPCmZjgNGqLsYDWVsGKCUGF7xpPtQZHa38s5R+FC5Q/NcTgMGpsury+dKxh7rVopIG6DFiTl5IfHAogTSc/cT7EDdtCqLoHuecqxxEoBN76hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbcEnchI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CACBFC4CEE9;
	Thu, 24 Oct 2024 16:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729787594;
	bh=HDBJ+uOpS26fWgvQvOCW/T7/SZyOlHewKBKNueUbUBA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=FbcEnchIiiXwnEqVE3SJypkwhULJkXS9aQIN4TyqLQPYzf+AhpzDI/ahWSinMpxrR
	 fQerS0KDTC+5pIVvmKFHEwafrkyDcP3htb+7zhIIdBt2H35OOnU2RIvEQCnBnfhjjg
	 n6wzFpWdfUKLMvra5diaPSuGxsF4m+dRLKKoqnGpXvwQQP9S3zKn7fiZgZRW+XWpo7
	 MoNxfN3dmACRZpG/RT6KqvAstyltE82iJ2vi62Jk8ASedz+4qCwuaIcvEZHLYtJTjO
	 hlQx11gNQL1z2yMhBmjVgLHjlkbP84E6Ebn39FW3ghKbZUbuWTyYmVi3/6vLgEz2jG
	 lohWHZ5VADzVA==
Date: Thu, 24 Oct 2024 11:33:14 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Lijuan Gao <quic_lijuang@quicinc.com>
Cc: Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Tingguo Cheng <quic_tingguoc@quicinc.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Will Deacon <will@kernel.org>, kernel@quicinc.com, 
 linux-arm-kernel@lists.infradead.org, 
 Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Swetha Chintavatla <quic_chintava@quicinc.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20241022-add_initial_support_for_qcs615-v4-0-0a551c6dd342@quicinc.com>
References: <20241022-add_initial_support_for_qcs615-v4-0-0a551c6dd342@quicinc.com>
Message-Id: <172978739698.623494.13901719999982782781.robh@kernel.org>
Subject: Re: [PATCH v4 0/7] Add initial support for QCS615 SoC and QCS615
 RIDE board


On Tue, 22 Oct 2024 16:54:28 +0800, Lijuan Gao wrote:
> Introduces the Device Tree for the QCS615 platform.
> 
> Features added and enabled:
> - CPUs with PSCI idle states
> - Interrupt-controller with PDC wakeup support
> - Timers, TCSR Clock Controllers
> - Reserved Shared memory
> - QFPROM
> - TLMM
> - Watchdog
> - RPMH controller
> - Sleep stats driver
> - Rpmhpd power controller
> - Interconnect
> - GCC and Rpmhcc
> - QUP with Uart serial support
> 
> Bindings and base Device Tree for the QCS615 SoC are splited
> in four parts:
> - 1-3: Binding files for QCS615 SoC and PDC (Reviewed)
> - 4  : Soc table entry (Reviewed)
> - 5-6: Initial DTSI and RIDE board device tree
> - 7  : Enable uart related configs
> 
> Bindings Dependencies:
> - watchdog: https://lore.kernel.org/all/20240920-add_watchdog_compatible_for_qcs615-v2-1-427944f1151e@quicinc.com/ - Reviewed
> - qfprom: https://lore.kernel.org/all/20240912-add_qfprom_compatible_for_qcs615-v1-1-9ef2e26c14ee@quicinc.com/ - Reviewed
> - tcsr: https://lore.kernel.org/all/20240920-add_tcsr_compatible_for_qcs615-v2-1-8ce2dbc7f72c@quicinc.com/ - Applied
> - tlmm: https://lore.kernel.org/all/20240920-add_qcs615_pinctrl_driver-v2-1-e03c42a9d055@quicinc.com/ - Applied
> - interconnect: https://lore.kernel.org/all/20240924143958.25-2-quic_rlaggysh@quicinc.com/ - Reviewed
> - rpmhcc: https://lore.kernel.org/all/20241016-qcs615-clock-driver-v3-1-bb5d4135db45@quicinc.com/ - Reviewed
> - gcc: https://lore.kernel.org/all/20241016-qcs615-clock-driver-v3-3-bb5d4135db45@quicinc.com/ - Reviewed
> - rpmhpd: https://lore.kernel.org/all/20240927-add_qcs615_qcs8300_powerdomains_driver_support-v2-3-18c030ad7b68@quicinc.com/ - Applied
> 
> Build Dependencies:
> - tlmm: https://lore.kernel.org/all/20240920-add_qcs615_pinctrl_driver-v2-2-e03c42a9d055@quicinc.com/ - Applied
> - rpmhcc: https://lore.kernel.org/all/20241016-qcs615-clock-driver-v3-2-bb5d4135db45@quicinc.com/ - Reviewed
> - gcc: https://lore.kernel.org/all/20241016-qcs615-clock-driver-v3-4-bb5d4135db45@quicinc.com/
> 
> Patch made the following verifications:
> - Successfully passed dt_binding_check with DT_CHECKER_FLAGS=-m for earch binding file
> - Successfully passed dtbs_check with W=1 for dts
> - Verified CPU Hotplug, idle and online CPUs on QCS615 ride board
> - Checked pinctrl-maps path
> - Verified watchdog functionality with "echo 1 > /dev/watchdog", can trigger
>   a watchdog bark and later bite
> - Verified functionality with UART console on QCS615 ride board
> - RPMH controller driver probed successfully
> - Sleep stats driver probed successfully and checked qcom_stats
>   node on QCS615 ride board
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
> Changes in v4:
> - Configure vreg_l17a to High Power Mode (HPM) as it supplies power to UFS
>   and eMMC, which can be utilized as boot devices.
> - Link to v3: https://lore.kernel.org/r/20240926-add_initial_support_for_qcs615-v3-0-e37617e91c62@quicinc.com
> 
> Changes in v3:
> - Added interconnect, GCC, RPMHCC, QPU, and RPMHPD related nodes for UART console
> - Enabled UART condole on ride board device
> - Link to v2: https://lore.kernel.org/r/20240913-add_initial_support_for_qcs615-v2-0-9236223e7dab@quicinc.com
> 
> Changes in v2:
> - Collected reviewed-bys
> - Removed extra blank line
> - Removed redundant function
> - Renamed xo-board to xo-board-clk and move it and sleep-clk to board dts
> - Renamed system-sleep to cluster_sleep_2
> - Removed cluster1
> - Added entry-method for idle-states
> - Added DTS chassis type
> - Added TCSR Clock Controllers
> - Added Reserved Shared memory
> - Added QFPROM
> - Added TLMM
> - Added Watchdog
> - Added RPMH controller
> - Added Sleep stats driver
> - Link to v1: https://lore.kernel.org/r/20240828-add_initial_support_for_qcs615-v1-0-5599869ea10f@quicinc.com
> ---
> 
> ---
> Lijuan Gao (7):
>       dt-bindings: arm: qcom: document QCS615 and the reference board
>       dt-bindings: arm: qcom,ids: add SoC ID for QCS615
>       dt-bindings: qcom,pdc: document QCS615 Power Domain Controller
>       soc: qcom: socinfo: Add QCS615 SoC ID table entry
>       arm64: dts: qcom: add initial support for QCS615 DTSI
>       arm64: dts: qcom: add base QCS615 RIDE dts
>       arm64: defconfig: enable clock controller, interconnect and pinctrl for QCS615
> 
>  Documentation/devicetree/bindings/arm/qcom.yaml    |   6 +
>  .../bindings/interrupt-controller/qcom,pdc.yaml    |   1 +
>  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts           | 219 +++++++
>  arch/arm64/boot/dts/qcom/qcs615.dtsi               | 688 +++++++++++++++++++++
>  arch/arm64/configs/defconfig                       |   3 +
>  drivers/soc/qcom/socinfo.c                         |   1 +
>  include/dt-bindings/arm/qcom,ids.h                 |   1 +
>  8 files changed, 920 insertions(+)
> ---
> base-commit: de938618db2bafbe1a70c8fc43f06ccdd60364b2
> change-id: 20241022-add_initial_support_for_qcs615-2256f64a9c24
> prerequisite-change-id: 20240919-qcs615-clock-driver-d74abed69854:v3
> prerequisite-patch-id: cd9fc0a399ab430e293764d0911a38109664ca91
> prerequisite-patch-id: 07f2c7378c7bbd560f26b61785b6814270647f1b
> prerequisite-patch-id: a57054b890d767b45cca87e71b4a0f6bf6914c2f
> prerequisite-patch-id: d0c5edf9c06568ae2b3ffacba47e57ebb43acb15
> prerequisite-change-id: 20240920-add_watchdog_compatible_for_qcs615-eec8a8c2c924:v2
> prerequisite-patch-id: 3a76212d3a3e930d771312ff9349f87aee5c55d5
> prerequisite-change-id: 20240911-add_qfprom_compatible_for_qcs615-e3b02f6fa71e:v1
> prerequisite-patch-id: 8a2454d5e07e56a6dd03f762f498051065635d85
> 
> Best regards,
> --
> Lijuan Gao <quic_lijuang@quicinc.com>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y qcom/qcs615-ride.dtb' for 20241022-add_initial_support_for_qcs615-v4-0-0a551c6dd342@quicinc.com:

arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@100000: 'clock-names' is a required property
	from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gcc.yaml#






