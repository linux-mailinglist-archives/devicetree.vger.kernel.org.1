Return-Path: <devicetree+bounces-124999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D11F9DA7CD
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:30:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F23C5162E6E
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D08A1FC7D8;
	Wed, 27 Nov 2024 12:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jgwf+m9U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A8A1FC7D5
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 12:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710605; cv=none; b=ANCgDnttCeWUstxqz7zVqp13dyzDxBA9FtHrSXPB5pPZUaXOgKUCgfxWdvVjWuWGrdvI+SdCixJ70K8mRsF7bDRIdiI7twnkClGz6nGP0CT8tUnOf5/KN50PPf1CO1S2xxCuk2ZFC2RKlt7hpDjQLqfCG7+6G+xE+grF4X7ojiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710605; c=relaxed/simple;
	bh=iyu4hyGtRQ9BSK/cbE3Hv+9qfGlOO/mAhRIDazIo4xs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i+khfb6NsyKr+kA4ajlOiGOuueiXdUjvi7XhWPSCGiPheq5T6OQIBzI+4JutGTxna4sQrN2AnJkzUfuowCriF0/SCmuE2AqH0F1H08LyCnDTVtdVlLlVdt3dKqMAfrk1NhvrFglOeHn/Ntfuo7lCOhSJ1McZxzFRb1S8rWl5DiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jgwf+m9U; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53ddb4c05c0so667363e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 04:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732710601; x=1733315401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hH6aDQnPFD78bvqj4M1knlglxon1pLBcKd5lu/QTjgY=;
        b=Jgwf+m9UQ73eYBLQzjWE0b1jqt6ZQaXA9V4UZL35K8qAz9lddxZjN41748cSEqanGd
         0ER9a6tuydbUt0EEEVa1ND/yTCnPERD/lvhXw0twdKCNwI0KLCqoA4is6jWKzVAGdZl2
         T2zJ/CbDC8SyPe8MLiCMgz4CRPVD8GjyQWiO8TSr4S7DWcnXHFHvKXMRKwaKB93u0lMr
         tB2Akczmqn2mY6kLHOLwr5iuDuDy2vASuiqqEPKwB89kkfBgz7jRmEVzfZqp/F5M/cOi
         VbRscLfC1/1Uv3v9brFEOq6lM3XqxRSbeps6Ks7aW+pJdZaUXVsxalcUDwngMRZgQhPC
         2aaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732710601; x=1733315401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hH6aDQnPFD78bvqj4M1knlglxon1pLBcKd5lu/QTjgY=;
        b=Clm5FxtwCrEy8S7oLMfuvNt44+cFDKevk1LswY7lMJHqq+1B7AXKyyMIE33eWQU7Kg
         jKz+6z3Sc9JX3Y4y4RW3g25fYbSG/XNtbxWUXyGzKAXMN03q/2WHKVh0GrHy5oliQpKC
         lw09FgC2Jdd5ru9Poh8y4sb+oA6qOwrrbylduL58J8EkUq5a5Ev4VjMY5QMghtwgxPJ1
         X6HTAqlJAYWBdFsWosqdPMBDTKLC8b7uQRHF7/g+sPzqANN5pvpUKX+g0vz5ZvoY6NcR
         EGlwzKux8C+GzSkwCn+GSig9+nN62MFV0tsv/IGmGRQw2lQDkWEVXdMCmbm1J/M/qbEE
         hslA==
X-Forwarded-Encrypted: i=1; AJvYcCVcDM50NAT+4QqoxKXpwA7JNA/gGukPY+AlDiigVd6HedT+6utpsYBtYmIkbQn1YMbRywEFJ4G8VXNS@vger.kernel.org
X-Gm-Message-State: AOJu0Ywax8cJlzuXE7OXQwx6ieXrHMIB/oIi1k3MejcE5DRZ9DVBPg+m
	uMJ3ngNv7dh4GR7QRGzBjQJnkATLQyvAE5izgiMar795c4rzZWoCYBFvDkez9XY=
X-Gm-Gg: ASbGncuekzY/OjtD8lkkv08zKq6TA4UTkD8okHRDQKtVo7OLR5wfqYBqjD7/sz6WOyB
	pzrhcavW2ncdBtZ8Rts8lRuua/TtM76I3yl046ahl03cafQgHN0RaEH4LCTTiy953cqOdr4rRTD
	5lBz72KJY85zxhJLRbb90Tp/hCxGJWp9D9xcWls4Inf+HfvVFc1jX1WNRSlSx5TJ4y7GXqtvLIW
	B/AOubEWQc+05pNsJVXtkDAzC5jPqgmpD3yu6u6FXYaKGbv7/RTRXdemWJJmdSOIEs/07+dmGPh
	1fuI/9Xe3cByQ97O76QfPWYYfROPfkIo/oOqzBo=
X-Google-Smtp-Source: AGHT+IFCByu2ouCkagZKW4uLx+JbF+mJHdB3pW79idrkJu93Q0BIq6XuKCYGutC6aXKhGUwZWS65TA==
X-Received: by 2002:a05:6512:3085:b0:53d:e7d7:6122 with SMTP id 2adb3069b0e04-53df0020b5cmr468360e87.0.1732710600880;
        Wed, 27 Nov 2024 04:30:00 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24953a1sm2276621e87.228.2024.11.27.04.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 04:30:00 -0800 (PST)
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
Subject: [PATCH v3 3/6] dt-bindings: media: qcom,sm8250-camss: Fix interrupt types
Date: Wed, 27 Nov 2024 14:29:47 +0200
Message-ID: <20241127122950.885982-4-vladimir.zapolskiy@linaro.org>
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
fix it in the documented example from CAMSS device tree bindings for
SM8250 SoC.

Fixes: 46f8ac8497c5 ("media: dt-bindings: media: camss: Add qcom,sm8250-camss binding")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/qcom,sm8250-camss.yaml     | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
index fa5073c0fd1e..06db2c1e6079 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
@@ -329,20 +329,20 @@ examples:
             vdda-phy-supply = <&vreg_l5a_0p88>;
             vdda-pll-supply = <&vreg_l9a_1p2>;
 
-            interrupts = <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>;
+            interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 86 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>;
             interrupt-names = "csiphy0",
                               "csiphy1",
                               "csiphy2",
-- 
2.45.2


