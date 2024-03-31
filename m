Return-Path: <devicetree+bounces-54957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F2D8935D2
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEE49B21125
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40D61487D0;
	Sun, 31 Mar 2024 20:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xmAfihk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFAE1487D6
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916953; cv=none; b=YboneT5B1E1orZGPx82ZryHa1iMTDeh8teUeL+Ttw8/CpsUkevMGbaDmnekudjLXjnrScpAiiuNzlKjs9A+aBh6QyJqWudUzPf581UvIIxVZIB2VYVAfZHfWv5tX3GvZyq+46GM7kPm+wSIp5V7ovKjwcsVzZgiY8B/OuhrgCyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916953; c=relaxed/simple;
	bh=yY+O3A74gJfvweSEVBsGsRQtsdkU2oXgLZzLvkdvTv4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EyzI1r1ADuqYjakcPmDnlGquXuFnCUM2z2j+C3t5YjEuFJ5CBVoeSqptVFfHgcXGzFmyLPGfjG82hw0hWGTEIEG0w9W/MtB1/r+5dNh+0HO5PRG/J4gRvY78ASTfVvSMwGIZsNjIPKCThxDbdE6Ub41SBLNs+g5JFBLs3Bf2M/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xmAfihk7; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-513d23be0b6so3821692e87.0
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916950; x=1712521750; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wz3UhJ4xYSdgm48WihXb5Ur775HB6HGFpy/cnlygSBk=;
        b=xmAfihk7+BHxL+U27r0XvjfHzQ+E1na5S4zZgpV3m0HEl2ZfsGAUXj04zajYeyLidH
         eq2ZXokkO49Yk4gPouaVpV/0RGoONkRhpqZLkDdHBLzS/0wYtitf8SLBau1H+hvCIHbJ
         C/7A0ZbBSxDQJ0ekBDmJhfhwHltwbKYqTtJVnp0BAsFe5Rk6gd+K9bAYkvyqdJkA/ica
         1Zx/STvHY6ncdU/iXW4v8KXJinkybKrYAlZ9fBrdG9lURMyQtqjN4jXvSN2TUi/wA1zT
         5AsPMtThmtHomPw2wQpwJe4b42IbAVwUxYK4IXfiLbbVAKe6PqtImEXarCVMrZMg8vgY
         82Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916950; x=1712521750;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wz3UhJ4xYSdgm48WihXb5Ur775HB6HGFpy/cnlygSBk=;
        b=F0WiBxTYvyMv66ijW+RXCa/ZQMuPfgKr76blNfEG0nG/7Kx/Fcr2/+AgATJB3Pq6jl
         c8sJNyxXqkGN8/ONlTD5Pl2gpzj8RHZ/XfdYnmyXqR4KvIajHQTyRN8HLQwMyvi5NeS8
         xagZxMd+Gy4cNH2jmwjYKwH9OLSLBLSzA0kZpN9pfQYMOjUweLb+6zl0Uzm2dO/jzhAP
         bJzEFAzPuimRZ1LzuHoHOU+1MpD23VeNPJx/RucU4R7TYXBcncBGgkJ1SZPeWwPcxwCw
         +mC5VUCmeAX9m+QF51IYR0oeWspwiZBZ/Ezb4STvu6yIZCDj8j9P97ZwWulfjxVmHhAX
         DvIw==
X-Forwarded-Encrypted: i=1; AJvYcCXD5y/FH1DPraETRZOXfnftAkrokPlTHjPCMv4Q/J8FJp5Z/4RHk3bI/mfI31FkIsVp4146ytHxwJrJHZSQUacwU/nsHZS3xZIr+Q==
X-Gm-Message-State: AOJu0YwHEBhaImu8eLjRIdIO0hnfQHkJ4BJWwq7zO7ZkoEmwNkd8uFDX
	Kvk50Ja3EX9Nzx/KgsQabvKHK3WHqQ7GVoN8TyXiRLPXgXn5G6HU/LY8ik6j1UI=
X-Google-Smtp-Source: AGHT+IEHzVhYaRRfQunRUBg2nCTXUyrkKpKE02mf9SlmjzQqNUi1YakpduPB5hr25gvxrP4GEqAn5A==
X-Received: by 2002:a05:6512:3102:b0:515:a360:1d92 with SMTP id n2-20020a056512310200b00515a3601d92mr6829117lfb.67.1711916950154;
        Sun, 31 Mar 2024 13:29:10 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:02 +0300
Subject: [PATCH v2 05/12] drm/imx: ldb: drop custom EDID support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-5-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
In-Reply-To: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2635;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=yY+O3A74gJfvweSEVBsGsRQtsdkU2oXgLZzLvkdvTv4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCcePbH5Zjxnk0aodoAfmic8b1WXU85H/o8MAs
 QI1cw0GV9KJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHjwAKCRCLPIo+Aiko
 1eExB/9cHiJt7nCx5nPTg7TnqIDd4FGePmdaBsugHRvPqtnlcVLqQdlMqObc2812P0w01JTq4wx
 FGg2hfiOrpEzl7cNzqiXOeUbLkjCUG9nR78g74zKhuQM/OdwCSbiZ13rXNdWsDTheAeKPgWI0VY
 k4SMxFvLfT5xNiILgF5szhgNToFdF7Qsji5jH52IHwvWRnnkXvQS2jZnY0fv4NTgkryrDK7QcN4
 ETbkPipoMRHe8pVtl2vYcqyTCh75mwlkUrQBRLiyoC71/K15SIcl8KMvH2038c2KeetqGZEGDFD
 3V878u/Mos78tzrehAXNkCNSNFiS/wlAbD/ZvShtWwTiB/GX
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Bindings for the imx-ldb never allowed specifying the EDID in DT. None
of the existing DT files use it. Drop it now in favour of using debugfs
overrides or the drm.edid_firmware support.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
index 71d70194fcbd..1924d8921c62 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
@@ -72,7 +72,6 @@ struct imx_ldb_channel {
 	struct device_node *child;
 	struct i2c_adapter *ddc;
 	int chno;
-	void *edid;
 	struct drm_display_mode mode;
 	int mode_valid;
 	u32 bus_format;
@@ -142,13 +141,16 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 	if (num_modes > 0)
 		return num_modes;
 
-	if (!imx_ldb_ch->edid && imx_ldb_ch->ddc)
-		imx_ldb_ch->edid = drm_get_edid(connector, imx_ldb_ch->ddc);
+	if (imx_ldb_ch->ddc) {
+		const struct drm_edid *edid = drm_edid_read_ddc(connector,
+								imx_ldb_ch->ddc);
 
-	if (imx_ldb_ch->edid) {
-		drm_connector_update_edid_property(connector,
-							imx_ldb_ch->edid);
-		num_modes = drm_add_edid_modes(connector, imx_ldb_ch->edid);
+		if (edid) {
+			drm_edid_connector_update(connector, edid);
+			drm_edid_free(edid);
+
+			return drm_edid_connector_add_modes(connector);
+		}
 	}
 
 	if (imx_ldb_ch->mode_valid) {
@@ -553,7 +555,6 @@ static int imx_ldb_panel_ddc(struct device *dev,
 		struct imx_ldb_channel *channel, struct device_node *child)
 {
 	struct device_node *ddc_node;
-	const u8 *edidp;
 	int ret;
 
 	ddc_node = of_parse_phandle(child, "ddc-i2c-bus", 0);
@@ -567,17 +568,10 @@ static int imx_ldb_panel_ddc(struct device *dev,
 	}
 
 	if (!channel->ddc) {
-		int edid_len;
-
 		/* if no DDC available, fallback to hardcoded EDID */
 		dev_dbg(dev, "no ddc available\n");
 
-		edidp = of_get_property(child, "edid", &edid_len);
-		if (edidp) {
-			channel->edid = kmemdup(edidp, edid_len, GFP_KERNEL);
-			if (!channel->edid)
-				return -ENOMEM;
-		} else if (!channel->panel) {
+		if (!channel->panel) {
 			/* fallback to display-timings node */
 			ret = of_get_drm_display_mode(child,
 						      &channel->mode,
@@ -744,7 +738,6 @@ static void imx_ldb_remove(struct platform_device *pdev)
 	for (i = 0; i < 2; i++) {
 		struct imx_ldb_channel *channel = &imx_ldb->channel[i];
 
-		kfree(channel->edid);
 		i2c_put_adapter(channel->ddc);
 	}
 

-- 
2.39.2


