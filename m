Return-Path: <devicetree+bounces-55212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F705894801
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 01:51:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89D381F24265
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 23:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DCF05811B;
	Mon,  1 Apr 2024 23:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NFDhQEat"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9328857316
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 23:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712015479; cv=none; b=aKoZdPtCxCGZArFupH4LrXVKp6iBS4gr/2u7r/MokpLvg7T+Rph7Z3rICAF8VvO3KSlooWYDRmjYFwtUYZmfSCD64ImhHoqJv/J0y0wFpxhyjpVFgvOlkR+c+UBuCfXfZvo2BWI8XiHOWGH+TaoaZYaYq7D0nmgut4+aRV+XOrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712015479; c=relaxed/simple;
	bh=rOvOaoNrEOh1JwJ8A0R+xJN2bNlhVIkJiYWXEFZjcZQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oK3XGh3sUwB1B9MkqLekeu2A5b1Uo4K6+Gfp5pnDFg/VkqurN39F9XmgmT8Om0L5XjyR8bJIVdWePq8fooLOr6igCuHoRG5EMcCwcrbiQHu8LFqhyHapOHn1XseYsF+JG8nqQIIx8iagWzmnZuT3LbuOvBtxVvJeKBqpJUflr4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NFDhQEat; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-513da1c1f26so5459694e87.3
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 16:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712015476; x=1712620276; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mpzfYidIvNvRN3cBwlHro7O/6yl5AJp4jLHzEWJGefo=;
        b=NFDhQEatehJQ2PqKBQxJhKIHZQbdFaTwfeu1vsOix+8fOye0jm9sbHLHWvD+X9jfhs
         fhX3dai9by0PUnAf/zwiwMDjVLXPixKCVX5Y0fgdRgR+3gGIRmmRgCNemY1zoX8BAGGg
         vDfFMoMEWAZYPwELVZFOOqxOFznWgg3KHmJ8AoLgkdEXxcIT3m7kfDyoi1sk/WZHa3GY
         KsO2ni8xb1Yy9vpjb3FxenjIxnOw3ubkKaq4FT4K9PYNroNoMqZBOu45wR0emhrRWGzG
         VJqwvfJUGRwwoT4X3YEZNxy0feVAIt/Fh2LJ2XITTGz70s3S+DJgrkTC0sx9HL1W2+8d
         OzcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712015476; x=1712620276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mpzfYidIvNvRN3cBwlHro7O/6yl5AJp4jLHzEWJGefo=;
        b=P5hyVHOW9aiqMKfsS/x2a27eSzE3/64uSY8i6WcUA1iRt2HZI6+4AE3dtqYNCwNvA6
         Rs2SJv9zkadpdcWjotVBEvJh9p5gxiAtpR5SPgU1avsjnYUM+gjajGk8fr+hI8QkCt2u
         AR8ROvW34+jj+W935Fyaxjm3S+RzTHaRW+AdHVPqSG+HS8AO+nQHmHEDHUv1S49juupy
         Nc9NpMeAzCWTSu/HNj6QYSHOZn+OxIV9blowQiaFdCVC2uz8EiCDRB2suW7ogRNSZBpU
         15Zw+dI5RWa6uZ0EFjREh3y3KMz8Xt44+2k/2ZbLTgOOl+0QPepoWJ/AhWaENw48QjTr
         QLXQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7obOW21sCK+yMvvdLxXf4H7ZTkoinMWN1dS8AcQgkV9pYLbmUkS6Qy+r2/BY2lns6Zqj9CUgGXtRfJ7Sg9VfaUY5w+t4TPMd53g==
X-Gm-Message-State: AOJu0YwK6b1KeGPdEyraARq2kwpHzjJzw/LUduTmAWUd+9UPI7FUCchN
	A+mcYob5ZBKwFSikofh4/nCi3YrRkwAg2roLY7AIafrBNEkKuHvxqhKUs+p7Fig=
X-Google-Smtp-Source: AGHT+IEB2QzZuXS4R7In8uUvOplVuIkx/5QcTjBrAkrqWljwAWGeuJ4Uw8lPhznuCpa/fGL+cqKnOw==
X-Received: by 2002:a05:6512:3b0:b0:513:bf23:ce3 with SMTP id v16-20020a05651203b000b00513bf230ce3mr6870634lfp.62.1712015475781;
        Mon, 01 Apr 2024 16:51:15 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g28-20020a0565123b9c00b00515d127a399sm1176135lfv.58.2024.04.01.16.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 16:51:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Apr 2024 02:51:13 +0300
Subject: [PATCH v3 2/4] drm/mipi-dsi: use correct return type for the DSC
 functions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-lg-sw43408-panel-v3-2-144f17a11a56@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2540;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=rOvOaoNrEOh1JwJ8A0R+xJN2bNlhVIkJiYWXEFZjcZQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmC0hwGj7vMo/Qzh0+3TBiCZLL4baY6KAU+dlyE
 vw+6BoHZOyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgtIcAAKCRCLPIo+Aiko
 1Zv+B/9wd2V5+AZfCycvRGBF4noHw+StvkzjCmm8/yNBKOTXw92ECQQeXQyhdCDfxWuJSNcfdhH
 z3MjqZwynJX76c3byfFHg3E4Y16BAv21oi7lfKZXZCD3eotB7i448jq6ObfxKEBWEae3rT/+nKs
 GoP9NlqdeuTpURnhpCqqb+Xt9/cfmyyavxioTm0vhtfT8PzGPiIh54S3UZkSJqZ9j6pqY/ugBAM
 bsC1MPWunq1bMRstUGrwHypdSHdHgGXfR5cbU2Qd2sfYfJmUgiTOdoMppG0NmmtILsToesdm/q/
 RxDM0+dlz8tfLJOi90XWEi8jRA9un1FqARRV9Vbz/7aW/duX
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The functions mipi_dsi_compression_mode() and
mipi_dsi_picture_parameter_set() return 0-or-error rather than a buffer
size. Follow example of other similar MIPI DSI functions and use int
return type instead of size_t.

Fixes: f4dea1aaa9a1 ("drm/dsi: add helpers for DSI compression mode and PPS packets")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_mipi_dsi.c | 6 +++---
 include/drm/drm_mipi_dsi.h     | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_mipi_dsi.c b/drivers/gpu/drm/drm_mipi_dsi.c
index ef6e416522f8..9874ff6d4718 100644
--- a/drivers/gpu/drm/drm_mipi_dsi.c
+++ b/drivers/gpu/drm/drm_mipi_dsi.c
@@ -654,7 +654,7 @@ EXPORT_SYMBOL(mipi_dsi_set_maximum_return_packet_size);
  *
  * Return: 0 on success or a negative error code on failure.
  */
-ssize_t mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable)
+int mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable)
 {
 	/* Note: Needs updating for non-default PPS or algorithm */
 	u8 tx[2] = { enable << 0, 0 };
@@ -679,8 +679,8 @@ EXPORT_SYMBOL(mipi_dsi_compression_mode);
  *
  * Return: 0 on success or a negative error code on failure.
  */
-ssize_t mipi_dsi_picture_parameter_set(struct mipi_dsi_device *dsi,
-				       const struct drm_dsc_picture_parameter_set *pps)
+int mipi_dsi_picture_parameter_set(struct mipi_dsi_device *dsi,
+				   const struct drm_dsc_picture_parameter_set *pps)
 {
 	struct mipi_dsi_msg msg = {
 		.channel = dsi->channel,
diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
index c0aec0d4d664..3011d33eccbd 100644
--- a/include/drm/drm_mipi_dsi.h
+++ b/include/drm/drm_mipi_dsi.h
@@ -241,9 +241,9 @@ int mipi_dsi_shutdown_peripheral(struct mipi_dsi_device *dsi);
 int mipi_dsi_turn_on_peripheral(struct mipi_dsi_device *dsi);
 int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
 					    u16 value);
-ssize_t mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable);
-ssize_t mipi_dsi_picture_parameter_set(struct mipi_dsi_device *dsi,
-				       const struct drm_dsc_picture_parameter_set *pps);
+int mipi_dsi_compression_mode(struct mipi_dsi_device *dsi, bool enable);
+int mipi_dsi_picture_parameter_set(struct mipi_dsi_device *dsi,
+				   const struct drm_dsc_picture_parameter_set *pps);
 
 ssize_t mipi_dsi_generic_write(struct mipi_dsi_device *dsi, const void *payload,
 			       size_t size);

-- 
2.39.2


