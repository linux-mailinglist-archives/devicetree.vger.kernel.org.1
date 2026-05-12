Return-Path: <devicetree+bounces-296318-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OVUEzFBA2oy2QEAu9opvQ
	(envelope-from <devicetree+bounces-296318-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:03:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2AD523334
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BBED431FC582
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6333BFAD7;
	Tue, 12 May 2026 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XlJWRFAy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28943BB693
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 14:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778596913; cv=none; b=YbuwExp4TbL7DgLnZYsI+i/r6LmvWTKS3Sd4Ccd9YnUA3SKDDjEKZ5cHoqhMVw4oVLF4CZvoNHWP18SpY7DgP1/UiA9MBtXw7XDnpxFsRdVcfzOyiMhujSDUJ1rRXoaIfjNzNqYDEGyjAnF8fugiLHsZ3V9wlZ1ORXrbe6QVno4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778596913; c=relaxed/simple;
	bh=1lqMGNoPERN45B9lFH9DjhU6xRbSqUuKRwNjquWzcus=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XGu5u3QxHosj+H344cfzF/BI9jkPjy/LwewV6A/eRUKkLShVhUGkGPgZ7qh7NbNnHFrsIrOhRKPcDpoD4J4zb03NMcQBxRXJmynV6vITdMOZeVp2Kl3OOxe++CYGtjpJsq812kZ0O9nUYD6WjW7DS8roPDzQtM95qI5UmJmrDHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XlJWRFAy; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43d76dd4ee8so5201125f8f.2
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 07:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778596909; x=1779201709; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXd9Im5JkcfNXeD9xdaj2wvZlrhVhMEcCS8MB51Wmes=;
        b=XlJWRFAyySXG+1MYHpmagG5bX5DKtTyG0Xt8EeXkOlQJC5AMomksau4dASE0ktIMSX
         wuenEn1/QZOe/ULtvmx8KWjQTpNmqJrXKX5w2/cPdI5aClPv6qZH8i3m37/1ZKROFTsZ
         5PDeuSjq+Ca5ok+UC3uZqdUUDiPTWjbtbxeK81UU4cpOQg68Bo8u6aQfri2YXQLq4YnZ
         7QDQsmMR/i2xeREuOG7ZIwnEEnMYzC9f+iVGSMUcwCeGlRKuoLlE+1s7pigTXx531m5k
         WoklHIjhAzTA92sI8eED1rSL7ffZXmc7XiCpOTYqZur1FpYpXtc4gObXWgIl0VQH4Ol2
         D3RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778596909; x=1779201709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hXd9Im5JkcfNXeD9xdaj2wvZlrhVhMEcCS8MB51Wmes=;
        b=oS4ZoANhsS8gKrp/G+YekHcpWi2GNnGR0HL7yMGgn9pOOvitF1UTQ34Cl+OPDLnO16
         mIil8aTnRt0TJgLtcGm1CJ5buYNIEPbkvPASmRhAvytEAHdRwmhEOqsQnf25t46ZZkTm
         HKDMwJYhfIMHsFAtg3xHFtzO5AQz5bG5pK/Q+NSbGkpP5xCJ/uquynBAsxMMb8ZRn2AK
         rSepE2Yjqmq2h34jL+5IMy5SClV64zyn/0B9nyKT7okyHQECITgyY1/qikQhOWbxRDG6
         s7yPuFw5PyyTlHDhO59sZo47VRiu3u/gWHhatrtkBg3huXgiX8n2RV5VRUfFYXu5vFwi
         uyUA==
X-Forwarded-Encrypted: i=1; AFNElJ+pgTXrVMn7/m4MIzDGfz1Upw1L2aUEgVt7Hvcm83rmyAYpRMlellpSTclr8cMkURE4ZIQnNN186d+T@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Pw6BjlSU9rG8ezKFcFfXzk9X/OFlra9OYOt/d92yAWYGLJ0T
	1LyxSo4kCR+kGP45O+ufTQihZaIyRJ5rjvwTO7lPXfj6qDn4386nqKor
X-Gm-Gg: Acq92OGJsjTu0P3Q1SG5el4ZCPEtsJJzfa+NCKZP5LrWjZn8D06tB3Qugwih4rsMneX
	i9cnxSr72CjL0ugt4z0EtGggSK92L7mz0OcvYYn2RlF+HUYWPCIByGmi3wB33nOrxlckYscZon+
	EsejgZicu0glaisCYjAsjBsfPqjgYyGJ1M01Ej/mdrg6bjnULO43TvkKtcxdlBjReCL4x4Txm01
	qbUGITgjRDAQbxxsd0l3Cy9hdehAX2T2BIgzt+cjUHa70zH7FjhL83K5NVmEDAKRdF+dV+Jwr35
	Gmb6Bxb/vft2Z73egw+zDM6FxU8cFoy/pRITqr912o+a+1aZpz1+Ug694BBoBwnYFMjICno3VWo
	r3b13OEpH8rKDj0WcnvICaD9dCKVFcYgdGC9fVkBJNH3egLgMjQmKkq8yIJYvXJk3TVrlS4YXoJ
	DEXGvmqapJCJkUmC4EaVeNaUjlK3nbxnhKHZ2JutD5iaBa5fcrGx9A9lIDveoh1Z+ZdJvLQAakT
	QpRLDZI+Z4FDGr1FLCLVTWFWiFJjeUflkI=
X-Received: by 2002:a05:6000:40de:b0:43b:3b80:6776 with SMTP id ffacd0b85a97d-456a44fc269mr20806748f8f.30.1778596903537;
        Tue, 12 May 2026 07:41:43 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:77f5:545a:798:321])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45491cab9c2sm34978713f8f.31.2026.05.12.07.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 07:41:42 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 5/5] drm: renesas: rz-du: Add support for RZ/T2H SoC
Date: Tue, 12 May 2026 15:41:04 +0100
Message-ID: <20260512144104.761531-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260512144104.761531-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260512144104.761531-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4F2AD523334
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296318-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[bp.renesas.com,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,pengutronix.de,glider.be];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,renesas.com,bp.renesas.com];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-0.987];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,renesas.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The RZ/T2H (R9A09G077) SoC includes a DU with a DPI interface,
supporting resolutions up to WXGA with two RPFs for layer blending.
Unlike earlier RZ/G2L SoCs, RZ/T2H requires explicit assertion of a
DPI output-enable signal (DU_MCR0_DPI_EN) during CRTC startup.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
v2->v3:
- Moved clock limits from device_info to output_routing to allow
  per-output constraints.

v1->v2:
- Added Reviewed-by tag from Laurent Pinchart.
---
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_crtc.c |  7 ++++++-
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.c  | 14 ++++++++++++++
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.h  | 10 ++++++++++
 3 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/renesas/rz-du/rzg2l_du_crtc.c b/drivers/gpu/drm/renesas/rz-du/rzg2l_du_crtc.c
index 48065f4952a3..d0f01aa642a7 100644
--- a/drivers/gpu/drm/renesas/rz-du/rzg2l_du_crtc.c
+++ b/drivers/gpu/drm/renesas/rz-du/rzg2l_du_crtc.c
@@ -28,6 +28,7 @@
 #include "rzg2l_du_vsp.h"
 
 #define DU_MCR0			0x00
+#define DU_MCR0_DPI_EN		BIT(0)
 #define DU_MCR0_DI_EN		BIT(8)
 
 #define DU_DITR0		0x10
@@ -217,8 +218,12 @@ static void rzg2l_du_crtc_put(struct rzg2l_du_crtc *rcrtc)
 static void rzg2l_du_start_stop(struct rzg2l_du_crtc *rcrtc, bool start)
 {
 	struct rzg2l_du_device *rcdu = rcrtc->dev;
+	u32 val = DU_MCR0_DI_EN;
 
-	writel(start ? DU_MCR0_DI_EN : 0, rcdu->mmio + DU_MCR0);
+	if (start && rzg2l_du_has(rcdu, RZG2L_DU_FEATURE_DPIO_OE))
+		val |= DU_MCR0_DPI_EN;
+
+	writel(start ? val : 0, rcdu->mmio + DU_MCR0);
 }
 
 static void rzg2l_du_crtc_start(struct rzg2l_du_crtc *rcrtc)
diff --git a/drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.c b/drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.c
index d1bc205eb5f8..0d4021429577 100644
--- a/drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.c
+++ b/drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.c
@@ -65,10 +65,24 @@ static const struct rzg2l_du_device_info rzg2l_du_r9a09g057_info = {
 	},
 };
 
+static const struct rzg2l_du_device_info rzg2l_du_r9a09g077_info = {
+	.channels_mask = BIT(0),
+	.routes = {
+		[RZG2L_DU_OUTPUT_DPAD0] = {
+			.possible_outputs = BIT(0),
+			.port = 0,
+			.mode_clock_min = 5000,
+			.mode_clock_max = 100000,
+		},
+	},
+	.features = RZG2L_DU_FEATURE_DPIO_OE,
+};
+
 static const struct of_device_id rzg2l_du_of_table[] = {
 	{ .compatible = "renesas,r9a07g043u-du", .data = &rzg2l_du_r9a07g043u_info },
 	{ .compatible = "renesas,r9a07g044-du", .data = &rzg2l_du_r9a07g044_info },
 	{ .compatible = "renesas,r9a09g057-du", .data = &rzg2l_du_r9a09g057_info },
+	{ .compatible = "renesas,r9a09g077-du", .data = &rzg2l_du_r9a09g077_info },
 	{ /* sentinel */ }
 };
 
diff --git a/drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.h b/drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.h
index 307ae70dd382..2cb2d1895979 100644
--- a/drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.h
+++ b/drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.h
@@ -20,6 +20,8 @@
 struct device;
 struct drm_property;
 
+#define RZG2L_DU_FEATURE_DPIO_OE	BIT(0)	/* Has DPIO output enable control */
+
 enum rzg2l_du_output {
 	RZG2L_DU_OUTPUT_DSI0,
 	RZG2L_DU_OUTPUT_DPAD0,
@@ -48,10 +50,12 @@ struct rzg2l_du_output_routing {
  * struct rzg2l_du_device_info - DU model-specific information
  * @channels_mask: bit mask of available DU channels
  * @routes: array of CRTC to output routes, indexed by output (RZG2L_DU_OUTPUT_*)
+ * @features: device features (RZG2L_DU_FEATURE_*)
  */
 struct rzg2l_du_device_info {
 	unsigned int channels_mask;
 	struct rzg2l_du_output_routing routes[RZG2L_DU_OUTPUT_MAX];
+	unsigned int features;
 };
 
 #define RZG2L_DU_MAX_CRTCS		1
@@ -77,6 +81,12 @@ static inline struct rzg2l_du_device *to_rzg2l_du_device(struct drm_device *dev)
 	return container_of(dev, struct rzg2l_du_device, ddev);
 }
 
+static inline bool rzg2l_du_has(struct rzg2l_du_device *rcdu,
+				unsigned int feature)
+{
+	return rcdu->info->features & feature;
+}
+
 const char *rzg2l_du_output_name(enum rzg2l_du_output output);
 
 #endif /* __RZG2L_DU_DRV_H__ */
-- 
2.54.0


