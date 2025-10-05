Return-Path: <devicetree+bounces-223726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AFABBCE4E
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 01:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2ECA3A9E36
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 23:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65DD156230;
	Sun,  5 Oct 2025 23:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="pP20Wmir"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FFEB67A
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 23:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759708565; cv=none; b=kpESSSvHtbBuxNT8CcRaravhQctQIpjLLsgKN/D30RbHKPUI0So6QYy0NiSDMGSepdAD3F0LFKivigr2tyy4ug7u6JdQV3J1Wu4aisk545txc9cIpicInX9Nw2vAm2qErcAQ2hWDTJCiav1SBWfs8u5oT0ilWb2IBhLM1s464Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759708565; c=relaxed/simple;
	bh=5iq9Aj5coQvJO210KAv+MUcPJZvSNxLS8xs01EChgI0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Es0R6GM3nmA7kiMQvvm0mTK/4ABZjpMrLuAwSxg7KQY//NKh9Fqemv5d01BdY7jhd1T9CcbpmP+Foe6MZ90MJu9iM19LnNuDq0wcC0iqdFyEJBu9Kj6YAjIiasBWEo8YWWx7tsvljOkMozmX0XXKABelDqTzv0mBzFaF1K2Upjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=pP20Wmir; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id D1B091FBC;
	Mon,  6 Oct 2025 01:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759708464;
	bh=5iq9Aj5coQvJO210KAv+MUcPJZvSNxLS8xs01EChgI0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pP20Wmir0FbCWvKBGwg0Luw4IlbeCOnT1kkrATzJBVVEEXAHr2HiUn+BC5hr1VM8F
	 uFMcTe2Nm+LlLoDsGSO9k7lKkZF4hgEDvvJg/DDrYVLiynPYBtDv3ZTYomhwbZDozP
	 ZJJjOhs72bdK2ekOFuW5HNfEhhGPGRNzXMu/jjNY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Alexey Charkov <alchark@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v2 3/5] drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio member in main struct
Date: Mon,  6 Oct 2025 02:55:39 +0300
Message-ID: <20251005235542.1017-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

The name of the enable_gpio member in struct rockchip_hdmi_qp is too
generic, as initially "borrowed" from downstream BSP code.  Moreover,
this hasn't been really in use so far, since there is neither a DT
providing an "enable-gpios" property to any of the "hdmi" nodes, nor a
binding documenting it.

The actual purpose of this GPIO line is to control the level shifters
for the HDMI TX data lines when switching between TMDS and FRL operating
modes, i.e. asserted for the former and deasserted for the latter.

A previous patch introduced the "tmds-enable-gpios" property of the
RK3588 HDMI TX Controller binding, hence pass the updated string to
devm_gpiod_get_optional() and rename the struct member accordingly.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 4e7794aa2dde..329a69a548bd 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -91,7 +91,7 @@ struct rockchip_hdmi_qp {
 	struct rockchip_encoder encoder;
 	struct dw_hdmi_qp *hdmi;
 	struct phy *phy;
-	struct gpio_desc *enable_gpio;
+	struct gpio_desc *tmds_enable_gpio;
 	struct delayed_work hpd_work;
 	int port_id;
 	const struct rockchip_hdmi_qp_ctrl_ops *ctrl_ops;
@@ -117,7 +117,7 @@ static void dw_hdmi_qp_rockchip_encoder_enable(struct drm_encoder *encoder)
 	unsigned long long rate;
 
 	/* Unconditionally switch to TMDS as FRL is not yet supported */
-	gpiod_set_value(hdmi->enable_gpio, 1);
+	gpiod_set_value(hdmi->tmds_enable_gpio, 1);
 
 	if (crtc && crtc->state) {
 		rate = drm_hdmi_compute_mode_clock(&crtc->state->adjusted_mode,
@@ -508,11 +508,11 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 	if (ret < 0)
 		return dev_err_probe(hdmi->dev, ret, "Failed to get clocks\n");
 
-	hdmi->enable_gpio = devm_gpiod_get_optional(hdmi->dev, "enable",
-						    GPIOD_OUT_HIGH);
-	if (IS_ERR(hdmi->enable_gpio))
-		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->enable_gpio),
-				     "Failed to request enable GPIO\n");
+	hdmi->tmds_enable_gpio = devm_gpiod_get_optional(hdmi->dev, "tmds-enable",
+							 GPIOD_OUT_HIGH);
+	if (IS_ERR(hdmi->tmds_enable_gpio))
+		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->tmds_enable_gpio),
+				     "Failed to request TMDS enable GPIO\n");
 
 	hdmi->phy = devm_of_phy_get_by_index(dev, dev->of_node, 0);
 	if (IS_ERR(hdmi->phy))
-- 
Regards,

Laurent Pinchart


