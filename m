Return-Path: <devicetree+bounces-44094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B9885CB29
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65A602838C2
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6636154C11;
	Tue, 20 Feb 2024 22:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HFNdD+1m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF5C15445E
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708469450; cv=none; b=W8KlfY/FN3GpjxXAvvBFUPvnsdimm1RzXzHqV43Ml/Y8zayB9kyPFNoU7c0GORKro5iEDEEx/PZo5Vu5qLwWDeI33v6FWzmjO3eav8x+Sl7+OMOKzAzTQY8oOfPCla5clJ3GNfw61OVALLXGfRji+hBUTdIYGOWYiNB8K3zqa+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708469450; c=relaxed/simple;
	bh=Bg+64ybndxfDs6b6x4LD2hmPzSVNqo/QK+11IhNoFjQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g5LAhNm6Kjk3+4QzxOMkzVlT+L1DSSPunT4ge2gR5V0nUg96rNCTZeTaJ5hFehCPcKPurjy8YtB+pBm3ffmEamJpgaXfDAXG2WT9jv7/Bp6P1oT5LPdqsfsPdRkL3nIV8jBc7yjCzCv+W6nCWWHo/dNhSc+H9UlO2ve+7QhTb4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HFNdD+1m; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a3e82664d53so359804066b.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708469447; x=1709074247; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DaiHKOatnN3Icf8gwgiK0T0n2HRv8NzGbPdfVNxfS4k=;
        b=HFNdD+1m6rErkIqiYIsNftkVY9r2zhWkLSMQqb2USR8r0IBLllRj3LHk3tiNtHswTF
         2Sq6JQmOJXHbBf80ksGZFh2IGpxwukA+Y13MFjLRkX5wwIigZE7G2LaSRK4LAumX6Jia
         rZmg3m8wZRGFuLPzo8q/f3g00xl6Tt61QJBj8KExAj/tcTeZOoUu+/wHc+1Xwb9NEq9c
         VeUMB6O1RqWmLJ4ZNIf5t3o4kxbfPbuLM02PRD7LoDJ5vjq6fRXZIKmI6UOKVG+zyFGy
         hzeyIDARpFw51DZoiHT8u8k/Z7iTD/OS48FdE1DSy3epGMjer3BbAyMO3KhM1Ug45zFK
         kV/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708469447; x=1709074247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DaiHKOatnN3Icf8gwgiK0T0n2HRv8NzGbPdfVNxfS4k=;
        b=FU4YBdl7xLxTJXYTcpX5UZxZW4nuBLm3MQ5O2pW4zAr1c75b10Z6tdtdOLZzu60YC4
         x9jxVkDykiyYjdd5uGMsoEYXLWO5Yr5abWvtM//W0iNzqM1SqUGB89M/VhlYMPDXlZFW
         JrsVg3X4Zu0SF/mJw21p3NjVn8c5opPU1vOniVoWJrYoPOQTog1vVtrKU2x/O7H8c/1X
         QC4Xp/9Jo0Vhrc4K8D/JfTaHBr4yD7Vgopxb0e+hml/EEGIHLFNGIuuFKv2Q7i1yCsJj
         cEGop0gUnkCrOb43PxiOCcI3jEm0NWqF3T+9SHz2SFgBK0kt8i5gxRcJdB6DJgKkmBNo
         9DhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXr8YhWy1oms8gSneHsXMpU6LDVNurROxytfXHnypZ++PjtgpX5KSBv7FfCX/rb4da5yPs3op01yLAD9cPUZf6tE9/VifnKHir5MQ==
X-Gm-Message-State: AOJu0YzjB2zSohQsIKCBkqjig5m5R+3VKE2ecYmZ69Kcp4VxsiExwYwp
	iNfn5LibpIsEWm6klUWJiLO1OaYDnIN2MrXhj07vyx9KwGR8yEAIbgGwlx+XZWZ7x3SZfGz3Ao6
	W
X-Google-Smtp-Source: AGHT+IGKYFLq9n74LH641A+5aXYbvLwZ/7XrnLC2ffc52710JhYABnciYA9kLk++qgZ1K9d8iIvTtQ==
X-Received: by 2002:a17:906:504d:b0:a3e:1225:2d7d with SMTP id e13-20020a170906504d00b00a3e12252d7dmr6954762ejk.38.1708469447175;
        Tue, 20 Feb 2024 14:50:47 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id g3-20020a170906c18300b00a3ed811cff9sm1601977ejz.154.2024.02.20.14.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 14:50:46 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Feb 2024 00:50:33 +0200
Subject: [PATCH RFC 3/3] drm/msm/dp: Add support for the X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-x1e80100-display-refactor-connector-v1-3-86c0e1ebd5ec@linaro.org>
References: <20240221-x1e80100-display-refactor-connector-v1-0-86c0e1ebd5ec@linaro.org>
In-Reply-To: <20240221-x1e80100-display-refactor-connector-v1-0-86c0e1ebd5ec@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1757; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Bg+64ybndxfDs6b6x4LD2hmPzSVNqo/QK+11IhNoFjQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1Sy/SY/Li7l08xMJ7M+mWv/uESkmaPF0NsvaC
 dpCRX6qGoOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUsvwAKCRAbX0TJAJUV
 Vgn6EACmcH3wtom1eKfkJzuGchzrI103o2ht9z1QwN/8SbMuJseRPCeWyeeikKSw+Po4gGZ/G3D
 0yoTOTAK9JW4c703Yi9C25hqmPQWsoBGvsbRjFVs/twSZQ1NEbVxhUL6f6BFuutOZVfw08UYU89
 tBa3qjivZque5i9drKIn4aC7FifFsZBOQQI/bhqR+ZMOL4Y3vLdlK6i2QHKp+WtAqGRRFXbMgpy
 wAVuWMEvlikjtpGTKq1OiplVqZQJoRhnT06zeeapu7UOSPLYIvar+xRpMSgNZ3uiWypOv95QkEF
 km0lOHe1Z2pdrQIc3LP+ic3fJSYZrUFT4tcuOTagiTFqVNlstMXfoXQ80xe5vf23nQt1tSW17fU
 jbh4JQRTjVGXfeX92p0NkZL/Q24BOYlvADOwNY2dB3FYPyPrLIT14vSbQRG91RPPfTWgWGjuu9M
 qTyQi5g9EINuFMtx8944XfOAMQozkqQbqGl61lxVBRD4egoukK57vxtTVTGKTGFJ90S25n5EfRZ
 HJesuuXKHlyqu6btq67skJmmUpaOjO5ngZBSns/QX3u9/bcJnKF9CQCarp/5ROFEfsFr/B4R7e5
 hS2V+HVKFaG7bWp3lOk8NH6NETTt4/y0HjvnQqGJrzvSmFCZLK8egouw1MQ2b7ulVDeA4sTJeFg
 OpYr4j0j2VYNZXw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the X1E80100 DP descs and compatible. This platform will be using
a single compatible for both eDP and DP mode. The actual mode will
be set in devicetree via is-edp flag.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index 9e58285d4ec6..7b8c695d521a 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -171,6 +171,14 @@ static const struct msm_dp_desc sm8650_dp_descs[] = {
 	{}
 };
 
+static const struct msm_dp_desc x1e80100_dp_descs[] = {
+	{ .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_en = true },
+	{ .io_start = 0x0ae98000, .id = MSM_DP_CONTROLLER_1, .wide_bus_en = true },
+	{ .io_start = 0x0ae9a000, .id = MSM_DP_CONTROLLER_2, .wide_bus_en = true },
+	{ .io_start = 0x0aea0000, .id = MSM_DP_CONTROLLER_3, .wide_bus_en = true },
+	{}
+};
+
 static const struct of_device_id dp_dt_match[] = {
 	{ .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
 	{ .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
@@ -179,6 +187,7 @@ static const struct of_device_id dp_dt_match[] = {
 	{ .compatible = "qcom,sc8180x-edp", .data = &sc8180x_dp_descs },
 	{ .compatible = "qcom,sc8280xp-dp", .data = &sc8280xp_dp_descs },
 	{ .compatible = "qcom,sc8280xp-edp", .data = &sc8280xp_edp_descs },
+	{ .compatible = "qcom,x1e80100-dp", .data = &x1e80100_dp_descs },
 	{ .compatible = "qcom,sdm845-dp", .data = &sc7180_dp_descs },
 	{ .compatible = "qcom,sm8350-dp", .data = &sm8350_dp_descs },
 	{ .compatible = "qcom,sm8650-dp", .data = &sm8650_dp_descs },

-- 
2.34.1


