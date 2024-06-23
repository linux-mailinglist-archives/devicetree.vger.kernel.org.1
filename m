Return-Path: <devicetree+bounces-78935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A06D913AB9
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3F381F217EE
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D106F18133C;
	Sun, 23 Jun 2024 12:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G4I9pIWr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127601E4BF
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719147579; cv=none; b=gXW91aKTX3UQTLGFrAc4oZWzdwdAAqLZKOcbpotp6kxy6morguLQg5Q+lTjk5aFovBGDpQLP0vzYThn7coAy0GAau0f2Rsoz36s8YKKgt5gbaAM7NAR9BXsvkJ6u0y9O0MOtGZNd5rgDvf/PzF0niAK3lSbLTs7PnzDGA1bJVtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719147579; c=relaxed/simple;
	bh=JnK4tC/6AdATC2rdcUlEX6+c1sqoOuE/fsYaD+m1DGA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=s1f1RIGD+omMhKw4xq2hb8rGX0u+uLVPEc90X0eXs/pEv6T8b8QjljcyFzCRVtDhl955TOVfowOHfem9sCjgCxaD1yODmIDMsTTsMIpR8n3DG24ow1wsKs/tgNprZfBKjbmFU1Ipudr05oeiiXfJ+AayT8w2kKbqovf+t1WvX5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G4I9pIWr; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-364c9ec17d1so2098519f8f.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719147575; x=1719752375; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ws1yhAOxT/v0xOVLwszOW0D6d4xFjidlrdHX+n3YJlI=;
        b=G4I9pIWr2Nj1rvMFPxudOkPg1wPGfyfC17QnfbW+Q3Z3dTpYF0cZENVhqo9cGJHgFo
         vFtXQGGsxJOg71CHWmV+CWE92+4IqAjPDEk73nzGcsR3bh/lrrH3ZFcnhoytCwTEx5g0
         vTuOHwpc0zXeHXbYV0etYqVW1PbgbTk0yAJydfdeaUTsMT+BHEX60x6WkjSfyTB4WSY4
         VsyrQaTbv8qsTnHyr9MY/B+uhNSd5yEqgVj2nQbrW8Eo+1lllV3RZrNI5rGTyCgKyVfk
         vIPzqow/vdh7YDm/s8i/MeYx9tAjIOnDzid3XFxlLxZrfEwzlIHt7MO8Dpc2o9UYoEiz
         S2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719147575; x=1719752375;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ws1yhAOxT/v0xOVLwszOW0D6d4xFjidlrdHX+n3YJlI=;
        b=nupLYiImqQNtugu/BMAOzOGT9VmRmhP7m2fe5dmxhK2aqXw2ve7djm52cbO7SjRgjz
         bHavrCwgWubUR6PEIuDoiS7xuuwdZ6KxhJFNKjwnW8FYZTXNSD7TcwcrbUpMQaSVV6kp
         c0SThMWXstBlD5KbwHVL25UbISOws0QSNG9KBkeUEIB6lJwDlF5Js6poVb4sl/cVIw/f
         RoU4XRJ2Oz93sKhnyBhDKUe//NQJLuuI+82Ny43hKrwApr+kE2aVGBwZzTxAK++wxNoA
         yvvwILE6FWl2ftgXlETMhkpAyTfyf+0RB+MdG5oMWy+T9f2D/jISE0APPYtvK3LvPESC
         GWOw==
X-Forwarded-Encrypted: i=1; AJvYcCXQAqDUT6Vh1cEO/KnnhE83gAm9WqEpIq3QwSqk/DWJYoA77ISHLEKVgrDDSJ0G6v91T4Z5alvS4xu7TkIcEphmKV0w120naevQew==
X-Gm-Message-State: AOJu0YyEo7vWc3ywshDHhFG9lJ0ASD+O5GPs531bhNqVbaIZnXRn6bH8
	ulfohJwouNuUiI7nFVKrZq+LD4qDGbkAt1QN9NvRq0Ajrd4NIfGE/czBwXg8xkQ=
X-Google-Smtp-Source: AGHT+IH/FPiPO1kX2dxDboF7jruNga6O3TVW36OIWCsw7kwZBc8YPjnPRr443tH7ldk0wY395QD3/w==
X-Received: by 2002:a5d:6d02:0:b0:366:ec30:adcf with SMTP id ffacd0b85a97d-366ec30aeb4mr1166492f8f.5.1719147575020;
        Sun, 23 Jun 2024 05:59:35 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36638d9bfe4sm7245088f8f.53.2024.06.23.05.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:59:34 -0700 (PDT)
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
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Akhil P Oommen <quic_akhilpo@quicinc.com>
Subject: [PATCH] dt-bindings: display/msm/gmu: fix the schema being not applied
Date: Sun, 23 Jun 2024 14:59:30 +0200
Message-ID: <20240623125930.110741-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dtschema v2024.4, v2024.5 and maybe earlier do not select device nodes for
given binding validation if the schema contains compatible list with
pattern and a const fallback.  This leads to binding being a no-op - not
being applied at all.  Issue should be fixed in the dtschema but for now
add a work-around do the binding can be used against DTS validation.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>
---
 .../devicetree/bindings/display/msm/gmu.yaml         | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index b3837368a260..8d1b515f59ec 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -17,6 +17,18 @@ description: |
   management and support to improve power efficiency and reduce the load on
   the CPU.
 
+# dtschema does not select nodes based on pattern+const, so add custom select
+# as a work-around:
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - qcom,adreno-gmu
+          - qcom,adreno-gmu-wrapper
+  required:
+    - compatible
+
 properties:
   compatible:
     oneOf:
-- 
2.43.0


