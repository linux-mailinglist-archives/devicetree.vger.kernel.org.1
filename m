Return-Path: <devicetree+bounces-216600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A61B554EA
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 18:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D2745C4CBA
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04CA2320CC5;
	Fri, 12 Sep 2025 16:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jVZ0o9RB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2741217BA3
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 16:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757695632; cv=none; b=od6sG0R68yr3l3b5xJTpKh7EJO/VXWiEpe2wAoFYPDPSWzVwJGFlxawdZBekktZhYtPeYdQ5CNMEdQclSevU2apYxTYfGvzDm/smOBz0MJ/HOCip64kNYCHCsc/TuAnludFoPt8q+ImLBp3lAYKjyB9CoUaIr63ynUfXhGYMTl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757695632; c=relaxed/simple;
	bh=DkwJnDfpja84IGPxGS1DQp8OdoDKGyIaui6RgEYM6jA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=syDdBceBpCp1/pQU/6sd1HVf4RyGmnKvcBOMa/puiMj2FCneY/UA2UDEvNz0nx2dGc0fGS4ceJWgyGlIjOqPP516tbGWiLnYE1JudXLgP8P/KF2us0E7pj+AWAuz8/DTw9/4WguXRZbmThjMFWO2f21058fegJ9zSGIZIUilOvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jVZ0o9RB; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b0418f6fc27so371870866b.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757695629; x=1758300429; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oieuy47KWnV3Qe/sTSLbZ9ljlfIMT7lwWIfyN2yTHow=;
        b=jVZ0o9RBYhYxEXRd1vt5NoSusz4jHrlUNRsfCftf276TTDk53pe+Bxk/X0G6TwP6j8
         SnHDv6ABwzLLpz2s2MnoiKeDmYD6rRwYg7ikrOo/zIeG2Op5Yid/1BvXl0LZs23WuL4s
         wRNwFl4i+8B5aqGZSEraqdgIg62b5rowhrVThwKnttAUFjQB8WjtxRiASN4NV4bQO2sQ
         y1w8Zm/KvetywVUx2jljlVE+m57AgrxeDD5Ysb+OuBqK//y6sV2Yz2U/3DgrXU9w6bOz
         +k/qGlJA3A3mAOFh2CTBtVwAZwCezXyfwq/wHK2A19qd9jSvJ0YrSJkvAN1xd8lowsdq
         r6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757695629; x=1758300429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oieuy47KWnV3Qe/sTSLbZ9ljlfIMT7lwWIfyN2yTHow=;
        b=fHfxZdGFPM5VWaPGhPCHF3+qbqPFn49b/OjKsM2korPi63kXWTARTq+LBkNdj3bTNn
         oAPOnVaSIoGEHnvHjtaJib12pdA3d0R2um4yFD0+sPTbc/y2zog5C7Z+M9bvynRbucdd
         CCp3f7fOj5WN2O/ciwCBQ7xJuHE1xYfHq6Pi0xk1De9eK4dsDm7txVPaYguMk4lhuNjr
         pS7sScJOkWwKdBMwwSsJn8MqqCr/sVRRgCZOy2piHY1908z4M9SNlmnGkL9KuK5l9CR3
         wSKY0nLIpcOkyPwhukKv+yG9LPJ78/5IiwoNSJ/z5xHVrMNjoUz4leoXbzrAhga+JsrR
         zJxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQiM+9rJKiPcDGv3A3A//Iwijmdmed4+1IJkaQPWl6sUcU4LNYZ24kFsr6p+meGebB6Y8+1UitQGzJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxZr4PYHQsMTqphTKlpJCLbeFXAYtFEuIzyCO8otX3whFUS2a+l
	b3SAJWOAivhlBxHnZRfmw/UqKXQHanX1ixa8nhHm6YAvDTUzuYCBOQZ5
X-Gm-Gg: ASbGncu17/Oxx8krrH22TsdHrx9P/A0Im/b5UJ6jG8dUOnAU4tdb+D0i715XCs+xU0v
	mHUXzDOEo0ek2dHsYjO63Ptif3OuMH3z3Gnvltqfqxj71F0+z1XyThYPjmNN0p7Nmd4+l0DKA6D
	Wl8266PbLuX2kk0q+JSlr6ReXNhDEIl930qs1hEuPPOi0EDkVSmITR7Zc5yfjneqxwEHc5WrEgt
	GDULLAbXCuS9ylp7jy+Wm9Lh/tPWOu9hLxADdTc+8wKzDdO4brND+6opqspZ5DzCoBp8mnPT4Rc
	lrLHR8UNi4ZHIK0jbMP3cuQ6ZH1jgcWPPcVVszC1Ru9iXYdmkWNq1PUbiEZEcYQJWUKf8rbToQw
	dbUn/JP1rfxxnRmZAv4Xjc2BjirInrrI=
X-Google-Smtp-Source: AGHT+IEXssYj4R9z1Ni5w4LEdbK/scP/hnDZiu0JM4wesncjFj/njaUI2eoA3Le8msnu4+rMdIV5dg==
X-Received: by 2002:a17:906:f5a7:b0:b04:58d7:374e with SMTP id a640c23a62f3a-b07c35fb4edmr379626266b.31.1757695628817;
        Fri, 12 Sep 2025 09:47:08 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b07c337e785sm229786066b.25.2025.09.12.09.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 09:47:08 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Fri, 12 Sep 2025 19:47:01 +0300
Subject: [PATCH v3 1/3] dt-bindings: max77705: add interrupt-controller
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250912-starqltechn-correct_max77705_nodes-v3-1-4ce9f694ecd9@gmail.com>
References: <20250912-starqltechn-correct_max77705_nodes-v3-0-4ce9f694ecd9@gmail.com>
In-Reply-To: <20250912-starqltechn-correct_max77705_nodes-v3-0-4ce9f694ecd9@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757695624; l=1490;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=DkwJnDfpja84IGPxGS1DQp8OdoDKGyIaui6RgEYM6jA=;
 b=jhvTXYUpfdWR7isj6HYseFoGOtMKt0W9apbEbEJMtiS3oWuZ7qObDcWXBWoBsHrn7n0Ilij5y
 QxOjddgbZmzB7J4BeNvkx3M9/BTioolKNdm2WBdBtAJ57jOxRZYTjzd
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

Add interrupt-controller node, because it has dedicated interrupt source
register, to determine which sub device triggered an interrupt.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
 Documentation/devicetree/bindings/mfd/maxim,max77705.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77705.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77705.yaml
index 0ec89f0adc64..d265c8213a08 100644
--- a/Documentation/devicetree/bindings/mfd/maxim,max77705.yaml
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77705.yaml
@@ -26,6 +26,18 @@ properties:
   interrupts:
     maxItems: 1
 
+  interrupt-controller:
+    description:
+      The driver implements an interrupt controller for the sub devices.
+      The interrupt number mapping is as follows
+      0 - charger
+      1 - topsys
+      2 - fuelgauge
+      3 - usb type-c management block.
+
+  '#interrupt-cells':
+    const: 1
+
   haptic:
     type: object
     additionalProperties: false
@@ -120,8 +132,10 @@ examples:
             reg = <0x66>;
             interrupt-parent = <&pm8998_gpios>;
             interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+            interrupt-controller;
             pinctrl-0 = <&chg_int_default>;
             pinctrl-names = "default";
+            #interrupt-cells = <1>;
 
             leds {
                 compatible = "maxim,max77705-rgb";

-- 
2.39.5


