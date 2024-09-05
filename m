Return-Path: <devicetree+bounces-100529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC6B96E000
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 18:42:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E280FB23EB0
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 16:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75DC1A0730;
	Thu,  5 Sep 2024 16:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xQy8+2ew"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8B11428F3
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 16:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725554514; cv=none; b=ttbXjKVYdjAS+bsZXMXa3P7GDJAuJZ7ar0sN8HxvFC0SCN5ZBDCUonDrIqHqkmClHsGPypyGcV/w1dza798V81PiqbeDoWdKuYD/guhn8moB5HZnMKOptluXWMs6gZpxqt1TkuMtV1nw9uKgt+4nkM725ktHq+MGbwV7we3EsaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725554514; c=relaxed/simple;
	bh=EG/xT1bWYZn8WhlWvDy1MIOgdlyQcCVYbo0AZFAPAFE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WSbs2BT9ww1I2R28R5WZyyiFoa+lHVXgx9OXAkJ8lSDlXCVeRLZUpAUHda8InFyplNyEp/O0BPHSVX+9CPwiDm3MCPdFvi4UzUganY0MoTZtViOfNbBOxQS9LUUFJR+UUZtnaJ1O+Hxq3Rvs5/sImMeSULj5QBQTwvaW7yCCafs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xQy8+2ew; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-535be0a9b9bso161480e87.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 09:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725554511; x=1726159311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10ybVZVKbN8/FmjH6XRCXh0VAd5m2pgfvQwnT1Z2dbg=;
        b=xQy8+2ewRQGvIxwQ7moIrVWZeauabuclL4vifnoxotqfBy0q6YS80UovnqPOuPX9Hw
         tSZhzz+5iym7uAsxAmq1foapjDsoD8Sm5/HUfvvnKXib+zd9m98Iawy6sMn+SE81xJwu
         yuKteUHTxNasrLFyILfkDL112ebBpAkQu34P0kP5vH2sjF1CzYb5vMctbWmOv5c965S1
         fPJC46txeFcanCmW+TuJ4xcN6CpjgomYTotcv2KsITVWSdWB7bOQEQ49TybyH9pWC5We
         6PWsnqtNNjwRbzAKKnUCyFAKzRAvrL6W0rSvaf8dSgyTGY+LZlC1C8JXgXKSXPkMGQdv
         ouTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725554511; x=1726159311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10ybVZVKbN8/FmjH6XRCXh0VAd5m2pgfvQwnT1Z2dbg=;
        b=lBs01oLlQLOpDcyFe5v6uDT+hVbzb6pAS10dN10XAGmU2BST99zEV5OXrZ0na9CRvj
         OHsvtHvBq8GzyejJdSSqGo96I84ygkZ5t3bi+ocmOMU8eQklyRDTk45qJCaFEKRXItAV
         hRDFtjc+Z2h4QH9/TiDKiIGk9rK2n6QOJDZGqNr2JaDdELRg2Yjz5JVKRZRDKYkhVm6v
         P1WYYnMIZes3JtEsA4sHgCqdHVvN0uLgo41KECg1KBpdN2ntMOBV16DK9eSnySg6g2F+
         uNSijUUOmeUNYxmweFRupeJZJuz8YDdqSAO4UBMO4S1ZvGZ8/R2HUA5ORNvlp7cbZXM4
         prlw==
X-Forwarded-Encrypted: i=1; AJvYcCWdy2E70Cap+VlL3mVKqQ8pBh53VJPOCx9o06Bai26xkVamOAZb/xSrhwtoibCWoJSN86QVwsKBHNtC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5CzVHlfX90qRpDL7jPl5gvK75uILf1mT+CcZOaY9x8IvA6ws2
	FKygyyWI2fiRSbAUeWPHyFQFCu5hHMegc1O3KVl+qVXSOjPcRc1qnJn+fu4BIK4=
X-Google-Smtp-Source: AGHT+IEqSoYXcZR5I3WEYMFo9B/EEd6FM/epXubA1j8sxHpuuxnWpu8yQjf8NsUjYK5ux449E47pFQ==
X-Received: by 2002:a05:6512:b0d:b0:535:4144:bf90 with SMTP id 2adb3069b0e04-53546bc7ceemr8077256e87.11.1725554510922;
        Thu, 05 Sep 2024 09:41:50 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53655182c91sm100674e87.306.2024.09.05.09.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 09:41:50 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/6] media: dt-bindings: media: qcom,sc8280xp-camss: Fix interrupt types
Date: Thu,  5 Sep 2024 19:41:37 +0300
Message-ID: <20240905164142.3475873-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240905164142.3475873-1-vladimir.zapolskiy@linaro.org>
References: <20240905164142.3475873-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The expected type of all CAMSS interrupts is edge rising, fix it in
the documented example from CAMSS device tree bindings for sc8280xp.

Fixes: bc5191e5799e ("media: dt-bindings: media: camss: Add qcom,sc8280xp-camss binding")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../bindings/media/qcom,sc8280xp-camss.yaml   | 40 +++++++++----------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
index c0bc31709873..9936f0132417 100644
--- a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
@@ -328,26 +328,26 @@ examples:
             vdda-phy-supply = <&vreg_l6d>;
             vdda-pll-supply = <&vreg_l4d>;
 
-            interrupts = <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 760 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 762 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 764 IRQ_TYPE_LEVEL_HIGH>;
+            interrupts = <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 640 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 641 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 758 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 759 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 760 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 761 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 762 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 764 IRQ_TYPE_EDGE_RISING>;
 
             interrupt-names = "csid1_lite",
                               "vfe_lite1",
-- 
2.45.2


