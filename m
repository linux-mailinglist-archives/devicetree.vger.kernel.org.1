Return-Path: <devicetree+bounces-21963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCB2805E03
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:48:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE123281CA8
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D2363DDD;
	Tue,  5 Dec 2023 18:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KEIcle1t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B9AC1B1
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 10:48:03 -0800 (PST)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-58de9deec94so470695eaf.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 10:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701802082; x=1702406882; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3yo/8ZmNje/AkOSBdLfHDekA/ocrjIlQeNPj2jTmzrw=;
        b=KEIcle1tr4I3IoyJQhQPySYb7ikYCQ37H4Bph7tf/1Iyb/i6zg/hXbhzBy/S9GWXQl
         akhov5PSpZlHT7L4mhzsPbtCU379UohWwAzcBBKJJYjk66QLavfC90ADhXN+aDrNqP0N
         610LR2SSr2pmhaRn6xjbrTF9WGwE6nUT/i3XnVzyZty3eupZrw4g+ioEGFuvNQQhh9QD
         4I/rLvn+GsZXdPOLXIu26aDePunVS461HkzsTtT/SvmHIngDY8agGj27TjQHtil7uQGf
         EuVpmbDJbQG/2ePP68Uuq2CehLLKL/ufVNi6rLC6eTP+T0VX9TOnpW/TBBu4j5mnm46/
         Treg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701802082; x=1702406882;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3yo/8ZmNje/AkOSBdLfHDekA/ocrjIlQeNPj2jTmzrw=;
        b=hzJyb+NVyHQB3g/fcucuBbJjpDMKJ5x5/hglcc2/V/5SU/C5ir2Rh5UTOJz4vSwjBh
         qrQK33aAdP+dXg7fI3RRCbcezaJiUlPAWefKE4hyHsQ0QoQyA0iLAx1gFCsbyloQHCey
         kwRc2p+CpI8bdi2jv5WKqAD6g9kxSYXRlfo8qMGol1YeoRYAFb0TKn+PoGEkXq6KIcN7
         9JSQ6WCXTPrDsaIAkJ6NrVz2sMoswC8qcCCZi10DM98zPsMnxrS2zM4GhtD25cm6S1ks
         vruQy7DvOQRFzkSERZ3vvECvr6CgOxFDQT1lp8t9zyEFjWs8xpMMxC16n2HS5faSGQE4
         1xyg==
X-Gm-Message-State: AOJu0YznYO/RkFnPE5BU5tvB28lkF7eLkDsPf806PXsfMM68jTiWjNN+
	YwS25iGl7czxBbGK6adERaupa03tjTA=
X-Google-Smtp-Source: AGHT+IG7LZP+nPfWZFPMEx8CBW4KwsTUvCOwcR2ZXcbweGMxxyKNVfhFNuAah8Zuo3C3qujHiRVlyg==
X-Received: by 2002:a05:6359:2c9a:b0:16f:fa02:fff0 with SMTP id qw26-20020a0563592c9a00b0016ffa02fff0mr13075536rwb.3.1701802082520;
        Tue, 05 Dec 2023 10:48:02 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:52c5:3315:40:a897])
        by smtp.gmail.com with ESMTPSA id e8-20020a635008000000b0059d219cb359sm9688946pgb.9.2023.12.05.10.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 10:48:02 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: marex@denx.de
Cc: stefan@agner.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] dt-bindings: lcdif: Properly describe the i.MX23 interrupts
Date: Tue,  5 Dec 2023 15:47:48 -0300
Message-Id: <20231205184748.2103321-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

i.MX23 has two LCDIF interrupts instead of a single one like other
i.MX devices.

Take this into account for properly describing the i.MX23 LCDIF
interrupts.

This fixes the following dt-schema warning:

imx23-olinuxino.dtb: lcdif@80030000: interrupts: [[46], [45]] is too long
	from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Fix typo in commit log (i.MX23 has two LCDIF interrupts).

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


