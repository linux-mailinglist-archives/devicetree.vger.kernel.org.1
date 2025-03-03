Return-Path: <devicetree+bounces-153302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A85CCA4BEE8
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 12:38:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BEEB5188213D
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 11:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01C8A1FFC59;
	Mon,  3 Mar 2025 11:38:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B0A1FF7CC;
	Mon,  3 Mar 2025 11:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741001902; cv=none; b=lqEq9r4IuY4GQl/hACsVnFzJPz15/gMc9cSQY/c1WLJMoz8+4ZI4BlxVaE++CSfV3tpZ5Bx8r4xyZwI/piWB5EpyWTlvvrKwVdoq6joy38W4LQROFpVhFWOkcvuPjhh17vKsNbHYk48s6nhpTpVPHgczpY1qFQXgbnafSz5O4So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741001902; c=relaxed/simple;
	bh=QmTfQJ4Z505mDgbQ/uz5xxw6QOKRz4rmJR1fKJ6jkxo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cTAS8V2vlJcanxrk7UcMkv89/M4WLCwm8DZZ3gEtHuAK8eiglhRiel/zGcr+LWFUZrDA47sOVFkAt7Yydo2+hg87veZnFFdU6qgp5PPGik9JegB2aUeNnKWlKc7fc6RLBk49NlFzIKz/yLx0m65y21chqVQ7/RsMXwO0DWoc1tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=210.160.252.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
X-CSE-ConnectionGUID: 2jS7dRW4R8WZKIE4E5E8xQ==
X-CSE-MsgGUID: UnhqAgb7SQyrYZTt03dcGw==
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 03 Mar 2025 20:38:19 +0900
Received: from localhost.localdomain (unknown [10.226.92.114])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 4BBF5426ADE3;
	Mon,  3 Mar 2025 20:38:15 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v5 0/2] Add RZ/G3E SDHI support
Date: Mon,  3 Mar 2025 11:38:06 +0000
Message-ID: <20250303113812.88014-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SD/MMC block on the RZ/G3E ("R9A09G047") SoC is similar to that
of the RZ/V2H, but the SD0 channel has only dedicated pins, so we must
use SD_STATUS register to control voltage and power enable (internal
regulator).

For SD1 and SD2 channel we can either use gpio regulator or internal
regulator (using SD_STATUS register) for voltage switching.

For SD0, fixed voltage(eMMC) uses fixed regulator and non-fixed voltage
(SD) uses internal regulator.

v4->v5:
 * Collected tag from Wolfram Sang.
 * Dropped redundant struct renesas_sdhi_vqmmc_regulator initialization.
 * Added one space before '=' in the struct initializer.
v3->v4:
 * Dropped dts patches as it is deferred for queuing.
 * Arranged variables of same types close to each other in probe() and
   dropped patch#2.
 * Added sd_ctrl_read32().
 * Replaced sd_ctrl_read32_rep()->sd_ctrl_read32().
v2->v3:
 * Collected tags
 * Renamed internal regulator labels vqmmc_sdhi{0..2}->sdhi{0..2}_vqmmc.
 * Updated regulator phandles on SoM/Board dts.
 * Dropped renaming the gpio regulator label vqmmc_sdhi1->vqmmc_sdhi1_gpio.
 * Renamed node sd0emmc->sd0-emmc
 * Renamed sd0-emmc-{ctrl,data,rst}->sd0-{ctrl,data,rst}
 * Moved header file gpio.h from patch#6 to patch#8.
 * Dropped overriding internal regulator name.
 * Dropped #if guard in pinctrl node for SDHI0
 * Renamed the label/node sdhi0_pins: sd0->sdhi0_usd_pins: sd0-usd.
v1->v2:
 * Collected tags.
 * Documented internal regulator as optional property for both RZ/G3E and
   RZ/V2H SoCs.
 * Updated commit description for regulator used in SD0 fixed and
   non-fixed voltage case in patch#3.
 * As the node enabling of internal regulator is controlled through status,
   added a check for device availability.
 * Status of internal regulator is disabled in the SoC .dtsi. Override
   the status in the board DTS when needed.
 * Added support for enabling SDHI internal regulator in RZ/V2H
 * Added missing header file gpio.h
 * Used fixed regulator for eMMC on SD0 and dropped sd0-iovs pins for
   eMMC.
 * Sorted pinctrl nodes for sd2
 * Enabled internal regulator for SD2.
 * Added support for enabling SD on SDHI0
 * Replaced the regulator usd_vdd_3p3v->reg_3p3v.
 * Renamed the gpio-hog node sd1-pwr-en->sd1-pwr-en-hog.
 * Sorted sd1 pin ctrl nodes.

Biju Das (2):
  dt-bindings: mmc: renesas,sdhi: Document RZ/G3E support
  mmc: renesas_sdhi: Add support for RZ/G3E SoC

 .../devicetree/bindings/mmc/renesas,sdhi.yaml |  16 +++
 drivers/mmc/host/renesas_sdhi.h               |   1 +
 drivers/mmc/host/renesas_sdhi_core.c          | 130 ++++++++++++++++++
 drivers/mmc/host/tmio_mmc.h                   |  10 ++
 4 files changed, 157 insertions(+)

-- 
2.43.0


