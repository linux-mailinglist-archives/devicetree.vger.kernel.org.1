Return-Path: <devicetree+bounces-266140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBe/GkJnlGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:04:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2564C14C510
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1A85B300D353
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 869E3337118;
	Tue, 17 Feb 2026 13:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=norik.com header.i=@norik.com header.b="Sp+RJkDL"
X-Original-To: devicetree@vger.kernel.org
Received: from cp2.siel.si (cp2.siel.si [46.19.12.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C511C27472;
	Tue, 17 Feb 2026 13:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.19.12.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333416; cv=none; b=bps7+4vuZaDvhgnQMIQBHKHebnuHpP9N5Ix3UyXMi28QVUS/zwr5lXNKnK2eTY5Q8B5W2r4k/WeezRaK7kyhKsxowazceDyZKDaQ3dppfKnig1KMM8eItED4yNwKB6h0cYDy/up1P1GHohLn18QhOvu2owftqPXSVQGNSjH+R/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333416; c=relaxed/simple;
	bh=P6NP8XyPuBs0+oQqVjZeyvp5hlB1q01l271czqMkaA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kel48W0i29BD6lNkSVPYfmUVKMA5VKtfoT6tIJCIVWU5EI8rkWF2xg3Fdhw8KhaFT21MmgNqHqFV42WqynGHMI200rX2oEKU+k1eEkp17aX2cSzFOhHueI/r3rUqHrkVyOFFSJzu5ZGUMwJc/wRzKlE767Cynuu36P9HflFS18M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com; spf=pass smtp.mailfrom=norik.com; dkim=pass (2048-bit key) header.d=norik.com header.i=@norik.com header.b=Sp+RJkDL; arc=none smtp.client-ip=46.19.12.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=norik.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=QKhL5LaAcg+3T1EQz8Hq3UjAWUKkwldiyqgcrHgYjEs=; b=Sp+RJkDLpd6Pzfnd0sGsgv1Xvp
	vY5dFa0SjYwDJO0cQS/cj6oeWHHOOe9+tdsdMKsv2wXXEKvVTZ84O8d5GC+EKxYQEcluSRzV1deBS
	EfmXh78MJSjoQnl1BQ4Tr7GYftOz4KjKcQww5HVHjar/nhLsDXvHMlo6Ym1Im9XymbBLkwRBrsZQE
	wwyBo1xVIhPvV1K2oESv3pAzG36jil+RSsSj7eT/wqyKnJFVrUzoTWv1d7xMZZDjA7JLkofF3JWy6
	Uw0vIxgp6P4pcgGpdaUGVLsWVwTVGGaRnfjDY0l5D8ttLkieRVC0CX4rK8Hp0BGg6QSMXlFi+I9I0
	aENJlW0g==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:56892 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1vsKL3-00000007pWE-1QWi;
	Tue, 17 Feb 2026 13:38:01 +0100
From: Florijan Plohl <florijan.plohl@norik.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	upstream@lists.phytec.de
Subject: [PATCH 2/2] drm/panel: simple: Add Powertip PH800480T032-ZHC19 panel
Date: Tue, 17 Feb 2026 13:37:59 +0100
Message-ID: <20260217123759.169317-2-florijan.plohl@norik.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260217123759.169317-1-florijan.plohl@norik.com>
References: <20260217123759.169317-1-florijan.plohl@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: florijan.plohl@norik.com
X-Authenticated-Sender: cp2.siel.si: florijan.plohl@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[norik.com:s=default];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[norik.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_X_SOURCE(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-266140-lists,devicetree=lfdr.de];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[norik.com:-];
	HAS_X_ANTIABUSE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2564C14C510
X-Rspamd-Action: no action

Add support for the Powertip PH800480T032-ZHC19 7" (800x480) parallel
LCD-TFT panel.

Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 30 ++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 91ab280869ba..aa74f310d455 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -4068,6 +4068,33 @@ static const struct panel_desc powertip_ph800480t013_idf02  = {
 	.connector_type = DRM_MODE_CONNECTOR_DPI,
 };
 
+static const struct drm_display_mode powertip_ph800480t032_zhc19_mode = {
+	.clock = 27200,
+	.hdisplay = 800,
+	.hsync_start = 800 + 52,
+	.hsync_end = 800 + 52 + 2,
+	.htotal = 800 + 52 + 2 + 44,
+	.vdisplay = 480,
+	.vsync_start = 480 + 7,
+	.vsync_end = 480 + 7 + 2,
+	.vtotal = 480 + 7 + 2 + 2,
+};
+
+static const struct panel_desc powertip_ph800480t032_zhc19 = {
+	.modes = &powertip_ph800480t032_zhc19_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 152,
+		.height = 91,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
+		DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
+	.connector_type = DRM_MODE_CONNECTOR_DPI,
+};
+
 static const struct drm_display_mode primeview_pm070wl4_mode = {
 	.clock = 32000,
 	.hdisplay = 800,
@@ -5481,6 +5508,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "powertip,ph800480t013-idf02",
 		.data = &powertip_ph800480t013_idf02,
+	}, {
+		.compatible = "powertip,ph800480t032-zhc19",
+		.data = &powertip_ph800480t032_zhc19,
 	}, {
 		.compatible = "primeview,pm070wl4",
 		.data = &primeview_pm070wl4,
-- 
2.43.0


