Return-Path: <devicetree+bounces-97322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B6D961FFC
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 08:49:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66845286B17
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 06:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71730157E88;
	Wed, 28 Aug 2024 06:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vSgOaJQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653D213C670
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 06:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724827767; cv=none; b=Qo2jCEmIoFj78kt3Ru0vzY3T1WW4Hy4bUjXfOTGs+6ev6546Ndccq3oKU3AA2OjkomaXnJKMPHqEdK+08k2XBy4gFepeyUH7bEIxoW2ze9RuCRofsEspCoj0X6B2EhJCQ2gdctIT2gl0UKyLbNK7GFRuB+f8aGJsGHUDhjPcZIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724827767; c=relaxed/simple;
	bh=QEsP0rSyuMHg9BE68yTW9hq3Cybj9mhfJJ3gZMQIOC8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XzeWewprrwgfc/g6qblTAzfZkDkmgPpJBDwwENOhhg8eARPRcmr35wCFIROAncCpLL11XSDUZi1l5bWukgcjl0lL2hL5uJBCR7ugUJWB2si2mvH1iQJ6KmmYvvcWTlRSSd1UODaGwBPU8wmW2kc7j1aoeJ0sTgCavqpincNtE8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vSgOaJQz; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42b964d7526so3420705e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 23:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724827763; x=1725432563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D+8jinjloKxefb9EXbJz79GDejTp3u0fbJxXQtb+yg0=;
        b=vSgOaJQzVgTjR94cMxf472hEFpsil+XFHg9YbOBdCzlFkKQhPwZve7ZGLN+WrRT5XE
         tkAGfjXK9DNo4UfFOMV9+YSMIWSxrQS7Sgm+WIS0buiCpjI9/TZSnxyJ3NY2Expw3AV0
         mvfo1saZcNkyGgqwqPKJjBjyt6dqouC4c4ftGqYepVNDZqfcwbBpZfZrvtczKh643xCN
         AdHmydt/9Pi5KDI16i7jLas8qm4/mo8WYkZ4MKRD0dvtAaB5WDSiovMJuLOIxxEMmANi
         qsVH6+EkooBJmQlDk/jpb3Yxw0pi97zffbuoARTY6hSJnaNca6b3JotAh4I9AaL6whHu
         CmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724827763; x=1725432563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D+8jinjloKxefb9EXbJz79GDejTp3u0fbJxXQtb+yg0=;
        b=jBl1yrmDOGu7bGmrObIN0rIIXTL6ODa54GDUdiEZgj6jXzTqNiO71eglUA6Pubv4fw
         cgbCJ+6/NRvGW/fAE/Vum/MQoTjG/n8vgJBWL+dFQ562ne51EAvfTpp6b1e32CP3AU8m
         BsLhPeV2Xpyme5SPRxmAqY4x5VYgQ6JzalxjCYJWG/FQeTQJa+HrRjgZ5E6k8I/uWZuH
         /GlFMXXV13Ze7KmKQX5UsYrS3OpZXkzECHYgSqeK1+oU+N4NBOTiI1x2y7+TLJWIc33M
         6gY7kTOVWVdWmSVY4wghVYns+1fOqPEENoyyp3lmFQP32L8Q2LU9ZPD+5PhcXYbe1tQf
         pePQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlK4wzRj6FitReV2yZmbnJaepB5RFTKM3M7va34Y4HOys0nnchdENZKmP4mQWNjMNye/JY3SHuGMDa@vger.kernel.org
X-Gm-Message-State: AOJu0YyyDf1M3CciX9RGKeGrlBsIk2qEWbFbdtqeSqIZUgTIA8nP5oI+
	ky8JzX++NuWK4Xya0SFU2OI+E0HJ1NkRjXh2xtk7H3eq8UxM3r9ubzhsM5CCGQE=
X-Google-Smtp-Source: AGHT+IEZhmUMIABFDGgrT50fIMiUtjQAcEB/LQYOcRwujPcZUBgZMY/40RvXCRX9iBHf2h6OIAYdNA==
X-Received: by 2002:a05:600c:3c99:b0:426:668f:5ed7 with SMTP id 5b1f17b1804b1-42acc8dd868mr71408435e9.2.1724827762519;
        Tue, 27 Aug 2024 23:49:22 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba641dbe5sm10685685e9.31.2024.08.27.23.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 23:49:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: arm: psci: change labels to lower-case in example
Date: Wed, 28 Aug 2024 08:49:19 +0200
Message-ID: <20240828064919.79625-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS coding style expects labels to be lowercase, so adjust the example
code.  No functional impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/arm/psci.yaml         | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index cbb012e217ab..7360a2849b5b 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -191,27 +191,27 @@ examples:
       #size-cells = <0>;
       #address-cells = <1>;
 
-      CPU0: cpu@0 {
+      cpu@0 {
         device_type = "cpu";
         compatible = "arm,cortex-a53";
         reg = <0x0>;
         enable-method = "psci";
-        power-domains = <&CPU_PD0>;
+        power-domains = <&cpu_pd0>;
         power-domain-names = "psci";
       };
 
-      CPU1: cpu@1 {
+      cpu@1 {
         device_type = "cpu";
         compatible = "arm,cortex-a53";
         reg = <0x100>;
         enable-method = "psci";
-        power-domains = <&CPU_PD1>;
+        power-domains = <&cpu_pd1>;
         power-domain-names = "psci";
       };
 
       idle-states {
 
-        CPU_PWRDN: cpu-power-down {
+        cpu_pwrdn: cpu-power-down {
           compatible = "arm,idle-state";
           arm,psci-suspend-param = <0x0000001>;
           entry-latency-us = <10>;
@@ -222,7 +222,7 @@ examples:
 
       domain-idle-states {
 
-        CLUSTER_RET: cluster-retention {
+        cluster_ret: cluster-retention {
           compatible = "domain-idle-state";
           arm,psci-suspend-param = <0x1000011>;
           entry-latency-us = <500>;
@@ -230,7 +230,7 @@ examples:
           min-residency-us = <2000>;
         };
 
-        CLUSTER_PWRDN: cluster-power-down {
+        cluster_pwrdn: cluster-power-down {
           compatible = "domain-idle-state";
           arm,psci-suspend-param = <0x1000031>;
           entry-latency-us = <2000>;
@@ -244,21 +244,21 @@ examples:
       compatible = "arm,psci-1.0";
       method = "smc";
 
-      CPU_PD0: power-domain-cpu0 {
+      cpu_pd0: power-domain-cpu0 {
         #power-domain-cells = <0>;
-        domain-idle-states = <&CPU_PWRDN>;
-        power-domains = <&CLUSTER_PD>;
+        domain-idle-states = <&cpu_pwrdn>;
+        power-domains = <&cluster_pd>;
       };
 
-      CPU_PD1: power-domain-cpu1 {
+      cpu_pd1: power-domain-cpu1 {
         #power-domain-cells = <0>;
-        domain-idle-states =  <&CPU_PWRDN>;
-        power-domains = <&CLUSTER_PD>;
+        domain-idle-states =  <&cpu_pwrdn>;
+        power-domains = <&cluster_pd>;
       };
 
-      CLUSTER_PD: power-domain-cluster {
+      cluster_pd: power-domain-cluster {
         #power-domain-cells = <0>;
-        domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
+        domain-idle-states = <&cluster_ret>, <&cluster_pwrdn>;
       };
     };
 ...
-- 
2.43.0


