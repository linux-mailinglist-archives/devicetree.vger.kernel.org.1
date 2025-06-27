Return-Path: <devicetree+bounces-190183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB080AEAF53
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 08:56:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B20CB3B1C70
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 06:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 521F621CFE0;
	Fri, 27 Jun 2025 06:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="YhCm067e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D4921B9D9
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751007358; cv=none; b=eP1sK7eVtClG88HiXNU/Cwe4cTnzm5dWqIJoPam6tM8dWcsWaHSzvzfq7Ug3njcqC234Hd4LHfwH2ael2zo2NKgnS1mL6VdhN0K1KkUOv6STrBMio3VkcullXfrN1lMmhbToM479+5YjYA8wO1hthBo2wcK9I2yNjHy44uq/xWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751007358; c=relaxed/simple;
	bh=DDoOiVWP7KZImpai6u0PVHDpzkeoi2DbnaMeS2WpWmY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hspOXA2IFRyRsmn5fC9BkjKCtmaTKgwLxOKeSGd4Nz/byxmQ64QW8r7ZsZMDbMO6LwYO8h7Nhsk51Ia3cJjzyN7AXYTP3+xs4n3xG6gCmeIL5s1/lglLAoB5qShp0q2xlqjqNzFQO7l/+t3QFSEHsHVRom0TqrvGQd3CODoq8e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=YhCm067e; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6077dea37easo3098648a12.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751007354; x=1751612154; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/MltAVAkbR8k6TCTW4CyO6wlIYS6CBRLi/IFlrjf90=;
        b=YhCm067eU/raIk9FCTXkBe80jv60EoqO2R7/Bh1awKzhDZeMEvST8FwyHi3kJ1Jc+h
         87WbbKiT06isBplt6J43Iuh7IUZ7n3W09RQJ/Olhbkfw8c8SuFaV5DJGsnwMDPnTThj3
         C5nFiqC6oVS8MxY2n/3eAEUmViA5Pwf8aIhyO6P60Jnx75hX7iv+BoT9Cj+WcVr95DjK
         PRodeoOgBHWhTnB8CNcUXiopJA/mzXMwv3xSCF3IH8tiooVV0nDgjPxaoWERCWKvEA8K
         WA3yG03gsBhmbMyO8ZWVKam9IbOz30t+hZHrpyBAtFIQyg/2dLBmV6KysRp0F/CEQkgy
         gTrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751007354; x=1751612154;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o/MltAVAkbR8k6TCTW4CyO6wlIYS6CBRLi/IFlrjf90=;
        b=fujH73+X9xeKJFRsmu0O8v/RwqLV8HGdO5tu6N9CCQfDviAEoiqAaUDitFYnXG/dfE
         dAs58YmWsN9iB7+VZ/h1lUqrifSMVg+PKpaxGLmHbOjETc0DJwkaB/oaew3dcIfxHCJo
         lAEuUfonpzlSkFtj+tFoym76mwwb67YBur1cJAmGss/8RCc8GmAcJgD0KQx+wKjnLsRm
         Rd4b1/SPbzXVR1oo1fN0tKtIFrKDtOsugU6iKhM+Ca/3E2tNHnN0sUHT3y4yNB9KD4r+
         VUSFVSsdXzLArwQLnBgWVzbQV/85TiNtb8U3YmD9JNidOShge03Zo3q69OKBpNegChWW
         Pj5w==
X-Forwarded-Encrypted: i=1; AJvYcCUe2BBecUltOcKTESBjvv17K1sJ8uFXXHGQMKbanRLjaclPzp4GOrisgqQIRoLQj/dq+I8jpBHGMXnB@vger.kernel.org
X-Gm-Message-State: AOJu0YxMMGdjBWnHsqZds6/CkGKJMttc+q9SQ0nH5CbOd25ZtufRLvMm
	slBp2l/yciN7mGkWFlfzTTb3zqkoPOae6A2aHrIe8UkT/40O72fsUiaGtpSKHIR4x60=
X-Gm-Gg: ASbGncvUaYhXbmZ5P9EF8US09gafYc/RTXbcXxJoU2fA4lidldlePYzfjKdy1/ss+DL
	LMGnEAuKstLaKScMXo/OqiNWIIWWunDhqKcsmTzcmjwohnrMf3HDfwFeN4UsBd6CdyLcDIVwBol
	nc6EhS3Q0OF75NPrK2B5vcpDVFZcqyxy+qpsABnG+7Q4LuyacYT5eL+Ep/oBPM/5gIXR/niDN7g
	rJBccs9obgqzmG+sYNfMXiNiQmemgPSCm54EMBSXyppcjJOiYL3H7H8wWmnr9iL82Nzpyp7HdsP
	ZEiqlyKAmZM02yNApDYcz5fXm16l/eBfaLLDrzbXHJNwucRhw7lyBOQ1ThPkisdmpPAHdV+/IyJ
	bou+NB5NDvpzI2LMO2W6apMUzoWH4evYL
X-Google-Smtp-Source: AGHT+IEPOegvS5x8uAfxLou6BqkH4jPPap2DV8GxhIYNv+0+kp7YUsrnViWajQTwwmSuckNTkr/hcA==
X-Received: by 2002:a17:906:478f:b0:ade:c643:62ce with SMTP id a640c23a62f3a-ae35016e6d6mr183382166b.56.1751007354155;
        Thu, 26 Jun 2025 23:55:54 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8290ffb4sm1019451a12.36.2025.06.26.23.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 23:55:53 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Jun 2025 08:55:43 +0200
Subject: [PATCH v2 2/3] dt-bindings: remoteproc: qcom,sm8550-pas: document
 SM7635 ADSP & CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-sm7635-remoteprocs-v2-2-0fa518f8bf6d@fairphone.com>
References: <20250627-sm7635-remoteprocs-v2-0-0fa518f8bf6d@fairphone.com>
In-Reply-To: <20250627-sm7635-remoteprocs-v2-0-0fa518f8bf6d@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751007352; l=2202;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=DDoOiVWP7KZImpai6u0PVHDpzkeoi2DbnaMeS2WpWmY=;
 b=rEYZ0sl+6FbVHfD363nhKpPvyLoXc0/GrxUiNcWrTXEXL1tlkyPbvtPFub8YAxVWHHcqZLevW
 927VTS6GeQaCNRCaSA4ODimaVc+E6Wr2QnkQZm30Y84tyDwRgj0VKGy
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the ADSP & CDSP remoteprocs on the SM7635 Platform.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/remoteproc/qcom,sm8550-pas.yaml       | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 2dd479cf48217a0799ab4e4318026d8b93c3c995..44cc329be5067ab6cbaa0a467669cb3f55c7e714 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -18,6 +18,8 @@ properties:
     oneOf:
       - enum:
           - qcom,sdx75-mpss-pas
+          - qcom,sm7635-adsp-pas
+          - qcom,sm7635-cdsp-pas
           - qcom,sm8550-adsp-pas
           - qcom,sm8550-cdsp-pas
           - qcom,sm8550-mpss-pas
@@ -165,6 +167,24 @@ allOf:
           minItems: 5
           maxItems: 5
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm7635-adsp-pas
+            - qcom,sm7635-cdsp-pas
+    then:
+      properties:
+        interrupts:
+          minItems: 6
+          maxItems: 6
+        interrupt-names:
+          minItems: 6
+          maxItems: 6
+        memory-region:
+          minItems: 2
+          maxItems: 2
+
   - if:
       properties:
         compatible:
@@ -185,6 +205,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sm7635-adsp-pas
               - qcom,sm8550-adsp-pas
               - qcom,sm8650-adsp-pas
               - qcom,sm8750-adsp-pas
@@ -239,6 +260,22 @@ allOf:
             - const: mxc
             - const: nsp
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm7635-cdsp-pas
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: CX power domain
+            - description: MX power domain
+        power-domain-names:
+          items:
+            - const: cx
+            - const: mx
+
 unevaluatedProperties: false
 
 examples:

-- 
2.50.0


