Return-Path: <devicetree+bounces-221596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F62BA13B0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:39:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7109D1C20E2C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C55131E8A4;
	Thu, 25 Sep 2025 19:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KxJUjo5Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D48D31DDA0
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758829130; cv=none; b=YCX4jPd6YM3wo0G0sMiKlRiO+9dyZ2nk7hY+W5+4ve29lfjdE7bJat015SlaFSCuK6GiwmeNMqvEhFqoattwV0nK6X2BL+ZxDpFtY/OwUHxLfOLFRHE6xPxs+DdxLUl8Odv2M6QWEJ/Ii9mj+0Vfvo5KDzMpibafhzPkB2Z1d1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758829130; c=relaxed/simple;
	bh=MKlBR2dClXHDuRj+BGr45XY8mOHthTppSW/DIxzl1Xc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HV6hwxUis9ya/FTK2Wbv6/3QCo1PX4WGPxpOjA4E8h+hjG5E4roGnpFe19odwh+0bNt13pdgAE6yRa7Ca9tMikQbzfMW+u9+/aiWeKxYNqVM5D2QwMOCPd8dXLZIoifJGKLttyfGn1NO+q46hf3Tqta7hGlP7p5+G6b+QlSnYGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KxJUjo5Y; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-afcb7ae31caso186677366b.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758829127; x=1759433927; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vlX+6+mh/UPamy3i37VKA4DH1qcwrv7NT10uSfZTwWo=;
        b=KxJUjo5YOaFaclz4QximcdTMbD75WmId1k6t7ku7lnaK9njVA50sEusISUPnZ/mmRL
         N2UXBI86LUKpbFckV5gu73BQVIZAhJyk7PS5xFsmIZZBUxgeP6FS/K8uzbgDFE5CNy0+
         nXjNn7k5OSAvGnnJ45gjWbe4YrRT/YRPKbuHKbtZxK6lYJC5goQpRQDdCh/UXNEOj54L
         W+5uRrr8CTlM40/MYXbgG3aTx2IXEXtN/zx0TS9Ci5XSB87jhCz66SesxQtdlghPSbPU
         1UvONWyuyUItWhMbnH+1yZx9QTmPwh993U3AfLcPNjQr2Bb93KOQwRF40+/pdKlPWgfs
         Qn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758829127; x=1759433927;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlX+6+mh/UPamy3i37VKA4DH1qcwrv7NT10uSfZTwWo=;
        b=MOiO/LMDeHnwfJJUwirrWK3/ajt5HsyHqARBZPMcaxuJ5Z6gVReWf95l6u9pFhk04j
         y81nNWpLpljFe3hKG7F1oUYavRnQwSLujc86B+om9MxWPBosDf9hRajc99Bvc3yVCJyM
         /HPPRAVy7Rw8OHvkRQO1mA0HjzUerthEZaR7fGgXO7A3J4YaI2mQARUlk8z6m0BtH7r7
         Nd/h+SEWSBCBWjK1CY8ANw4Xbfet95bESbnJHPjhCeID46eNXUhaNG/CoLAv3y0Fqp63
         5I0IP33MVgPw/gKDCD/vZUj9Dkl+fUkoeMxIeFr5QhchIflUBCq+OIya68sO1vuioAuW
         weCw==
X-Forwarded-Encrypted: i=1; AJvYcCVi8HkrmLW3YBm7QaZfvPxuVnTh0b8IR3epBZIU/pp3mWc/SWRDZrscmJTRDDG43UPj1jm5NHv73Z57@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9KziO+Eq4/nqmn/rOOBoaWIHYN0/qPMqOecYgJ6oVV6OKLoJK
	xBnMbOuIcds5jZDOG19ged7X34fHvXhZKQt/YuNw/xTOcJNg4tN0tFm7
X-Gm-Gg: ASbGncvucpGF1im25d4S1Bf0Vuw/SLKaauML2kK1wESxYhf7HZcNxCsl6ta1HFax/7c
	3GIENE9yielgDoay7EQiBklDYoQcYnaUs7kHriWEMAn17goJptA583SgIUpeEWTXhPSFjBnZeAz
	E5PqhgeGd+4jMO6zQaPUk2l+ugUZYxe0s4j+KmFmTaRueQzp8nUcAGk5R4hbIzqtXjOq4LNDPt3
	DDgOibtZhfK5Vbu81nDyqGAHOyTYhpLiE8boZNIN+jhk16x3SH4W1wHnNSJsEo133Z0P3yv0iKg
	sDwubCnkdj/XQ4GrWber6vxfITjILOQqQu6FO+Q/jGX7gSK/DUV0ntYKd7MEoMFuYcgF/VPW6e0
	DztvJPKP/OwpUWCt8hLD6xmW9NbeEfTQ=
X-Google-Smtp-Source: AGHT+IFfFBd/tgTpAyrafNZKQ1/PjUXY5Ha4wrVJC6PKi/5tOGX0Ed7VXD5cf/oZh2r/aUhJ8/tUHA==
X-Received: by 2002:a17:907:7f2a:b0:b30:ea06:af06 with SMTP id a640c23a62f3a-b34b80b30bcmr427286666b.24.1758829126244;
        Thu, 25 Sep 2025 12:38:46 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b353efa4c35sm222820766b.26.2025.09.25.12.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 12:38:45 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Thu, 25 Sep 2025 22:38:39 +0300
Subject: [PATCH v4 3/3] dt-bindings: max77705: add interrupt-controller
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-starqltechn-correct_max77705_nodes-v4-3-93b706bdda58@gmail.com>
References: <20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com>
In-Reply-To: <20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758829121; l=1612;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=MKlBR2dClXHDuRj+BGr45XY8mOHthTppSW/DIxzl1Xc=;
 b=1UvcAjZOjFkI/v8zaSdhZgUc6plJ2IZ4WtEQH+Ev863H0hBbVjpgk3EsX9gXUnqJ9hr3iZlCf
 U1A/RRyyKwTDSjAJIBoQYbrFrmhymT5/urFOAu6IbjQLYHeGNp/+2mi
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

Add interrupt-controller property, because max77705 has dedicated interrupt
source register to determine which sub device triggered an interrupt.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
Changes in v4:
- fix commit message: node -> property
- fix commit message: minor reword and punctuation
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


