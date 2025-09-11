Return-Path: <devicetree+bounces-215917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DD2B53230
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 687205A162C
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50366322C9E;
	Thu, 11 Sep 2025 12:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SJGKSVau"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586E230BF5A
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757593765; cv=none; b=JqZvFsAD691EXXuBYm+5GQ1cAckW3WdFcd2aENDUaQDAcRIcsyovDE0DVWXMJz5GPUknw6ipaZ2/l4lc1nx1q2vV2+F8O+qbdqYRFfDsNGXTmI9NRWIDfkCT6phT3RM/z4mdfrcCd0DV5HiTDIoVFUpalbVpgtEEgClXo4TRxvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757593765; c=relaxed/simple;
	bh=XM0DxWjTAJ/QMdmpyiPJ2nNd+sYznSXNCG3HlohsAXw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gn+OVzCjozyapj54ZoGWsD/7BmCa9asuJ1tdl/I6DkZ//6Z566TIhNkoMXfRgXunKtrFKDLjttf7YIVn0mN7Ogh3iZoW7OufYlyPN8W7TF0ISBH8PJmGGqr0sFzaMEJyqw4QK8yfDgnIBtmKX1LflXiVhEHsjYNwW5xbUkIapLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SJGKSVau; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45de60d39b7so5105385e9.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757593760; x=1758198560; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/qapoM1NTgjIA32q9aq+b/rv3iqgu/0hG4CK+nrUoPk=;
        b=SJGKSVauLubKzgGP8NSd0A5lejBUXC+e0+60uO3DY3/ANKvjExS9Fx8hPQTeMN5DQk
         WsP2AGQVYs00VawMmDOVMKLo5Usvq3jdbp8gSy3rdmIKKgQxCM+2gvzV+o0ujr7Zdion
         bmCO6FPevzt8mjqxvtJQnth7/Z10Y/YXH79WM3OfHXJhuKFAeJVeWwU7iH16gn3vJGYm
         YHT3hJy2nN/rgpTFrBO35JzqCIRmYtU5jshliqxB2daSIukOE8q8vvG2RddfjdZfvs67
         VmvUxg06MjYNidruUmM6ZtcNDTKk/wQPJRTlPtt+C7RYeFPIeuZHGj1aeVUi/Twjpzsc
         T/Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757593760; x=1758198560;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/qapoM1NTgjIA32q9aq+b/rv3iqgu/0hG4CK+nrUoPk=;
        b=nNw5/wNkuZt142xe9/TugWUY8EDZL2AqqQPsdnkmCaUDp5Nh2QTAE5Mdn10QrYKwr5
         O79D8Mayd9wjXDNqLrlxKAELCB2PNynJA/YoIOXt2YCVyQbBwbr+hSsC/jRuDA7xPRuJ
         Rv1f+PUe6AugHLNfSuqaM7EA1F39sz80t2+fv4yvKBc2THTCdFKLovqZDzqsoliNvSjQ
         Wb3WiXFD/lqpwgn0OdcoucAT8hjIM/SXzEb5HOTmgrUZ9RZ7xQo2CwwAkxecsFjnQIVW
         NXlLp0rBaDzSIsFIBYYHV3+Gjk9XSof02Nbk/Koz0nCz/zu4JQrfC3JiZ1StE8uIjCia
         cmaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL+IZTQA66M5aMqfCHg0H3u4nVAk/7myz9umySjE2hmZYVO6gPWJBwO0Pn1wd0uiBOZ4zVCGsG1LoF@vger.kernel.org
X-Gm-Message-State: AOJu0YxLumHWRoguch8ycWREfb1qCcpM+yDZK72pyZQPqtPpFFg5rqOe
	MtBCFboyXoNBX3Q3SSQs54vR+oWAHRqrmDxt3JSlBkdeMhqrOXrP7DwVZC8ACJ/lj6g=
X-Gm-Gg: ASbGncty38M7UuhQ3fYzwdSzkjVerERcaHqKM4dvbf7sRqVikGYJbjN63lXkvOPqv23
	/kjGPZM05X+tMsuhSKOY46JGyPP5kxSfZxtyfhxoPg1KyMQmBQU4m2c+hpLXRiJKPcIbVjsHuZ7
	a/SQw/NPtuqJ25kyRJ+MeFHVC2OdsZk9aAzs3bmER+Zw+LPmgvqZTSOOJCypj2Lf7kTRsetnWzv
	mK79NmF8B4IoHebdo417MJv/3uHOZ8G4gFLr6GlYtqzBqL+100vSjR0ulnMewLzz1vXIQC05Dqz
	B0yrvVMqaV2j2DYLycbMz4oykF3dPsHQoDE+KIuRrLNByXeezOareQR8/XnrZwr5VEiQoqKP8dP
	m5330h7XIEOOXeTUy0eksO9leGBOC32F2aA==
X-Google-Smtp-Source: AGHT+IHX4pfnUjM848MfniCu3WyeScBitJ5E/cygTtxz9LQ8TaGkNJ5wnB/S5GwIefVqEvsl0R9Knw==
X-Received: by 2002:a05:600c:45cd:b0:45c:8e6d:a45f with SMTP id 5b1f17b1804b1-45ddde868a2mr175690925e9.5.1757593760523;
        Thu, 11 Sep 2025 05:29:20 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd424sm2230444f8f.36.2025.09.11.05.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 05:29:19 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 11 Sep 2025 15:28:50 +0300
Subject: [PATCH 3/6] dt-bindings: display: msm: Document the Glymur
 DiplayPort controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-glymur-display-v1-3-d391a343292e@linaro.org>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
In-Reply-To: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1459; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=XM0DxWjTAJ/QMdmpyiPJ2nNd+sYznSXNCG3HlohsAXw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowsCSN6o0sLnMqNPtT5EEjzg1K5qvo4uAFpJwl
 PtMKaRuoVyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLAkgAKCRAbX0TJAJUV
 ViArD/9NsVtmYH33UcA/4V7iCbCs+ZsbfDbtZTAgOkpKyxqbMP9xeZUPpW+b1Iy0mb28FwWvkWu
 jNT33guP64nucvFlvRk02l+4l2w5H/t6lwtBquxf5v6bjaO7RY2aaaDV7wi7QzQSwC8lxrz/YkU
 Ctpsl62WzkFHPScRbvvhcIdqk9UdEu+jsqrZ0b45UbLhhrZBY62aGwjoh34AXcJIQ4KHDmtiQrn
 uhcewa7QX67tKwrOnuxH3mb71Xna/1kWu/VkvrQ66LwsO3KTd2l01TfP8XHBQ+LkIz1FIjpKSnO
 h5JjQ9PG+GBbZRSdE2ocpDSB9UXbd1/HTbgVMXvtZ0sUVeUA28MMMBMzIBH28i4xD0tfw6V+Ey3
 yH60P1rGq0U1dibXl8kZNw0bgpGS+13lZg+IzTdrPj7lgrZKbZlMUKr8qUi4DOsBGfVSAfdir9f
 KB7xCbP8E7C8mVDLnmHzAhpg6SXzJi/9G7+LNzOZ1ayXoE1gOrFyumVZfO8QW0eSNLA8zPx0o+I
 ihEmIRLcF92GKC65dw1r10UhSzdbE9dCE4G9fHZy6GlwPUKSvGS/I5r5tySVkaV9YNswrWsMeZD
 5WIBhxVpwEfL2CmTVDjL23nXkmL9MJjfCtIbcCAo/ohBhEBHO01CZA2mjUDedQtn7pGJ2ubsGRo
 8zqly6wLXAHSRgw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the DisplayPort controller found in the Qualcomm Glymur SoC.
There are 4 controllers and their base addresses and layouts differ,
therefore being incompatible with all previous platforms.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index aeb4e4f36044a0ff1e78ad47b867e232b21df509..26f5043748c166aa44be4e62445a63106edf9578 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp
           - qcom,sa8775p-dp
           - qcom,sc7180-dp
           - qcom,sc7280-dp
@@ -195,6 +196,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,glymur-dp
                 - qcom,sa8775p-dp
                 - qcom,x1e80100-dp
       then:
@@ -239,6 +241,7 @@ allOf:
             enum:
               # these platforms support 2 streams MST on some interfaces,
               # others are SST only
+              - qcom,glymur-dp
               - qcom,sc8280xp-dp
               - qcom,x1e80100-dp
     then:

-- 
2.45.2


