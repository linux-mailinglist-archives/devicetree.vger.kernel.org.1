Return-Path: <devicetree+bounces-124997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 729209DA7C6
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B054716432D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BCEA1FC106;
	Wed, 27 Nov 2024 12:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OtVcdNAl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51BA1FC0F6
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 12:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710600; cv=none; b=Ymcvpglcou3lnoFc0NhNY4BpuNXenb0DtFqrW55Svney9fee+GBPZSfeqlXRBG7wiPx4sw4YEISEfXleM3CXacr8J6VKc4riwEUtzEzXm37Xkl8lw1md9R32L4GB2a9Huq1NyWeb3zX8KFSyLz/zky2NbsVQHpckO9tfwbpOgAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710600; c=relaxed/simple;
	bh=+fCGWoWcyECsM0wl/aP6Tkn6U+mnrA9RFPJcZbVhHBI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ikRVXF5ZgARiLFAYdZLtYMmwx281cbLAy9T9pofKnJC8pD2ihP8wE43T6Q29SM8qh9gnzF1z+xaT5sNW02RWzLXIJQMSE/5c3+Ms+A9xgQEbesdUI/4FnDoKxbAxJeUcPZ2yMGQ2RatxdFMVo5y5FV+Ww2danfkvTdUsPPg/bFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OtVcdNAl; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53dd58a4433so765423e87.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 04:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732710597; x=1733315397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MS0OrWqJSfJEkGDrw/31SedEoahtP5GJMRhfGX6petE=;
        b=OtVcdNAlsA3pabJHKT3MGSgXVBozCYyreTIdTuP9C4y0Ojvmp3B8R1pZeDaHcx4WC3
         qbkiCJ62vhidcwXTQvKIi/YN/63HiAjmlcFS4n+EC3HmeYIHQWRV94YkUGGs5CpxJ15Q
         Cxaxcp06sWjtE6T1yleeriOOtAge//cxrDfefw/juJo1WIuKpa0zpH/dRuyBc9ygLyHt
         PWMbF1/QZTOP4RGKcqRKLgYedBQtX2EbHexHuQCsLGPgI2jgmYBT/Ocs79wNbSlAAjI/
         4Q3fk26cK0oIkcvA/vY4WYU5eucXHa25MzT7TGy66Kc8kTtTDDoo1i1q/XQTt5hcKvZK
         JW8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732710597; x=1733315397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MS0OrWqJSfJEkGDrw/31SedEoahtP5GJMRhfGX6petE=;
        b=j/QQZ/rEK6vKq1TNUKevJMIiTsJSCTh7/K2o+ITEcJlbEx3D/VTutZKCqoJ9qk7FFE
         MN34XimmbwIYgpU7x18Qqho7ED8dcP7WOS6/IqdVi3srBror/VsYGIt4i2bWUWfytotS
         NqF0Fx08rX35CLstL5YLOZ0bDmviY1nGM7lMseGlk4v0gV8M26pFdozSefvMB+Dx4xjS
         Xf2O4fzvXoBjbP8vLguT+8tVNdB/VYQ3os6CtEdj8q2L4XRX/0NiQRfkG2UOn+19AQyF
         6h2wDC9iOcoYfIhdGsX592Ex98st1Ow3XiHlB74nBqwvYOtF3R/TEVeUejmv0J2b7lut
         RdHA==
X-Forwarded-Encrypted: i=1; AJvYcCW5Ui7vZCGXhmBfACJBTIzqMQ3QwcNNRdCqf14ECnoYr8Yz0vsktp3omkjfcOWGSEa+38bkeWDEEBhf@vger.kernel.org
X-Gm-Message-State: AOJu0YyXJRL6fDaJUIgd8IHKyPrA3Z+uBjtDEjMskeAR7zqPDyTg3iUy
	DzQnta3sx+WRNuHR2YfPjEMuwk4S54yUrC3pq8VlXDsZhyTXPyWTKWBpkqoN2Fc=
X-Gm-Gg: ASbGncujcH+O9yE0OElium4+o2xD1fXiO2zBGXrx7d+6Z03RO7WFr1cY4x7jugosRTF
	tOfeeezaK85Cm03VlCqyCdjFquKj9E09PfqTK+CNEx2azCUYeFwlRfbkDQ63uGmjeYtuIciTCCj
	fUb/iIpIJt+BNfDXF1wkfz+G2USreQ10kAxEJQYvIoaEIRpx6A83QFXFo4ozVBGwQkRSMIHMEBU
	0B+pfdFwg8mGljErX3e0G7RzSaOwiOGT8Kqqyj51oCRtIqrZqK/eNRTF4I8sXkA5nRs3QdbM9EZ
	I+gJvRQWxH+v811BVIlMicmTQkgiiMS1/DXW8JI=
X-Google-Smtp-Source: AGHT+IGMYRMBvLxzOeXvVX6lzQnUkLaJacSW0846B7I6+A5szlAV9+EARdZefGrGZYdP8ZUZ3vHYSA==
X-Received: by 2002:a05:6512:124f:b0:53d:ee75:4a02 with SMTP id 2adb3069b0e04-53df011183bmr347840e87.12.1732710596865;
        Wed, 27 Nov 2024 04:29:56 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24953a1sm2276621e87.228.2024.11.27.04.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 04:29:56 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix interrupt types
Date: Wed, 27 Nov 2024 14:29:45 +0200
Message-ID: <20241127122950.885982-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
References: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm IP catalog says that all CAMSS interrupts are edge rising,
fix it in the documented example from CAMSS device tree bindings
for sc8280xp SoC.

Fixes: bc5191e5799e ("media: dt-bindings: media: camss: Add qcom,sc8280xp-camss binding")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
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


