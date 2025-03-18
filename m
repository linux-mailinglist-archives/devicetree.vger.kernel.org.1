Return-Path: <devicetree+bounces-158400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C31DFA6647E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 02:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A7BA17A7829
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 01:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78904433AC;
	Tue, 18 Mar 2025 01:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="so9FNdq0"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E1C8F58
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 01:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742259814; cv=none; b=dGAbOgO5cD0GG3+DzZWWIGKzjxrIoctQDowukCPuP7EunGXecqWuJUR3D0dr4xNsGJxVGXNlDEowvPm8gPAJY9Pq52EKEV3ULWBErKBDd2o5eQzqhseSG5OeEq9Yv2Lr5D1lC0xQsFoSvFHsHhL8IatL6TB1EIPaTn+nBaMv7YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742259814; c=relaxed/simple;
	bh=P0I8YTbv2wgPjzFUi1qBZdjUfR6aq5b0Il686UD4upI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yk1w51T1yDvuR9jH4vD7OrZ2kGl9BP4Y47OiyxtwijFpV0HEy8PWGC780n+85wYZ+Y+2kVkYoxDy1JDLHtzO2vGss0fg4Byw0U1Ayncf2ir9I2hN7icxvruPNFOE8Ay2aWwLu4sERFUdstfh4Gfq3a+btonDGX/8F7QgaWueqik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=so9FNdq0; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=D1ZRLN6IK+B27/N/8kxSvXDezymTQoGMKmKtFaU58s8=; b=so9FNdq0mb1kj+rpVJMuV2w2jX
	lqP9eRhBhI+jP/j8ogtCtz1Tg5vZJZJv9qhEaxmcPJlq+GOzMryQKjZNQw75MFSFJQyAnE5OVjjm+
	hQi51ZGhXQRelCHKQapNMCjpSdFukhwKRaj0kL66oWA3wlR+C1cNu+aHj/dgUbOV1OyoNrAuiAYRx
	sRR42eFqZPHB5tx7qdRyLNlt1kWutwNZdp0S7u4tc89BCqo3Pcq3WN9Bu6ab8dipcjB8phlhBEfMg
	QwUbc81KjB3E0gFjyGjapKZrOZP+BMAttoCglSEKrpO01DWDxElEWl5HrcCBNZ+TkqXJ75HbUk3uh
	aQWOpRrA==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tuLMX-002UCS-P8; Tue, 18 Mar 2025 02:03:22 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Mon, 17 Mar 2025 22:01:09 -0300
Subject: [PATCH v6 1/5] drm/v3d: Associate a V3D tech revision to all
 supported devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250317-v3d-gpu-reset-fixes-v6-1-f3ee7717ed17@igalia.com>
References: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
In-Reply-To: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, 
 Stefan Wahren <wahrenst@gmx.net>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=16915; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=P0I8YTbv2wgPjzFUi1qBZdjUfR6aq5b0Il686UD4upI=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn2MZHYaVUMJzcmY6jb9pltJHxNgC/7MpU1u3vo
 CCcq8TbRHiJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9jGRwAKCRA/8w6Kdoj6
 qlFfB/wP0XhVavUjdB8TG8+/x9jMmqCbIsb4ZMoNSh+Zklu9NQWXc7EJ7pYwtuoyKZ7vh9QEnCu
 7/+m4TN+8T0tn25OqGuWQbBLofwG4oYT8H/6zX8uLIAYiUfU7Gm92r/oez+01sc5JzjdGUJOYjs
 XGSEQhTkat5Et1w6RcOM/SBSjbyxgd3+aBlMJr75Pq6S0xbwMndgWP0V7YJYUseca5aVvtW5nqE
 Qk0lbAb9nLDUQ3Wcqf3tlGKj8KJU6BgCtB0BWvNC8R5qbsIxopgdpoPR3nKBwvs8mHekF7gAHi3
 9IA0V6OhG40+Q0fgt/aJWYX3Xsxy2fBBaYSgUO2T3aoJPkGd
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

The V3D driver currently determines the GPU tech version (33, 41...)
by reading a register. This approach has worked so far since this
information wasn’t needed before powering on the GPU.

V3D 7.1 introduces new registers that must be written to power on the
GPU, requiring us to know the V3D version beforehand. To address this,
associate each supported SoC with the corresponding VideoCore GPU version
as part of the device data.

To prevent possible mistakes, add an assertion to verify that the version
specified in the device data matches the one reported by the hardware.
If there is a mismatch, the kernel will trigger a warning.

With the goal of maintaining consistency around the driver, use `enum
v3d_gen` to assign values to `v3d->ver` and for comparisons with other
V3D generations. Note that all mentions of unsupported or non-existing V3D
generations (such as V3D 4.0) were removed by this commit and replaced
with supported generations without functional changes.

Reviewed-by: Iago Toral Quiroga <itoral@igalia.com>
Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 drivers/gpu/drm/v3d/v3d_debugfs.c | 126 +++++++++++++++++++-------------------
 drivers/gpu/drm/v3d/v3d_drv.c     |  22 +++++--
 drivers/gpu/drm/v3d/v3d_drv.h     |  11 +++-
 drivers/gpu/drm/v3d/v3d_gem.c     |  10 +--
 drivers/gpu/drm/v3d/v3d_irq.c     |   6 +-
 drivers/gpu/drm/v3d/v3d_perfmon.c |   4 +-
 drivers/gpu/drm/v3d/v3d_sched.c   |   6 +-
 7 files changed, 101 insertions(+), 84 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_debugfs.c b/drivers/gpu/drm/v3d/v3d_debugfs.c
index 76816f2551c10026a775e4331ad7eb2f008cfb0a..7e789e181af0ac138044f194a29555c30ab01836 100644
--- a/drivers/gpu/drm/v3d/v3d_debugfs.c
+++ b/drivers/gpu/drm/v3d/v3d_debugfs.c
@@ -21,74 +21,74 @@ struct v3d_reg_def {
 };
 
 static const struct v3d_reg_def v3d_hub_reg_defs[] = {
-	REGDEF(33, 42, V3D_HUB_AXICFG),
-	REGDEF(33, 71, V3D_HUB_UIFCFG),
-	REGDEF(33, 71, V3D_HUB_IDENT0),
-	REGDEF(33, 71, V3D_HUB_IDENT1),
-	REGDEF(33, 71, V3D_HUB_IDENT2),
-	REGDEF(33, 71, V3D_HUB_IDENT3),
-	REGDEF(33, 71, V3D_HUB_INT_STS),
-	REGDEF(33, 71, V3D_HUB_INT_MSK_STS),
-
-	REGDEF(33, 71, V3D_MMU_CTL),
-	REGDEF(33, 71, V3D_MMU_VIO_ADDR),
-	REGDEF(33, 71, V3D_MMU_VIO_ID),
-	REGDEF(33, 71, V3D_MMU_DEBUG_INFO),
-
-	REGDEF(71, 71, V3D_GMP_STATUS(71)),
-	REGDEF(71, 71, V3D_GMP_CFG(71)),
-	REGDEF(71, 71, V3D_GMP_VIO_ADDR(71)),
+	REGDEF(V3D_GEN_33, V3D_GEN_42, V3D_HUB_AXICFG),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_HUB_UIFCFG),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_HUB_IDENT0),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_HUB_IDENT1),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_HUB_IDENT2),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_HUB_IDENT3),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_HUB_INT_STS),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_HUB_INT_MSK_STS),
+
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_MMU_CTL),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_MMU_VIO_ADDR),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_MMU_VIO_ID),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_MMU_DEBUG_INFO),
+
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_GMP_STATUS(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_GMP_CFG(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_GMP_VIO_ADDR(71)),
 };
 
 static const struct v3d_reg_def v3d_gca_reg_defs[] = {
-	REGDEF(33, 33, V3D_GCA_SAFE_SHUTDOWN),
-	REGDEF(33, 33, V3D_GCA_SAFE_SHUTDOWN_ACK),
+	REGDEF(V3D_GEN_33, V3D_GEN_33, V3D_GCA_SAFE_SHUTDOWN),
+	REGDEF(V3D_GEN_33, V3D_GEN_33, V3D_GCA_SAFE_SHUTDOWN_ACK),
 };
 
 static const struct v3d_reg_def v3d_core_reg_defs[] = {
-	REGDEF(33, 71, V3D_CTL_IDENT0),
-	REGDEF(33, 71, V3D_CTL_IDENT1),
-	REGDEF(33, 71, V3D_CTL_IDENT2),
-	REGDEF(33, 71, V3D_CTL_MISCCFG),
-	REGDEF(33, 71, V3D_CTL_INT_STS),
-	REGDEF(33, 71, V3D_CTL_INT_MSK_STS),
-	REGDEF(33, 71, V3D_CLE_CT0CS),
-	REGDEF(33, 71, V3D_CLE_CT0CA),
-	REGDEF(33, 71, V3D_CLE_CT0EA),
-	REGDEF(33, 71, V3D_CLE_CT1CS),
-	REGDEF(33, 71, V3D_CLE_CT1CA),
-	REGDEF(33, 71, V3D_CLE_CT1EA),
-
-	REGDEF(33, 71, V3D_PTB_BPCA),
-	REGDEF(33, 71, V3D_PTB_BPCS),
-
-	REGDEF(33, 42, V3D_GMP_STATUS(33)),
-	REGDEF(33, 42, V3D_GMP_CFG(33)),
-	REGDEF(33, 42, V3D_GMP_VIO_ADDR(33)),
-
-	REGDEF(33, 71, V3D_ERR_FDBGO),
-	REGDEF(33, 71, V3D_ERR_FDBGB),
-	REGDEF(33, 71, V3D_ERR_FDBGS),
-	REGDEF(33, 71, V3D_ERR_STAT),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CTL_IDENT0),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CTL_IDENT1),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CTL_IDENT2),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CTL_MISCCFG),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CTL_INT_STS),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CTL_INT_MSK_STS),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CLE_CT0CS),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CLE_CT0CA),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CLE_CT0EA),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CLE_CT1CS),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CLE_CT1CA),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_CLE_CT1EA),
+
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_PTB_BPCA),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_PTB_BPCS),
+
+	REGDEF(V3D_GEN_33, V3D_GEN_42, V3D_GMP_STATUS(33)),
+	REGDEF(V3D_GEN_33, V3D_GEN_42, V3D_GMP_CFG(33)),
+	REGDEF(V3D_GEN_33, V3D_GEN_42, V3D_GMP_VIO_ADDR(33)),
+
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_ERR_FDBGO),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_ERR_FDBGB),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_ERR_FDBGS),
+	REGDEF(V3D_GEN_33, V3D_GEN_71, V3D_ERR_STAT),
 };
 
 static const struct v3d_reg_def v3d_csd_reg_defs[] = {
-	REGDEF(41, 71, V3D_CSD_STATUS),
-	REGDEF(41, 42, V3D_CSD_CURRENT_CFG0(41)),
-	REGDEF(41, 42, V3D_CSD_CURRENT_CFG1(41)),
-	REGDEF(41, 42, V3D_CSD_CURRENT_CFG2(41)),
-	REGDEF(41, 42, V3D_CSD_CURRENT_CFG3(41)),
-	REGDEF(41, 42, V3D_CSD_CURRENT_CFG4(41)),
-	REGDEF(41, 42, V3D_CSD_CURRENT_CFG5(41)),
-	REGDEF(41, 42, V3D_CSD_CURRENT_CFG6(41)),
-	REGDEF(71, 71, V3D_CSD_CURRENT_CFG0(71)),
-	REGDEF(71, 71, V3D_CSD_CURRENT_CFG1(71)),
-	REGDEF(71, 71, V3D_CSD_CURRENT_CFG2(71)),
-	REGDEF(71, 71, V3D_CSD_CURRENT_CFG3(71)),
-	REGDEF(71, 71, V3D_CSD_CURRENT_CFG4(71)),
-	REGDEF(71, 71, V3D_CSD_CURRENT_CFG5(71)),
-	REGDEF(71, 71, V3D_CSD_CURRENT_CFG6(71)),
-	REGDEF(71, 71, V3D_V7_CSD_CURRENT_CFG7),
+	REGDEF(V3D_GEN_41, V3D_GEN_71, V3D_CSD_STATUS),
+	REGDEF(V3D_GEN_41, V3D_GEN_42, V3D_CSD_CURRENT_CFG0(41)),
+	REGDEF(V3D_GEN_41, V3D_GEN_42, V3D_CSD_CURRENT_CFG1(41)),
+	REGDEF(V3D_GEN_41, V3D_GEN_42, V3D_CSD_CURRENT_CFG2(41)),
+	REGDEF(V3D_GEN_41, V3D_GEN_42, V3D_CSD_CURRENT_CFG3(41)),
+	REGDEF(V3D_GEN_41, V3D_GEN_42, V3D_CSD_CURRENT_CFG4(41)),
+	REGDEF(V3D_GEN_41, V3D_GEN_42, V3D_CSD_CURRENT_CFG5(41)),
+	REGDEF(V3D_GEN_41, V3D_GEN_42, V3D_CSD_CURRENT_CFG6(41)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_CSD_CURRENT_CFG0(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_CSD_CURRENT_CFG1(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_CSD_CURRENT_CFG2(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_CSD_CURRENT_CFG3(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_CSD_CURRENT_CFG4(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_CSD_CURRENT_CFG5(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_CSD_CURRENT_CFG6(71)),
+	REGDEF(V3D_GEN_71, V3D_GEN_71, V3D_V7_CSD_CURRENT_CFG7),
 };
 
 static int v3d_v3d_debugfs_regs(struct seq_file *m, void *unused)
@@ -164,7 +164,7 @@ static int v3d_v3d_debugfs_ident(struct seq_file *m, void *unused)
 		   str_yes_no(ident2 & V3D_HUB_IDENT2_WITH_MMU));
 	seq_printf(m, "TFU:        %s\n",
 		   str_yes_no(ident1 & V3D_HUB_IDENT1_WITH_TFU));
-	if (v3d->ver <= 42) {
+	if (v3d->ver <= V3D_GEN_42) {
 		seq_printf(m, "TSY:        %s\n",
 			   str_yes_no(ident1 & V3D_HUB_IDENT1_WITH_TSY));
 	}
@@ -196,11 +196,11 @@ static int v3d_v3d_debugfs_ident(struct seq_file *m, void *unused)
 		seq_printf(m, "  QPUs:         %d\n", nslc * qups);
 		seq_printf(m, "  Semaphores:   %d\n",
 			   V3D_GET_FIELD(ident1, V3D_IDENT1_NSEM));
-		if (v3d->ver <= 42) {
+		if (v3d->ver <= V3D_GEN_42) {
 			seq_printf(m, "  BCG int:      %d\n",
 				   (ident2 & V3D_IDENT2_BCG_INT) != 0);
 		}
-		if (v3d->ver < 40) {
+		if (v3d->ver < V3D_GEN_41) {
 			seq_printf(m, "  Override TMU: %d\n",
 				   (misccfg & V3D_MISCCFG_OVRTMUOUT) != 0);
 		}
@@ -234,7 +234,7 @@ static int v3d_measure_clock(struct seq_file *m, void *unused)
 	int core = 0;
 	int measure_ms = 1000;
 
-	if (v3d->ver >= 40) {
+	if (v3d->ver >= V3D_GEN_41) {
 		int cycle_count_reg = V3D_PCTR_CYCLE_COUNT(v3d->ver);
 		V3D_CORE_WRITE(core, V3D_V4_PCTR_0_SRC_0_3,
 			       V3D_SET_FIELD_VER(cycle_count_reg,
diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index 852015214e971c60f9939d34d893d8d8cb4e9b01..c63f0ed1bd8a3d5511085e76ed2fbd6ee7df6f80 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -17,6 +17,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/sched/clock.h>
@@ -92,7 +93,7 @@ static int v3d_get_param_ioctl(struct drm_device *dev, void *data,
 		args->value = 1;
 		return 0;
 	case DRM_V3D_PARAM_SUPPORTS_PERFMON:
-		args->value = (v3d->ver >= 40);
+		args->value = (v3d->ver >= V3D_GEN_41);
 		return 0;
 	case DRM_V3D_PARAM_SUPPORTS_MULTISYNC_EXT:
 		args->value = 1;
@@ -254,10 +255,10 @@ static const struct drm_driver v3d_drm_driver = {
 };
 
 static const struct of_device_id v3d_of_match[] = {
-	{ .compatible = "brcm,2711-v3d" },
-	{ .compatible = "brcm,2712-v3d" },
-	{ .compatible = "brcm,7268-v3d" },
-	{ .compatible = "brcm,7278-v3d" },
+	{ .compatible = "brcm,2711-v3d", .data = (void *)V3D_GEN_42 },
+	{ .compatible = "brcm,2712-v3d", .data = (void *)V3D_GEN_71 },
+	{ .compatible = "brcm,7268-v3d", .data = (void *)V3D_GEN_33 },
+	{ .compatible = "brcm,7278-v3d", .data = (void *)V3D_GEN_41 },
 	{},
 };
 MODULE_DEVICE_TABLE(of, v3d_of_match);
@@ -274,6 +275,7 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct drm_device *drm;
 	struct v3d_dev *v3d;
+	enum v3d_gen gen;
 	int ret;
 	u32 mmu_debug;
 	u32 ident1, ident3;
@@ -287,6 +289,9 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, drm);
 
+	gen = (enum v3d_gen)of_device_get_match_data(dev);
+	v3d->ver = gen;
+
 	ret = map_regs(v3d, &v3d->hub_regs, "hub");
 	if (ret)
 		return ret;
@@ -316,6 +321,11 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 	ident1 = V3D_READ(V3D_HUB_IDENT1);
 	v3d->ver = (V3D_GET_FIELD(ident1, V3D_HUB_IDENT1_TVER) * 10 +
 		    V3D_GET_FIELD(ident1, V3D_HUB_IDENT1_REV));
+	/* Make sure that the V3D tech version retrieved from the HW is equal
+	 * to the one advertised by the device tree.
+	 */
+	WARN_ON(v3d->ver != gen);
+
 	v3d->cores = V3D_GET_FIELD(ident1, V3D_HUB_IDENT1_NCORES);
 	WARN_ON(v3d->cores > 1); /* multicore not yet implemented */
 
@@ -340,7 +350,7 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 		}
 	}
 
-	if (v3d->ver < 41) {
+	if (v3d->ver < V3D_GEN_41) {
 		ret = map_regs(v3d, &v3d->gca_regs, "gca");
 		if (ret)
 			goto clk_disable;
diff --git a/drivers/gpu/drm/v3d/v3d_drv.h b/drivers/gpu/drm/v3d/v3d_drv.h
index 9deaefa0f95b71b842f1c5bef2c6a8a8ffc21fe2..de4a9e18f6a9039edf57f406ab1cee9dad4c0a49 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.h
+++ b/drivers/gpu/drm/v3d/v3d_drv.h
@@ -94,11 +94,18 @@ struct v3d_perfmon {
 	u64 values[] __counted_by(ncounters);
 };
 
+enum v3d_gen {
+	V3D_GEN_33 = 33,
+	V3D_GEN_41 = 41,
+	V3D_GEN_42 = 42,
+	V3D_GEN_71 = 71,
+};
+
 struct v3d_dev {
 	struct drm_device drm;
 
 	/* Short representation (e.g. 33, 41) of the V3D tech version */
-	int ver;
+	enum v3d_gen ver;
 
 	/* Short representation (e.g. 5, 6) of the V3D tech revision */
 	int rev;
@@ -199,7 +206,7 @@ to_v3d_dev(struct drm_device *dev)
 static inline bool
 v3d_has_csd(struct v3d_dev *v3d)
 {
-	return v3d->ver >= 41;
+	return v3d->ver >= V3D_GEN_41;
 }
 
 #define v3d_to_pdev(v3d) to_platform_device((v3d)->drm.dev)
diff --git a/drivers/gpu/drm/v3d/v3d_gem.c b/drivers/gpu/drm/v3d/v3d_gem.c
index b1e681630ded098de8aee691884368a959443812..1ea6d3832c2212d9cbbd90236478d18491f0ff14 100644
--- a/drivers/gpu/drm/v3d/v3d_gem.c
+++ b/drivers/gpu/drm/v3d/v3d_gem.c
@@ -25,7 +25,7 @@ v3d_init_core(struct v3d_dev *v3d, int core)
 	 * type.  If you want the default behavior, you can still put
 	 * "2" in the indirect texture state's output_type field.
 	 */
-	if (v3d->ver < 40)
+	if (v3d->ver < V3D_GEN_41)
 		V3D_CORE_WRITE(core, V3D_CTL_MISCCFG, V3D_MISCCFG_OVRTMUOUT);
 
 	/* Whenever we flush the L2T cache, we always want to flush
@@ -58,7 +58,7 @@ v3d_idle_axi(struct v3d_dev *v3d, int core)
 static void
 v3d_idle_gca(struct v3d_dev *v3d)
 {
-	if (v3d->ver >= 41)
+	if (v3d->ver >= V3D_GEN_41)
 		return;
 
 	V3D_GCA_WRITE(V3D_GCA_SAFE_SHUTDOWN, V3D_GCA_SAFE_SHUTDOWN_EN);
@@ -132,13 +132,13 @@ v3d_reset(struct v3d_dev *v3d)
 static void
 v3d_flush_l3(struct v3d_dev *v3d)
 {
-	if (v3d->ver < 41) {
+	if (v3d->ver < V3D_GEN_41) {
 		u32 gca_ctrl = V3D_GCA_READ(V3D_GCA_CACHE_CTRL);
 
 		V3D_GCA_WRITE(V3D_GCA_CACHE_CTRL,
 			      gca_ctrl | V3D_GCA_CACHE_CTRL_FLUSH);
 
-		if (v3d->ver < 33) {
+		if (v3d->ver < V3D_GEN_33) {
 			V3D_GCA_WRITE(V3D_GCA_CACHE_CTRL,
 				      gca_ctrl & ~V3D_GCA_CACHE_CTRL_FLUSH);
 		}
@@ -151,7 +151,7 @@ v3d_flush_l3(struct v3d_dev *v3d)
 static void
 v3d_invalidate_l2c(struct v3d_dev *v3d, int core)
 {
-	if (v3d->ver > 32)
+	if (v3d->ver >= V3D_GEN_33)
 		return;
 
 	V3D_CORE_WRITE(core, V3D_CTL_L2CACTL,
diff --git a/drivers/gpu/drm/v3d/v3d_irq.c b/drivers/gpu/drm/v3d/v3d_irq.c
index 72b6a119412fa74f8771308e228305678a19ba43..29f63f572d35b7217e346f82b9afb0957a42bd39 100644
--- a/drivers/gpu/drm/v3d/v3d_irq.c
+++ b/drivers/gpu/drm/v3d/v3d_irq.c
@@ -143,7 +143,7 @@ v3d_irq(int irq, void *arg)
 	/* We shouldn't be triggering these if we have GMP in
 	 * always-allowed mode.
 	 */
-	if (v3d->ver < 71 && (intsts & V3D_INT_GMPV))
+	if (v3d->ver < V3D_GEN_71 && (intsts & V3D_INT_GMPV))
 		dev_err(v3d->drm.dev, "GMP violation\n");
 
 	/* V3D 4.2 wires the hub and core IRQs together, so if we &
@@ -200,7 +200,7 @@ v3d_hub_irq(int irq, void *arg)
 
 		V3D_WRITE(V3D_MMU_CTL, V3D_READ(V3D_MMU_CTL));
 
-		if (v3d->ver >= 41) {
+		if (v3d->ver >= V3D_GEN_41) {
 			axi_id = axi_id >> 5;
 			if (axi_id < ARRAY_SIZE(v3d41_axi_ids))
 				client = v3d41_axi_ids[axi_id];
@@ -217,7 +217,7 @@ v3d_hub_irq(int irq, void *arg)
 		status = IRQ_HANDLED;
 	}
 
-	if (v3d->ver >= 71 && (intsts & V3D_V7_HUB_INT_GMPV)) {
+	if (v3d->ver >= V3D_GEN_71 && (intsts & V3D_V7_HUB_INT_GMPV)) {
 		dev_err(v3d->drm.dev, "GMP Violation\n");
 		status = IRQ_HANDLED;
 	}
diff --git a/drivers/gpu/drm/v3d/v3d_perfmon.c b/drivers/gpu/drm/v3d/v3d_perfmon.c
index 3ebda2fa46fc4775c67d13d8f8131160ff6ca09d..9a3fe52558746e8523d4cf4ee433a90d94bffdbf 100644
--- a/drivers/gpu/drm/v3d/v3d_perfmon.c
+++ b/drivers/gpu/drm/v3d/v3d_perfmon.c
@@ -200,10 +200,10 @@ void v3d_perfmon_init(struct v3d_dev *v3d)
 	const struct v3d_perf_counter_desc *counters = NULL;
 	unsigned int max = 0;
 
-	if (v3d->ver >= 71) {
+	if (v3d->ver >= V3D_GEN_71) {
 		counters = v3d_v71_performance_counters;
 		max = ARRAY_SIZE(v3d_v71_performance_counters);
-	} else if (v3d->ver >= 42) {
+	} else if (v3d->ver >= V3D_GEN_42) {
 		counters = v3d_v42_performance_counters;
 		max = ARRAY_SIZE(v3d_v42_performance_counters);
 	}
diff --git a/drivers/gpu/drm/v3d/v3d_sched.c b/drivers/gpu/drm/v3d/v3d_sched.c
index 80466ce8c7df669280e556c0793490b79e75d2c7..34bd2b14f932f3b845e3d7dd19e2a4a732a56d91 100644
--- a/drivers/gpu/drm/v3d/v3d_sched.c
+++ b/drivers/gpu/drm/v3d/v3d_sched.c
@@ -345,11 +345,11 @@ v3d_tfu_job_run(struct drm_sched_job *sched_job)
 	V3D_WRITE(V3D_TFU_ICA(v3d->ver), job->args.ica);
 	V3D_WRITE(V3D_TFU_IUA(v3d->ver), job->args.iua);
 	V3D_WRITE(V3D_TFU_IOA(v3d->ver), job->args.ioa);
-	if (v3d->ver >= 71)
+	if (v3d->ver >= V3D_GEN_71)
 		V3D_WRITE(V3D_V7_TFU_IOC, job->args.v71.ioc);
 	V3D_WRITE(V3D_TFU_IOS(v3d->ver), job->args.ios);
 	V3D_WRITE(V3D_TFU_COEF0(v3d->ver), job->args.coef[0]);
-	if (v3d->ver >= 71 || (job->args.coef[0] & V3D_TFU_COEF0_USECOEF)) {
+	if (v3d->ver >= V3D_GEN_71 || (job->args.coef[0] & V3D_TFU_COEF0_USECOEF)) {
 		V3D_WRITE(V3D_TFU_COEF1(v3d->ver), job->args.coef[1]);
 		V3D_WRITE(V3D_TFU_COEF2(v3d->ver), job->args.coef[2]);
 		V3D_WRITE(V3D_TFU_COEF3(v3d->ver), job->args.coef[3]);
@@ -395,7 +395,7 @@ v3d_csd_job_run(struct drm_sched_job *sched_job)
 	 *
 	 * XXX: Set the CFG7 register
 	 */
-	if (v3d->ver >= 71)
+	if (v3d->ver >= V3D_GEN_71)
 		V3D_CORE_WRITE(0, V3D_V7_CSD_QUEUED_CFG7, 0);
 
 	/* CFG0 write kicks off the job. */

-- 
2.49.0


