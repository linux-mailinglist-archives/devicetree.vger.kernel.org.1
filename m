Return-Path: <devicetree+bounces-174135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA588AAC2E2
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 13:41:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A76341B6892D
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 11:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E5727A928;
	Tue,  6 May 2025 11:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YB9Aozjx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FB227A457
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 11:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746531683; cv=none; b=R4H3Ez6lpTT6tgFSnwUDPI/bb231SrtBsNk7Erny11e77zJ6jo7PPHoTTyBUCDnaZwrIVcznHHRFGxZNWkH9L47XCgtfYJxBjPZeXJ7zK2IjKcHwe59v2Bj7ewDzrUk4YhR/3hffdRl6jR/VCuhfZrj85LwXrim28atIKOAsK7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746531683; c=relaxed/simple;
	bh=cMMcnJVbKx8a7NBsTTNXSoMCr2A2HUx6EzeJ3OUNBqA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=U7nUxWNV2ykbJSD5KC+5z7p78vfI0+emeYqd+FeY2HLhRIPdttoWc9+qxgH0b2EW1XKjnPDkO+HCDD+inZaa+eiBOrv7OZs4IEdhfk/PVVwRs+ogiYU9tan9kKbnznJ/f5j9vrE9e9eDZ+og/cyzm+pXu6nIfx1LB/WpDTrXZJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YB9Aozjx; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7c5e2fe5f17so613205085a.3
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 04:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746531680; x=1747136480; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1cthrBE/hKEN3eoQrm4i+nHKuGR4paL2rIAOIGOo2Fo=;
        b=YB9Aozjx/koCSOlf3lwABb0DkPy77ooCHdCcxvJqUV8ay0UZ2intngUVNQRaSK0YeG
         fe7WlK1tpRKSIBJJQOMEYeU8xH/WyNDPWwBrDXmCqVpMEEFgPlpgyqM3AoOewh60ICCJ
         GEuKeLAGyC1kcSp8g6uvSkUV4gq+3FYyn+0UVYDfudD1s3DSME9wVfTKWK6SfNxtfBMY
         962LPOhjgftZTN0TxM+cSm+N5P1D3VmN+I/s5O/W/t8NVHRQ6gXNHOzoU8+vVPkzxUie
         xjmIYhXOBw8s3R0/m0VdBj/wMPqJNshhPw/L1GgnJWhbCtLfSWz3Cp2wPAUmOaQttVDP
         MX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746531680; x=1747136480;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1cthrBE/hKEN3eoQrm4i+nHKuGR4paL2rIAOIGOo2Fo=;
        b=ZrmghwmxnNlCV19Yn7SUGk+A3fnJ0tppimWysX4PSKt3zIHM2UPbF+igFe7gLfAJdx
         x4h8IMh8x5YSGFXEYqzV/Sm//5X2jbPgURTiNhQenPR4Eo7ZQPCMuzYgMx4UNm4o61MT
         ZcZvb2wg2RvTQwnatcahMx3VUQybzJ6nQZIwqKzO2j/x1iJVHz9n2tfoe8+ccxaSnXXx
         SX2eBVIl0z3OQSfGXerHeuFnNOyLptPC4Lsmy6Pn6fkn2ewTad735+wQyGlakMsyoVEv
         r4abi/BLgi00EE1U7qI+j80eHRN43M3/rOfrQQ53BFNeV8O/J/6p18xWUip5M030vRkt
         8COg==
X-Forwarded-Encrypted: i=1; AJvYcCWFnJHiA5wVj76TErcM6DSm0+QDxvtD0ZsmJ5m7MvXsFpmLAP2clpy8C67n5sdUzgdael0749aRUc2K@vger.kernel.org
X-Gm-Message-State: AOJu0YxiQCZ6mqTXvr1eHAa7kq1iupwrRUhOd7srKDyrez6+2CkVpgRy
	p838NKbP7F7bLElJPsQQsZ5sDQhUv2c4SOIAQAKqo0f8roNx/fk9J0fyPzgiJvA=
X-Gm-Gg: ASbGncvA4A11jwcEoNoWGSOtXE2vsPXKuOSnmi/yBFMVEOl47EsjwPM/A1KCDsPjIjb
	SCmVojoB4/hUjXXv9lb0Odo0xLJpyhCFiVZG3JF8AKA71pTVV1/yOxrteNn8rIL74PJ7BIXwP+U
	9dA1P/1XSR6VYfdXOzoVnjbFdulaHP8sdHYo3TFbzxIJjq7LCK9y+PzcoGHvbWrt1c1SfD58tC7
	WZ25qpsD0UiVmADfjf2tlK8qCk4J9PG71WA+rtOqF0veux2ipRN8DJE10A1Uvx/Ax4R15fKMWjg
	vwyWEnFAuWgVPyvRz50BXA+p+HIs+FhvzH10fbAEB7ojC85XDO2k06RhpDkllZU=
X-Google-Smtp-Source: AGHT+IEP6qIEAlepbHnWxP68BD3kTfUkbgfGRMwMADJPrH8tCOpAS0cFOSp6pVFkj9TKKKJqIT+RlA==
X-Received: by 2002:a05:620a:c51:b0:7ca:c6c7:be14 with SMTP id af79cd13be357-7caf110be9fmr396054485a.1.1746531680390;
        Tue, 06 May 2025 04:41:20 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad23b51f9sm697408485a.21.2025.05.06.04.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 04:41:19 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org,
	jonas@kwiboo.se,
	frattaroli.nicolas@gmail.com,
	andrew@lunn.ch,
	John Clark <inindev@gmail.com>
Subject: [PATCH v3 0/3] Add Luckfox Omni3576 Carrier Board support for RK3576
Date: Tue,  6 May 2025 07:41:12 -0400
Message-Id: <20250506114115.613616-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds device tree support for the Luckfox Omni3576
Carrier Board with the Core3576 Module, powered by the Rockchip
RK3576 SoC (four Cortex-A72 cores, four Cortex-A53 cores, Mali-G52
MC3 GPU). It enables essential functionality for booting Linux and
basic connectivity, with plans for future support of peripherals
like WiFi, MIPI-DSI, HDMI, and Ethernet.

The series was first posted as v1 at:
https://lore.kernel.org/linux-rockchip/20250502205533.51744-1-inindev@gmail.com
v2 at:
https://lore.kernel.org/linux-rockchip/20250504102447.153551-1-inindev@gmail.com

Tested features (on Linux 6.15-rc4):
 - UART: Serial console operational
 - SD card: Mounts and reads/writes successfully
 - PCIe: NVMe SSD detected, mounted, and fully functional
 - USB 2.0: Host ports operational
 - RTC: Timekeeping and wake-up tested
 - LED: Heartbeat trigger functional
 - eMMC: Enabled in device tree, not populated on tested hardware

The series includes three patches:
 1. dt-bindings: vendor-prefixes: Add Luckfox vendor prefix
 2. dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
 3. arm64: dts: rockchip: Add Luckfox Omni3576 board support

The device tree is covered by the existing ROCKCHIP ARCHITECTURE
entry in MAINTAINERS. I am aware of ongoing RK3576 upstreaming
efforts (e.g., by Collabora) and welcome feedback or collaboration
to align with mainline driver development.

Changes in v3:
 - Addressed Jonas Karlman's feedback on patch 3/3
   (Luckfox Omni3576 device tree):
   - Added pinctrl for green LED GPIO (gpio1 RK_PD5) for proper
     pin setup.
   - Reordered regulator node properties for consistent sequence
     (e.g., regulator-name, regulator-min-microvolt,
     regulator-max-microvolt, etc.).
   - Updated regulator nodes (vcc_3v3_pcie, vbus_5v0_typec,
     vcc_5v0_host, vcc_5v0_hdmi) to use 'gpios' property instead
     of deprecated 'gpio'.
   - Removed pmic-power-off pinctrl state and pinctrl-1 from RK806
     PMIC node, as they are vendor-specific and undocumented in
     bindings.
   - Removed pwrkey node from PMIC, as it lacks binding
     documentation.
   - Added blank line between properties and child nodes in i2c2
     node for DT style compliance.
   - Removed no-mmc property from sdmmc node to enable MMC
     support, aligning with RK3576 SD v3.0 and MMC v4.51
     capabilities, allowing TF card slot to support MMC devices
     or eMMC via adapter.
 - Removed Ethernet support (gmac0/gmac1 nodes) per Andrew Lunn's
   feedback, as it relied on the generic PHY driver with incorrect
   RGMII delay settings, which would break with the upcoming
   MAE0621A driver.
 - Addressed Rob Herring's DTB check warnings, other warnings
   (e.g., VOP, PCIe, OTP, HDMI PHY) originate from rk3576.dtsi and
   are outside this patchset scope.
 - Added RNG node to pick up Nicolas Frattaroli's "add RK3576 RNG
   node" patch

Changes in v2:
 - Enabled HDMI node per feedback from Heiko Stuebner and Nicolas
   Frattaroli; untested due to upstream driver issues.
 - Enabled Ethernet 1 node per Heiko's device tree philosophy;
   untested due to suspected PHY driver or configuration issues
   (removed in v3 per Andrew Lunn).
 - Clarified eMMC remains enabled but unpopulated on tested
   board, per Heiko.

Signed-off-by: John Clark <inindev@gmail.com>
---
John Clark (3):
  dt-bindings: vendor-prefixes: Add luckfox prefix
  dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
  arm64: dts: rockchip: Add Luckfox Omni3576 Board support

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3576-luckfox-core3576.dtsi | 683 ++++++++++++++++++
 .../dts/rockchip/rk3576-luckfox-omni3576.dts  |  53 ++
 5 files changed, 749 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts

-- 
2.39.5


