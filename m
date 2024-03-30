Return-Path: <devicetree+bounces-54763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B18C089292A
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 04:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BB711F22317
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 03:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DCFBAD4B;
	Sat, 30 Mar 2024 03:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wbXSA4pc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6E3847E
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 03:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711771175; cv=none; b=owX9qeRa3N5aDY3a8JSkUbpsqtA7NRbOfEhwZp7vyJg/R3LAOxpskdgOiSUBlLEHBwIfQMicRC5d36GMmWD9CesoeoWWPa5hjApOGtf4XlvumcQlRn/lJGpAxhrWCMUw8UjvcphPFMSnszma+ImGOMimB9R6yfkwb0Vm4f4sij0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711771175; c=relaxed/simple;
	bh=1dHUwNPq/ZE2lZqujLo0paqKG5T8bLmbO34BUbpj00o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T0djsg8rd2aKjhkahSKwZIq0ZiYNkKaCdGCTwjPskSGqdQKuXyyadaXBhkXjdbHUtHEIQt0zDX1a8kvQbcS86SR5P2fYntuOjOgc01T4HqPGIVB5vb/KJFFQ4WGdXckTrn1hgQmEPphzJ0gdYT+Gi6bOu/ncMF1+0c3lXS6/2k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wbXSA4pc; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5157af37806so2831225e87.0
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 20:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711771172; x=1712375972; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gXi248XgYEI1aNqzH18MSPcwgnE2Ghs0byyxqmpezB8=;
        b=wbXSA4pceBAT+JanKxYoSV0QT1ODm2PVY6mSOjfJUVpirr789WP7mcSeYGWKudR2lK
         C+Wpw9eUVt3jAV2xuZ3zB98ee5A/ORFEt1GNsmH/PwrrVhwWE5uEe1xDODrGuH2JgXEg
         YwmaJjKkdzmgTNGDl3bQrcXVVL1SwDaIQyWEAq5TDPO/DhRXi0hWX5x3GxZyg7CnAPVM
         P3nQbJBBD+TTzC9FY8ijqNU8f+61Yy/LVVP5W30TvGSQtwGMf8LrmnM0OjaH8tXPk+jO
         2A9859m9YcfDMLfrs+pZHmsZPFF1EVoGpsAQ0ng35H+yzvKt+wF5QbRAJjH4+y/KRsc4
         Wgvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711771172; x=1712375972;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gXi248XgYEI1aNqzH18MSPcwgnE2Ghs0byyxqmpezB8=;
        b=h5urJfcw4AinAnDdqELCQslMW0amZ/w5KWkBRUPvX5X+JlmkIKhOp+yBcl9I/K5W57
         BY7w0Cs8dcBCAwFRgMeNrW3b2F6b73T7lKxzokMvf60PcLJ6l3Aq43L9cVoXp2LlwzhP
         RQIFwMCfnbvINtMqYSBGFWJSAR5CsCEGIt2jWO1hAoTFAHeDfspzst5A+RfEdkIxDfxE
         HvLAMtm9sZ9XgBazJWMXTz+5WJ9xuuVFCPK/eN0w3ygInJgJ+VhcRyOB48p/rzmAdUVM
         DfAS1QbiWfxL+7EIa+WO4WwVl/e6EPyMjvS6yglT43qxdu6Zj8KDKxUTeltfvfOAu7r7
         OwwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJkZ/sHQXayOgRkl3EFZ73Bvhms5QZ+8ef4eQabmNm1/0K7OclVK4Y7G71MFIoaPzgKUneREoAXZve48hol8xalGTbOTw7f2F44g==
X-Gm-Message-State: AOJu0YzNBkp1q2JGj95vLGsMOR1gMcLBBdlVYkIciTRmMrn56h4zukbt
	iUgOTcr/TmN+HmJoeq+n4+cCzNsJUHg6metPbhWwQYzPa+NH6cLynIRBF3/FTac=
X-Google-Smtp-Source: AGHT+IExcqjcMc4gAFYkWcvF9qS8XkNUfR5sfZy2OcV9JbTxQHLoeNf+8x0CjweH/JN0g99cIN+OxA==
X-Received: by 2002:a05:6512:48d:b0:513:cb0a:9632 with SMTP id v13-20020a056512048d00b00513cb0a9632mr2244206lfq.50.1711771171680;
        Fri, 29 Mar 2024 20:59:31 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id br2-20020a056512400200b00515d1393f3csm423957lfb.104.2024.03.29.20.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 20:59:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Mar 2024 05:59:29 +0200
Subject: [PATCH 2/3] drm/mipi-dsi: add mipi_dsi_compression_mode_raw()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240330-lg-sw43408-panel-v1-2-f5580fc9f2da@linaro.org>
References: <20240330-lg-sw43408-panel-v1-0-f5580fc9f2da@linaro.org>
In-Reply-To: <20240330-lg-sw43408-panel-v1-0-f5580fc9f2da@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3402;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=1dHUwNPq/ZE2lZqujLo0paqKG5T8bLmbO34BUbpj00o=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQxp7n2LDer59c2eE62z6cLjhcvt1pn18ebOVrm3jbOacZ
 XOrNXp6J6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAm8oeJ/a9MuG3iCbHu+3Y/
 ivvue7oeWlJ+I/HySrsnf+J/5AcJvXoqIOivkp8c9urdu3iRhXyT/P4uO82181qg+b32U591bby
 N1dZJcProb4/sUuk2Td1+RCC9Ymt/G1PW6yxNdzGLkEOyTNFX1JXnVPpfjzu/uF3xtmvKpYdXis
 ybTuUWZy9Sr0uvnV7z8li88pZdcxLfOTmXLpfRfNjTM1N18bmazvhn10xCXTwm6QbP9+yavOn03
 ObZutxeF46d9eXUvapwZAOH4cKulZpWQmmmoaoWv8J4c2Yc99+7+uGrtv47sfzSdf3bzc5HHLlW
 evmzq6zyvcgQVrOIwD2XIs0bllVu2Zt391DC1/KVE+WNAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The LG SW43408 panel requires sending non-standard data as a part of the
MIPI_DSI_COMPRESSION_MODE packet. Rather than hacking existing
mipi_dsi_compression_mode() add mipi_dsi_compression_mode_raw(), which
accepts raw data buffer and length.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_mipi_dsi.c | 34 ++++++++++++++++++++++++++--------
 include/drm/drm_mipi_dsi.h     |  1 +
 2 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_mipi_dsi.c b/drivers/gpu/drm/drm_mipi_dsi.c
index ef6e416522f8..f340d1e0a9a5 100644
--- a/drivers/gpu/drm/drm_mipi_dsi.c
+++ b/drivers/gpu/drm/drm_mipi_dsi.c
@@ -645,29 +645,47 @@ int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
 EXPORT_SYMBOL(mipi_dsi_set_maximum_return_packet_size);
 
 /**
- * mipi_dsi_compression_mode() - enable/disable DSC on the peripheral
+ * mipi_dsi_compression_mode_raw() - control DSC on the peripheral
  * @dsi: DSI peripheral device
- * @enable: Whether to enable or disable the DSC
+ * @data: data to be sent to the device
+ * @len: size of the data buffer
  *
- * Enable or disable Display Stream Compression on the peripheral using the
+ * Control the Display Stream Compression on the peripheral using the
  * default Picture Parameter Set and VESA DSC 1.1 algorithm.
  *
  * Return: 0 on success or a negative error code on failure.
  */
-ssize_t mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable)
+ssize_t mipi_dsi_compression_mode_raw(struct mipi_dsi_device *dsi, void *data, size_t len)
 {
-	/* Note: Needs updating for non-default PPS or algorithm */
-	u8 tx[2] = { enable << 0, 0 };
 	struct mipi_dsi_msg msg = {
 		.channel = dsi->channel,
 		.type = MIPI_DSI_COMPRESSION_MODE,
-		.tx_len = sizeof(tx),
-		.tx_buf = tx,
+		.tx_len = len,
+		.tx_buf = data,
 	};
 	int ret = mipi_dsi_device_transfer(dsi, &msg);
 
 	return (ret < 0) ? ret : 0;
 }
+EXPORT_SYMBOL(mipi_dsi_compression_mode_raw);
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
+ssize_t mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable)
+{
+	/* Note: Needs updating for non-default PPS or algorithm */
+	u8 tx[2] = { enable << 0, 0 };
+
+	return mipi_dsi_compression_mode_raw(dsi, tx, sizeof(tx));
+}
 EXPORT_SYMBOL(mipi_dsi_compression_mode);
 
 /**
diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
index c0aec0d4d664..321d2b019687 100644
--- a/include/drm/drm_mipi_dsi.h
+++ b/include/drm/drm_mipi_dsi.h
@@ -242,6 +242,7 @@ int mipi_dsi_turn_on_peripheral(struct mipi_dsi_device *dsi);
 int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
 					    u16 value);
 ssize_t mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable);
+ssize_t mipi_dsi_compression_mode_raw(struct mipi_dsi_device *dsi, void *data, size_t len);
 ssize_t mipi_dsi_picture_parameter_set(struct mipi_dsi_device *dsi,
 				       const struct drm_dsc_picture_parameter_set *pps);
 

-- 
2.39.2


