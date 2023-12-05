Return-Path: <devicetree+bounces-21950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF10805C71
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CCBF1C20F78
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 17:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE59D6A329;
	Tue,  5 Dec 2023 17:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZURwa7zd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CB25122
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 09:50:16 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-286f3e0d010so106873a91.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 09:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701798616; x=1702403416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oaHh/9z/u07z1omVzaZJZGd/gWpYBcwFLuPZ4nY+ApE=;
        b=ZURwa7zdnQ5VGmVCWsSNoD8RJCdaOMjubS//5mrtFOhGJgDgoRXylk8XC4CJC8vLwf
         VzCSQkNn1jIY3OUct9tOnUJ3wXkMwHaxXpunqvmXZNBqkGEnkPoFzcPs1PsA5jfHapj5
         aoVfdS8SmkxVY9DKntWFVxl7adrQRs9w53D9EeaEycgzrOzVDj0Z/xDCQY/CmTWwtqbJ
         9PxvoActPDaEHGNmbymdNfwVRTe4c2OCOOPppU5Rx2+cxQeWJZQ1gjBqAPukkTVjJnjM
         CSftsPWpagBekdjqer76pU1v2CsJcttGO9icUZ4m6474jN2XhwtX0IUgtiq7zx+mX2oK
         JZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701798616; x=1702403416;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oaHh/9z/u07z1omVzaZJZGd/gWpYBcwFLuPZ4nY+ApE=;
        b=IU3DeQ3t3/HYj/M7TpJPZv/HV9MDcBgBxVQFOZHp+ppNTlwWPe4XfQ9B+li0h4y/HL
         swdSusFiaA6U1i0+93J5QW6cycXgWI7QwnAWygkYr29iVLsWjIUGpkdALF2xrw5HXBjz
         ydu1Ygt/Cm7eGDOp13AhkchcHmvDYHupwshbI3dVN4Qt45BSNC8kVfQsiz6ABrAwdTKw
         ZqTUoh2jxQmTeQU909DryJ1xi6kEAEkaIig7HjjH4cjTQ5YzfgY0oxi0TT+FrKWA1/Fx
         bFdibOKL1xdSZDzOcexyNxMY870D4Wx9KkW1GhL7h6RDWKV0XWVLSlI9fM1xgLlnwJkb
         yo7Q==
X-Gm-Message-State: AOJu0YzYkwZwgo4J0HmJKNEep65PMt04t1OT6Zeu1DQmcG7zWtIQ6f7e
	v3Sev2YH4Vlh//EMtgXd0R21vl5oGiw=
X-Google-Smtp-Source: AGHT+IGLLb8FZ18uWCHWyjAJgJBhSMOURCWI+4+kzyw7QkFOYmoH5dB8KTwBkHgkz2tYLI2S70XP2w==
X-Received: by 2002:a17:90a:4094:b0:286:bf9e:a6 with SMTP id l20-20020a17090a409400b00286bf9e00a6mr5164540pjg.4.1701798615751;
        Tue, 05 Dec 2023 09:50:15 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:52c5:3315:40:a897])
        by smtp.gmail.com with ESMTPSA id nu8-20020a17090b1b0800b002839d7d8bf3sm8985219pjb.55.2023.12.05.09.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 09:50:15 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: marex@denx.de
Cc: stefan@agner.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: lcdif: Properly describe the i.MX23 interrupts
Date: Tue,  5 Dec 2023 14:49:49 -0300
Message-Id: <20231205174949.2091953-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

i.MX23 has two i.MX23 interrupts instead of a single one like other
i.MX devices.

Take this into account for properly describing the i.MX23 LCDIF
interrupts.

This fixes the following dt-schema warning:

imx23-olinuxino.dtb: lcdif@80030000: interrupts: [[46], [45]] is too long
	from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/fsl,lcdif.yaml   | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index fc11ab5fc465..c4228b893766 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -51,7 +51,10 @@ properties:
     minItems: 1
 
   interrupts:
-    maxItems: 1
+    items:
+      - description: LCDIF DMA interrupt
+      - description: LCDIF Error interrupt
+    minItems: 1
 
   power-domains:
     maxItems: 1
@@ -131,6 +134,17 @@ allOf:
     then:
       required:
         - power-domains
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx23-lcdif
+    then:
+      properties:
+        interrupts:
+          minItems: 2
+          maxItems: 2
 
 examples:
   - |
-- 
2.34.1


