Return-Path: <devicetree+bounces-180786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FEAAC4D3D
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:25:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAEB78A002F
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D83F26A0B0;
	Tue, 27 May 2025 11:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Lx/gSGfN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7F9269817
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345068; cv=none; b=cWB0AyC9kk1TQ8PXBEZH/mm5XnWMqkWP1CVV1m+1nsfk3vPy3QW1/XjuzWqXkb4NrpVWzo1oj2UoGQguDLDuWQUhNrPsTBVZXWuiWZikYJkHuGn9GOInZT8MgVa9Zc2mI/NzBwht4SJg/4OffVhQDzOLstCa3jMoJcjTD8EbEE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345068; c=relaxed/simple;
	bh=JNetTBKeCVzrpVSgQrKDXh0nn73Cmuetb65CN4hLZuo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SHH/IF3r0cVSz0blB6I1ZeaVsQv2yXfWqdR4YWsv+GN8HMQKJHsfEbdEn4kmVD+XH8tRs3V5OwwnOLdP68EQaT3q1MfiGekCtKvRjoFQtJyTugGKGS+2GVocwGIElnFMLJGn5qn7YyupP2VeYDIcnWLKzG/z1bjMRgsuwsI4jhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Lx/gSGfN; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad88d77314bso129299866b.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1748345064; x=1748949864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aELTmlEfKCAByNhR0BeCy3DVdg3Hk/gRSgPmB0KiggE=;
        b=Lx/gSGfNN/rqyZtjWoBBuXeEtZI0o7NicpioRvjsTfcSWe0OfBgdkhcvvDFGCJ/4a/
         I6DbIykAeVO6cRBurn5wmpB7lPcPREaSaHIdGI5XeAs4FtPdgTSsSD3E+STLviSLdeDx
         3jos0EEeq7fjhNUWPZcdztu0JzTgbY/Bn5WIYv45oQ54EuxMhRz0M/Dx3qRuz5qi8z0a
         B3HBx6hdhtmJVtaTTTBqnGXVEw0Pw3naqkAORvDKv6UrBFPJLMdenT+Jj+KJJIdO46kQ
         Om2gx7YJTqIty3+68hrTaUoHL/GKwEz+h+m5Cp67lywE7mOofn31rLE9fZqrhio9GynA
         DSAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748345064; x=1748949864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aELTmlEfKCAByNhR0BeCy3DVdg3Hk/gRSgPmB0KiggE=;
        b=JswKY7zGSy2nADVUNfZpKuXk8uoBIlphGEFCJ1r4kdHNLM6x1h4MRyYp7qnIUCj2G0
         UzNkby3rZM2fHgH2gKg9qJuwL/zxRrFoh4tjTSlAip0trS6m00bI2zveP/oTWntOmmE1
         xgLw8H9F15kic2Al2yzfj6eU2zNJ8m0IyZ/+QLQeTVn0i2vRS0dMBnkbrokEZ5Azs2Mp
         D3tZHxpmyRwMS0XAr/txTM70B3FWWLpkLaFkfddL3cMR0Mti1knfBEtOoQc9pKdnTXtu
         LdMYKbX/ARfso1cCQYkBxMXi6sh2quGPCV5JXcmxyqeJmNqKnivEp2lkYMnEi0yRHczx
         Nz6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1ybQyGLmAX4nEF/hK/rKH+hY5IpL3+oGvIcP4uKdpKTd2HGNqYiwqdf3hPp9KjBElz+cNc5voZLPH@vger.kernel.org
X-Gm-Message-State: AOJu0YyLCGL140FMgKCXqLPqP97b9Ie3Z4pweNQxFa3ONsNsJBfTLqpV
	wnM83+zPMpQfW60IrQOl/SXrX4FkVvFxVqRs7pvnYxxf8FkoG8wJeIWrtQd75STxsgk=
X-Gm-Gg: ASbGncs6gNd1m4AiDPyJtupAGEsMiv8Jox7qVN1ZLAaVHIUNpmywcak7SK+FMTYeSpe
	UGSdyUIr8yWRvt42IMcGEbVvzUS+tn92E+bRjKuHNevspYS2not8kWGzRMBMGgW+GG0f/jfs5Na
	i77hOIXCZGGd3KxP2Dah58E6nM3ajYo5bIFOmIK/GA5kvm/AAILgOLeMUQqdLf7d+XgymFQa5hv
	aLoS4kyHvlp4JiWLEwarkg2sysRDCqJ7yF6lmSNj+SK2LFACOol7cXLIunVqR/xG+WNK511U8hh
	L2lNdCdQr7BlhV+6SjKOZwgpziWmVOA9Yyh0ZT0D+Vev+PrdWLx8+9k/TqkNAmRxu7Ks/y1DJz6
	TTjMD
X-Google-Smtp-Source: AGHT+IH0qBe+DR1WbAi8SJNopWYn7T60qvkLsrw0PuKe+GwRXeTQ2TMf2+Xjj+q5wrNMTSeGjN4KfA==
X-Received: by 2002:a17:907:72c1:b0:ad5:2260:e018 with SMTP id a640c23a62f3a-ad85b2b5dd5mr1077079566b.44.1748345064416;
        Tue, 27 May 2025 04:24:24 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d438403sm1807297466b.123.2025.05.27.04.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 04:24:24 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 8/8] Revert "dt-bindings: clock: renesas,rzg2l-cpg: Update #power-domain-cells = <1> for RZ/G3S"
Date: Tue, 27 May 2025 14:24:03 +0300
Message-ID: <20250527112403.1254122-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250527112403.1254122-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250527112403.1254122-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

This reverts commit f33dca9ed6f41c8acf2c17c402738deddb7d7c28.
Since the configuration order between the individual MSTOP and CLKON bits
cannot be preserved with the power domain abstraction, drop the
Currently, there are no device tree users for #power-domain-cell = <1>.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- collected tags

 .../bindings/clock/renesas,rzg2l-cpg.yaml      | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
index 0440f23da059..8c18616e5c4d 100644
--- a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
+++ b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
@@ -57,8 +57,7 @@ properties:
       can be power-managed through Module Standby should refer to the CPG device
       node in their "power-domains" property, as documented by the generic PM
       Domain bindings in Documentation/devicetree/bindings/power/power-domain.yaml.
-      The power domain specifiers defined in <dt-bindings/clock/r9a0*-cpg.h> could
-      be used to reference individual CPG power domains.
+    const: 0
 
   '#reset-cells':
     description:
@@ -77,21 +76,6 @@ required:
 
 additionalProperties: false
 
-allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            const: renesas,r9a08g045-cpg
-    then:
-      properties:
-        '#power-domain-cells':
-          const: 1
-    else:
-      properties:
-        '#power-domain-cells':
-          const: 0
-
 examples:
   - |
     cpg: clock-controller@11010000 {
-- 
2.43.0


