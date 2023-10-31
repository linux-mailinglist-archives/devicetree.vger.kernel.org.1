Return-Path: <devicetree+bounces-13070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFE97DC776
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:40:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E5011C20B9F
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61C681097E;
	Tue, 31 Oct 2023 07:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="S9r+7tVw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8FC10A01
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:39:51 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDAB8C2;
	Tue, 31 Oct 2023 00:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=1t0aC6p1rX/cgICp4/Fm+wIKexgsCM6hAYTWwQF81DY=; b=S9r+7tVw0mchgsJfuG/MRNh9nW
	WF1Yusmd1ae8X2hxaV/PqBY3HIL+1CHa9/hUhzNMglGR1HmJl+unDUU+tcHgS2vweb51HC8TIVL+a
	c1HXttvQmzB1mFvCQp8J1gM0npuAtR8lAaNRlErOAAA5Qriuej4pJqTfuWj6zs9Qf19iT5dHjM3S8
	b7Q/EQpVAQXh8ZG5yyXmVvA5unB2L5NZyjDMGdRCbpgASLLJCvJ/x+hR8zz9N/Kjl807Kilw+6qCT
	Q6f6oQCke99v/UJyRUOrmq7z21pA4tVEOguJPeJ8zYyYcbO67t0U5snCoMLEFvsejdpFbO4/agiTF
	y0rN1HVQ==;
Received: from 251.48.60.213.dynamic.reverse-mundo-r.com ([213.60.48.251] helo=vega.mundo-R.com)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1qxjLV-00FHU5-P1; Tue, 31 Oct 2023 08:39:29 +0100
From: Iago Toral Quiroga <itoral@igalia.com>
To: dri-devel@lists.freedesktop.org,
	Maira Canal <mcanal@igalia.com>
Cc: Emma Anholt <emma@anholt.net>,
	Melissa Wen <mwen@igalia.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel-dev@igalia.com,
	Iago Toral Quiroga <itoral@igalia.com>
Subject: [PATCH v3 2/4] drm/v3d: fix up register addresses for V3D 7.x
Date: Tue, 31 Oct 2023 08:38:57 +0100
Message-Id: <20231031073859.25298-3-itoral@igalia.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231031073859.25298-1-itoral@igalia.com>
References: <20231031073859.25298-1-itoral@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch updates a number of register addresses that have
been changed in Raspberry Pi 5 (V3D 7.1) and updates the
code to use the corresponding registers and addresses based
on the actual V3D version.

Signed-off-by: Iago Toral Quiroga <itoral@igalia.com>
Reviewed-by: Maíra Canal <mcanal@igalia.com>
---
 drivers/gpu/drm/v3d/v3d_debugfs.c | 178 +++++++++++++++++-------------
 drivers/gpu/drm/v3d/v3d_gem.c     |   4 +-
 drivers/gpu/drm/v3d/v3d_irq.c     |  46 ++++----
 drivers/gpu/drm/v3d/v3d_regs.h    |  94 +++++++++-------
 drivers/gpu/drm/v3d/v3d_sched.c   |  38 ++++---
 5 files changed, 204 insertions(+), 156 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_debugfs.c b/drivers/gpu/drm/v3d/v3d_debugfs.c
index 330669f51fa7..f843a50d5dce 100644
--- a/drivers/gpu/drm/v3d/v3d_debugfs.c
+++ b/drivers/gpu/drm/v3d/v3d_debugfs.c
@@ -12,69 +12,83 @@
 #include "v3d_drv.h"
 #include "v3d_regs.h"
 
-#define REGDEF(reg) { reg, #reg }
+#define REGDEF(min_ver, max_ver, reg) { min_ver, max_ver, reg, #reg }
 struct v3d_reg_def {
+	u32 min_ver;
+	u32 max_ver;
 	u32 reg;
 	const char *name;
 };
 
 static const struct v3d_reg_def v3d_hub_reg_defs[] = {
-	REGDEF(V3D_HUB_AXICFG),
-	REGDEF(V3D_HUB_UIFCFG),
-	REGDEF(V3D_HUB_IDENT0),
-	REGDEF(V3D_HUB_IDENT1),
-	REGDEF(V3D_HUB_IDENT2),
-	REGDEF(V3D_HUB_IDENT3),
-	REGDEF(V3D_HUB_INT_STS),
-	REGDEF(V3D_HUB_INT_MSK_STS),
-
-	REGDEF(V3D_MMU_CTL),
-	REGDEF(V3D_MMU_VIO_ADDR),
-	REGDEF(V3D_MMU_VIO_ID),
-	REGDEF(V3D_MMU_DEBUG_INFO),
+	REGDEF(33, 42, V3D_HUB_AXICFG),
+	REGDEF(33, 71, V3D_HUB_UIFCFG),
+	REGDEF(33, 71, V3D_HUB_IDENT0),
+	REGDEF(33, 71, V3D_HUB_IDENT1),
+	REGDEF(33, 71, V3D_HUB_IDENT2),
+	REGDEF(33, 71, V3D_HUB_IDENT3),
+	REGDEF(33, 71, V3D_HUB_INT_STS),
+	REGDEF(33, 71, V3D_HUB_INT_MSK_STS),
+
+	REGDEF(33, 71, V3D_MMU_CTL),
+	REGDEF(33, 71, V3D_MMU_VIO_ADDR),
+	REGDEF(33, 71, V3D_MMU_VIO_ID),
+	REGDEF(33, 71, V3D_MMU_DEBUG_INFO),
+
+	REGDEF(71, 71, V3D_GMP_STATUS(71)),
+	REGDEF(71, 71, V3D_GMP_CFG(71)),
+	REGDEF(71, 71, V3D_GMP_VIO_ADDR(71)),
 };
 
 static const struct v3d_reg_def v3d_gca_reg_defs[] = {
-	REGDEF(V3D_GCA_SAFE_SHUTDOWN),
-	REGDEF(V3D_GCA_SAFE_SHUTDOWN_ACK),
+	REGDEF(33, 33, V3D_GCA_SAFE_SHUTDOWN),
+	REGDEF(33, 33, V3D_GCA_SAFE_SHUTDOWN_ACK),
 };
 
 static const struct v3d_reg_def v3d_core_reg_defs[] = {
-	REGDEF(V3D_CTL_IDENT0),
-	REGDEF(V3D_CTL_IDENT1),
-	REGDEF(V3D_CTL_IDENT2),
-	REGDEF(V3D_CTL_MISCCFG),
-	REGDEF(V3D_CTL_INT_STS),
-	REGDEF(V3D_CTL_INT_MSK_STS),
-	REGDEF(V3D_CLE_CT0CS),
-	REGDEF(V3D_CLE_CT0CA),
-	REGDEF(V3D_CLE_CT0EA),
-	REGDEF(V3D_CLE_CT1CS),
-	REGDEF(V3D_CLE_CT1CA),
-	REGDEF(V3D_CLE_CT1EA),
-
-	REGDEF(V3D_PTB_BPCA),
-	REGDEF(V3D_PTB_BPCS),
-
-	REGDEF(V3D_GMP_STATUS),
-	REGDEF(V3D_GMP_CFG),
-	REGDEF(V3D_GMP_VIO_ADDR),
-
-	REGDEF(V3D_ERR_FDBGO),
-	REGDEF(V3D_ERR_FDBGB),
-	REGDEF(V3D_ERR_FDBGS),
-	REGDEF(V3D_ERR_STAT),
+	REGDEF(33, 71, V3D_CTL_IDENT0),
+	REGDEF(33, 71, V3D_CTL_IDENT1),
+	REGDEF(33, 71, V3D_CTL_IDENT2),
+	REGDEF(33, 71, V3D_CTL_MISCCFG),
+	REGDEF(33, 71, V3D_CTL_INT_STS),
+	REGDEF(33, 71, V3D_CTL_INT_MSK_STS),
+	REGDEF(33, 71, V3D_CLE_CT0CS),
+	REGDEF(33, 71, V3D_CLE_CT0CA),
+	REGDEF(33, 71, V3D_CLE_CT0EA),
+	REGDEF(33, 71, V3D_CLE_CT1CS),
+	REGDEF(33, 71, V3D_CLE_CT1CA),
+	REGDEF(33, 71, V3D_CLE_CT1EA),
+
+	REGDEF(33, 71, V3D_PTB_BPCA),
+	REGDEF(33, 71, V3D_PTB_BPCS),
+
+	REGDEF(33, 41, V3D_GMP_STATUS(33)),
+	REGDEF(33, 41, V3D_GMP_CFG(33)),
+	REGDEF(33, 41, V3D_GMP_VIO_ADDR(33)),
+
+	REGDEF(33, 71, V3D_ERR_FDBGO),
+	REGDEF(33, 71, V3D_ERR_FDBGB),
+	REGDEF(33, 71, V3D_ERR_FDBGS),
+	REGDEF(33, 71, V3D_ERR_STAT),
 };
 
 static const struct v3d_reg_def v3d_csd_reg_defs[] = {
-	REGDEF(V3D_CSD_STATUS),
-	REGDEF(V3D_CSD_CURRENT_CFG0),
-	REGDEF(V3D_CSD_CURRENT_CFG1),
-	REGDEF(V3D_CSD_CURRENT_CFG2),
-	REGDEF(V3D_CSD_CURRENT_CFG3),
-	REGDEF(V3D_CSD_CURRENT_CFG4),
-	REGDEF(V3D_CSD_CURRENT_CFG5),
-	REGDEF(V3D_CSD_CURRENT_CFG6),
+	REGDEF(41, 71, V3D_CSD_STATUS),
+	REGDEF(41, 41, V3D_CSD_CURRENT_CFG0(41)),
+	REGDEF(41, 41, V3D_CSD_CURRENT_CFG1(41)),
+	REGDEF(41, 41, V3D_CSD_CURRENT_CFG2(41)),
+	REGDEF(41, 41, V3D_CSD_CURRENT_CFG3(41)),
+	REGDEF(41, 41, V3D_CSD_CURRENT_CFG4(41)),
+	REGDEF(41, 41, V3D_CSD_CURRENT_CFG5(41)),
+	REGDEF(41, 41, V3D_CSD_CURRENT_CFG6(41)),
+	REGDEF(71, 71, V3D_CSD_CURRENT_CFG0(71)),
+	REGDEF(71, 71, V3D_CSD_CURRENT_CFG1(71)),
+	REGDEF(71, 71, V3D_CSD_CURRENT_CFG2(71)),
+	REGDEF(71, 71, V3D_CSD_CURRENT_CFG3(71)),
+	REGDEF(71, 71, V3D_CSD_CURRENT_CFG4(71)),
+	REGDEF(71, 71, V3D_CSD_CURRENT_CFG5(71)),
+	REGDEF(71, 71, V3D_CSD_CURRENT_CFG6(71)),
+	REGDEF(71, 71, V3D_V7_CSD_CURRENT_CFG7),
 };
 
 static int v3d_v3d_debugfs_regs(struct seq_file *m, void *unused)
@@ -85,38 +99,41 @@ static int v3d_v3d_debugfs_regs(struct seq_file *m, void *unused)
 	int i, core;
 
 	for (i = 0; i < ARRAY_SIZE(v3d_hub_reg_defs); i++) {
-		seq_printf(m, "%s (0x%04x): 0x%08x\n",
-			   v3d_hub_reg_defs[i].name, v3d_hub_reg_defs[i].reg,
-			   V3D_READ(v3d_hub_reg_defs[i].reg));
+		const struct v3d_reg_def *def = &v3d_hub_reg_defs[i];
+
+		if (v3d->ver >= def->min_ver && v3d->ver <= def->max_ver) {
+			seq_printf(m, "%s (0x%04x): 0x%08x\n",
+				   def->name, def->reg, V3D_READ(def->reg));
+		}
 	}
 
-	if (v3d->ver < 41) {
-		for (i = 0; i < ARRAY_SIZE(v3d_gca_reg_defs); i++) {
+	for (i = 0; i < ARRAY_SIZE(v3d_gca_reg_defs); i++) {
+		const struct v3d_reg_def *def = &v3d_gca_reg_defs[i];
+
+		if (v3d->ver >= def->min_ver && v3d->ver <= def->max_ver) {
 			seq_printf(m, "%s (0x%04x): 0x%08x\n",
-				   v3d_gca_reg_defs[i].name,
-				   v3d_gca_reg_defs[i].reg,
-				   V3D_GCA_READ(v3d_gca_reg_defs[i].reg));
+				   def->name, def->reg, V3D_GCA_READ(def->reg));
 		}
 	}
 
 	for (core = 0; core < v3d->cores; core++) {
 		for (i = 0; i < ARRAY_SIZE(v3d_core_reg_defs); i++) {
-			seq_printf(m, "core %d %s (0x%04x): 0x%08x\n",
-				   core,
-				   v3d_core_reg_defs[i].name,
-				   v3d_core_reg_defs[i].reg,
-				   V3D_CORE_READ(core,
-						 v3d_core_reg_defs[i].reg));
+			const struct v3d_reg_def *def = &v3d_core_reg_defs[i];
+
+			if (v3d->ver >= def->min_ver && v3d->ver <= def->max_ver) {
+				seq_printf(m, "core %d %s (0x%04x): 0x%08x\n",
+					   core, def->name, def->reg,
+					   V3D_CORE_READ(core, def->reg));
+			}
 		}
 
-		if (v3d_has_csd(v3d)) {
-			for (i = 0; i < ARRAY_SIZE(v3d_csd_reg_defs); i++) {
+		for (i = 0; i < ARRAY_SIZE(v3d_csd_reg_defs); i++) {
+			const struct v3d_reg_def *def = &v3d_csd_reg_defs[i];
+
+			if (v3d->ver >= def->min_ver && v3d->ver <= def->max_ver) {
 				seq_printf(m, "core %d %s (0x%04x): 0x%08x\n",
-					   core,
-					   v3d_csd_reg_defs[i].name,
-					   v3d_csd_reg_defs[i].reg,
-					   V3D_CORE_READ(core,
-							 v3d_csd_reg_defs[i].reg));
+					   core, def->name, def->reg,
+					   V3D_CORE_READ(core, def->reg));
 			}
 		}
 	}
@@ -147,8 +164,10 @@ static int v3d_v3d_debugfs_ident(struct seq_file *m, void *unused)
 		   str_yes_no(ident2 & V3D_HUB_IDENT2_WITH_MMU));
 	seq_printf(m, "TFU:        %s\n",
 		   str_yes_no(ident1 & V3D_HUB_IDENT1_WITH_TFU));
-	seq_printf(m, "TSY:        %s\n",
-		   str_yes_no(ident1 & V3D_HUB_IDENT1_WITH_TSY));
+	if (v3d->ver <= 42) {
+		seq_printf(m, "TSY:        %s\n",
+			   str_yes_no(ident1 & V3D_HUB_IDENT1_WITH_TSY));
+	}
 	seq_printf(m, "MSO:        %s\n",
 		   str_yes_no(ident1 & V3D_HUB_IDENT1_WITH_MSO));
 	seq_printf(m, "L3C:        %s (%dkb)\n",
@@ -177,10 +196,14 @@ static int v3d_v3d_debugfs_ident(struct seq_file *m, void *unused)
 		seq_printf(m, "  QPUs:         %d\n", nslc * qups);
 		seq_printf(m, "  Semaphores:   %d\n",
 			   V3D_GET_FIELD(ident1, V3D_IDENT1_NSEM));
-		seq_printf(m, "  BCG int:      %d\n",
-			   (ident2 & V3D_IDENT2_BCG_INT) != 0);
-		seq_printf(m, "  Override TMU: %d\n",
-			   (misccfg & V3D_MISCCFG_OVRTMUOUT) != 0);
+		if (v3d->ver <= 42) {
+			seq_printf(m, "  BCG int:      %d\n",
+				   (ident2 & V3D_IDENT2_BCG_INT) != 0);
+		}
+		if (v3d->ver < 40) {
+			seq_printf(m, "  Override TMU: %d\n",
+				   (misccfg & V3D_MISCCFG_OVRTMUOUT) != 0);
+		}
 	}
 
 	return 0;
@@ -212,14 +235,15 @@ static int v3d_measure_clock(struct seq_file *m, void *unused)
 	int measure_ms = 1000;
 
 	if (v3d->ver >= 40) {
+		int cycle_count_reg = V3D_PCTR_CYCLE_COUNT(v3d->ver);
 		V3D_CORE_WRITE(core, V3D_V4_PCTR_0_SRC_0_3,
-			       V3D_SET_FIELD(V3D_PCTR_CYCLE_COUNT,
+			       V3D_SET_FIELD(cycle_count_reg,
 					     V3D_PCTR_S0));
 		V3D_CORE_WRITE(core, V3D_V4_PCTR_0_CLR, 1);
 		V3D_CORE_WRITE(core, V3D_V4_PCTR_0_EN, 1);
 	} else {
 		V3D_CORE_WRITE(core, V3D_V3_PCTR_0_PCTRS0,
-			       V3D_PCTR_CYCLE_COUNT);
+			       V3D_PCTR_CYCLE_COUNT(v3d->ver));
 		V3D_CORE_WRITE(core, V3D_V3_PCTR_0_CLR, 1);
 		V3D_CORE_WRITE(core, V3D_V3_PCTR_0_EN,
 			       V3D_V3_PCTR_0_EN_ENABLE |
diff --git a/drivers/gpu/drm/v3d/v3d_gem.c b/drivers/gpu/drm/v3d/v3d_gem.c
index afa7d170d1ff..5688d46d30e6 100644
--- a/drivers/gpu/drm/v3d/v3d_gem.c
+++ b/drivers/gpu/drm/v3d/v3d_gem.c
@@ -47,9 +47,9 @@ v3d_init_hw_state(struct v3d_dev *v3d)
 static void
 v3d_idle_axi(struct v3d_dev *v3d, int core)
 {
-	V3D_CORE_WRITE(core, V3D_GMP_CFG, V3D_GMP_CFG_STOP_REQ);
+	V3D_CORE_WRITE(core, V3D_GMP_CFG(v3d->ver), V3D_GMP_CFG_STOP_REQ);
 
-	if (wait_for((V3D_CORE_READ(core, V3D_GMP_STATUS) &
+	if (wait_for((V3D_CORE_READ(core, V3D_GMP_STATUS(v3d->ver)) &
 		      (V3D_GMP_STATUS_RD_COUNT_MASK |
 		       V3D_GMP_STATUS_WR_COUNT_MASK |
 		       V3D_GMP_STATUS_CFG_BUSY)) == 0, 100)) {
diff --git a/drivers/gpu/drm/v3d/v3d_irq.c b/drivers/gpu/drm/v3d/v3d_irq.c
index e714d5318f30..9705e0cb576d 100644
--- a/drivers/gpu/drm/v3d/v3d_irq.c
+++ b/drivers/gpu/drm/v3d/v3d_irq.c
@@ -19,16 +19,17 @@
 #include "v3d_regs.h"
 #include "v3d_trace.h"
 
-#define V3D_CORE_IRQS ((u32)(V3D_INT_OUTOMEM |	\
-			     V3D_INT_FLDONE |	\
-			     V3D_INT_FRDONE |	\
-			     V3D_INT_CSDDONE |	\
-			     V3D_INT_GMPV))
-
-#define V3D_HUB_IRQS ((u32)(V3D_HUB_INT_MMU_WRV |	\
-			    V3D_HUB_INT_MMU_PTI |	\
-			    V3D_HUB_INT_MMU_CAP |	\
-			    V3D_HUB_INT_TFUC))
+#define V3D_CORE_IRQS(ver) ((u32)(V3D_INT_OUTOMEM |	\
+				  V3D_INT_FLDONE |	\
+				  V3D_INT_FRDONE |	\
+				  V3D_INT_CSDDONE(ver) |	\
+				  (ver < 71 ? V3D_INT_GMPV : 0)))
+
+#define V3D_HUB_IRQS(ver) ((u32)(V3D_HUB_INT_MMU_WRV |	\
+				 V3D_HUB_INT_MMU_PTI |	\
+				 V3D_HUB_INT_MMU_CAP |	\
+				 V3D_HUB_INT_TFUC |		\
+				 (ver >= 71 ? V3D_V7_HUB_INT_GMPV : 0)))
 
 static irqreturn_t
 v3d_hub_irq(int irq, void *arg);
@@ -115,7 +116,7 @@ v3d_irq(int irq, void *arg)
 		status = IRQ_HANDLED;
 	}
 
-	if (intsts & V3D_INT_CSDDONE) {
+	if (intsts & V3D_INT_CSDDONE(v3d->ver)) {
 		struct v3d_fence *fence =
 			to_v3d_fence(v3d->csd_job->base.irq_fence);
 
@@ -127,7 +128,7 @@ v3d_irq(int irq, void *arg)
 	/* We shouldn't be triggering these if we have GMP in
 	 * always-allowed mode.
 	 */
-	if (intsts & V3D_INT_GMPV)
+	if (v3d->ver < 71 && (intsts & V3D_INT_GMPV))
 		dev_err(v3d->drm.dev, "GMP violation\n");
 
 	/* V3D 4.2 wires the hub and core IRQs together, so if we &
@@ -197,6 +198,11 @@ v3d_hub_irq(int irq, void *arg)
 		status = IRQ_HANDLED;
 	}
 
+	if (v3d->ver >= 71 && (intsts & V3D_V7_HUB_INT_GMPV)) {
+		dev_err(v3d->drm.dev, "GMP Violation\n");
+		status = IRQ_HANDLED;
+	}
+
 	return status;
 }
 
@@ -211,8 +217,8 @@ v3d_irq_init(struct v3d_dev *v3d)
 	 * for us.
 	 */
 	for (core = 0; core < v3d->cores; core++)
-		V3D_CORE_WRITE(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS);
-	V3D_WRITE(V3D_HUB_INT_CLR, V3D_HUB_IRQS);
+		V3D_CORE_WRITE(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS(v3d->ver));
+	V3D_WRITE(V3D_HUB_INT_CLR, V3D_HUB_IRQS(v3d->ver));
 
 	irq1 = platform_get_irq_optional(v3d_to_pdev(v3d), 1);
 	if (irq1 == -EPROBE_DEFER)
@@ -256,12 +262,12 @@ v3d_irq_enable(struct v3d_dev *v3d)
 
 	/* Enable our set of interrupts, masking out any others. */
 	for (core = 0; core < v3d->cores; core++) {
-		V3D_CORE_WRITE(core, V3D_CTL_INT_MSK_SET, ~V3D_CORE_IRQS);
-		V3D_CORE_WRITE(core, V3D_CTL_INT_MSK_CLR, V3D_CORE_IRQS);
+		V3D_CORE_WRITE(core, V3D_CTL_INT_MSK_SET, ~V3D_CORE_IRQS(v3d->ver));
+		V3D_CORE_WRITE(core, V3D_CTL_INT_MSK_CLR, V3D_CORE_IRQS(v3d->ver));
 	}
 
-	V3D_WRITE(V3D_HUB_INT_MSK_SET, ~V3D_HUB_IRQS);
-	V3D_WRITE(V3D_HUB_INT_MSK_CLR, V3D_HUB_IRQS);
+	V3D_WRITE(V3D_HUB_INT_MSK_SET, ~V3D_HUB_IRQS(v3d->ver));
+	V3D_WRITE(V3D_HUB_INT_MSK_CLR, V3D_HUB_IRQS(v3d->ver));
 }
 
 void
@@ -276,8 +282,8 @@ v3d_irq_disable(struct v3d_dev *v3d)
 
 	/* Clear any pending interrupts we might have left. */
 	for (core = 0; core < v3d->cores; core++)
-		V3D_CORE_WRITE(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS);
-	V3D_WRITE(V3D_HUB_INT_CLR, V3D_HUB_IRQS);
+		V3D_CORE_WRITE(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS(v3d->ver));
+	V3D_WRITE(V3D_HUB_INT_CLR, V3D_HUB_IRQS(v3d->ver));
 
 	cancel_work_sync(&v3d->overflow_mem_work);
 }
diff --git a/drivers/gpu/drm/v3d/v3d_regs.h b/drivers/gpu/drm/v3d/v3d_regs.h
index 3663e0d6bf76..1b1a62ad9585 100644
--- a/drivers/gpu/drm/v3d/v3d_regs.h
+++ b/drivers/gpu/drm/v3d/v3d_regs.h
@@ -57,6 +57,7 @@
 #define V3D_HUB_INT_MSK_STS                            0x0005c
 #define V3D_HUB_INT_MSK_SET                            0x00060
 #define V3D_HUB_INT_MSK_CLR                            0x00064
+# define V3D_V7_HUB_INT_GMPV                           BIT(6)
 # define V3D_HUB_INT_MMU_WRV                           BIT(5)
 # define V3D_HUB_INT_MMU_PTI                           BIT(4)
 # define V3D_HUB_INT_MMU_CAP                           BIT(3)
@@ -64,6 +65,7 @@
 # define V3D_HUB_INT_TFUC                              BIT(1)
 # define V3D_HUB_INT_TFUF                              BIT(0)
 
+/* GCA registers only exist in V3D < 41 */
 #define V3D_GCA_CACHE_CTRL                             0x0000c
 # define V3D_GCA_CACHE_CTRL_FLUSH                      BIT(0)
 
@@ -86,7 +88,8 @@
 # define V3D_TOP_GR_BRIDGE_SW_INIT_1                   0x0000c
 # define V3D_TOP_GR_BRIDGE_SW_INIT_1_V3D_CLK_108_SW_INIT BIT(0)
 
-#define V3D_TFU_CS                                     0x00400
+#define V3D_TFU_CS(ver) ((ver >= 71) ? 0x00700 : 0x00400)
+
 /* Stops current job, empties input fifo. */
 # define V3D_TFU_CS_TFURST                             BIT(31)
 # define V3D_TFU_CS_CVTCT_MASK                         V3D_MASK(23, 16)
@@ -95,7 +98,7 @@
 # define V3D_TFU_CS_NFREE_SHIFT                        8
 # define V3D_TFU_CS_BUSY                               BIT(0)
 
-#define V3D_TFU_SU                                     0x00404
+#define V3D_TFU_SU(ver) ((ver >= 71) ? 0x00704 : 0x00404)
 /* Interrupt when FINTTHR input slots are free (0 = disabled) */
 # define V3D_TFU_SU_FINTTHR_MASK                       V3D_MASK(13, 8)
 # define V3D_TFU_SU_FINTTHR_SHIFT                      8
@@ -106,39 +109,42 @@
 # define V3D_TFU_SU_THROTTLE_MASK                      V3D_MASK(1, 0)
 # define V3D_TFU_SU_THROTTLE_SHIFT                     0
 
-#define V3D_TFU_ICFG                                   0x00408
+#define V3D_TFU_ICFG(ver) ((ver >= 71) ? 0x00708 : 0x00408)
 /* Interrupt when the conversion is complete. */
 # define V3D_TFU_ICFG_IOC                              BIT(0)
 
 /* Input Image Address */
-#define V3D_TFU_IIA                                    0x0040c
+#define V3D_TFU_IIA(ver) ((ver >= 71) ? 0x0070c : 0x0040c)
 /* Input Chroma Address */
-#define V3D_TFU_ICA                                    0x00410
+#define V3D_TFU_ICA(ver) ((ver >= 71) ? 0x00710 : 0x00410)
 /* Input Image Stride */
-#define V3D_TFU_IIS                                    0x00414
+#define V3D_TFU_IIS(ver) ((ver >= 71) ? 0x00714 : 0x00414)
 /* Input Image U-Plane Address */
-#define V3D_TFU_IUA                                    0x00418
+#define V3D_TFU_IUA(ver) ((ver >= 71) ? 0x00718 : 0x00418)
+/* Image output config (VD 7.x only) */
+#define V3D_V7_TFU_IOC                                 0x0071c
 /* Output Image Address */
-#define V3D_TFU_IOA                                    0x0041c
+#define V3D_TFU_IOA(ver) ((ver >= 71) ? 0x00720 : 0x0041c)
 /* Image Output Size */
-#define V3D_TFU_IOS                                    0x00420
+#define V3D_TFU_IOS(ver) ((ver >= 71) ? 0x00724 : 0x00420)
 /* TFU YUV Coefficient 0 */
-#define V3D_TFU_COEF0                                  0x00424
-/* Use these regs instead of the defaults. */
+#define V3D_TFU_COEF0(ver) ((ver >= 71) ? 0x00728 : 0x00424)
+/* Use these regs instead of the defaults (V3D 4.x only) */
 # define V3D_TFU_COEF0_USECOEF                         BIT(31)
 /* TFU YUV Coefficient 1 */
-#define V3D_TFU_COEF1                                  0x00428
+#define V3D_TFU_COEF1(ver) ((ver >= 71) ? 0x0072c : 0x00428)
 /* TFU YUV Coefficient 2 */
-#define V3D_TFU_COEF2                                  0x0042c
+#define V3D_TFU_COEF2(ver) ((ver >= 71) ? 0x00730 : 0x0042c)
 /* TFU YUV Coefficient 3 */
-#define V3D_TFU_COEF3                                  0x00430
+#define V3D_TFU_COEF3(ver) ((ver >= 71) ? 0x00734 : 0x00430)
 
+/* V3D 4.x only */
 #define V3D_TFU_CRC                                    0x00434
 
 /* Per-MMU registers. */
 
 #define V3D_MMUC_CONTROL                               0x01000
-# define V3D_MMUC_CONTROL_CLEAR                        BIT(3)
+#define V3D_MMUC_CONTROL_CLEAR(ver) ((ver >= 71) ? BIT(11) : BIT(3))
 # define V3D_MMUC_CONTROL_FLUSHING                     BIT(2)
 # define V3D_MMUC_CONTROL_FLUSH                        BIT(1)
 # define V3D_MMUC_CONTROL_ENABLE                       BIT(0)
@@ -246,7 +252,6 @@
 
 #define V3D_CTL_L2TCACTL                               0x00030
 # define V3D_L2TCACTL_TMUWCF                           BIT(8)
-# define V3D_L2TCACTL_L2T_NO_WM                        BIT(4)
 /* Invalidates cache lines. */
 # define V3D_L2TCACTL_FLM_FLUSH                        0
 /* Removes cachelines without writing dirty lines back. */
@@ -267,8 +272,8 @@
 #define V3D_CTL_INT_MSK_CLR                            0x00064
 # define V3D_INT_QPU_MASK                              V3D_MASK(27, 16)
 # define V3D_INT_QPU_SHIFT                             16
-# define V3D_INT_CSDDONE                               BIT(7)
-# define V3D_INT_PCTR                                  BIT(6)
+#define V3D_INT_CSDDONE(ver) ((ver >= 71) ? BIT(6) : BIT(7))
+#define V3D_INT_PCTR(ver) ((ver >= 71) ? BIT(5) : BIT(6))
 # define V3D_INT_GMPV                                  BIT(5)
 # define V3D_INT_TRFB                                  BIT(4)
 # define V3D_INT_SPILLUSE                              BIT(3)
@@ -350,21 +355,25 @@
 #define V3D_V4_PCTR_0_SRC_X(x)                         (V3D_V4_PCTR_0_SRC_0_3 + \
 							4 * (x))
 # define V3D_PCTR_S0_MASK                              V3D_MASK(6, 0)
+# define V3D_V7_PCTR_S0_MASK                           V3D_MASK(7, 0)
 # define V3D_PCTR_S0_SHIFT                             0
 # define V3D_PCTR_S1_MASK                              V3D_MASK(14, 8)
+# define V3D_V7_PCTR_S1_MASK                           V3D_MASK(15, 8)
 # define V3D_PCTR_S1_SHIFT                             8
 # define V3D_PCTR_S2_MASK                              V3D_MASK(22, 16)
+# define V3D_V7_PCTR_S2_MASK                           V3D_MASK(23, 16)
 # define V3D_PCTR_S2_SHIFT                             16
 # define V3D_PCTR_S3_MASK                              V3D_MASK(30, 24)
+# define V3D_V7_PCTR_S3_MASK                           V3D_MASK(31, 24)
 # define V3D_PCTR_S3_SHIFT                             24
-# define V3D_PCTR_CYCLE_COUNT                          32
+#define V3D_PCTR_CYCLE_COUNT(ver) ((ver >= 71) ? 0 : 32)
 
 /* Output values of the counters. */
 #define V3D_PCTR_0_PCTR0                               0x00680
 #define V3D_PCTR_0_PCTR31                              0x006fc
 #define V3D_PCTR_0_PCTRX(x)                            (V3D_PCTR_0_PCTR0 + \
 							4 * (x))
-#define V3D_GMP_STATUS                                 0x00800
+#define V3D_GMP_STATUS(ver) ((ver >= 71) ? 0x00600 : 0x00800)
 # define V3D_GMP_STATUS_GMPRST                         BIT(31)
 # define V3D_GMP_STATUS_WR_COUNT_MASK                  V3D_MASK(30, 24)
 # define V3D_GMP_STATUS_WR_COUNT_SHIFT                 24
@@ -377,13 +386,13 @@
 # define V3D_GMP_STATUS_INVPROT                        BIT(1)
 # define V3D_GMP_STATUS_VIO                            BIT(0)
 
-#define V3D_GMP_CFG                                    0x00804
+#define V3D_GMP_CFG(ver) ((ver >= 71) ? 0x00604 : 0x00804)
 # define V3D_GMP_CFG_LBURSTEN                          BIT(3)
 # define V3D_GMP_CFG_PGCRSEN                           BIT()
 # define V3D_GMP_CFG_STOP_REQ                          BIT(1)
 # define V3D_GMP_CFG_PROT_ENABLE                       BIT(0)
 
-#define V3D_GMP_VIO_ADDR                               0x00808
+#define V3D_GMP_VIO_ADDR(ver) ((ver >= 71) ? 0x00608 : 0x00808)
 #define V3D_GMP_VIO_TYPE                               0x0080c
 #define V3D_GMP_TABLE_ADDR                             0x00810
 #define V3D_GMP_CLEAR_LOAD                             0x00814
@@ -398,25 +407,25 @@
 # define V3D_CSD_STATUS_HAVE_CURRENT_DISPATCH          BIT(1)
 # define V3D_CSD_STATUS_HAVE_QUEUED_DISPATCH           BIT(0)
 
-#define V3D_CSD_QUEUED_CFG0                            0x00904
+#define V3D_CSD_QUEUED_CFG0(ver) ((ver >= 71) ? 0x00930 : 0x00904)
 # define V3D_CSD_QUEUED_CFG0_NUM_WGS_X_MASK            V3D_MASK(31, 16)
 # define V3D_CSD_QUEUED_CFG0_NUM_WGS_X_SHIFT           16
 # define V3D_CSD_QUEUED_CFG0_WG_X_OFFSET_MASK          V3D_MASK(15, 0)
 # define V3D_CSD_QUEUED_CFG0_WG_X_OFFSET_SHIFT         0
 
-#define V3D_CSD_QUEUED_CFG1                            0x00908
+#define V3D_CSD_QUEUED_CFG1(ver) ((ver >= 71) ? 0x00934 : 0x00908)
 # define V3D_CSD_QUEUED_CFG1_NUM_WGS_Y_MASK            V3D_MASK(31, 16)
 # define V3D_CSD_QUEUED_CFG1_NUM_WGS_Y_SHIFT           16
 # define V3D_CSD_QUEUED_CFG1_WG_Y_OFFSET_MASK          V3D_MASK(15, 0)
 # define V3D_CSD_QUEUED_CFG1_WG_Y_OFFSET_SHIFT         0
 
-#define V3D_CSD_QUEUED_CFG2                            0x0090c
+#define V3D_CSD_QUEUED_CFG2(ver) ((ver >= 71) ? 0x00938 : 0x0090c)
 # define V3D_CSD_QUEUED_CFG2_NUM_WGS_Z_MASK            V3D_MASK(31, 16)
 # define V3D_CSD_QUEUED_CFG2_NUM_WGS_Z_SHIFT           16
 # define V3D_CSD_QUEUED_CFG2_WG_Z_OFFSET_MASK          V3D_MASK(15, 0)
 # define V3D_CSD_QUEUED_CFG2_WG_Z_OFFSET_SHIFT         0
 
-#define V3D_CSD_QUEUED_CFG3                            0x00910
+#define V3D_CSD_QUEUED_CFG3(ver) ((ver >= 71) ? 0x0093c : 0x00910)
 # define V3D_CSD_QUEUED_CFG3_OVERLAP_WITH_PREV         BIT(26)
 # define V3D_CSD_QUEUED_CFG3_MAX_SG_ID_MASK            V3D_MASK(25, 20)
 # define V3D_CSD_QUEUED_CFG3_MAX_SG_ID_SHIFT           20
@@ -428,23 +437,28 @@
 # define V3D_CSD_QUEUED_CFG3_WG_SIZE_SHIFT             0
 
 /* Number of batches, minus 1 */
-#define V3D_CSD_QUEUED_CFG4                            0x00914
+#define V3D_CSD_QUEUED_CFG4(ver) ((ver >= 71) ? 0x00940 : 0x00914)
 
 /* Shader address, pnan, singleseg, threading, like a shader record. */
-#define V3D_CSD_QUEUED_CFG5                            0x00918
+#define V3D_CSD_QUEUED_CFG5(ver) ((ver >= 71) ? 0x00944 : 0x00918)
 
 /* Uniforms address (4 byte aligned) */
-#define V3D_CSD_QUEUED_CFG6                            0x0091c
-
-#define V3D_CSD_CURRENT_CFG0                          0x00920
-#define V3D_CSD_CURRENT_CFG1                          0x00924
-#define V3D_CSD_CURRENT_CFG2                          0x00928
-#define V3D_CSD_CURRENT_CFG3                          0x0092c
-#define V3D_CSD_CURRENT_CFG4                          0x00930
-#define V3D_CSD_CURRENT_CFG5                          0x00934
-#define V3D_CSD_CURRENT_CFG6                          0x00938
-
-#define V3D_CSD_CURRENT_ID0                            0x0093c
+#define V3D_CSD_QUEUED_CFG6(ver) ((ver >= 71) ? 0x00948 : 0x0091c)
+
+/* V3D 7.x+ only */
+#define V3D_V7_CSD_QUEUED_CFG7                         0x0094c
+
+#define V3D_CSD_CURRENT_CFG0(ver) ((ver >= 71) ? 0x00958 : 0x00920)
+#define V3D_CSD_CURRENT_CFG1(ver) ((ver >= 71) ? 0x0095c : 0x00924)
+#define V3D_CSD_CURRENT_CFG2(ver) ((ver >= 71) ? 0x00960 : 0x00928)
+#define V3D_CSD_CURRENT_CFG3(ver) ((ver >= 71) ? 0x00964 : 0x0092c)
+#define V3D_CSD_CURRENT_CFG4(ver) ((ver >= 71) ? 0x00968 : 0x00930)
+#define V3D_CSD_CURRENT_CFG5(ver) ((ver >= 71) ? 0x0096c : 0x00934)
+#define V3D_CSD_CURRENT_CFG6(ver) ((ver >= 71) ? 0x00970 : 0x00938)
+/* V3D 7.x+ only */
+#define V3D_V7_CSD_CURRENT_CFG7                        0x00974
+
+#define V3D_CSD_CURRENT_ID0(ver) ((ver >= 71) ? 0x00978 : 0x0093c)
 # define V3D_CSD_CURRENT_ID0_WG_X_MASK                 V3D_MASK(31, 16)
 # define V3D_CSD_CURRENT_ID0_WG_X_SHIFT                16
 # define V3D_CSD_CURRENT_ID0_WG_IN_SG_MASK             V3D_MASK(11, 8)
@@ -452,7 +466,7 @@
 # define V3D_CSD_CURRENT_ID0_L_IDX_MASK                V3D_MASK(7, 0)
 # define V3D_CSD_CURRENT_ID0_L_IDX_SHIFT               0
 
-#define V3D_CSD_CURRENT_ID1                            0x00940
+#define V3D_CSD_CURRENT_ID1(ver) ((ver >= 71) ? 0x0097c : 0x00940)
 # define V3D_CSD_CURRENT_ID0_WG_Z_MASK                 V3D_MASK(31, 16)
 # define V3D_CSD_CURRENT_ID0_WG_Z_SHIFT                16
 # define V3D_CSD_CURRENT_ID0_WG_Y_MASK                 V3D_MASK(15, 0)
diff --git a/drivers/gpu/drm/v3d/v3d_sched.c b/drivers/gpu/drm/v3d/v3d_sched.c
index 038e1ae589c7..ff893f02698f 100644
--- a/drivers/gpu/drm/v3d/v3d_sched.c
+++ b/drivers/gpu/drm/v3d/v3d_sched.c
@@ -190,20 +190,22 @@ v3d_tfu_job_run(struct drm_sched_job *sched_job)
 
 	trace_v3d_submit_tfu(dev, to_v3d_fence(fence)->seqno);
 
-	V3D_WRITE(V3D_TFU_IIA, job->args.iia);
-	V3D_WRITE(V3D_TFU_IIS, job->args.iis);
-	V3D_WRITE(V3D_TFU_ICA, job->args.ica);
-	V3D_WRITE(V3D_TFU_IUA, job->args.iua);
-	V3D_WRITE(V3D_TFU_IOA, job->args.ioa);
-	V3D_WRITE(V3D_TFU_IOS, job->args.ios);
-	V3D_WRITE(V3D_TFU_COEF0, job->args.coef[0]);
-	if (job->args.coef[0] & V3D_TFU_COEF0_USECOEF) {
-		V3D_WRITE(V3D_TFU_COEF1, job->args.coef[1]);
-		V3D_WRITE(V3D_TFU_COEF2, job->args.coef[2]);
-		V3D_WRITE(V3D_TFU_COEF3, job->args.coef[3]);
+	V3D_WRITE(V3D_TFU_IIA(v3d->ver), job->args.iia);
+	V3D_WRITE(V3D_TFU_IIS(v3d->ver), job->args.iis);
+	V3D_WRITE(V3D_TFU_ICA(v3d->ver), job->args.ica);
+	V3D_WRITE(V3D_TFU_IUA(v3d->ver), job->args.iua);
+	V3D_WRITE(V3D_TFU_IOA(v3d->ver), job->args.ioa);
+	if (v3d->ver >= 71)
+		V3D_WRITE(V3D_V7_TFU_IOC, job->args.v71.ioc);
+	V3D_WRITE(V3D_TFU_IOS(v3d->ver), job->args.ios);
+	V3D_WRITE(V3D_TFU_COEF0(v3d->ver), job->args.coef[0]);
+	if (v3d->ver >= 71 || (job->args.coef[0] & V3D_TFU_COEF0_USECOEF)) {
+		V3D_WRITE(V3D_TFU_COEF1(v3d->ver), job->args.coef[1]);
+		V3D_WRITE(V3D_TFU_COEF2(v3d->ver), job->args.coef[2]);
+		V3D_WRITE(V3D_TFU_COEF3(v3d->ver), job->args.coef[3]);
 	}
 	/* ICFG kicks off the job. */
-	V3D_WRITE(V3D_TFU_ICFG, job->args.icfg | V3D_TFU_ICFG_IOC);
+	V3D_WRITE(V3D_TFU_ICFG(v3d->ver), job->args.icfg | V3D_TFU_ICFG_IOC);
 
 	return fence;
 }
@@ -215,7 +217,7 @@ v3d_csd_job_run(struct drm_sched_job *sched_job)
 	struct v3d_dev *v3d = job->base.v3d;
 	struct drm_device *dev = &v3d->drm;
 	struct dma_fence *fence;
-	int i;
+	int i, csd_cfg0_reg, csd_cfg_reg_count;
 
 	v3d->csd_job = job;
 
@@ -233,10 +235,12 @@ v3d_csd_job_run(struct drm_sched_job *sched_job)
 
 	v3d_switch_perfmon(v3d, &job->base);
 
-	for (i = 1; i <= 6; i++)
-		V3D_CORE_WRITE(0, V3D_CSD_QUEUED_CFG0 + 4 * i, job->args.cfg[i]);
+	csd_cfg0_reg = V3D_CSD_QUEUED_CFG0(v3d->ver);
+	csd_cfg_reg_count = v3d->ver < 71 ? 6 : 7;
+	for (i = 1; i <= csd_cfg_reg_count; i++)
+		V3D_CORE_WRITE(0, csd_cfg0_reg + 4 * i, job->args.cfg[i]);
 	/* CFG0 write kicks off the job. */
-	V3D_CORE_WRITE(0, V3D_CSD_QUEUED_CFG0, job->args.cfg[0]);
+	V3D_CORE_WRITE(0, csd_cfg0_reg, job->args.cfg[0]);
 
 	return fence;
 }
@@ -336,7 +340,7 @@ v3d_csd_job_timedout(struct drm_sched_job *sched_job)
 {
 	struct v3d_csd_job *job = to_csd_job(sched_job);
 	struct v3d_dev *v3d = job->base.v3d;
-	u32 batches = V3D_CORE_READ(0, V3D_CSD_CURRENT_CFG4);
+	u32 batches = V3D_CORE_READ(0, V3D_CSD_CURRENT_CFG4(v3d->ver));
 
 	/* If we've made progress, skip reset and let the timer get
 	 * rearmed.
-- 
2.39.2


