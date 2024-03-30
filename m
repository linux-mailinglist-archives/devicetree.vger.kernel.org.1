Return-Path: <devicetree+bounces-54831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BCB892BB0
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 16:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3BAA1F21EDF
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 15:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438473A1BE;
	Sat, 30 Mar 2024 15:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gtCsKv+d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724F937714
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 15:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711810853; cv=none; b=HPBt/2U8eBHh37DwWhpSq3DSnTtvkIiBsHjR3NC4OHKexHkoB6IQrr9yMfhIwtFB1V7ik5hTNq78jQHytxY/mfDYF+LLc5FE1JdzssY2+YM7EvnkPs+t1WlS1NdGQMMqwjFLbbFqSBNz/tgVX0pt0PxtIoaQi+YrK9TeQaycZCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711810853; c=relaxed/simple;
	bh=1dHUwNPq/ZE2lZqujLo0paqKG5T8bLmbO34BUbpj00o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QKNO2DHEKntHAMPmDXU06Yp6bxTJZGCpjzogaWRaJx/JVNGeKR6UVW5auQe7ysqRhmAyfEgR82GhY/VuOD1sGfb4zifd4k0S/sX1X7HcA8ievbYtzERnCEZMjoMxXY5+zMfzavbjn418KNvG/tHseHXUzXAXixInLkRMC4bMAh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gtCsKv+d; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51588f70d2dso3527421e87.3
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 08:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711810850; x=1712415650; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gXi248XgYEI1aNqzH18MSPcwgnE2Ghs0byyxqmpezB8=;
        b=gtCsKv+dh1XW7l/OgJ/9/rkro4yh0wbepgUEI85r2zZl8DMzpCd1HXDgUUsJmci1V5
         F+bo3PfioSAcZeqowVAZouWe6qWsYqcpkoJi+0Y5liBbDocWPqwlvtgUm0aaQ79D8wf2
         foCiAQx+4YTyMA6O3DTjJx8cx4JZQV8XDQjIr4PskgURxmVR35E5+wcrQCst/DIvWoCi
         ofFOUf16SmiVo8nMbkuK1MTKCfcok3R/iCqMaCd8B5U/NzaqZH+pkGUx4w63BmqUSmCj
         dlEH4VWZroDcLwKAEqnEaNLO2q+VPY3twtwK+FU1JDOgVyojtLE+7fhMt+0LAH1n6OuJ
         RFtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711810850; x=1712415650;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gXi248XgYEI1aNqzH18MSPcwgnE2Ghs0byyxqmpezB8=;
        b=wk4Dc6mxp2yKYK+XXu0ZsqME6BJsTUZ2m8P/b+LwiTkVqWEQ8fBRupfQdZz2Va82Oq
         Bo5umhdyX/qQx/oCT/APeQSrkHllSag9CsubsR23yxJzOp41kl/Zj4in6yuD5fMisARu
         DYnTxT9WaKY/Jk8mROwOZJ50d5AlKzjCGb5dpx7LCNmdBbK3sieFmodfyw68sZgHyW1z
         JYjjDHW3R1w3lm5l+4+9zolhfFQGjlI6anMZrZteMaBeac0oEjrtNk+9zhutLAHnc1zP
         SNIrKu9XLiaIIgs5+lyRzE+XYUwssfXgEKyq0sCNQKP9tAL8bT2flA8THWcUhQ2Mm5i5
         tezg==
X-Forwarded-Encrypted: i=1; AJvYcCUSU7erKYIhxH1KVCy7k9/t/KeiYMc67mPjVaeEzUK4ipfqqDFvNQlsbZLBlI3duGHUMCqY0lpgVpNi2M3SNC0kADjW8AIJX3J8OQ==
X-Gm-Message-State: AOJu0YzUVN69qrJ8btkf42LUpzCF3w8Hp5EnQVtJk3237K1kWR1+iijy
	4yIKu9V8WS1wxgHEbsOqhb8BemvfuA+e331Dqov73AD1sPrDQwGBgOx52FqlNns=
X-Google-Smtp-Source: AGHT+IG8fUr3Y+BvOvBw0pX4ptCgxhfFGh8Zgf+AI4HDWWEx9BdVlVw3GH/Lxx9ar3JKgaIyUtFvGw==
X-Received: by 2002:a05:6512:1287:b0:516:a115:4a4d with SMTP id u7-20020a056512128700b00516a1154a4dmr813652lfs.68.1711810849633;
        Sat, 30 Mar 2024 08:00:49 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j5-20020a056512344500b00515d205a6f0sm496199lfr.29.2024.03.30.08.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 08:00:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Mar 2024 17:00:47 +0200
Subject: [PATCH v2 2/3] drm/mipi-dsi: add mipi_dsi_compression_mode_raw()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240330-lg-sw43408-panel-v2-2-293a58717b38@linaro.org>
References: <20240330-lg-sw43408-panel-v2-0-293a58717b38@linaro.org>
In-Reply-To: <20240330-lg-sw43408-panel-v2-0-293a58717b38@linaro.org>
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
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQxqHplxtUqThhGu919/sN//TceXwyktfCwLqyuu1DCecu
 edwe3F6J6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmwvWLg6Gl56nEj66VlVyG
 xx9G7sxp1d98I4a37MfW5rKYx/57D0022SfSK5Zudy8x/M/8mUYW7Yc9ThV71L7cU7T8hV8zb9h
 5pgw2w4Lf7ifi2ITbao2idruvqG/ZLL6u6NBCncKb+juX9E+6N6NKbYFxRr30D/njraWrpp0+Gt
 A2SyfrqPcN3oeOeqFf49a/SchwTHtYcCy3X2kTC68Dd/+aznOBKQnBn+b9+7igxNzhhZYAW7hfh
 /VXyRgR7T9B82L/1Gj57mZhm77N1m6dytac701mf7Y1HVglLP9i2y3VNVsCGup2fTa/WhH1dGfu
 s5M1ng5PEg259jSLOzjsnie21nSjwM1C84fqvde0E3kUAA==
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


