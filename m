Return-Path: <devicetree+bounces-35488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 399C483D8B1
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1655289B4D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2967417C65;
	Fri, 26 Jan 2024 10:56:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from andre.telenet-ops.be (andre.telenet-ops.be [195.130.132.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBDE13FEE
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 10:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706266616; cv=none; b=cpkS4mmAWuecYPIjv4nUdNt+nh5+QMjtCObWYvPJl/VUjJiApjr2L3IyXRw5Gly3LfGVQqLmgXVfcaDZYO5jFIQLkHkFVVcXal7yCo/xHPgk2AkxoZ3gojY8eY3qHH+m3HDiRtnZkQGN5sV1SA0A25CmG7L0Smq5yPXn0r/+HO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706266616; c=relaxed/simple;
	bh=Zf8NWOrDXkAHvWRVwb+qL8k1bUAAd2J3jd99PP4js8o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F2dWeguwV79Me/MfKXk8hlzbvWQdvTb9ZXuCa/0Pq7WYQ1tFpeC7sOMTiGw/WV2hS3ps1K+YjQ4Z/rbYZZ7GXQyqUe6Jdy3dLY38d5UDlrmLjs5L9BUoIgu38dBkyEmqUsl3Q6qi2I9ywceJqAjOqOW86YpmxegrvnHjbEjAImY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:8d64:ae04:ce87:de06])
	by andre.telenet-ops.be with bizsmtp
	id fNwn2B00F1AdMdB01NwnVF; Fri, 26 Jan 2024 11:56:47 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rTJsL-00GWgr-9D;
	Fri, 26 Jan 2024 11:56:47 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rTJh0-00G5TM-6g;
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
Subject: [PATCH 08/14] pinctrl: renesas: r8a779h0: Add HSCIF pins, groups, functions
Date: Fri, 26 Jan 2024 11:44:06 +0100
Message-Id: <27577af0042928e4b673a2774c68a14c4ea7c157.1706264667.git.geert+renesas@glider.be>
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

Add pins, groups and functions for the High Speed Serial Communication
Interfaces with FIFO (HSCIF) on the Renesas R-Car V4M (R8A779H0) SoC.

Signed-off-by: Cong Dang <cong.dang.xn@renesas.com>
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Changes compared to the BSP:
  - Move SCIF_CLK pins/groups/functions into a separate patch.
---
 drivers/pinctrl/renesas/pfc-r8a779h0.c | 192 +++++++++++++++++++++++++
 1 file changed, 192 insertions(+)

diff --git a/drivers/pinctrl/renesas/pfc-r8a779h0.c b/drivers/pinctrl/renesas/pfc-r8a779h0.c
index c7c3e68ca77abf4a..6203f78869d6306d 100644
--- a/drivers/pinctrl/renesas/pfc-r8a779h0.c
+++ b/drivers/pinctrl/renesas/pfc-r8a779h0.c
@@ -1425,6 +1425,144 @@ static const unsigned int avb2_avtp_match_mux[] = {
 	AVB2_AVTP_MATCH_MARK,
 };
 
+/* - HSCIF0 ----------------------------------------------------------------- */
+static const unsigned int hscif0_data_pins[] = {
+	/* HRX0, HTX0 */
+	RCAR_GP_PIN(1, 16), RCAR_GP_PIN(1, 12),
+};
+static const unsigned int hscif0_data_mux[] = {
+	HRX0_MARK, HTX0_MARK,
+};
+static const unsigned int hscif0_clk_pins[] = {
+	/* HSCK0 */
+	RCAR_GP_PIN(1, 15),
+};
+static const unsigned int hscif0_clk_mux[] = {
+	HSCK0_MARK,
+};
+static const unsigned int hscif0_ctrl_pins[] = {
+	/* HRTS0_N, HCTS0_N */
+	RCAR_GP_PIN(1, 14), RCAR_GP_PIN(1, 13),
+};
+static const unsigned int hscif0_ctrl_mux[] = {
+	HRTS0_N_MARK, HCTS0_N_MARK,
+};
+
+/* - HSCIF1_A ----------------------------------------------------------------- */
+static const unsigned int hscif1_data_a_pins[] = {
+	/* HRX1_A, HTX1_A */
+	RCAR_GP_PIN(0, 15), RCAR_GP_PIN(0, 14),
+};
+static const unsigned int hscif1_data_a_mux[] = {
+	HRX1_A_MARK, HTX1_A_MARK,
+};
+static const unsigned int hscif1_clk_a_pins[] = {
+	/* HSCK1_A */
+	RCAR_GP_PIN(0, 18),
+};
+static const unsigned int hscif1_clk_a_mux[] = {
+	HSCK1_A_MARK,
+};
+static const unsigned int hscif1_ctrl_a_pins[] = {
+	/* HRTS1_N_A, HCTS1_N_A */
+	RCAR_GP_PIN(0, 17), RCAR_GP_PIN(0, 16),
+};
+static const unsigned int hscif1_ctrl_a_mux[] = {
+	HRTS1_N_A_MARK, HCTS1_N_A_MARK,
+};
+
+/* - HSCIF1_B ---------------------------------------------------------------- */
+static const unsigned int hscif1_data_b_pins[] = {
+	/* HRX1_B, HTX1_B */
+	RCAR_GP_PIN(1, 7), RCAR_GP_PIN(1, 6),
+};
+static const unsigned int hscif1_data_b_mux[] = {
+	HRX1_B_MARK, HTX1_B_MARK,
+};
+static const unsigned int hscif1_clk_b_pins[] = {
+	/* HSCK1_B */
+	RCAR_GP_PIN(1, 10),
+};
+static const unsigned int hscif1_clk_b_mux[] = {
+	HSCK1_B_MARK,
+};
+static const unsigned int hscif1_ctrl_b_pins[] = {
+	/* HRTS1_N_B, HCTS1_N_B */
+	RCAR_GP_PIN(1, 9), RCAR_GP_PIN(1, 8),
+};
+static const unsigned int hscif1_ctrl_b_mux[] = {
+	HRTS1_N_B_MARK, HCTS1_N_B_MARK,
+};
+
+/* - HSCIF2 ----------------------------------------------------------------- */
+static const unsigned int hscif2_data_pins[] = {
+	/* HRX2, HTX2 */
+	RCAR_GP_PIN(4, 8), RCAR_GP_PIN(4, 9),
+};
+static const unsigned int hscif2_data_mux[] = {
+	HRX2_MARK, HTX2_MARK,
+};
+static const unsigned int hscif2_clk_pins[] = {
+	/* HSCK2 */
+	RCAR_GP_PIN(4, 13),
+};
+static const unsigned int hscif2_clk_mux[] = {
+	HSCK2_MARK,
+};
+static const unsigned int hscif2_ctrl_pins[] = {
+	/* HRTS2_N, HCTS2_N */
+	RCAR_GP_PIN(4, 10), RCAR_GP_PIN(4, 12),
+};
+static const unsigned int hscif2_ctrl_mux[] = {
+	HRTS2_N_MARK, HCTS2_N_MARK,
+};
+
+/* - HSCIF3_A ----------------------------------------------------------------- */
+static const unsigned int hscif3_data_a_pins[] = {
+	/* HRX3_A, HTX3_A */
+	RCAR_GP_PIN(1, 24), RCAR_GP_PIN(1, 28),
+};
+static const unsigned int hscif3_data_a_mux[] = {
+	HRX3_A_MARK, HTX3_A_MARK,
+};
+static const unsigned int hscif3_clk_a_pins[] = {
+	/* HSCK3_A */
+	RCAR_GP_PIN(1, 25),
+};
+static const unsigned int hscif3_clk_a_mux[] = {
+	HSCK3_A_MARK,
+};
+static const unsigned int hscif3_ctrl_a_pins[] = {
+	/* HRTS3_N_A, HCTS3_N_A */
+	RCAR_GP_PIN(1, 26), RCAR_GP_PIN(1, 27),
+};
+static const unsigned int hscif3_ctrl_a_mux[] = {
+	HRTS3_N_A_MARK, HCTS3_N_A_MARK,
+};
+
+/* - HSCIF3_B ----------------------------------------------------------------- */
+static const unsigned int hscif3_data_b_pins[] = {
+	/* HRX3_B, HTX3_B */
+	RCAR_GP_PIN(1, 4), RCAR_GP_PIN(1, 0),
+};
+static const unsigned int hscif3_data_b_mux[] = {
+	HRX3_B_MARK, HTX3_B_MARK,
+};
+static const unsigned int hscif3_clk_b_pins[] = {
+	/* HSCK3_B */
+	RCAR_GP_PIN(1, 3),
+};
+static const unsigned int hscif3_clk_b_mux[] = {
+	HSCK3_B_MARK,
+};
+static const unsigned int hscif3_ctrl_b_pins[] = {
+	/* HRTS3_N_B, HCTS3_N_B */
+	RCAR_GP_PIN(1, 2), RCAR_GP_PIN(1, 1),
+};
+static const unsigned int hscif3_ctrl_b_mux[] = {
+	HRTS3_N_B_MARK, HCTS3_N_B_MARK,
+};
+
 /* - MMC -------------------------------------------------------------------- */
 static const unsigned int mmc_data_pins[] = {
 	/* MMC_SD_D[0:3], MMC_D[4:7] */
@@ -1690,6 +1828,25 @@ static const struct sh_pfc_pin_group pinmux_groups[] = {
 	SH_PFC_PIN_GROUP(avb2_avtp_capture),
 	SH_PFC_PIN_GROUP(avb2_avtp_match),
 
+	SH_PFC_PIN_GROUP(hscif0_data),
+	SH_PFC_PIN_GROUP(hscif0_clk),
+	SH_PFC_PIN_GROUP(hscif0_ctrl),
+	SH_PFC_PIN_GROUP(hscif1_data_a),
+	SH_PFC_PIN_GROUP(hscif1_clk_a),
+	SH_PFC_PIN_GROUP(hscif1_ctrl_a),
+	SH_PFC_PIN_GROUP(hscif1_data_b),
+	SH_PFC_PIN_GROUP(hscif1_clk_b),
+	SH_PFC_PIN_GROUP(hscif1_ctrl_b),
+	SH_PFC_PIN_GROUP(hscif2_data),
+	SH_PFC_PIN_GROUP(hscif2_clk),
+	SH_PFC_PIN_GROUP(hscif2_ctrl),
+	SH_PFC_PIN_GROUP(hscif3_data_a),
+	SH_PFC_PIN_GROUP(hscif3_clk_a),
+	SH_PFC_PIN_GROUP(hscif3_ctrl_a),
+	SH_PFC_PIN_GROUP(hscif3_data_b),
+	SH_PFC_PIN_GROUP(hscif3_clk_b),
+	SH_PFC_PIN_GROUP(hscif3_ctrl_b),
+
 	BUS_DATA_PIN_GROUP(mmc_data, 1),
 	BUS_DATA_PIN_GROUP(mmc_data, 4),
 	BUS_DATA_PIN_GROUP(mmc_data, 8),
@@ -1763,6 +1920,36 @@ static const char * const avb2_groups[] = {
 	"avb2_avtp_match",
 };
 
+static const char * const hscif0_groups[] = {
+	"hscif0_data",
+	"hscif0_clk",
+	"hscif0_ctrl",
+};
+
+static const char * const hscif1_groups[] = {
+	"hscif1_data_a",
+	"hscif1_clk_a",
+	"hscif1_ctrl_a",
+	"hscif1_data_b",
+	"hscif1_clk_b",
+	"hscif1_ctrl_b",
+};
+
+static const char * const hscif2_groups[] = {
+	"hscif2_data",
+	"hscif2_clk",
+	"hscif2_ctrl",
+};
+
+static const char * const hscif3_groups[] = {
+	"hscif3_data_a",
+	"hscif3_clk_a",
+	"hscif3_ctrl_a",
+	"hscif3_data_b",
+	"hscif3_clk_b",
+	"hscif3_ctrl_b",
+};
+
 static const char * const mmc_groups[] = {
 	"mmc_data1",
 	"mmc_data4",
@@ -1828,6 +2015,11 @@ static const struct sh_pfc_function pinmux_functions[] = {
 	SH_PFC_FUNCTION(avb1),
 	SH_PFC_FUNCTION(avb2),
 
+	SH_PFC_FUNCTION(hscif0),
+	SH_PFC_FUNCTION(hscif1),
+	SH_PFC_FUNCTION(hscif2),
+	SH_PFC_FUNCTION(hscif3),
+
 	SH_PFC_FUNCTION(mmc),
 
 	SH_PFC_FUNCTION(qspi0),
-- 
2.34.1


