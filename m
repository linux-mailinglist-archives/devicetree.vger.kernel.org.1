Return-Path: <devicetree+bounces-235881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 08713C3DB93
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 00:00:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 752814E8E42
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 23:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3BD6355042;
	Thu,  6 Nov 2025 22:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lPtDDeTy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065FC350D72
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 22:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469985; cv=none; b=WyH4G4XoLe9aCqFxkjTiwLglsUEkjNb+2sziRXGpM2+YFAE51jU104zTc7vtRL2klkr83KF22xXF9+cN2irImbtpQx19zM8caqfkXDikUrN3gayLDS27sA0OQoyM9byFMHhhUNfJExp31g6K0UC3JpPfJPevvbUsidkk3GI8EDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469985; c=relaxed/simple;
	bh=+bnTZyQICeowwwYQLMCKPFQJkT5wEjHLAFKEoSLLAEo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gsy1ypE7/5OpALtad/CY60iD8fCPOeqgnn/XSzA74RS4zkLjDLP/qbTTyRRz+joUKQVwh07G4Hv3rAGjKUu3N2X3oUWha912tchXhzLTy4VTmJzLChJQ02+rF+6ixbMMtR4hzpR3uqY2rRL9j+/nvF4dELDwfXYwoB64+S3UJWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lPtDDeTy; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-429b7eecf7cso93420f8f.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 14:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762469982; x=1763074782; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NL4ceoBRc0C/nkwU3+YZ9NqssX+vPCISopwMoiY25Rk=;
        b=lPtDDeTymU1Cq9i7xi9Ofr086SvH9UbG6fwuxSPYHHfutqa7RhLwbJFZX2E49uInUB
         cucgAlG0+jy0d5C/HGyRPxahD7BPliPZrqaHzd250EjpQi7muKfPuYDdbILKdEcWEWfk
         PDXLGikMzapMreuVOXL7KrlSKz1yz7J04teHI2vupCG0wlpZMIRzh+0wY8GzX+5Fm8L2
         Fi50sSIbmATjIa9RtKjePrAqk2iTv6DYCVEQYQiLYol/vOAsqWCvJiM4yLzXG+QFaA0k
         m4CgS7sIahDmsTiYdtMO/gVcxvB0By3YWCnkKID/3YwDaw1AOmqdORXao2kB80Xyjzgv
         TLxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762469982; x=1763074782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NL4ceoBRc0C/nkwU3+YZ9NqssX+vPCISopwMoiY25Rk=;
        b=BosWADHb654AetdbrW92qT5ydFP3Tal/JHWfNjZsGrTK/MctvWOKoyU9aHb9+WcJgu
         GyGDJTJNyj01Zvw+IJEM35oejUqxAyFXOxoy0AseH2z3tmcDqhTawxBnkdpvbd8Fe4R1
         keLB9f3vtrOweRdMrpPDGkPfFZMkdIA+PkEqvSTS8VjLmedYj8oxwJllOcOtjX62qbiA
         sbqxpN6LoS0wlPfcUWw1sXXh1+libf7sV2NN6uKs+e++cAgu7CPzdApzRBuCLqeKPuVm
         Gi9dj4rYVBscyGnuebY9IMeE0ji5sYXrx4RK3iTprPPzmKOdF6NkWlwY4vaTMkuBvyy1
         Qfew==
X-Forwarded-Encrypted: i=1; AJvYcCWu1fromeerheFZziACVpAHF1f4VGcY2FTqUaXwQiSjfToHRfot4JVQH6u533xyjIXrPsWLS3/5Weox@vger.kernel.org
X-Gm-Message-State: AOJu0YwBhcVjM8QzmSggWi/QTFR0jUPDfJcBABZH8p7n63FmSVIvpJVy
	ku3JuLNndPif4KyW5N0NnKn7ppDdST+X43KTtRk/MNu93peSVCGFJgwi
X-Gm-Gg: ASbGncsBegs+urc0Vf9ZzAHnTNIS0T5hVwLMyq+LfpnH6JEgmiUCWqrrjJ8hAWbBhoQ
	2UZIh6lKlNXluS1SeeuMbJP+j+n7Gc7NqhiC7qupjSZDKUG/9pgiY9E6Fk8qh9SV2i/VcGPnjhG
	5vhJRF6L7tc+Kl5aGZ3Zqy7L6Lyv+Kl43yT2hOGn3TAATYqatWMDfTppt0FHfdaWP26gADgvZH5
	ldT+fukYAog5G8N3WMvAU5ytt2OdgjVmqoFT/8c5nbENarBOfb5izFyjxPUOF2Zz5zu2IQStjVW
	VlnlXKzsIBInCd7iXdZE2ZmG38CDOYyW6c6syfHKM9JCcyEaToZ55kKzmHxtEdTToYu+JeY123X
	QpBHfi/BKThPgwBUr/cPviIacJwOnxCTPDN1XBIuDMRMMax/AvzaE9iknZsWLIos7AqLNX7kzp0
	EKFcrSmFz7l/QZLh1wFMtz3M79kMmw2w==
X-Google-Smtp-Source: AGHT+IHaRadCNFbOU7XwnhOefNWC39AvuhSs+DGIQ7TUB4uKubfoPpSUFGQJuVgfwconMXMRFYM53Q==
X-Received: by 2002:a05:6000:2506:b0:414:c2e8:a739 with SMTP id ffacd0b85a97d-42a957abc0fmr1388930f8f.31.1762469982247;
        Thu, 06 Nov 2025 14:59:42 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42ac6794f63sm1640000f8f.42.2025.11.06.14.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 14:59:41 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 4/5] dt-bindings: arm: airoha: Add the chip-scu node for AN7583 SoC
Date: Thu,  6 Nov 2025 23:59:13 +0100
Message-ID: <20251106225929.1778398-5-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251106225929.1778398-1-ansuelsmth@gmail.com>
References: <20251106225929.1778398-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document support for Airoha AN7583 chip-scu node.

This is similar to Airoha EN7581 with the addition of the presence of
thermal sensor in addition to controlling HW PIN and other miscellaneous
pheriperals.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/arm/airoha,en7581-chip-scu.yaml       | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
index 67c449d804c2..0d042fb90a78 100644
--- a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
@@ -18,16 +18,30 @@ properties:
   compatible:
     items:
       - enum:
+          - airoha,an7583-chip-scu
           - airoha,en7581-chip-scu
       - const: syscon
 
   reg:
     maxItems: 1
 
+  '#thermal-sensor-cells':
+    const: 0
+
 required:
   - compatible
   - reg
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: airoha,en7581-chip-scu
+
+then:
+  properties:
+    '#thermal-sensor-cells': false
+
 additionalProperties: false
 
 examples:
-- 
2.51.0


