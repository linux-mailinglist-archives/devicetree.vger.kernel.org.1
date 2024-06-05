Return-Path: <devicetree+bounces-72746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6688FCE14
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 14:59:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 857DE295851
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 12:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D091E1B010C;
	Wed,  5 Jun 2024 12:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="CsAI3drw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6651AED50
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 12:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717589705; cv=none; b=TEnn2xYA1ElIwTBgJ6K6ZeTgtEZhqjJN5ye91SSFagvD2O4yZBTReuc2cJyZJvHSRmrPCulh0pQtCJRpcf2t4DqsAFkky1jIYEznRSyCR/KtAQ2zbV0ywx2OLY2IiU7vuycf1nNz4fguVQ0Vg/REClhcnDKG+BuzYEqUhX6mv/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717589705; c=relaxed/simple;
	bh=AqX+Za9mfMY0W3PVZAiiE+ZfJHoW4sPFaArsc3nPPC4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kTYumueY1R2FcEMw45H7LNGLMzvkNBToBi2shbN1oJBa2OKEaj3edhmH8SrsFPpTc6u0Wl3nH/ebMQ6N/Lwvnuj5rhcqiqh7qTvH3GWZrLkPzTNr6HH5LL27hKw6snQ/wK5yMhzBTUr/xJNIOHJLDDZ/Xxo1uoNC+hyP+aQDWNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=CsAI3drw; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-35e4be5bd7fso4078732f8f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 05:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717589702; x=1718194502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZ4Q08DX9g7k4DrWEWlJBpB47zAyrINRvMFMQDXyZ4U=;
        b=CsAI3drwUtkh0A1FULNCPDv+hwE6iP6q1/wYBz+2LIhgGeBe57iTRGTqPwapdCYuUG
         ACC/XQfMal7Pf76p+/F+A5VTeVDRqyJP1ZdPLj5/wyDNJz8Crt05gzSZLdhLCOO+aRmh
         TND6Ezq4VaTV8Ie+IOvAjVhP+Fv3RU4aSmHhRKc3JBbKztI+3TJYDeuKQa5W3Lzy+ct3
         dheWywA7fir4+h/bOr+MEZshPNoKBswUx70yPr8RT4O/wZSJcUOZCgUvVn6xMOmQZMPX
         us3n29ZGwPKQXctJiryU0vGSoROe7AdXUqUAj0nwHFVf7904i3UuNUvo8AbFBwGvjCWp
         qesg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717589702; x=1718194502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZ4Q08DX9g7k4DrWEWlJBpB47zAyrINRvMFMQDXyZ4U=;
        b=H0BrhlkZuKs+BZ6HD6IMtjfcgIIUeWJPuqsFxKpumW4zojqYgjvDJsdiBPSezvXVlJ
         g8yauzytoUY5fxOvtrBb81ssE3Bivf6Z+uZL2UaRJUEHD4DtAdWkbZpsFOW9Rk8c2r9M
         xLYh/quuPk2fZFgt3r7WABDQ+sRp1l4Q3udhXBnNhW6Th+m+psgBMZUmB4EJjXBvQbFr
         Z1sHvKRqoKMPp7G2PD74JeBBk6TdKmsriCbCWWrTpyeFydcEICcoYnionkzvQpODL4Nx
         oKRixs0oxDSNsBkIDxpYDM14r0TvcqBhbqq+UdcrnlGni8Zxkoz5OYx64gFhA9uV1Ijy
         PsHg==
X-Forwarded-Encrypted: i=1; AJvYcCUJNCi8tgCU9VdtYnx9HM6gyiTC2CdudYYW6XRR9Bjj1FedXfF3wkR88kZaL9g1DkCAt29IYc/rYbjFr7QHyymN9Dbu7RQQ2DK0kQ==
X-Gm-Message-State: AOJu0YzyEuSP/cSrqMtJyRNWXgqhhqTbi6SphzA25FQzQGN/tHgtdzZG
	T5R+AcEt/YAIanVOXSdSOv3GrMGEl1dg5vOO+Cas7tAwJyLixrW8wXhqGJp6f0Q=
X-Google-Smtp-Source: AGHT+IF0o6aPSMl3KLnB7KlqAH3eqyHxFB40LLFHmi33ScVI2ikXyuZ6oonw6uIWWdw1pF96EJqLLA==
X-Received: by 2002:a5d:62c4:0:b0:35e:e53:3f3 with SMTP id ffacd0b85a97d-35e8ef7ea2bmr1693505f8f.50.1717589702475;
        Wed, 05 Jun 2024 05:15:02 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:75a:e000:d3dd:423:e1eb:d88b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04d94e6sm14415794f8f.51.2024.06.05.05.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 05:15:01 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 2/2] regulator: dt-bindings: describe the PMU module of the WCN7850 package
Date: Wed,  5 Jun 2024 14:14:49 +0200
Message-ID: <20240605121450.23697-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605121450.23697-1-brgl@bgdev.pl>
References: <20240605121450.23697-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The WCN7850 package contains discrete modules for WLAN and Bluetooth. They
are powered by the Power Management Unit (PMU) that takes inputs from the
host and provides LDO outputs. Extend the bindings for QCA6390 to also
document this model.

Acked-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../bindings/regulator/qcom,qca6390-pmu.yaml  | 36 ++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
index 4588b4e862a3..3aaa9653419a 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
@@ -16,20 +16,37 @@ description:
 
 properties:
   compatible:
-    const: qcom,qca6390-pmu
+    enum:
+      - qcom,qca6390-pmu
+      - qcom,wcn7850-pmu
+
+  vdd-supply:
+    description: VDD supply regulator handle
 
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
+  vdddig-supply:
+    description: VDD_DIG supply regulator handle
+
   vddpmu-supply:
     description: VDD_PMU supply regulator handle
 
+  vddio1p2-supply:
+    description: VDD_IO_1P2 supply regulator handle
+
   vddrfa0p95-supply:
     description: VDD_RFA_0P95 supply regulator handle
 
+  vddrfa1p2-supply:
+    description: VDD_RFA_1P2 supply regulator handle
+
   vddrfa1p3-supply:
     description: VDD_RFA_1P3 supply regulator handle
 
+  vddrfa1p8-supply:
+    description: VDD_RFA_1P8 supply regulator handle
+
   vddrfa1p9-supply:
     description: VDD_RFA_1P9 supply regulator handle
 
@@ -50,6 +67,10 @@ properties:
     maxItems: 1
     description: GPIO line enabling the ATH11K Bluetooth module supplied by the PMU
 
+  clocks:
+    maxItems: 1
+    description: Reference clock handle
+
   regulators:
     type: object
     description:
@@ -83,6 +104,19 @@ allOf:
         - vddpcie1p3-supply
         - vddpcie1p9-supply
         - vddio-supply
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,wcn7850-pmu
+    then:
+      required:
+        - vdd-supply
+        - vddio-supply
+        - vddaon-supply
+        - vdddig-supply
+        - vddrfa1p2-supply
+        - vddrfa1p8-supply
 
 additionalProperties: false
 
-- 
2.40.1


