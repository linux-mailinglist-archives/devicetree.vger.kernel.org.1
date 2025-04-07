Return-Path: <devicetree+bounces-163764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD53A7DF3A
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 15:30:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F146F1888603
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 13:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0342253F0D;
	Mon,  7 Apr 2025 13:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="oYCVZ4fa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C65253B6F;
	Mon,  7 Apr 2025 13:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744032587; cv=none; b=SkeSw+dTd22lvAOjoUHWuwQvUJLfV3w/463hOBt4EbEfySbHc4GCcv4aAsCYgB97WJwXVzoakd+4HfJddhySLE50Qx6arxRwMCj7qZxN7vyohZ48/eH06EQsgzJazvny+btCZ7iqQNjNeeanN2TR2jPFd3XGpqmOAb4eT98KvLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744032587; c=relaxed/simple;
	bh=A2soJRaK2ujZwAk3Fnhsx5SimeSPaGomf6VWJEdb9Mo=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=ECGVthyJ4N2QrfVKBLiXsygItR0O0YGnVkxFhtoxXX8pLgzlcjYcwTio6wnWifMa6Rx6pLNCSZg8qcT4J9aXCp8CJh2yxmzt0FC29vrmeiLYv9f0J+eMWI2KXgXG62cWFkVGhu5gF4I1SlEon9xk0Bo+KuEh0KCa90BEMlcsjJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=oYCVZ4fa; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 537CPr7l008728;
	Mon, 7 Apr 2025 15:29:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=selector1; bh=jtcfw4T4ysNtOOYn1QxZQW
	lJr1R9xdWowKEdb83yll0=; b=oYCVZ4fa2UIE63iEmn/4njKdBK5Dm90yYvzuQr
	g4CHgv8UEXqO0AH+rCCTYPBFOVMS2wxHYbdn91YC97zz/I1Zya0vqC4V0Oao0WNg
	LirbxiMMA3Y19Q22IyP0wfbnOHKrKZw4TaqSrdMxy96m8LR/GTzkUIodm2c3Tddv
	M7C4rtD5+RfisAHqjunjhrGmDw0XXTdcpBOJYMe1j5iZCiX42zwiMRCDU+vw24cs
	D72myUvURWO6wJHvfhozGOUtE9YoCo2nIEMHomWKvjcDSWBTInFMDbAyLrP4eD4/
	dIhdlGZ3TiSbcDEKws3GvZAOR0Az3gdbWrsTiEfdILXLqLIQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 45tw2gqwyq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Apr 2025 15:29:30 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 32B1640055;
	Mon,  7 Apr 2025 15:28:29 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8221E9400D1;
	Mon,  7 Apr 2025 15:27:41 +0200 (CEST)
Received: from localhost (10.48.87.62) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Mon, 7 Apr
 2025 15:27:41 +0200
From: Patrice Chotard <patrice.chotard@foss.st.com>
Subject: [PATCH v8 0/7] Add STM32MP25 SPI NOR support
Date: Mon, 7 Apr 2025 15:27:31 +0200
Message-ID: <20250407-upstream_ospi_v6-v8-0-7b7716c1c1f6@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMPS82cC/23NSwqDMBCA4atI1o3kpUm76j1KkahjzUIjGRtax
 Ls3CqWUFmbzD8w3C0EIDpCcsoUEiA6dH1OYQ0aa3o43oK5NTQQTBZOC0fuEcwA7VB4nV8WStko
 Ka7gWnBUknU0BOvfYycs1de9w9uG5f4jltn1j/BdLw6jUdd3YWkklj+fOI+Y4540fyMZF/SEU+
 0foRDDohCm4hNbwb2Jd1xeLtrfZ9QAAAA==
X-Change-ID: 20250320-upstream_ospi_v6-d432a8172105
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon
	<will@kernel.org>
CC: <christophe.kerello@foss.st.com>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Patrice Chotard
	<patrice.chotard@foss.st.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_04,2025-04-03_03,2024-11-22_01

This series adds SPI NOR support for STM32MP25 SoCs from STMicroelectronics.

On STM32MP25 SoCs family, an Octo Memory Manager block manages the muxing,
the memory area split, the chip select override and the time constraint
between its 2 Octo SPI children.

Due to these depedencies, this series adds support for:
  - Octo Memory Manager driver.
  - Octo SPI driver.
  - yaml schema for Octo Memory Manager and Octo SPI drivers.

The device tree files adds Octo Memory Manager and its 2 associated Octo
SPI chidren in stm32mp251.dtsi and adds SPI NOR support in stm32mp257f-ev1
board.
    
Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>

Changes in v8:
  - update OMM's dt-bindings:
    - Remove minItems for clocks and resets properties.
    - Fix st,syscfg-amcr items declaration.
    - move power-domains property before vendor specific properties.
  - Update compatible check wrongly introduced during internal tests in
    stm32_omm.c.
  - Move ommanager's node outside bus@42080000's node in stm32mp251.dtsi.
  - Link to v7: https://lore.kernel.org/r/20250401-upstream_ospi_v6-v7-0-0ef28513ed81@foss.st.com

Changes in v7:
  - update OMM's dt-bindings by updating :
    - clock-names and reset-names properties.
    - spi unit-address node.
    - example.
  - update stm32mp251.dtsi to match with OMM's bindings update.
  - update stm32mp257f-ev1.dts to match with OMM's bindings update.
  - Link to v6: https://lore.kernel.org/r/20250321-upstream_ospi_v6-v6-0-37bbcab43439@foss.st.com

Changes in v6:
  - Update MAINTAINERS file.
  - Remove previous patch 1/8 and 2/8, merged by Mark Brown in spi git tree.
  - Fix Signed-off-by order for patch 3.
  - OMM driver:
    - Add dev_err_probe() in error path.
    - Rename stm32_omm_enable_child_clock() to stm32_omm_toggle_child_clock().
    - Reorder initialised/non-initialized variable in stm32_omm_configure()
          and stm32_omm_probe().
    - Move pm_runtime_disable() calls from stm32_omm_configure() to
      stm32_omm_probe().
    - Update children's clocks and reset management.
    - Use of_platform_populate() to probe children.
    - Add missing pm_runtime_disable().
    - Remove useless stm32_omm_check_access's first parameter.
  - Update OMM's dt-bindings by adding OSPI's clocks and resets.
  - Update stm32mp251.dtsi by adding OSPI's clock and reset in OMM's node.

Changes in v5:
  - Add Reviewed-by Krzysztof Kozlowski for patch 1 and 3.

Changes in v4:
  - Add default value requested by Krzysztof for st,omm-req2ack-ns,
    st,omm-cssel-ovr and st,omm-mux properties in st,stm32mp25-omm.yaml
  - Remove constraint in free form test for st,omm-mux property.
  - Fix drivers/memory/Kconfig by replacing TEST_COMPILE_ by COMPILE_TEST.
  - Fix SPDX-License-Identifier for stm32-omm.c.
  - Fix Kernel test robot by fixing dev_err() format in stm32-omm.c.
  - Add missing pm_runtime_disable() in the error handling path in
    stm32-omm.c.
  - Replace an int by an unsigned int in stm32-omm.c
  - Remove uneeded "," after terminator in stm32-omm.c.
  - Update cover letter description to explain dependecies between
Octo Memory Manager and its 2 Octo SPI children.

Changes in v3:
  - Squash defconfig patches 8 and 9.
  - Update STM32 Octo Memory Manager controller bindings.
  - Rename st,stm32-omm.yaml to st,stm32mp25-omm.yaml.
  - Update STM32 OSPI controller bindings.
  - Reorder DT properties in .dtsi and .dts files.
  - Replace devm_reset_control_get_optional() by
    devm_reset_control_get_optional_exclusive() in stm32_omm.c.
  - Reintroduce region-memory-names management in stm32_omm.c.
  - Rename stm32_ospi_tx_poll() and stm32_ospi_tx() to respectively to
    stm32_ospi_poll() and stm32_ospi_xfer() in spi-stm32-ospi.c.
  - Set SPI_CONTROLLER_HALF_DUPLEX in controller flags in spi-stm32-ospi.c.

Changes in v2:
  - Move STM32 Octo Memory Manager controller driver and bindings from
    misc to memory-controllers.
  - Update STM32 OSPI controller bindings.
  - Update STM32 Octo Memory Manager controller bindings.
  - Update STM32 Octo Memory Manager driver to match bindings update.
  - Update DT to match bindings update.

Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>
---
Patrice Chotard (7):
      MAINTAINERS: add entry for STM32 OCTO MEMORY MANAGER driver
      dt-bindings: memory-controllers: Add STM32 Octo Memory Manager controller
      memory: Add STM32 Octo Memory Manager driver
      arm64: dts: st: Add OMM node on stm32mp251
      arm64: dts: st: Add ospi port1 pinctrl entries in stm32mp25-pinctrl.dtsi
      arm64: dts: st: Add SPI NOR flash support on stm32mp257f-ev1 board
      arm64: defconfig: Enable STM32 Octo Memory Manager and OcstoSPI driver

 .../memory-controllers/st,stm32mp25-omm.yaml       | 226 ++++++++++
 MAINTAINERS                                        |   6 +
 arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi      |  51 +++
 arch/arm64/boot/dts/st/stm32mp251.dtsi             |  54 +++
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts         |  32 ++
 arch/arm64/configs/defconfig                       |   2 +
 drivers/memory/Kconfig                             |  17 +
 drivers/memory/Makefile                            |   1 +
 drivers/memory/stm32_omm.c                         | 474 +++++++++++++++++++++
 9 files changed, 863 insertions(+)
---
base-commit: 88424abd55ab36c3565898a656589a0a25ecd92f
change-id: 20250320-upstream_ospi_v6-d432a8172105

Best regards,
-- 
Patrice Chotard <patrice.chotard@foss.st.com>


