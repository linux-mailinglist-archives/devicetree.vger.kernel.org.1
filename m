Return-Path: <devicetree+bounces-318464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nd5jJT0JRWpB5goAu9opvQ
	(envelope-from <devicetree+bounces-318464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:34:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFA66ED638
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:34:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=QszWhYz9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318464-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318464-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33D5531ED800
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E79F54A1385;
	Wed,  1 Jul 2026 12:20:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669824968F0;
	Wed,  1 Jul 2026 12:20:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908422; cv=none; b=sDaghMJL/fSAMsYr7bB6XZYIaQ3CRqJeXK436r96g7dcPdbfbwn7GbULgDLhlJ/1GmHHJJVRmseShiYp/0ZNxw0ko05wS2e6/wplehPi6wYjH0P0mDrublFcrbqewyzswjZD7qMZyCFgsmTdg9P4qYaHrGA6Gd6LlOv/RT12iy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908422; c=relaxed/simple;
	bh=K0VNr+9gnpoe0j0frK29UiNpLBahzqQkk8aXOspG5u8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=auPGEOiY8f50OH2HXExACa6Er33e8wbMhq7lCWuRAMuw5z6DNqE4TH1pQKaqqk7IoqPAdbq+iL+VQEBsWC14SzOlLsOKJ5jAO3wZXvyBo+VWDfsP/MtDjWXYJyNo3Y4978UtoI963BRcxjhgVhATzR4Enuj1wxMP3F61y6FpjCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=QszWhYz9; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908419;
	bh=K0VNr+9gnpoe0j0frK29UiNpLBahzqQkk8aXOspG5u8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QszWhYz9Z/VaZzbCQwnUuWUHVgwaoKHeS9Dk6S4NNCI3DcKgdgZ3EGMBGf60yCPpN
	 SGu5pbZytj/DYMhtdXamYpUdvQHHByakc+AWriQkRK+XpLPMyc9c3iwaenxk1D3zzz
	 8ajyR8in8hGXJyQQPrdhtWY4E/yu53huYFOZnagkLMKlJyAp7vbxEqSMDPhrUEQVQg
	 AxNDGTKBqls4iKUEvojMrq9zn0LGFCg7q8c9irJYwlTriuVn9NPdwkSkNpMR9GK/W3
	 rj1SxH8fj8NAf7rS+DqCVRopo2tVi4Op6HARJt1p0owjaAM7kuvyrslktlI/tual45
	 zIok9gQiVEAaQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5EEC417E1411;
	Wed,  1 Jul 2026 14:20:18 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	justin.yeh@mediatek.com,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH 09/12] phy: phy-mtk-dp: Rewrite and document default driving param macros
Date: Wed,  1 Jul 2026 14:20:05 +0200
Message-ID: <20260701122008.19509-10-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-318464-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunfeng.yun@mediatek.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:justin.yeh@mediatek.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DFA66ED638

Use FIELD_PREP_CONST and add nicer definitions/macros to build the
default driving parameters for the PHY and, while at it, also add
comments explaining what they are supposed to set in the PHY.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 86 +++++++++++++++----------------
 1 file changed, 41 insertions(+), 45 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index b1b526ee44eb..bda262d437ed 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -85,51 +85,47 @@
  * [2,5,8]: Swing 2 Pre1 and Swing 3 Pre0
  */
 #define PHYD_DIG_NUM_DRV_PARA_REGS	9
-#define XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT	BIT(4)
-#define XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT	(BIT(10) | BIT(12))
-#define XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT	GENMASK(20, 19)
-#define XTP_LN_TX_LCTXC0_SW0_PRE3_DEFAULT	GENMASK(29, 29)
-#define MT8195_DRIVING_PARAM_3_DEFAULT	(XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT | \
-				 XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT | \
-				 XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT | \
-				 XTP_LN_TX_LCTXC0_SW0_PRE3_DEFAULT)
-
-#define XTP_LN_TX_LCTXC0_SW1_PRE0_DEFAULT	GENMASK(4, 3)
-#define XTP_LN_TX_LCTXC0_SW1_PRE1_DEFAULT	GENMASK(12, 9)
-#define XTP_LN_TX_LCTXC0_SW1_PRE2_DEFAULT	(BIT(18) | BIT(21))
-#define XTP_LN_TX_LCTXC0_SW2_PRE0_DEFAULT	GENMASK(29, 29)
-#define MT8195_DRIVING_PARAM_4_DEFAULT	(XTP_LN_TX_LCTXC0_SW1_PRE0_DEFAULT | \
-				 XTP_LN_TX_LCTXC0_SW1_PRE1_DEFAULT | \
-				 XTP_LN_TX_LCTXC0_SW1_PRE2_DEFAULT | \
-				 XTP_LN_TX_LCTXC0_SW2_PRE0_DEFAULT)
-
-#define XTP_LN_TX_LCTXC0_SW2_PRE1_DEFAULT	(BIT(3) | BIT(5))
-#define XTP_LN_TX_LCTXC0_SW3_PRE0_DEFAULT	GENMASK(13, 12)
-#define MT8195_DRIVING_PARAM_5_DEFAULT	(XTP_LN_TX_LCTXC0_SW2_PRE1_DEFAULT | \
-				 XTP_LN_TX_LCTXC0_SW3_PRE0_DEFAULT)
-
-#define XTP_LN_TX_LCTXCP1_SW0_PRE0_DEFAULT	0
-#define XTP_LN_TX_LCTXCP1_SW0_PRE1_DEFAULT	GENMASK(10, 10)
-#define XTP_LN_TX_LCTXCP1_SW0_PRE2_DEFAULT	GENMASK(19, 19)
-#define XTP_LN_TX_LCTXCP1_SW0_PRE3_DEFAULT	GENMASK(28, 28)
-#define MT8195_DRIVING_PARAM_6_DEFAULT	(XTP_LN_TX_LCTXCP1_SW0_PRE0_DEFAULT | \
-				 XTP_LN_TX_LCTXCP1_SW0_PRE1_DEFAULT | \
-				 XTP_LN_TX_LCTXCP1_SW0_PRE2_DEFAULT | \
-				 XTP_LN_TX_LCTXCP1_SW0_PRE3_DEFAULT)
-
-#define XTP_LN_TX_LCTXCP1_SW1_PRE0_DEFAULT	0
-#define XTP_LN_TX_LCTXCP1_SW1_PRE1_DEFAULT	GENMASK(10, 9)
-#define XTP_LN_TX_LCTXCP1_SW1_PRE2_DEFAULT	GENMASK(19, 18)
-#define XTP_LN_TX_LCTXCP1_SW2_PRE0_DEFAULT	0
-#define MT8195_DRIVING_PARAM_7_DEFAULT	(XTP_LN_TX_LCTXCP1_SW1_PRE0_DEFAULT | \
-				 XTP_LN_TX_LCTXCP1_SW1_PRE1_DEFAULT | \
-				 XTP_LN_TX_LCTXCP1_SW1_PRE2_DEFAULT | \
-				 XTP_LN_TX_LCTXCP1_SW2_PRE0_DEFAULT)
-
-#define XTP_LN_TX_LCTXCP1_SW2_PRE1_DEFAULT	GENMASK(3, 3)
-#define XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT	0
-#define MT8195_DRIVING_PARAM_8_DEFAULT	(XTP_LN_TX_LCTXCP1_SW2_PRE1_DEFAULT | \
-				 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
+#define XTP_LN_TX_LCTXC_SW0_PRE0	GENMASK(5, 0)
+#define XTP_LN_TX_LCTXC_SW0_PRE1	GENMASK(13, 8)
+#define XTP_LN_TX_LCTXC_SW0_PRE2	GENMASK(21, 16)
+#define XTP_LN_TX_LCTXC_SW0_PRE3	GENMASK(29, 24)
+
+#define XTP_LN_TX_LCTXC_SW1_PRE0	GENMASK(5, 0)
+#define XTP_LN_TX_LCTXC_SW1_PRE1	GENMASK(13, 8)
+#define XTP_LN_TX_LCTXC_SW1_PRE2	GENMASK(21, 16)
+#define XTP_LN_TX_LCTXC_SW2_PRE0	GENMASK(29, 24)
+
+#define XTP_LN_TX_LCTXC_SW2_PRE1	GENMASK(5, 0)
+#define XTP_LN_TX_LCTXC_SW3_PRE0	GENMASK(13, 8)
+
+#define BUILD_DRIVING_PARAM_0(sw0_pre0, sw0_pre1, sw0_pre2, sw0_pre3) (	\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW0_PRE0, sw0_pre0) |		\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW0_PRE1, sw0_pre1) |		\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW0_PRE2, sw0_pre2) |		\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW0_PRE3, sw0_pre3)		\
+)
+
+#define BUILD_DRIVING_PARAM_12(sw1_pre0, sw1_pre1, sw1_pre2, sw2_pre0) (\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW1_PRE0, sw1_pre0) |		\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW1_PRE1, sw1_pre1) |		\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW1_PRE2, sw1_pre2) |		\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW2_PRE0, sw2_pre0)		\
+)
+
+#define BUILD_DRIVING_PARAM_23(sw2_pre1, sw3_pre0) (			\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW2_PRE1, sw2_pre1) |		\
+	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW3_PRE0, sw3_pre0)		\
+)
+
+/* MT8195: Logic State Change Point (LC TX C) */
+#define MT8195_DRIVING_PARAM_3_DEFAULT	BUILD_DRIVING_PARAM_0( 16, 20, 24, 32)
+#define MT8195_DRIVING_PARAM_4_DEFAULT	BUILD_DRIVING_PARAM_12(24, 30, 60, 32)
+#define MT8195_DRIVING_PARAM_5_DEFAULT	BUILD_DRIVING_PARAM_23(8, 48)
+
+/* MT8195: Positive Edge (LC TX CP) */
+#define MT8195_DRIVING_PARAM_6_DEFAULT	BUILD_DRIVING_PARAM_0( 0, 4, 8, 16)
+#define MT8195_DRIVING_PARAM_7_DEFAULT	BUILD_DRIVING_PARAM_12(0, 6, 12, 0)
+#define MT8195_DRIVING_PARAM_8_DEFAULT	BUILD_DRIVING_PARAM_23(8, 0)
 
 enum mtk_dp_phya_ana_glb_regidx {
 	DP_PHYA_GLB_BIAS_GEN_0,
-- 
2.54.0


