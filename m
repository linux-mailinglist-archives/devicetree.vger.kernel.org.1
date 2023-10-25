Return-Path: <devicetree+bounces-11601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5167D6368
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:36:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42436281CAF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6E31A284;
	Wed, 25 Oct 2023 07:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H69AXcBS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18BB19470
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:36:22 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F41B41BEF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:49 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507975d34e8so7902440e87.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219348; x=1698824148; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9bh4BuX6mtZj4adG7q0FqVSsfQ8nAZqCkGJa5faAKDA=;
        b=H69AXcBSC22A5ekX9AX3j5iICT6RAUgaaCNtPXcAiblaw946gZZDJ1R25UuzgvAr92
         YJjsFtXRuAFL50vNn1AVip5TLiFJaejokBfrtcR9VvL4DLPN6NM2LMq49Y6fcG6mgxcS
         i1cDRl9j38wnjoJ4fQhlr+YgaluqpFSntGHehwZMpJDqFtmCOP5GXQHoXHcjOVdj8KN1
         OaOjokUHS46sz7qFwA39Fjx4W/Jux3f+8U2vBnK9I+W6v+NlCKnV1ssP91JpLsLKikDu
         ohOCSuFZ5S2/I1835Ikt4xIqOg5SDnLgoGwETay1o0DjE9HnSme8YJMVq7Hy5E2zBc3M
         dtrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219348; x=1698824148;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bh4BuX6mtZj4adG7q0FqVSsfQ8nAZqCkGJa5faAKDA=;
        b=TeUi7TbnrOnhzfFni8YJNVeZ+Coik6MJwYgk5ESbFqBhrU39hEunbqhc8joneuuJnu
         kmCN8y+lu0j1BPG9dQCErSxu2i4STpqhm0cljgTnqDlru2RnQ9PfZATK3PajS/oq81XG
         hgZEnJxXXAR6/vbI27Ort1FOreLwoz1vwf071XBoAyOk04GgNvmqhOeU8Dp7niDNZdRF
         xcw0rRP3s/UcuhqQ9e0D6tGkLHkjwQVKEXyCwU7X//5Q8XNFb5cVWJ58QAsTny1Z/mzw
         tzlPsd/R95WGrXb3FyC4R7ZNwEtXa8Um3vmBJ0s44ITihFBj4MVmvYsZ4MtTLje00p/t
         j4Og==
X-Gm-Message-State: AOJu0YwTXGOGWoYvsxm9CNjmCQFgP2wlC25Yi6K8xWwGY0hoXKiccYBS
	roEgwyrqVYcfbnMocM1wcNVznA==
X-Google-Smtp-Source: AGHT+IEok7+7i7J3MiWpVTCnYZbsBa4BwVdftYEt/MBaQimcueIhBHWyTcSohkn9ayIdCz1seqb6jQ==
X-Received: by 2002:ac2:546b:0:b0:507:9a93:84df with SMTP id e11-20020ac2546b000000b005079a9384dfmr9912707lfn.25.1698219348231;
        Wed, 25 Oct 2023 00:35:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id d14-20020adffd8e000000b0031984b370f2sm11416346wrr.47.2023.10.25.00.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:35:47 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:35:44 +0200
Subject: [PATCH 1/3] dt-bindings: remoteproc: qcom,sm8550-pas: document the
 SM8650 PAS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-remoteproc-v1-1-a8d20e4ce18c@linaro.org>
References: <20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2945;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ReX6I/P07eTgtQQTrQKO8qWXZbNK8GFq7o2EoG+yCMA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMVQLaoczDUEsgaDjUrfWjriFoPMK+x8TpWa8qPX
 s3uq6eiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFUAAKCRB33NvayMhJ0U9hD/
 9AT3wLIpKzJCgeYqnETIcqLOYl9i2NfBxP3JI7g7QbnyLE6VpjM66rjqljM4WN++ZoXTI3d3phUg/8
 /bOLZGqepIHLnQxiNf/R4pgiWf5/sq5JVS+St++c/0LkK9+/g/AAAuYzvX9NvbXEjy8KeowZWBosbP
 sDvdZHj0swuDrvr2pYg3k/KllaURNNwxlSUf4vWkH4ruJ6L4QnxwD+BO55Ar22yN2xIWcs/F2D9Isd
 kB4D7u2+uyqByiwCXdKQZa+ZsGtw1PJXLx4vVOO7wcJJeUBmN/GAIbtHB56yOAJr1QNXU6KdlMc8t5
 TblmLDPwbGjbPBrt697f7MBgkWE+T1b5oswndRfOYvrToHHAoRUWwuV6l4NuPKAVg4NrIzCMXgAoP5
 CNWjJKZHWwEVfh59sCTXmhMB0jKojp5pqQgbD9HTrJIEQN/ZkllPLUh3/JviAeUOwGBESn8w9J01e6
 EWYVbUVdJDkSw9uynnJhTNbSp6t2459fzrEZOp3kSjNGme93DIxZDwMYdJG204khMcnur4Sw8Vpgpo
 B5r3dSvlAJLqaPFge9UrBgxmwUaN9h9898OD5SzxSips53igQEtvBviSaJUK0aY4/AiSAH7yzujmpi
 ySL/SBqY3pm3fI8CKrMGpNW9dDHPfkth5V7+rcgxMDcF9TJ8lGP84ak8XZvA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the DSP Peripheral Authentication Service on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/remoteproc/qcom,sm8550-pas.yaml       | 41 +++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 58120829fb06..316371c8ee6e 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -19,6 +19,9 @@ properties:
       - qcom,sm8550-adsp-pas
       - qcom,sm8550-cdsp-pas
       - qcom,sm8550-mpss-pas
+      - qcom,sm8650-adsp-pas
+      - qcom,sm8650-cdsp-pas
+      - qcom,sm8650-mpss-pas
 
   reg:
     maxItems: 1
@@ -49,6 +52,7 @@ properties:
       - description: Memory region for main Firmware authentication
       - description: Memory region for Devicetree Firmware authentication
       - description: DSM Memory region
+      - description: DSM Memory region 2
 
 required:
   - compatible
@@ -63,6 +67,7 @@ allOf:
           enum:
             - qcom,sm8550-adsp-pas
             - qcom,sm8550-cdsp-pas
+            - qcom,sm8650-adsp-pas
     then:
       properties:
         interrupts:
@@ -71,7 +76,25 @@ allOf:
           maxItems: 5
         memory-region:
           maxItems: 2
-    else:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8650-cdsp-pas
+    then:
+      properties:
+        interrupts:
+          minItems: 5
+        interrupt-names:
+          minItems: 5
+        memory-region:
+          minItems: 3
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8550-mpss-pas
+    then:
       properties:
         interrupts:
           minItems: 6
@@ -79,12 +102,26 @@ allOf:
           minItems: 6
         memory-region:
           minItems: 3
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8650-mpss-pas
+    then:
+      properties:
+        interrupts:
+          minItems: 6
+        interrupt-names:
+          minItems: 6
+        memory-region:
+          minItems: 4
 
   - if:
       properties:
         compatible:
           enum:
             - qcom,sm8550-adsp-pas
+            - qcom,sm8650-adsp-pas
     then:
       properties:
         power-domains:
@@ -101,6 +138,7 @@ allOf:
         compatible:
           enum:
             - qcom,sm8550-mpss-pas
+            - qcom,sm8650-mpss-pas
     then:
       properties:
         power-domains:
@@ -116,6 +154,7 @@ allOf:
         compatible:
           enum:
             - qcom,sm8550-cdsp-pas
+            - qcom,sm8650-cdsp-pas
     then:
       properties:
         power-domains:

-- 
2.34.1


