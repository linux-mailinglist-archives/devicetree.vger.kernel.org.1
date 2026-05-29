Return-Path: <devicetree+bounces-304129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPQgD2VUGWphvQgAu9opvQ
	(envelope-from <devicetree+bounces-304129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:55:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8505FF91C
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:55:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AC1631B585B
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 08:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D33FE3BED01;
	Fri, 29 May 2026 08:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="k2c0tiLM"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6F63B47CD;
	Fri, 29 May 2026 08:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780044466; cv=none; b=Le8oLBLkrIWRF6XT4asabZ7Y1hbCwCt72Fw3B+DQa2lngKZd+FEcfu/MpeEgho4JNs6OAYkmX79qLQTxe7cHpx6KDxtA7yumiCB3q31kMnpxJ6fsnBFUWAlDR3LgfP46HiT+FDfYK6AD9XZmiGo/ympPJmR7EZ/zjn+2HC2h6vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780044466; c=relaxed/simple;
	bh=u7ub0LTq/LG3vy2G9rU1xYBZYiavDBGmr5fWkQDAfvw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZbW1ZjfQLZNPfJMaMKRob5Fj1iZmaPdusfIo7WMhtVbD34uOCLujHnjfiBrhcMdoxf+xjPO9E3D/dPNJQEVvRyTB+Q18O+7wZDfrlMLonCs0vzisUk74Cf7b6/56YrRNsK4jUYucWVMyJ36BNAxzunznt8yQJQdSfanmOb8+1i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=k2c0tiLM; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 56BC57B41;
	Fri, 29 May 2026 10:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1780044425;
	bh=u7ub0LTq/LG3vy2G9rU1xYBZYiavDBGmr5fWkQDAfvw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=k2c0tiLMtbj9x3ruTO1G5u+mQPy872fvMwsRLRPoWQbSOTziBYBmvosni7z6iaHxL
	 VddCKR2s5RGHSnuj89m0LkmRplEkuUCS6zVfeNnroWT5klMtPdI334zBxmtXxhX1vX
	 3sJ0M9LdTgZJaSLOw4OKSmCWdeCR9Zw91HhWG5qo=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Fri, 29 May 2026 11:45:39 +0300
Subject: [PATCH v3 09/15] drm/tidss: Add external data and sync signal edge
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260529-beagley-ai-display-v3-9-7fefdc5d1adf@ideasonboard.com>
References: <20260529-beagley-ai-display-v3-0-7fefdc5d1adf@ideasonboard.com>
In-Reply-To: <20260529-beagley-ai-display-v3-0-7fefdc5d1adf@ideasonboard.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Swamil Jain <s-jain1@ti.com>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3376;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=u7ub0LTq/LG3vy2G9rU1xYBZYiavDBGmr5fWkQDAfvw=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBqGVKOpGTOrBpu7DnAvMn2vUXlqc+3UkJIlVwgh
 TJrA2Odpg6JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCahlSjgAKCRD6PaqMvJYe
 9WiPEACqKzBs/FHRnaiJRIHKrPMjTlqh9eERaooXqiPUii4kISHReqEVLizSgI6QLgAsjAWBXLh
 esVVvhFkp2beNEKidE84COGKtvOR6UtuloOQlwjNBXIVfs2OavSORoKohn4YDTfqmw+6PB+q98z
 51TVpqUevuiUdSBM6V/A59/xbIPMYcP2AZbOr5mDooSVQR4zCrU54v8Ef2ZYQFF9DwiZhJ0hR6N
 X0NPxaoaBQyrCHHHyxC79+vCo5vAMGioyc90Qd7Cpdt7ZVru8V8aTyqobRNmhK1XXg/HPyG599F
 oz1Kfl+S853lKrt1f2BPj03/Edt/Jd7yFWJdF3i4RSgwp/KhZhVY7Y0cax0SX2UfOhOJJFJg2G4
 ySKNcsj6D2rvxNKGKntW0/8eukDgFlBxqdWgc4Kt30qMCzOT6BZHwv8myZAO2mClsjusQBhsmgS
 BEBt/l2Y1vi67CIx1/4vYjSA80/rsq+46z1gJ4LQi1EPg68qzWqkIMKaRnQDl5nc9Tb0ewrK5+k
 2gZO45XsF+d7+DpFayY84D4t8wrSF6vkp2Q5mCGtc7vnA4+KzLBpn5kK4hcdzkKBHfCoov8d3dU
 sDe+xu4VT79NiNCUKwle6aMb4YM5YX4a6YLENAUtdapaT+r4IHWEhwGKoUxmel4OvyNj8yju2Wp
 BIPur3rlO/Ptodg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304129-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linux.dev,ti.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:dkim,bootlin.com:email]
X-Rspamd-Queue-Id: 8C8505FF91C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DPI output pipeline in K3 SoCs contains the display subsystem (DSS)
which produces the in-SoC parallel video signal, and a DPI block which
adjusts the signal to the external MIPI DPI output.

The DSS IP has registers to configure whether the data and sync signals
are driven on rising or falling clock edge, and on some SoCs these are
automatically conveyed to the DPI block which needs that configuration
to properly output the MIPI DPI signal.

However, on some SoCs the DPI block configuration has to be done
manually, using an extra register outside the DSS, DPI0_CLK_CTRL from
MAIN_CTRL_MMR_CFG0 block, which controls the DPI block's behavior.

Add the support to get the regmap to the register via syscon, and
configure the bits before enabling the video output.

Original patch from Louis Chauvet <louis.chauvet@bootlin.com>

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/tidss/tidss_dispc.c      | 25 +++++++++++++++++++++++++
 drivers/gpu/drm/tidss/tidss_dispc_regs.h |  4 ++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
index c21ac3f51720..08342a9a5e8c 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -467,6 +467,8 @@ struct dispc_device {
 	const struct dispc_features *feat;
 
 	struct clk *fclk;
+	struct regmap *syscon_dpi_io_ctrl;
+	unsigned int syscon_dpi_io_ctrl_offset;
 
 	bool is_enabled;
 
@@ -1201,6 +1203,13 @@ void dispc_vp_prepare(struct dispc_device *dispc, u32 hw_videoport,
 				  mode->crtc_hdisplay - 1) |
 		       FIELD_PREP(DISPC_VP_SIZE_SCREEN_VDISPLAY_MASK,
 				  mode->crtc_vdisplay - 1));
+
+	if (dispc->vp_data[hw_videoport].dpi_output && dispc->syscon_dpi_io_ctrl) {
+		regmap_write(dispc->syscon_dpi_io_ctrl,
+			     dispc->syscon_dpi_io_ctrl_offset + 0x0,
+			     (!ipc ? DPI0_CLK_CTRL_DATA_CLK_INVDIS : 0) |
+			     (rf ? DPI0_CLK_CTRL_SYNC_CLK_INVDIS : 0));
+	}
 }
 
 void dispc_vp_enable(struct dispc_device *dispc, u32 hw_videoport)
@@ -2989,6 +2998,22 @@ int dispc_init(struct tidss_device *tidss)
 
 	dispc_init_errata(dispc);
 
+	dispc->syscon_dpi_io_ctrl =
+		syscon_regmap_lookup_by_phandle_args(tidss->dev->of_node,
+						     "ti,dpi-io-ctrl", 1,
+						     &dispc->syscon_dpi_io_ctrl_offset);
+
+	if (IS_ERR(dispc->syscon_dpi_io_ctrl)) {
+		r = PTR_ERR(dispc->syscon_dpi_io_ctrl);
+
+		if (r == -ENOENT) {
+			dispc->syscon_dpi_io_ctrl = NULL;
+		} else {
+			return dev_err_probe(dispc->dev, r,
+					     "failed to get 'ti,dpi-io-ctrl'\n");
+		}
+	}
+
 	dispc->fourccs = devm_kcalloc(dev, ARRAY_SIZE(dispc_color_formats),
 				      sizeof(*dispc->fourccs), GFP_KERNEL);
 	if (!dispc->fourccs)
diff --git a/drivers/gpu/drm/tidss/tidss_dispc_regs.h b/drivers/gpu/drm/tidss/tidss_dispc_regs.h
index 382027dddce8..4cdde24d8372 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc_regs.h
+++ b/drivers/gpu/drm/tidss/tidss_dispc_regs.h
@@ -333,4 +333,8 @@ enum oldi_mode_reg_val { SPWG_18 = 0, JEIDA_24 = 1, SPWG_24 = 2 };
 
 #define AM65X_OLDI_PWRDN_TX		BIT(8)
 
+/* Bits in the MAIN_CTRL_MMR_CFG0_DPI0_CLK_CTRL register */
+#define DPI0_CLK_CTRL_DATA_CLK_INVDIS BIT(8)
+#define DPI0_CLK_CTRL_SYNC_CLK_INVDIS BIT(9)
+
 #endif /* __TIDSS_DISPC_REGS_H */

-- 
2.43.0


