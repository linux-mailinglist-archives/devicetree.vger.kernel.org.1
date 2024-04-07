Return-Path: <devicetree+bounces-56983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3052089B4C6
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 01:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66C02B20EB2
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 23:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3B644C65;
	Sun,  7 Apr 2024 23:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cGm49k/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D448444C7B
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 23:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712534037; cv=none; b=VA5gI7T2keMA7g5rUT+Bdz0rg2C88+v2tnsFZeAJrUhBr3kfZWWvSKDpkkIyQ23yVRb6qs/N9oBr9GhaAINEn8O9UVwHzy17akyDxXbCW0GzGj58m+vOoSKZnk0F49PZ8Ao6KRYvexxESmm/NvkyZZp8mBvt3gnFV9X8aFqm3uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712534037; c=relaxed/simple;
	bh=ir5CM+jVaND4C9bLuSFQauIuwSNRo2ScqG2rMJDBLjA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mUmvmEr/qCnNVWhsnmmM+iu6BEDYXZ6XMNEqfaBfyLigOp3mQgCMt+K2vJm7KW2pxtZGNDP20+69ecMd/iAvrx45C73hpxE4lyP0vFii55o+6AdjjPMzCZKVcGN2riJiRsb+Trc8WHj2FvEAWtrp0mJSRIc6KdXY9K/r2UqipaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cGm49k/5; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-516d264d0e4so2744631e87.0
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 16:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712534034; x=1713138834; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+T+p5YoQyUiQemU/jDWxQz+rt6jIm9aQcddIMzbzpGw=;
        b=cGm49k/5bSGuLvflDjQcbrHtSJS5HiBcW7p2oixNyZ56/EXx7PvZanKAuQMVgvkBQZ
         5mOSnb3yFvq9D67l1ntBjxjN1D8LF6jXfn6NbikISqEMaDYH8iZi1zoMd/51vH1QmIxx
         zzH4h1N4TAxJjYRIQkndkXUlXWexLTylfqDkcYfozzSt59Dn7bqxRdD4CZDCnqrSp6cP
         HMP3sCDw1+HnjUT//lF732HqLg7j4/2tORcjypHzi+vN6qDTDqxw8d16/oHi8Y/JdTUt
         +mjlu4fa59yIxYEhWVUG8k4UI8tTz507R2vYN2r+e3Mcs2fJc1io5WbPZ47a4404Vh8+
         IKKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712534034; x=1713138834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+T+p5YoQyUiQemU/jDWxQz+rt6jIm9aQcddIMzbzpGw=;
        b=TK3ISdEV3BQoDSszbeAdNRrSxjbBCoHYg2bRZftdyxVMY6OKzLTFfFlzsnlhpBoCv1
         Owa5iYX0PMZuULH9LF8nz3C+UHI39q2SvNXlDGuXPWt+KI5D0YUYNn6gyNo6zgD9B5xf
         BO5CFAVV+Fxtz3t6/hDOZL5FFndlPimtnJDc8FqP3R+IBpwTLiVkAmJEv59C+WUBFZDv
         gpWUPbzsIv6aehBrxe7Mhpu+6hUmDQQpD4swDD+ANFZskza2AXt5dVhr7e0BwFkTnqW4
         ohOD2XAHXnYcX5RWyxtwO7iP+V3uXhZ3LJoAMdDpBL95YCIR+QhH2inWPcM0XrbVPrP0
         KPcA==
X-Forwarded-Encrypted: i=1; AJvYcCWW26VGzJHXzpSuOEoB/5vVDjYExnSnbPHSupLvTLBoiuVWhre+QRPXvIWlx/lXGEH983iXpw1QTRlCf6QIlDNO93VC7SVHT48gGw==
X-Gm-Message-State: AOJu0YwtAwgCL01aOFwUw8bT/UkkvoFDCgcW5jZmiUmBiVzZ59RBlkcp
	queXfZATve0NxJyVi/0VMVWutUg0W+QOirvLwE82ofwL0ttfn827GhcfewApCKBnTV2lb+pzkK3
	6
X-Google-Smtp-Source: AGHT+IFOPggYsdEAgsgSafAdrankSogyBfbRUSleUWj3/m04vN64SUwJX1Bv63VVzB7X6fP4EbkVIw==
X-Received: by 2002:a05:6512:370b:b0:513:e29d:6840 with SMTP id z11-20020a056512370b00b00513e29d6840mr2497793lfr.15.1712534033985;
        Sun, 07 Apr 2024 16:53:53 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t27-20020ac2549b000000b00516b07fdc26sm965696lfk.109.2024.04.07.16.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 16:53:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 08 Apr 2024 02:53:52 +0300
Subject: [PATCH v5 3/4] drm/mipi-dsi: add mipi_dsi_compression_mode_ext()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240408-lg-sw43408-panel-v5-3-4e092da22991@linaro.org>
References: <20240408-lg-sw43408-panel-v5-0-4e092da22991@linaro.org>
In-Reply-To: <20240408-lg-sw43408-panel-v5-0-4e092da22991@linaro.org>
To: Sumit Semwal <sumit.semwal@linaro.org>, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3976;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ir5CM+jVaND4C9bLuSFQauIuwSNRo2ScqG2rMJDBLjA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmEzIP+Sa4hTKtHUTbPcjnH4GFR9b+OZoj1rSMO
 uBvi7Ady7qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZhMyDwAKCRCLPIo+Aiko
 1UDlCACseKdDfogzr5q8q3Y4B7gkbVojQes4xCZF8bzA9bqA0iW1aUeZz+6+de6uvxs903c/uBq
 l+1cLoAf7omzcfnk0GrbLqr68QSmZmoym8brUNToqNELFbdOP2XTwZ54jqaafjlwEw7DG2FJkE3
 EWmkK8cwb/UX9i423ee2yMYSUAmYQIgS5TDIsHhw97B8RMwWlLp7YYpPkdAaCvaQZY8RT9SY4xG
 5tGtk3trlF6aKGGn/U3m9YzvsF8V3echPB3tzswzSewJvSXN7uQPMCJq9jk+o5s2FqMgzM9HAcV
 nEP4ngQl39JNqaUGL2u6OwcRu01pYporYP9jc5+/8L1hsI9v
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add the extended version of mipi_dsi_compression_mode(). It provides
a way to specify the algorithm and PPS selector.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_mipi_dsi.c | 41 ++++++++++++++++++++++++++++++++++-------
 include/drm/drm_mipi_dsi.h     |  9 +++++++++
 2 files changed, 43 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_mipi_dsi.c b/drivers/gpu/drm/drm_mipi_dsi.c
index 9874ff6d4718..795001bb7ff1 100644
--- a/drivers/gpu/drm/drm_mipi_dsi.c
+++ b/drivers/gpu/drm/drm_mipi_dsi.c
@@ -645,29 +645,56 @@ int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
 EXPORT_SYMBOL(mipi_dsi_set_maximum_return_packet_size);
 
 /**
- * mipi_dsi_compression_mode() - enable/disable DSC on the peripheral
+ * mipi_dsi_compression_mode_ext() - enable/disable DSC on the peripheral
  * @dsi: DSI peripheral device
  * @enable: Whether to enable or disable the DSC
+ * @algo: Selected compression algorithm
+ * @pps_selector: Select PPS from the table of pre-stored or uploaded PPS entries
  *
- * Enable or disable Display Stream Compression on the peripheral using the
- * default Picture Parameter Set and VESA DSC 1.1 algorithm.
+ * Enable or disable Display Stream Compression on the peripheral.
  *
  * Return: 0 on success or a negative error code on failure.
  */
-int mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable)
+int mipi_dsi_compression_mode_ext(struct mipi_dsi_device *dsi, bool enable,
+				  enum mipi_dsi_compression_algo algo,
+				  unsigned int pps_selector)
 {
-	/* Note: Needs updating for non-default PPS or algorithm */
-	u8 tx[2] = { enable << 0, 0 };
+	u8 tx[2] = { };
 	struct mipi_dsi_msg msg = {
 		.channel = dsi->channel,
 		.type = MIPI_DSI_COMPRESSION_MODE,
 		.tx_len = sizeof(tx),
 		.tx_buf = tx,
 	};
-	int ret = mipi_dsi_device_transfer(dsi, &msg);
+	int ret;
+
+	if (algo > 3 || pps_selector > 3)
+		return -EINVAL;
+
+	tx[0] = (enable << 0) |
+		(algo << 1) |
+		(pps_selector << 4);
+
+	ret = mipi_dsi_device_transfer(dsi, &msg);
 
 	return (ret < 0) ? ret : 0;
 }
+EXPORT_SYMBOL(mipi_dsi_compression_mode_ext);
+
+/**
+ * mipi_dsi_compression_mode() - enable/disable DSC on the peripheral
+ * @dsi: DSI peripheral device
+ * @enable: Whether to enable or disable the DSC
+ *
+ * Enable or disable Display Stream Compression on the peripheral using the
+ * default Picture Parameter Set and VESA DSC 1.1 algorithm.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable)
+{
+	return mipi_dsi_compression_mode_ext(dsi, enable, MIPI_DSI_COMPRESSION_DSC, 0);
+}
 EXPORT_SYMBOL(mipi_dsi_compression_mode);
 
 /**
diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
index 3011d33eccbd..82b1cc434ea3 100644
--- a/include/drm/drm_mipi_dsi.h
+++ b/include/drm/drm_mipi_dsi.h
@@ -226,6 +226,12 @@ static inline int mipi_dsi_pixel_format_to_bpp(enum mipi_dsi_pixel_format fmt)
 	return -EINVAL;
 }
 
+enum mipi_dsi_compression_algo {
+	MIPI_DSI_COMPRESSION_DSC = 0,
+	MIPI_DSI_COMPRESSION_VENDOR = 3,
+	/* other two values are reserved, DSI 1.3 */
+};
+
 struct mipi_dsi_device *
 mipi_dsi_device_register_full(struct mipi_dsi_host *host,
 			      const struct mipi_dsi_device_info *info);
@@ -242,6 +248,9 @@ int mipi_dsi_turn_on_peripheral(struct mipi_dsi_device *dsi);
 int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
 					    u16 value);
 int mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable);
+int mipi_dsi_compression_mode_ext(struct mipi_dsi_device *dsi, bool enable,
+				  enum mipi_dsi_compression_algo algo,
+				  unsigned int pps_selector);
 int mipi_dsi_picture_parameter_set(struct mipi_dsi_device *dsi,
 				   const struct drm_dsc_picture_parameter_set *pps);
 

-- 
2.39.2


