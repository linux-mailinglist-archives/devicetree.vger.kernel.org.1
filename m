Return-Path: <devicetree+bounces-55214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B82894806
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 01:51:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C8F8B2254F
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 23:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D33958228;
	Mon,  1 Apr 2024 23:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wnkKdlHy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3773557322
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 23:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712015480; cv=none; b=Qn4ROb7joGblU8vOtenrDCEMc0Y4jOIn+6XELbyxA2jlQIziwmNxhb2y/sHcrPZNivMTQwN8i2/Crmncn/b9IxzA9FLsUkDVj3iG/PW3uf7ZaNl9XprtWj4CyEYqM/NYmZ0R8UTGeLvOhY7OAbf5950CCwRrNadM169FcoG3Gjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712015480; c=relaxed/simple;
	bh=WTwI7tKciTN5NWHCt4BqSsgA7bUxADqHjwO+LN7NrqI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q5BIqtEZunyHPfcLZVPuF4wharl4co70aJLWvHE+Q9Obspgl0QYUg0lj1mdeNjC2NtyTsxPSxIzVCd7RKKZCnT4KvWvckG/+dKbxBlRxyIdM3ILliWpC4wMjHR1AOsTXCEBCygIuzhIUdKptRYxoR49fhwg0KRUqCmJY6p0EIJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wnkKdlHy; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-516a0b7f864so1424185e87.1
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 16:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712015476; x=1712620276; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aWH1PpmsAIit2qpLVPFipp6RvFkcic0ChCVLomLjuIA=;
        b=wnkKdlHyFUFtbRZ+x/2JZr6Q8dQc7Q2mc3hPfjv/JGkTLft6AZ4OjReJF99zbDm8aN
         iW8tz0A1rbWZyGDUU/56CJN4DyW1ciwiWV2JNBCzmth/v1XVpEwwaE/emSemdXhrc3Rd
         YBQT9tfo/ZK7tMji2irJgehawkV9hvcPoWPsacDkOHpse3Ccco/pr+hpGK/2t2lEwEfk
         XobcFEdbUNXm58NoG6u8zjTEnEajVYGXpram+EKwWl2fc32SVqyQyl/I+UevXcB66lOF
         KXpN9/Ze0FGmGbl6uw2Db2NyrI/W+2Wy00Q4djwelczUK5nwDDvmEdpx3eeCQMDSoiY6
         prlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712015476; x=1712620276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aWH1PpmsAIit2qpLVPFipp6RvFkcic0ChCVLomLjuIA=;
        b=ftUVo7kVFhE31rVeowdRHSaf0Zd+5PcEHU5Iyj9MbM4aIZMnGcmMt0pOvPsMFkMXy2
         rQGOSs3WOE3BkRZpIObh7meF1XOBHPxFKbKLYck6AchGZdvMweFG96pdbugxUvqgEmr8
         6snanuwkmqEXWG95bjj9A/EETQjQNK27T2EGVtV+y/EQS4804rQy0xrV+ACL52b72mkz
         Dx06hpC51wqy6kiUf8eREeb1LNDlEDZlu81VJPG/BBlBx+BJZnykwRm1LIZMS3IciMC6
         e7gRGC/CxTsjx9mfh86i4dT/LHscB95CpEjrVe/Gb1JUZZv4PsV7iO0GaK66DucJWi1Z
         ZNPg==
X-Forwarded-Encrypted: i=1; AJvYcCXs5+mRNNr5wFl21Jn7AYf7H4HJBdlPMUfBhKSqXI9WOeNEY4rEenMbYNFt69B06NwI/7/JmbXqPhkTa1ZlJtZ8hJS8uzljrI9B2w==
X-Gm-Message-State: AOJu0YxpKO/5H1bDWmDqEd86CdDyigMpLA1gh7SbY2eBCW9z8QpO1G3i
	nMsWeYwr/FYEh4ZstqWitbpZlNY0OFdVrXqFumQ5J4A+sOyGDCYcqcnsNLs809U=
X-Google-Smtp-Source: AGHT+IHU8mhblcnj0F+VJOhDLMZHAjM00+bPIg7rgW4CAgCcVLhJ1LgBJh1dQJEcXWjzKc7YQu5jtA==
X-Received: by 2002:a05:6512:400c:b0:513:2b35:2520 with SMTP id br12-20020a056512400c00b005132b352520mr7110658lfb.58.1712015476466;
        Mon, 01 Apr 2024 16:51:16 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g28-20020a0565123b9c00b00515d127a399sm1176135lfv.58.2024.04.01.16.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 16:51:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Apr 2024 02:51:14 +0300
Subject: [PATCH v3 3/4] drm/mipi-dsi: add mipi_dsi_compression_mode_ext()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-lg-sw43408-panel-v3-3-144f17a11a56@linaro.org>
References: <20240402-lg-sw43408-panel-v3-0-144f17a11a56@linaro.org>
In-Reply-To: <20240402-lg-sw43408-panel-v3-0-144f17a11a56@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3789;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=WTwI7tKciTN5NWHCt4BqSsgA7bUxADqHjwO+LN7NrqI=;
 b=owEBbAGT/pANAwAKAYs8ij4CKSjVAcsmYgBmC0hwJvacY4ehW/Ceu7lfTrySVrrn13d1CLQyM
 ZRQJ/KbnwuJATIEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgtIcAAKCRCLPIo+Aiko
 1U7vB/dh2BGQN/Mm6O0WkvrdCXjfTFIvnx8fEkf+KBWt4phogk6quGH/qbIOx9BrjKb4QLG6o4d
 4nwaEtlFEsxntWlts4n04MRDmIkj0l8f61WG0D+3V5oIOlYbUqHqkRLfZkvKamNMRQWpJJ8w8IG
 oo+FwMm0BRsWdv6jKZS7NSgbIUeL3ujuwobCdeuKSnZBioObB00bmPsSVBM7nms6EYGdHyMBLoC
 EXRijraGYfsQL9Z90AA/vFsQRYUkCvJxrfS2nc5adbnFzDjZBCP550wPMIY5KP6y7tQmK9Q1TQF
 HO6tLOu8r16FqZIE5SDgVR3K1++eJqWJF0wesdt87aomAHc=
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add the extended version of mipi_dsi_compression_mode(). It provides
a way to specify the algorithm and PPS selector.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_mipi_dsi.c | 33 +++++++++++++++++++++++++++------
 include/drm/drm_mipi_dsi.h     |  9 +++++++++
 2 files changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_mipi_dsi.c b/drivers/gpu/drm/drm_mipi_dsi.c
index 9874ff6d4718..0ecbc811eb7a 100644
--- a/drivers/gpu/drm/drm_mipi_dsi.c
+++ b/drivers/gpu/drm/drm_mipi_dsi.c
@@ -645,19 +645,24 @@ int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
 EXPORT_SYMBOL(mipi_dsi_set_maximum_return_packet_size);
 
 /**
- * mipi_dsi_compression_mode() - enable/disable DSC on the peripheral
+ * mipi_dsi_compression_mode_ext() - enable/disable DSC on the peripheral
  * @dsi: DSI peripheral device
  * @enable: Whether to enable or disable the DSC
+ * @algo: Selected algorithm
+ * @pps_selector: The PPS selector
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
+	u8 data = (enable << 0) |
+		(algo << 1) |
+		(pps_selector << 4);
+	u8 tx[2] = { data, 0 };
 	struct mipi_dsi_msg msg = {
 		.channel = dsi->channel,
 		.type = MIPI_DSI_COMPRESSION_MODE,
@@ -668,6 +673,22 @@ int mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable)
 
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
+	return mipi_dsi_compression_mode_ext(dsi, enable, 0, MIPI_DSI_COMPRESSION_DSC);
+}
 EXPORT_SYMBOL(mipi_dsi_compression_mode);
 
 /**
diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
index 3011d33eccbd..78cb7b688b1d 100644
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
+				  unsigned int pps_selector,
+				  enum mipi_dsi_compression_algo algo);
 int mipi_dsi_picture_parameter_set(struct mipi_dsi_device *dsi,
 				   const struct drm_dsc_picture_parameter_set *pps);
 

-- 
2.39.2


