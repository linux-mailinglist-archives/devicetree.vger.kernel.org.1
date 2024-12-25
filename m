Return-Path: <devicetree+bounces-133930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B69F39FC4D8
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 11:54:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E42116222F
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 10:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9400A1922E6;
	Wed, 25 Dec 2024 10:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="KzBv9JSm"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08FB615443F;
	Wed, 25 Dec 2024 10:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735124030; cv=none; b=syC556zkB15TFTsIQiCa9FxUUNQBUcFRag73yk5D4tqR72/MOxuppWbuh/qNn0iKmA/Nng/nADcYveS1Af7dysCOEgr7yu+qP+oQD/VvBlGpl0ZhYE40nY6YQUEuuo1zIhu/iqxbkjKzkQVbUfpNLPqHyWgyECh4P3LUAH2heqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735124030; c=relaxed/simple;
	bh=mYlm1yetp/+pK0praJpLEKRuKYCMl9ShjZpi5IExGfo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XQP1mSaCEiyZDctXcNFlfx8nXcR/RbLAogRu+gchArkmQ6ha6uJU3I6azDWwpFbcX+z5UPRHA3FZrzs/+quFwv0Eu1dCJLc3v8bO0yxeBf4w35cbNljcFm9EmQmNnkeqoFqCMg2SU+84TqkgfBkSfPptI5IiwOMT4RQd3je+enw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=KzBv9JSm; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=6aCxR
	0l8EvSQGKG5+yEFrWRsCLXuZHQCauP7BxS/fhM=; b=KzBv9JSmXd62/Ko0aCDck
	jLFtpQvlNfuvaupAt6/3zYKUGeoNsloVUU6CpyUXLT3ngQXLn6jkSttLsD3Kaw3z
	HkRu3FVz3d6UYfyYsgLRLb31gASShuJCv0qnPepvMWYWYdFU5RU5kwGuoSkSWwug
	7OKKO07qCPvpW+xdiPm96E=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgCnfIF24GtnkqkWCg--.3201S3;
	Wed, 25 Dec 2024 18:37:47 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: cristian.ciocaltea@collabora.com,
	krzk+dt@kernel.org,
	mripard@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 1/3] drm/rockchip: dw_hdmi_qp: Add platform ctrl callback
Date: Wed, 25 Dec 2024 18:37:29 +0800
Message-ID: <20241225103741.364597-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241225103741.364597-1-andyshrk@163.com>
References: <20241225103741.364597-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PygvCgCnfIF24GtnkqkWCg--.3201S3
X-Coremail-Antispam: 1Uf129KBjvJXoW3WFWrZF43WF4xJFyUAw4fKrg_yoW7GFWkp3
	yUAw1YyrWkJF47Jr4FvF97tFW2y3W7J3ySqF97tFyYy3WYqrn5KF93Wa1rJr4SvF9xuF47
	C39Yya4rJF1UGFUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSSoJUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqR3AXmdr3gYzHgAAsT

From: Andy Yan <andy.yan@rock-chips.com>

There are some control bits for IO and interrupts status scattered
across different GRF on differt SOC.
Add platform callback for this IO setting and interrupts status
handling.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 81 ++++++++++++-------
 1 file changed, 54 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index c36fc130b734..b21e868e7c16 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -62,6 +62,12 @@ struct rockchip_hdmi_qp {
 	int port_id;
 };
 
+struct rockchip_hdmi_qp_ctrl_ops {
+	void (*io_init)(struct rockchip_hdmi_qp *hdmi);
+	irqreturn_t (*irq_callback)(int irq, void *dev_id);
+	irqreturn_t (*hardirq_callback)(int irq, void *dev_id);
+};
+
 static struct rockchip_hdmi_qp *to_rockchip_hdmi_qp(struct drm_encoder *encoder)
 {
 	struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
@@ -226,9 +232,47 @@ static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static void dw_hdmi_qp_rk3588_io_init(struct rockchip_hdmi_qp *hdmi)
+{
+	u32 val;
+
+	val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
+	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
+	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
+	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
+
+	regmap_write(hdmi->vo_regmap,
+		     hdmi->port_id ? RK3588_GRF_VO1_CON6 : RK3588_GRF_VO1_CON3,
+		     val);
+
+	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK, RK3588_SET_HPD_PATH_MASK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
+
+	if (hdmi->port_id)
+		val = HIWORD_UPDATE(RK3588_HDMI1_GRANT_SEL,
+				RK3588_HDMI1_GRANT_SEL);
+	else
+		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+				RK3588_HDMI0_GRANT_SEL);
+	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
+
+	if (hdmi->port_id)
+		val = HIWORD_UPDATE(RK3588_HDMI1_HPD_INT_MSK, RK3588_HDMI1_HPD_INT_MSK);
+	else
+		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+}
+
+static const struct rockchip_hdmi_qp_ctrl_ops rk3588_hdmi_ctrl_ops = {
+	.io_init		= dw_hdmi_qp_rk3588_io_init,
+	.irq_callback	        = dw_hdmi_qp_rk3588_irq,
+	.hardirq_callback	= dw_hdmi_qp_rk3588_hardirq,
+};
+
 struct rockchip_hdmi_qp_cfg {
 	unsigned int num_ports;
 	unsigned int port_ids[MAX_HDMI_PORT_NUM];
+	const struct rockchip_hdmi_qp_ctrl_ops *ctrl_ops;
 	const struct dw_hdmi_qp_phy_ops *phy_ops;
 };
 
@@ -238,6 +282,7 @@ static const struct rockchip_hdmi_qp_cfg rk3588_hdmi_cfg = {
 		0xfde80000,
 		0xfdea0000,
 	},
+	.ctrl_ops = &rk3588_hdmi_ctrl_ops,
 	.phy_ops = &rk3588_hdmi_phy_ops,
 };
 
@@ -282,6 +327,12 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 	if (!cfg)
 		return -ENODEV;
 
+	if (!cfg->ctrl_ops || !cfg->ctrl_ops->io_init ||
+	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->irq_callback) {
+		dev_err(dev, "Missing platform ctrl ops\n");
+		return -ENODEV;
+	}
+
 	hdmi->dev = &pdev->dev;
 	hdmi->port_id = -ENODEV;
 
@@ -357,31 +408,7 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
-	val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
-	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
-	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
-	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
-	regmap_write(hdmi->vo_regmap,
-		     hdmi->port_id ? RK3588_GRF_VO1_CON6 : RK3588_GRF_VO1_CON3,
-		     val);
-
-	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
-			    RK3588_SET_HPD_PATH_MASK);
-	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
-
-	if (hdmi->port_id)
-		val = HIWORD_UPDATE(RK3588_HDMI1_GRANT_SEL,
-				    RK3588_HDMI1_GRANT_SEL);
-	else
-		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
-				    RK3588_HDMI0_GRANT_SEL);
-	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
-
-	if (hdmi->port_id)
-		val = HIWORD_UPDATE(RK3588_HDMI1_HPD_INT_MSK, RK3588_HDMI1_HPD_INT_MSK);
-	else
-		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
-	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+	cfg->ctrl_ops->io_init(hdmi);
 
 	INIT_DELAYED_WORK(&hdmi->hpd_work, dw_hdmi_qp_rk3588_hpd_work);
 
@@ -394,8 +421,8 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 		return irq;
 
 	ret = devm_request_threaded_irq(hdmi->dev, irq,
-					dw_hdmi_qp_rk3588_hardirq,
-					dw_hdmi_qp_rk3588_irq,
+					cfg->ctrl_ops->hardirq_callback,
+					cfg->ctrl_ops->irq_callback,
 					IRQF_SHARED, "dw-hdmi-qp-hpd",
 					hdmi);
 	if (ret)
-- 
2.34.1


