Return-Path: <devicetree+bounces-149504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87316A3FA7C
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F0AC188F919
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79866200BBE;
	Fri, 21 Feb 2025 16:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fLRJQsPv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70FF1F9F47
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740153791; cv=none; b=ASC9z1RLtFxQtZ4vqRfzaZcNiwrJJpEuxhXg8Ivzc3S9psUbBTVzYU36TK6i7ifoW+7q+y33mpwZxtfAr+tNusFnSYmFyYfQNLKiX/tL3IP5223F+5eGES3ZwD8dnaXPQQWJvN2RWcAlLfLvwqLB13RsPL7QdoILjx0RD7dmr38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740153791; c=relaxed/simple;
	bh=RYYrqjZBBPZWi7VA/WRn8140pmz5H68xLv5MzgliR78=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eL7Vdwv6SNResNv84crWAb+8yoWZCsqsqiJxoTt0/72V7k8mCt1eyLZxBVCCvMrjEkhGCNajXISWyk7BSzpuQHUyozPWk+IhXnbs4+DpY8ciC4hTd9nH0B8YIBZEJc9vh/CZlzrL+tN1Ygm+X16jDz+JwZkVtxLoQHcWKFu2NBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fLRJQsPv; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-abbb16a0565so33104966b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740153787; x=1740758587; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Iecpj9KIMrY3zBOzgwFtaRTFMVnp7wDD9F9a7Nu1whg=;
        b=fLRJQsPvpsPxK9IVBT0WhA9wHoBXOW/bAFqOatLe49WYbn3T0q3mXQ1mbjBlzjLPB3
         1q7Ku3syMUVBONjEc9eMXf+jmv3CmZGIs/129+UcXjqmBksyno0kWJ8UhevZ+BpuqpcB
         rvGtwh6nRezkwFMoejBD4aT4iVkoGQUISQ+6eVavVS1EkpXLhSYq6UTb4M1hQc3N8W3I
         5U873zWJ20Fz6Y0ANLaj0XsPVr3q7m+A1wX84HEypPIOZd6o8XtbRmq6C4ll8GCoG7ZJ
         CIYtDzum4LJ2/9vt0Yf4qCqQSnKg9PO+e++YKWuGDuNFbFUoyPTM9jPw9b/Y/XJdimjZ
         f8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740153787; x=1740758587;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iecpj9KIMrY3zBOzgwFtaRTFMVnp7wDD9F9a7Nu1whg=;
        b=rpDtoo6d4S7iLvPwYThHDG+8pucLAJhkXayodo6rI1AeYlx2rNi5gQHtZNGyVAs3H8
         gfpRgHVk4+iPkx91ez5xNIVYqq8tWh8mc7Z3aB3npJHwk+JIxziRvKb/bv/HlUN7Rb5f
         5+7qo8znlBuOuNy+UNuLl/s1hhcmuOE8//DlPQJjHgwaH47JPAehX1+rVypy5ncTSZZC
         WCXMr5eCVOWpBlMhC7O3+ZjCNg1XxoghLbxq8bhbq5ihHDTxFqtEfuDRHYRq/whJmo/v
         hIjrf8tNULFuZq3Uo+MhudMFt7RydZcBOm52AQvyfY3K1MrKPDw0pisIr+LvvfaGKbkr
         TtvA==
X-Forwarded-Encrypted: i=1; AJvYcCUSmvAzG7aXLX1+IZe0W0bfMxGdpKCd7pA/1jmLDOzp7gF+d0NTr9GxLMH2yXKP/u+lWqOyYmRh0x01@vger.kernel.org
X-Gm-Message-State: AOJu0YzeMOmJet/YHFx89bzkhbVocz60stkkvfpx8Ak2wkFwWunF7ODj
	gtUkuNQWMfu+gd8f+/W8/esDf/fb7N35Fu85jmiZwFpIoSExaHuuurQAx8Ayaig=
X-Gm-Gg: ASbGncuU2wyuJQVbwR1cabmBS2PzkaIehrCMdy1Hi60ka4UHyz6SWAoHGrz2TqNFUUy
	XFe/lXYVeJ/+AyyARFUNA8ao9eeTWrZ1a42Vsz5+iIvKUapXJpZXmKPPMBGzaQKlzYVqsc8ERi7
	w738PD9zGhWURm2EO+0kJcHf9xMu1lXnmL++LQYpiJX/zvDgc65HX8/ij+QkPCjJT3rf2L8ngo+
	B58S7uWkCkHHqhSMqOQnu/z14e2Z1eFSw7MejGgIYj0lxQAKKBNrjwaaI06BmXeC6ZlSIK9C79E
	oPouXjfgo1zn/ly5U9LwECiO6PPxZtS3j+zMy6JFJc8UTCClqEc7b48Knt8F6UbysWQwucs1v0w
	=
X-Google-Smtp-Source: AGHT+IFD94Z2C6E/AhuO+19C1vGdBFuuX7tNp0Xx3W8Vs2QPQWhGEEzUJ2reXTaWktyO+VoDRaxiJA==
X-Received: by 2002:a17:907:9722:b0:ab6:d3b6:d825 with SMTP id a640c23a62f3a-abc09a578efmr125277166b.6.1740153785316;
        Fri, 21 Feb 2025 08:03:05 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb98640619sm1040782766b.54.2025.02.21.08.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:03:04 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH RFC v2 1/2] dt-bindings: remoteproc: Add SM8750 MPSS
Date: Fri, 21 Feb 2025 17:02:59 +0100
Message-ID: <20250221160300.160404-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add remote processor PAS loader for SM8750 MPSS (modem).  Device looks
fully compatible with SM8650, however it lacks fifth memory region for
Qlink Logging, according to downstream sources.  This is a bit tricky,
because updated downstream sources for newer downstream release dropped
that fifth memory region as well.

There might be other differences against SM8650, because the modem
currently crashes after starting.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
Split from previous MPSS+CDSP:
https://lore.kernel.org/all/20250220154132.199358-1-krzysztof.kozlowski@linaro.org/

Retain the Ack - no changes to the binding itself.
---
 .../bindings/remoteproc/qcom,sm8550-pas.yaml    | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 8bfded3c66ef..2dd479cf4821 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,sm8650-adsp-pas
           - qcom,sm8650-cdsp-pas
           - qcom,sm8650-mpss-pas
+          - qcom,sm8750-mpss-pas
           - qcom,x1e80100-adsp-pas
           - qcom,x1e80100-cdsp-pas
       - items:
@@ -164,6 +165,21 @@ allOf:
           minItems: 5
           maxItems: 5
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8750-mpss-pas
+    then:
+      properties:
+        interrupts:
+          minItems: 6
+        interrupt-names:
+          minItems: 6
+        memory-region:
+          minItems: 4
+          maxItems: 4
+
   - if:
       properties:
         compatible:
@@ -191,6 +207,7 @@ allOf:
             - qcom,sdx75-mpss-pas
             - qcom,sm8550-mpss-pas
             - qcom,sm8650-mpss-pas
+            - qcom,sm8750-mpss-pas
     then:
       properties:
         power-domains:
-- 
2.43.0


