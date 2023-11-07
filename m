Return-Path: <devicetree+bounces-14314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 370F37E39F0
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE18A280FCC
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0DFCA79;
	Tue,  7 Nov 2023 10:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YqC6rCMd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF022C852
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:36:11 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5D7E9B
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:36:05 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9e28724ac88so53103366b.2
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699353364; x=1699958164; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V9Vc2qkKhkx61HztjKbbqVRx45srzZVqd+8CPW3yS50=;
        b=YqC6rCMdNigzr6ulktd6QGMMSkJP1/NihqLUbUpI4aInoJ9L6wPk47eC1jxfH9CbZY
         Q1CtzPwGIz+OZeWMBgIIaB/esskESEoLMdDHqXU7d3B1qCzTSMstoldz68JjIPCstNB4
         7fv4+4uy0TzBMKGRUunnWR1uOcbAaEQLJkoN2fWj8Rmzj+fxE6D5ySVdJok805BbaI1t
         YODohfj62sNOJHGzSj2/D1p56Bq8V4sg2YcirKh1xe4ZzRmxOr1opDZO2ywp5JOlnA3e
         2DUeIPXkfe/T3gZpoxP38HbENhk1bKbFl++nQL95s+/mhWPpA1798GdFkf04CalDNLA1
         d66A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699353364; x=1699958164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V9Vc2qkKhkx61HztjKbbqVRx45srzZVqd+8CPW3yS50=;
        b=B0l63BK5YN/gBkoakwLKfc7k5UrwofbAmB0y49WuMmi0r0LfNRmVMPPR1JQJu5PMsV
         TpS6VT2j/MG6rR1gFlCD9qi5l61ngcN3CkPROxEzPXfl/wGQg//o5xBemTDgq2ip2d/2
         gLOxVR/9TMyCKcMO2qaoji4BolG31RFsU7B4SJww8ML3IsHj1vN/bc2X1X1pAv3zVuUU
         lckB/SAYYD7fjDaVLo48O9wvjwHEckAF6gZLK41z8yZBqiGc1VELij4zUgcBt7htLkzM
         0n8SlVaTOZLVJjvovw9XQmg5KuJqaqAr3/hBeAmjH6R+jiiWRp/1Ocrqte+B51gtmhot
         GGsw==
X-Gm-Message-State: AOJu0YwTU74SwmZawEpkXa/OhJr/qb9vYkpKOFuXNK9ZetGAWPh6PRuN
	dFA6cSrl6dJa9VheZbspzco9ug==
X-Google-Smtp-Source: AGHT+IGlcsVnMGNpyWLBotkYWP9vhPvQ1zyDE2+TWGxgndROuli3GOxflA+1dY6Ar37umkuXKpUK5w==
X-Received: by 2002:a17:907:74b:b0:9ae:65a5:b6fa with SMTP id xc11-20020a170907074b00b009ae65a5b6famr15853415ejb.32.1699353364150;
        Tue, 07 Nov 2023 02:36:04 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id g7-20020a1709064e4700b0099d798a6bb5sm877590ejw.67.2023.11.07.02.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:36:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: display/msm: qcom,sm8250-mdss: add DisplayPort controller node
Date: Tue,  7 Nov 2023 11:36:00 +0100
Message-Id: <20231107103600.27424-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the DisplayPort controller node in MDSS binding, already used
in DTS:

  sm8250-xiaomi-elish-boe.dtb: display-subsystem@ae00000: Unevaluated properties are not allowed ('displayport-controller@ae90000' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/msm/qcom,sm8250-mdss.yaml         | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml
index 994975909fea..51368cda7b2f 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-mdss.yaml
@@ -52,6 +52,16 @@ patternProperties:
       compatible:
         const: qcom,sm8250-dpu
 
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        items:
+          - const: qcom,sm8250-dp
+          - const: qcom,sm8350-dp
+
   "^dsi@[0-9a-f]+$":
     type: object
     additionalProperties: true
-- 
2.34.1


