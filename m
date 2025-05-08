Return-Path: <devicetree+bounces-175240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EE5AB035C
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 21:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E455A9E3FF7
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 19:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B8EE288CA3;
	Thu,  8 May 2025 19:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DO0sR8H+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5530C288C97
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 19:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746731146; cv=none; b=s0H3xE49mhldY04LciXZuFGBRNpFsxMjQ0NNJ67oR9cAWLegd/Vxdny1IEoER66/K0t/7B+kTpQ8jH/9m+H9djQjv9L/Dw67ydlH5NTmETxH0SQKOJPTMASDu6RIzR7RB7IA9Jq5XzEwgWRX3b9D6RB3GCdkjwy9fDwBzQou+Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746731146; c=relaxed/simple;
	bh=tiMZ88vuHUw2/pYskSA+DEkK0CL17n0Iwn37Qgf6vgg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hRIbw3WQgPeX/aJtotLdN6xqDPX9K0B3xd7qrLA8LGCGHZckm4yrP7s+Wxr5K/ejqz4Yh/WaAL0KOd4cbD9ekZYGIYLJK+j9IJg6DVyDEiVjrwjR2DfaSoMw7EmcVnhf4hkdmDgBEW8e77ET8lOu8CAfzm0xwAZm2Ki1UOINQzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DO0sR8H+; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6f0c30a1ca3so16920916d6.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 12:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746731143; x=1747335943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9qu0kVYDa1LJAygHrKHPQPVcQppgU3bFJcwVxclK610=;
        b=DO0sR8H+XmbqXIOOorZDh/UyTb5YX18eHBkP0JBYn2PD6vT2baGQubKnt5Mocyrdhy
         5/EoBIfN95xEXz55RsEws313tJyk6e9UthZHyOjOJXgQqAiQRanArGqN5Ssw18C35kg1
         wMEYLZsXMnPhAUHXOLr0PDP0uivY53cpqsIasG0/zRKJ9uitAbor1BtFavr+fl6W7+iu
         KM0L33RPQY+zZq5F042BlnC1hQdbanmsVNIGNT0mlE5NyMI4alF0GI+6d07EiF83DEPF
         Ur0iqV96/roBMsa/yiOA6wAv5WzWFNshiD3Zf+uiVtTxSJkFQZf8LNYXLDrwNkONajKo
         x4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746731143; x=1747335943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9qu0kVYDa1LJAygHrKHPQPVcQppgU3bFJcwVxclK610=;
        b=wHBmZ32slaM+/HNHtVoFnzJkCp7jlr3gvBaEMVsb3E5AQg3MjgrVzOd8eT0Uru6i+l
         5B1pb87paYI5WfQy4QURF5IdNYf2xrclIo4PTvvVJbWmoUURg5VstLW0BMLfcZ99OFJ2
         YG/JJ/Q9Tzzy6F+ohPPlGfagLYKlzbcuKXHiL8ofR+LcDDJ2PKxjZ05XkZU0gJcVOveT
         wSZSXXTy6CBwo3nm1yNqB8+pttaKGJVpxJvGS+QSSqJ8qjTBzpNBhuh6WgTHIb4vSoYm
         4b2MCHLtLEb+fOcpedKhX+UEJd6mqU7ZPJhNhsa9sqNEMaTfonksoG8WIDlEMR3JKzHU
         rIvQ==
X-Gm-Message-State: AOJu0YwiEGVDQa6lBSyIMLQMr1BGqlknmFP+cpkm6iHFwYr20GYabC2/
	wy31WmAEgz9Godu/Nhgm8KUP0bwa/URsvkW+1rTdlnUmABYmTCr3
X-Gm-Gg: ASbGnctQWKla8opC1b0GOj0wD7djs6L+NSF1eBB9gTVggFTbhfpn6HITAeCtI1x/rtJ
	U4Br9dDmQo+jPEBTcLt/Om5GgKpLALy001Kc2Q0O65yY609Rhd7aU31jbT2uUVGYi1KxfbI/ipc
	6QFOudvk94o9LF3rkL+byM05k6nThgUDXwQ5EcHIcdo08LspVIQA4oPWD1xD1jYkNLNDgEYlQGT
	aSTeiw0k1sP6QgxC9J9WViCiZBlPtjOdKO+W6Hw06l+5IYyVDnGCfE1xNk6pk6BQcIzZgjQe1vS
	V/Zndin35XOKjPgiPpp6kfMVHNVrXh0KkFFK+23O6oWQ5+B1Eibq
X-Google-Smtp-Source: AGHT+IF3GvschKMoOsEYJDjP5Bh7wGJRXzNc7vFAvC5p6sW/i58t089hOCR/ZeKjvfIlvNXPZLbXAA==
X-Received: by 2002:a05:6214:2405:b0:6f4:c824:9d4a with SMTP id 6a1803df08f44-6f6e47c339cmr5390056d6.13.1746731142883;
        Thu, 08 May 2025 12:05:42 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f6e3a0bee8sm3148216d6.54.2025.05.08.12.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 12:05:42 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 0/3] Add Luckfox Omni3576 Carrier Board support for RK3576
Date: Thu,  8 May 2025 15:05:35 -0400
Message-Id: <20250508190538.22295-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds device tree support for the Luckfox Omni3576 Carrier
Board with the Core3576 Module, powered by the Rockchip RK3576 SoC
(four Cortex-A72 cores, four Cortex-A53 cores, Mali-G52 MC3 GPU). It
enables essential functionality for booting Linux and basic connectivity,
with plans for future support of peripherals like WiFi, MIPI-DSI, HDMI,
and Ethernet.

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

The device tree is covered by the existing ROCKCHIP ARCHITECTURE entry in
MAINTAINERS. I am aware of ongoing RK3576 upstreaming efforts (e.g., by
Collabora) and welcome feedback or collaboration to align with mainline
driver development.

Changes in v4:
 - Patch 1: Unchanged, Acked-by: Conor Dooley <conor.dooley@microchip.com>.
 - Patch 2: Fixed binding for Omni3576 Carrier Board to use correct enum
   syntax (enum: [luckfox,omni3576] instead of invalid const), added
   luckfox,core3576 to compatible string to reflect module dependency.
 - Patch 3: Updated compatible string in rk3576-luckfox-omni3576.dts to
   match revised binding ("luckfox,omni3576", "luckfox,core3576",
   "rockchip,rk3576").

Changes in v3:
 - Split device tree into rk3576-luckfox-core3576.dtsi (module) and
   rk3576-luckfox-omni3576.dts (carrier board) for better modularity.
   Previous Acked-by from Krzysztof Kozlowski for Patch 2 no longer applies
   due to substantial changes.
 - Addressed Jonas Karlman's feedback on patch 3/3 (Luckfox Omni3576
   device tree):
   - Added pinctrl for green LED GPIO (gpio1 RK_PD5) for proper pin setup.
   - Reordered regulator node properties for consistent sequence (e.g.,
     regulator-name, regulator-min-microvolt, regulator-max-microvolt,
     etc.).
   - Updated regulator nodes (vcc_3v3_pcie, vbus_5v0_typec, vcc_5v0_host,
     vcc_5v0_hdmi) to use 'gpios' property instead of deprecated 'gpio'.
   - Removed pmic-power-off pinctrl state and pinctrl-1 from RK806 PMIC
     node, as they are vendor-specific and undocumented in bindings.
   - Removed pwrkey node from PMIC, as it lacks binding documentation.
   - Added blank line between properties and child nodes in i2c2 node for
     DT style compliance.
   - Removed no-mmc property from sdmmc node to enable MMC support,
     aligning with RK3576 SD v3.0 and MMC v4.51 capabilities, allowing TF
     card slot to support MMC devices or eMMC via adapter.
 - Removed Ethernet support (gmac0/gmac1 nodes) per Andrew Lunn's
   feedback, as it used the generic PHY driver with incorrect RGMII delay
   settings, incompatible with the upcoming MAE0621A driver.
   Collaborating with Andrew Lunn on a device driver, with Ethernet
   support to be submitted separately when complete.
 - Addressed Rob Herring's DTB check warnings, other warnings (e.g., VOP,
   PCIe, OTP, HDMI PHY) originate from rk3576.dtsi and are outside this
   patchset scope.
 - Added RNG node to pick up Nicolas Frattaroli's "add RK3576 RNG node"
   patch.

Changes in v2:
 - Enabled HDMI node per feedback from Heiko Stuebner and Nicolas
   Frattaroli; untested due to upstream driver issues.
 - Enabled Ethernet 1 node per Heiko's device tree philosophy; untested
   due to suspected PHY driver or configuration issues (removed in v3 per
   Andrew Lunn).
 - Clarified eMMC remains enabled but unpopulated on tested board, per
   Heiko.

Signed-off-by: John Clark <inindev@gmail.com>
---
John Clark (3):
  dt-bindings: vendor-prefixes: Add luckfox prefix
  dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
  arm64: dts: rockchip: Add Luckfox Omni3576 Board support

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3576-luckfox-core3576.dtsi | 683 ++++++++++++++++++
 .../dts/rockchip/rk3576-luckfox-omni3576.dts  |  53 ++
 5 files changed, 746 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts

-- 
2.39.5


