Return-Path: <devicetree+bounces-255729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCD7D273DA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:13:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 37B0330383A7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:01:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7A73D4113;
	Thu, 15 Jan 2026 17:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5mVqqOA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574EE3C1FF2;
	Thu, 15 Jan 2026 17:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768499571; cv=none; b=r4iDIa/CY7n5Kn80BlkQq/Ln/PEiFicKOmu9GG/YbBAJmoszMGHnC87F+FXBQtZTi50/9dAk1IzLt+0sPM8zxmecXtp5cofH+OHyDoVtaZJx0PqTyNDVk5WAT7GJpJiR542N5OZ0kMzU7ElPFgvzNGDpKxdAr9UDHGiaVrKp8Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768499571; c=relaxed/simple;
	bh=SbiGDK7jyygOqLt6KSZkwL24dXZAECNwCnh0R9ahBI8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=AWE4uEiqk8Df887SPmgPg76dw8JjE6WK/0ECgUwMhrCLqRCEOL8whDnLgD/x5VHFJ7h9AryHoz22ryWRndlyvs0YHv3MDMjyVQIm55EKuxwG2HJpqOiKX7jk30l/sjO1bWy4mdhasu8AApFlEdHOTCCyV+psxELk5FggNKOwzXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5mVqqOA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37891C16AAE;
	Thu, 15 Jan 2026 17:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768499571;
	bh=SbiGDK7jyygOqLt6KSZkwL24dXZAECNwCnh0R9ahBI8=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=c5mVqqOATHWZPi2fWp2GWMHCEMldRrSgIIQqgNRq3vzDIA6wObuWGHgSMXgeC2gTZ
	 uCalfRXvdAuLZnaEcUxrempp6a4m8qkyA+FI1SZ+rdRJ4yzkf98pdJgaUt0EtVbe+z
	 tisT0HP/7NQF/ZZpBGKdNfXbz16ewWGiusx0B247JVobd8DgCz/9C2DIhPOZWERLsU
	 iwCKZjJ3mVUbYCKgkMStsh6etdFTc8EnOf+o1sOsLOD6fI3crICA/uTG3iKQGN/nDJ
	 uFpmAwTUmLvEyQ/vNZ2aSbqv0df2q89P2qT70CANS9IhZVeVkR3rtSxWgwGPISpB8V
	 DxWrjQLNsxpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 296CED46608;
	Thu, 15 Jan 2026 17:52:51 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Thu, 15 Jan 2026 18:52:46 +0100
Subject: [PATCH v2] arm64: dts: amlogic: add the type-c controller on Radxa
 Zero 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-arm64-dts-amlogic-radxa-zero2-additions-v2-1-948bb0479a45@pardini.net>
X-B4-Tracking: v=1; b=H4sIAG0paWkC/5WNSw6DIBQAr9Kw7msAP9Gueo/GBfoe+pIKBoixN
 d691Bt0ObOY2UWkwBTF/bKLQCtH9i6Dvl7EMBk3EjBmFlrqWipVgglzXQKmCGZ++ZEHCAY3Ax8
 KXoNB5JQTEVpZVWVre8KCRK4tgSxv5+nZZZ44Jh/e53hVP/v/Y1UgoemrAW2hG4v0WExAdnxzl
 ER3HMcX81QDj+AAAAA=
X-Change-ID: 20260114-arm64-dts-amlogic-radxa-zero2-additions-905549fbed3e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3379;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=o6AdblgGh5ZdlDwrmpT3OM+dmaO8Ys6WxijQzUk1YWc=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpaSlypZjIsZFbEWdFKZ7C9I9qk7XcIl/qzQUBa
 S+t3dWpDrOJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaWkpcgAKCRA7Xj/jnsft
 6ZGUCACHpy7luG8T/fuQ+ektuogyYcMdc9EJcgK8F2Yw6FKSqqUEOADHTiEY0VBQhhl5FXdmqEt
 ME1F0D1GKoQ/XfjtKNGwSZi9t2pstp4LkLIiLEcjBWjRFAkUcjN17AYOVuZr69Wnjj9M4bdKjT5
 rrkbFhXbzjIws3ayW2eZYVZxqSTRelFe3qdYDA4UBfbEn1w0XfRtG1WVKqmS81YzA4kPHvlTw6S
 gJfRZjREETuGIRtZXmPoQK7qsyEy4ZEK6UJOeCFdApVUyJ2DrLAdfBit08qghdDpGKLVf9aPr+t
 lIqJivTfrQGUU/klUmFoW820L0AWnNuNzE9MSzs0cBUeSgid
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

The Radxa Zero2 has an FUSB302 controller on i2c3 at address 0x22 and
INT# wired to GPIOA-13; include a minimal connector.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
This series adds a few things missing from the Radxa Zero 2:

1) NPU (etnaviv), just enable the node, similar to what was done for VIM3
   (dropped as was already picked up in [1])
2) i2c3 (also exposed on the 40-pin header) and the FUSB302 at 0x22.
   Describes it minimally, adding no functionality, but reserving the 0x22
   address since i2c3 is also exposed on user-accessible 40-pin header.

Krzysztof: v1 followed the node name I had found used in amlogic; I've
           looked around more broadly and found 'fusb0: typec-portc@22'
           to be quite popular, so went with this. Hope it is acceptable.

Neil: I've fixed the interrupts pin, and described the required connector
      even more minimally than you suggested, as to avoid including pd.h.
      It is also done this way in a few other boards, hope it's correct.
      I've rebased your/Christian's full-enablement patches on top of this,
      tested with an r8152 which then works both ways, it's available at [2]

[1] https://git.kernel.org/amlogic/c/29deec49146162d06b17739c627d062191e03814
[2] https://github.com/rpardini/linux/tree/radxa-zero2-fusb302-minimal-plus-full-impl-rebase
---
Changes in v2:
- npu: dropped NPU enablement patch as it was already picked up by Neil
- fusb302: dropped 'status = "okay"'
- fusb302: declare as 'fusb0: typec-portc@22' instead of 'fusb302@22'
- fusb302: use correct pin (74 -> gpioA13) for interrupts
- fusb302: add a (very minimal) connector so dtbs_check passes
- Link to v1: https://lore.kernel.org/r/20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net
---
 .../boot/dts/amlogic/meson-g12b-radxa-zero2.dts    | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
index 1e5c6f9849456..5d32c04de938e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -364,12 +364,46 @@ hdmi_tx_tmds_out: endpoint {
 	};
 };
 
+/* Also exposed on the 40-pin header: SDA pin 3, SCL pin 5 */
+&i2c3 {
+	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	fusb0: typec-portc@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+
+		pinctrl-0 = <&fusb302_irq_pins>;
+		pinctrl-names = "default";
+		interrupt-parent = <&gpio_intc>;
+		interrupts = <74 IRQ_TYPE_LEVEL_LOW>;
+
+		vbus-supply = <&ao_5v>;
+
+		connector {
+			compatible = "usb-c-connector";
+		};
+	};
+};
+
 &ir {
 	status = "disabled";
 	pinctrl-0 = <&remote_input_ao_pins>;
 	pinctrl-names = "default";
 };
 
+&periphs_pinctrl {
+	fusb302_irq_pins: fusb302-irq {
+		mux {
+			groups = "GPIOA_13";
+			function = "gpio_periphs";
+			bias-pull-up;
+			output-disable;
+		};
+	};
+};
+
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";

---
base-commit: 0f61b1860cc3f52aef9036d7235ed1f017632193
change-id: 20260114-arm64-dts-amlogic-radxa-zero2-additions-905549fbed3e

Best regards,
-- 
Ricardo Pardini <ricardo@pardini.net>



