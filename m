Return-Path: <devicetree+bounces-255262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D7BD21A61
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:48:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD9213002291
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C8A38B995;
	Wed, 14 Jan 2026 22:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJ7mZ42y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC14E346E6D;
	Wed, 14 Jan 2026 22:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768430923; cv=none; b=apbz2PZwC8lH6uipK9S0tyIacy54PY0nBG3Ji8qS19RyPMcWop/H7h6CwTGN31uBibMe/OzMDVEvCdTCZ4a0treaK95UvXBl5C1+c3PAc9EpKe77sNoYjRoe2PBgbWdVR9pPBDataeomg3SHPAmsWbZPWsTacQfAiXKbCBnLDvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768430923; c=relaxed/simple;
	bh=/0rQfB4ucKcut7HcVPFuwsC0bnDDeVLeKXyt6+LIA7M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VI6Acp0k0E8LajN47Awhq9V7dUv/DQhB7qRv6Vb/k7DoP+QPFAhRQXwsP7rvgFcLrZgXoErQeTUuZ1snvsQm/sevMezEV4LvhoejH2l3Ga3L90leZ4XH2j5rHVCC1fIko2o4awYkE0WJWMvRtA3pk3Krvy+C/XlHhc+d5HeocxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJ7mZ42y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E85C19424;
	Wed, 14 Jan 2026 22:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768430923;
	bh=/0rQfB4ucKcut7HcVPFuwsC0bnDDeVLeKXyt6+LIA7M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=gJ7mZ42yRZ4Ib1aWo+rpCfUuRvrcYM5OlD63FFbO0HY73N/0R8D+o5les48ZKcMd8
	 RanqcCANrn1eXF4WsyAEoeb1lnQd0k0DCuKIAHkJ1dVsJLqLjziV20rrfQSyVgLoI2
	 KWwmNNgitv8aRFdltrCSvVZlXGOMvbTJQbhtiSp5d4fTBfBtmVehuwH8fukhr3MV7q
	 +4pur04NXnVrWBbzlBhvJKta6NYMToB58C8oUMZJiqVK0+BFga1zDT3A2l/p08mnw0
	 qRq7PkgNIqoVtMBhc6s6YjwtAcFr8FogiRACdQf265sPaq21uFD4IKBrjHxmP0US+E
	 tiqSDcNuqr7Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E373D3CC87;
	Wed, 14 Jan 2026 22:48:43 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Wed, 14 Jan 2026 23:48:37 +0100
Subject: [PATCH 2/2] arm64: dts: amlogic: add the type-c controller on
 Radxa Zero 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-2-8b5cdf328fde@pardini.net>
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
In-Reply-To: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1485;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=zb/OKKB6zV/hhBZYiZyJobFT3XGfSbU/eSwN+6koa1Y=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpaB1KlEhHDQdS0hwR9gCrhbZI2IMpaGlg0cHJM
 GAsqkn+BQuJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaWgdSgAKCRA7Xj/jnsft
 6VpIB/48OQIO8h534tAeCE4rHGBpxfc6elGR0Nw/+vh6ua9H1f+NS6RtkgR/249vXrgzaPpq3DN
 O+POmf+VLSS+slNDVUmwVY1ev/2W4IqGR4jsKV6IzXycKBFm72uE8/93PRbfo/Bxavpl7SZAEQX
 2dtba8pz5t7nmyldBFZ5hFXxP39+O9yUnNDGLdbMGfrL3rV7nhZzhlCj4SollYHCFPD9TBCwXwX
 1QSTbbZWo7bh9+qLJRy03C9M8V4huPEMoun8KudEzPd3SKsxy3gSGBv2RPlPDcShaBzzGdVYD5a
 3+y+BmQkwNnpgJIwCWoPrg1ytk3BRSvc8o2SCBo3KhPZ+5o3
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

The Radxa Zero2 has an FUSB302 controller on i2c3 at address 0x22 and
INT# wired to GPIOA-13.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 .../boot/dts/amlogic/meson-g12b-radxa-zero2.dts    | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
index a37776d22b09e..125b064a15c1e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -364,12 +364,44 @@ hdmi_tx_tmds_out: endpoint {
 	};
 };
 
+/* Also exposed on the 40-pin header: SDA pin 3, SCL pin 5 */
+&i2c3 {
+	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	fusb302@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+
+		pinctrl-0 = <&fusb302_irq_pins>;
+		pinctrl-names = "default";
+		interrupt-parent = <&gpio_intc>;
+		interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
+
+		vbus-supply = <&ao_5v>;
+
+		status = "okay";
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

-- 
2.52.0



