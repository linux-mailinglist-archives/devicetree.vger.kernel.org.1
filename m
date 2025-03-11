Return-Path: <devicetree+bounces-156629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6E6A5CD93
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:15:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C68601620EB
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56AC22638AC;
	Tue, 11 Mar 2025 18:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="dZ7oBP1t"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631E12627EC
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 18:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741716889; cv=none; b=Sss1Ee2Wwi0v2Xpeh6msZtcfH0gZVUmU5702xPM0EG+ScIdgSW77JO//6xHv10iI41BBSodMXC2xU8Y/+Eoqr8ZS7nGEf8Z7Rw217Db9xvk2SwwRE6lc5KZzlydgHaXwk4wc9h6H8nC1RTpytacHmq80T51rkp4581Vs6jR+I+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741716889; c=relaxed/simple;
	bh=g57RTjAHqcLmtmKjxuWc7XiSHGgWLzj6GPyFU2FAEaM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kt+GtDyZOD23SmiaYFCqI/aiXlfji07LpIn20EkWWakNLydHS854vZtG1ABEdChllMDfVYNRZ1VkpvZksWkSKO9ofrieKzq7milcgSVQLaSDA60yUhJoi38etOlkdhglZmOaHuwfd1pJmvwqNCOxDFmYn/K7sG5qDL5/ihjt1oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=dZ7oBP1t; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dMAHjyrQRw/qQ6f/gvOeBlalmR7zv7Z86weqDbNizCg=; b=dZ7oBP1tCIPLwXch4+j6t7o9i/
	YZbYOPLvXjPC+Vg7iLaEqXxE8xQ5DmNU69fQeX0OFUp+IcuphouHJzdUio6F5sYyMjkhPAjodmv2e
	hkclONqN8pAM0WNgNE4ZrsUQ1LjDZBNOnw0hDINqp8PqCmRqe0cJx7VjI+5mkTNl7AEaWQEVsdWhG
	i2EfUCuc1KzcsxDqsHNK3rxDqnnl/5LYrcXIZEJSh5j4J+TRDvlKoSf3sg3d00fssPB5ldCfrS5cC
	1k+HVwTW5RXXQLvSbiug9QVTXGbVQIQrobGmvsmWfTguKT/7rwenNdUQ0GmQBGM7nV/6rGMGhgi/t
	MiMnAeEA==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1ts47e-007Dal-MN; Tue, 11 Mar 2025 19:14:40 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Tue, 11 Mar 2025 15:13:48 -0300
Subject: [PATCH v3 6/7] drm/v3d: Use V3D_SMS registers for power on/off and
 reset on V3D 7.x
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250311-v3d-gpu-reset-fixes-v3-6-64f7a4247ec0@igalia.com>
References: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
In-Reply-To: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7723; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=g57RTjAHqcLmtmKjxuWc7XiSHGgWLzj6GPyFU2FAEaM=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0H11Qmx1+T7IA4D4y1+M5a+oB8ljJyerQqxxl
 ZTQKJuDBNWJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9B9dQAKCRA/8w6Kdoj6
 qk4lB/413/lEGmuAeqSy+dsiPv0vgt6bvq8U0/AOWhIrNyuKICRINgMF9+OnQOriecMWyRtYO41
 3BovehjSapBZUPJ/TmGszL6TI44hKyoSFwgqJntFnRUlWLJzOIx8RERfgJUqodcA3Hd7GulUL9X
 Xzxq/raVupG0G0wuzeeYb2BEnVyeS2pU7ZplFDg3FRQKmTovJbz8MkMXI8Dslir0bc/sWI8uncu
 Nse9Kldcpllkk6sDuJwP/aiDh/A7qCy6zYfPDTHQ2W/Mv35ebwlT21kBiexmL7sDqwWlLoHNRSe
 d/ymINmhvSwm5WZCOhXaiaK1soIwNeR/1yStY2hPK6zFpRPx
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

In addition to the standard reset controller, V3D 7.x requires configuring
the V3D_SMS registers for proper power on/off and reset. Add the new
registers to `v3d_regs.h` and ensure they are properly configured during
device probing, removal, and reset.

This change fixes GPU reset issues on the Raspberry Pi 5 (BCM2712).
Without exposing these registers, a GPU reset causes the GPU to hang,
stopping any further job execution and freezing the desktop GUI. The same
issue occurs when unloading and loading the v3d driver.

Link: https://github.com/raspberrypi/linux/issues/6660
Reviewed-by: Iago Toral Quiroga <itoral@igalia.com>
Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 drivers/gpu/drm/v3d/v3d_drv.c  | 40 ++++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/v3d/v3d_drv.h  | 11 +++++++++++
 drivers/gpu/drm/v3d/v3d_gem.c  | 17 +++++++++++++++++
 drivers/gpu/drm/v3d/v3d_regs.h | 26 ++++++++++++++++++++++++++
 4 files changed, 94 insertions(+)

diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index c63f0ed1bd8a3d5511085e76ed2fbd6ee7df6f80..122848cdccc4a02039d9ea2e77aa2f377886b5d6 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -263,6 +263,36 @@ static const struct of_device_id v3d_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, v3d_of_match);
 
+static void
+v3d_idle_sms(struct v3d_dev *v3d)
+{
+	if (v3d->ver < V3D_GEN_71)
+		return;
+
+	V3D_SMS_WRITE(V3D_SMS_TEE_CS, V3D_SMS_CLEAR_POWER_OFF);
+
+	if (wait_for((V3D_GET_FIELD(V3D_SMS_READ(V3D_SMS_TEE_CS),
+				    V3D_SMS_STATE) == V3D_SMS_IDLE), 100)) {
+		DRM_ERROR("Failed to power up SMS\n");
+	}
+
+	v3d_reset_sms(v3d);
+}
+
+static void
+v3d_power_off_sms(struct v3d_dev *v3d)
+{
+	if (v3d->ver < V3D_GEN_71)
+		return;
+
+	V3D_SMS_WRITE(V3D_SMS_TEE_CS, V3D_SMS_POWER_OFF);
+
+	if (wait_for((V3D_GET_FIELD(V3D_SMS_READ(V3D_SMS_TEE_CS),
+				    V3D_SMS_STATE) == V3D_SMS_POWER_OFF_STATE), 100)) {
+		DRM_ERROR("Failed to power off SMS\n");
+	}
+}
+
 static int
 map_regs(struct v3d_dev *v3d, void __iomem **regs, const char *name)
 {
@@ -300,6 +330,12 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	if (v3d->ver >= V3D_GEN_71) {
+		ret = map_regs(v3d, &v3d->sms_regs, "sms");
+		if (ret)
+			return ret;
+	}
+
 	v3d->clk = devm_clk_get_optional(dev, NULL);
 	if (IS_ERR(v3d->clk))
 		return dev_err_probe(dev, PTR_ERR(v3d->clk), "Failed to get V3D clock\n");
@@ -310,6 +346,8 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	v3d_idle_sms(v3d);
+
 	mmu_debug = V3D_READ(V3D_MMU_DEBUG_INFO);
 	mask = DMA_BIT_MASK(30 + V3D_GET_FIELD(mmu_debug, V3D_MMU_PA_WIDTH));
 	ret = dma_set_mask_and_coherent(dev, mask);
@@ -410,6 +448,8 @@ static void v3d_platform_drm_remove(struct platform_device *pdev)
 	dma_free_wc(v3d->drm.dev, 4096, v3d->mmu_scratch,
 		    v3d->mmu_scratch_paddr);
 
+	v3d_power_off_sms(v3d);
+
 	clk_disable_unprepare(v3d->clk);
 }
 
diff --git a/drivers/gpu/drm/v3d/v3d_drv.h b/drivers/gpu/drm/v3d/v3d_drv.h
index de4a9e18f6a9039edf57f406ab1cee9dad4c0a49..b51f0b648a08011f737317ec1841d5ab316355b2 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.h
+++ b/drivers/gpu/drm/v3d/v3d_drv.h
@@ -118,6 +118,7 @@ struct v3d_dev {
 	void __iomem *core_regs[3];
 	void __iomem *bridge_regs;
 	void __iomem *gca_regs;
+	void __iomem *sms_regs;
 	struct clk *clk;
 	struct reset_control *reset;
 
@@ -268,6 +269,15 @@ to_v3d_fence(struct dma_fence *fence)
 #define V3D_GCA_READ(offset) readl(v3d->gca_regs + offset)
 #define V3D_GCA_WRITE(offset, val) writel(val, v3d->gca_regs + offset)
 
+#define V3D_SMS_IDLE				0x0
+#define V3D_SMS_ISOLATING_FOR_RESET		0xa
+#define V3D_SMS_RESETTING			0xb
+#define V3D_SMS_ISOLATING_FOR_POWER_OFF	0xc
+#define V3D_SMS_POWER_OFF_STATE		0xd
+
+#define V3D_SMS_READ(offset) readl(v3d->sms_regs + (offset))
+#define V3D_SMS_WRITE(offset, val) writel(val, v3d->sms_regs + (offset))
+
 #define V3D_CORE_READ(core, offset) readl(v3d->core_regs[core] + offset)
 #define V3D_CORE_WRITE(core, offset, val) writel(val, v3d->core_regs[core] + offset)
 
@@ -546,6 +556,7 @@ struct dma_fence *v3d_fence_create(struct v3d_dev *v3d, enum v3d_queue queue);
 /* v3d_gem.c */
 int v3d_gem_init(struct drm_device *dev);
 void v3d_gem_destroy(struct drm_device *dev);
+void v3d_reset_sms(struct v3d_dev *v3d);
 void v3d_reset(struct v3d_dev *v3d);
 void v3d_invalidate_caches(struct v3d_dev *v3d);
 void v3d_clean_caches(struct v3d_dev *v3d);
diff --git a/drivers/gpu/drm/v3d/v3d_gem.c b/drivers/gpu/drm/v3d/v3d_gem.c
index 1ea6d3832c2212d9cbbd90236478d18491f0ff14..d7d16da78db328f004d1d702731d1a1b5437a394 100644
--- a/drivers/gpu/drm/v3d/v3d_gem.c
+++ b/drivers/gpu/drm/v3d/v3d_gem.c
@@ -104,6 +104,22 @@ v3d_reset_v3d(struct v3d_dev *v3d)
 	v3d_init_hw_state(v3d);
 }
 
+void
+v3d_reset_sms(struct v3d_dev *v3d)
+{
+	if (v3d->ver < V3D_GEN_71)
+		return;
+
+	V3D_SMS_WRITE(V3D_SMS_REE_CS, V3D_SET_FIELD(0x4, V3D_SMS_STATE));
+
+	if (wait_for(!(V3D_GET_FIELD(V3D_SMS_READ(V3D_SMS_REE_CS),
+				     V3D_SMS_STATE) == V3D_SMS_ISOLATING_FOR_RESET) &&
+		     !(V3D_GET_FIELD(V3D_SMS_READ(V3D_SMS_REE_CS),
+				     V3D_SMS_STATE) == V3D_SMS_RESETTING), 100)) {
+		DRM_ERROR("Failed to wait for SMS reset\n");
+	}
+}
+
 void
 v3d_reset(struct v3d_dev *v3d)
 {
@@ -119,6 +135,7 @@ v3d_reset(struct v3d_dev *v3d)
 		v3d_idle_axi(v3d, 0);
 
 	v3d_idle_gca(v3d);
+	v3d_reset_sms(v3d);
 	v3d_reset_v3d(v3d);
 
 	v3d_mmu_set_page_table(v3d);
diff --git a/drivers/gpu/drm/v3d/v3d_regs.h b/drivers/gpu/drm/v3d/v3d_regs.h
index 6da3c69082bd6d5954bf88bd9ff2543a5e4e04c4..c1870265eaeecc188afc4f09cf13a5201d3aa1c6 100644
--- a/drivers/gpu/drm/v3d/v3d_regs.h
+++ b/drivers/gpu/drm/v3d/v3d_regs.h
@@ -515,4 +515,30 @@
 # define V3D_ERR_VPAERGS                               BIT(1)
 # define V3D_ERR_VPAEABB                               BIT(0)
 
+#define V3D_SMS_REE_CS                                 0x00000
+#define V3D_SMS_TEE_CS                                 0x00400
+# define V3D_SMS_INTERRUPT                             BIT(31)
+# define V3D_SMS_POWER_OFF                             BIT(30)
+# define V3D_SMS_CLEAR_POWER_OFF                       BIT(29)
+# define V3D_SMS_LOCK                                  BIT(28)
+# define V3D_SMS_CLEAR_LOCK                            BIT(27)
+# define V3D_SMS_SVP_MODE_EXIT                         BIT(26)
+# define V3D_SMS_CLEAR_SVP_MODE_EXIT                   BIT(25)
+# define V3D_SMS_SVP_MODE_ENTER                        BIT(24)
+# define V3D_SMS_CLEAR_SVP_MODE_ENTER                  BIT(23)
+# define V3D_SMS_THEIR_MODE_EXIT                       BIT(22)
+# define V3D_SMS_THEIR_MODE_ENTER                      BIT(21)
+# define V3D_SMS_OUR_MODE_EXIT                         BIT(20)
+# define V3D_SMS_CLEAR_OUR_MODE_EXIT                   BIT(19)
+# define V3D_SMS_SEQ_PC_MASK                           V3D_MASK(16, 10)
+# define V3D_SMS_SEQ_PC_SHIFT                          10
+# define V3D_SMS_HUBCORE_STATUS_MASK                   V3D_MASK(9, 8)
+# define V3D_SMS_HUBCORE_STATUS_SHIFT                  8
+# define V3D_SMS_NEW_MODE_MASK                         V3D_MASK(7, 6)
+# define V3D_SMS_NEW_MODE_SHIFT                        6
+# define V3D_SMS_OLD_MODE_MASK                         V3D_MASK(5, 4)
+# define V3D_SMS_OLD_MODE_SHIFT                        4
+# define V3D_SMS_STATE_MASK                            V3D_MASK(3, 0)
+# define V3D_SMS_STATE_SHIFT                           0
+
 #endif /* V3D_REGS_H */

-- 
Git-154)


