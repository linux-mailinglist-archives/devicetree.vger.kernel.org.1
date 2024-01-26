Return-Path: <devicetree+bounces-35476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0BE83D88F
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:57:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D17CA1F28925
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0984414286;
	Fri, 26 Jan 2024 10:56:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from albert.telenet-ops.be (albert.telenet-ops.be [195.130.137.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74688134BD
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 10:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706266612; cv=none; b=Kpq2JwmUCWK6n3py9nnCxKyQ3+gIW3attqQM9cwlqxSgQd1L+JTeznIJVCxM4IbRM27wFi+sp394INVmPEg0aXBUpp8hX1qt4iJm+zB0bu/7QZbWERO4TB2+Rb8AQKmgIcgL/pbyZJAiAwv1Dh0uOoo4nKyUg5D+cHZVaOnwBwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706266612; c=relaxed/simple;
	bh=iGAzIOHr72l9gWy8cnDtvRiPyohyVg0gDecIhbYQg8g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WAVvf3oI7qg2TwErkK4Av8h9QFgXLAqe9UqXAh4WwrSVqtHNW+gVygVoSaQ8XK1jjjjuEL3FRMxy164MfzklRs1jXcfPfXk3aC85xFpAtEXOmO9d//d89LeJPGb9hHMM5NW7X0zhmktNRVSwlgfSI2+Iz/SuVu1lClOvomXg/EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:8d64:ae04:ce87:de06])
	by albert.telenet-ops.be with bizsmtp
	id fNwn2B00A1AdMdB06NwnNl; Fri, 26 Jan 2024 11:56:47 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rTJsL-00GWgn-58;
	Fri, 26 Jan 2024 11:56:47 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rTJh0-00G5TR-7O;
	Fri, 26 Jan 2024 11:44:14 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Cong Dang <cong.dang.xn@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 09/14] pinctrl: renesas: r8a779h0: Add I2C pins, groups, functions
Date: Fri, 26 Jan 2024 11:44:07 +0100
Message-Id: <23fc01c6e97e544abd23168439f5d45d3ac8fa5b.1706264667.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706264667.git.geert+renesas@glider.be>
References: <cover.1706264667.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Cong Dang <cong.dang.xn@renesas.com>

Add pins, groups and functions for the I2C Bus Interfaces on the Renesas
R-Car V4M (R8A779H0) SoC.

Signed-off-by: Cong Dang <cong.dang.xn@renesas.com>
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/pinctrl/renesas/pfc-r8a779h0.c | 62 ++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/pinctrl/renesas/pfc-r8a779h0.c b/drivers/pinctrl/renesas/pfc-r8a779h0.c
index 6203f78869d6306d..8e04f4ce36e3d804 100644
--- a/drivers/pinctrl/renesas/pfc-r8a779h0.c
+++ b/drivers/pinctrl/renesas/pfc-r8a779h0.c
@@ -1563,6 +1563,42 @@ static const unsigned int hscif3_ctrl_b_mux[] = {
 	HRTS3_N_B_MARK, HCTS3_N_B_MARK,
 };
 
+/* - I2C0 ------------------------------------------------------------------- */
+static const unsigned int i2c0_pins[] = {
+	/* SDA0, SCL0 */
+	RCAR_GP_PIN(4, 1), RCAR_GP_PIN(4, 0),
+};
+static const unsigned int i2c0_mux[] = {
+	SDA0_MARK, SCL0_MARK,
+};
+
+/* - I2C1 ------------------------------------------------------------------- */
+static const unsigned int i2c1_pins[] = {
+	/* SDA1, SCL1 */
+	RCAR_GP_PIN(4, 3), RCAR_GP_PIN(4, 2),
+};
+static const unsigned int i2c1_mux[] = {
+	SDA1_MARK, SCL1_MARK,
+};
+
+/* - I2C2 ------------------------------------------------------------------- */
+static const unsigned int i2c2_pins[] = {
+	/* SDA2, SCL2 */
+	RCAR_GP_PIN(4, 5), RCAR_GP_PIN(4, 4),
+};
+static const unsigned int i2c2_mux[] = {
+	SDA2_MARK, SCL2_MARK,
+};
+
+/* - I2C3 ------------------------------------------------------------------- */
+static const unsigned int i2c3_pins[] = {
+	/* SDA3, SCL3 */
+	RCAR_GP_PIN(4, 7), RCAR_GP_PIN(4, 6),
+};
+static const unsigned int i2c3_mux[] = {
+	SDA3_MARK, SCL3_MARK,
+};
+
 /* - MMC -------------------------------------------------------------------- */
 static const unsigned int mmc_data_pins[] = {
 	/* MMC_SD_D[0:3], MMC_D[4:7] */
@@ -1847,6 +1883,11 @@ static const struct sh_pfc_pin_group pinmux_groups[] = {
 	SH_PFC_PIN_GROUP(hscif3_clk_b),
 	SH_PFC_PIN_GROUP(hscif3_ctrl_b),
 
+	SH_PFC_PIN_GROUP(i2c0),
+	SH_PFC_PIN_GROUP(i2c1),
+	SH_PFC_PIN_GROUP(i2c2),
+	SH_PFC_PIN_GROUP(i2c3),
+
 	BUS_DATA_PIN_GROUP(mmc_data, 1),
 	BUS_DATA_PIN_GROUP(mmc_data, 4),
 	BUS_DATA_PIN_GROUP(mmc_data, 8),
@@ -1950,6 +1991,22 @@ static const char * const hscif3_groups[] = {
 	"hscif3_ctrl_b",
 };
 
+static const char * const i2c0_groups[] = {
+	"i2c0",
+};
+
+static const char * const i2c1_groups[] = {
+	"i2c1",
+};
+
+static const char * const i2c2_groups[] = {
+	"i2c2",
+};
+
+static const char * const i2c3_groups[] = {
+	"i2c3",
+};
+
 static const char * const mmc_groups[] = {
 	"mmc_data1",
 	"mmc_data4",
@@ -2020,6 +2077,11 @@ static const struct sh_pfc_function pinmux_functions[] = {
 	SH_PFC_FUNCTION(hscif2),
 	SH_PFC_FUNCTION(hscif3),
 
+	SH_PFC_FUNCTION(i2c0),
+	SH_PFC_FUNCTION(i2c1),
+	SH_PFC_FUNCTION(i2c2),
+	SH_PFC_FUNCTION(i2c3),
+
 	SH_PFC_FUNCTION(mmc),
 
 	SH_PFC_FUNCTION(qspi0),
-- 
2.34.1


