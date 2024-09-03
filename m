Return-Path: <devicetree+bounces-99582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A483296A442
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 18:27:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6A181C22BF5
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 16:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B53B718B499;
	Tue,  3 Sep 2024 16:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UOtWxojh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB8B18A951
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 16:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725380862; cv=none; b=ceWiQQDdBzK+B5iEhzg6Xyaw8lPpuqPVxpt02T5O+9Lenua17kHLIpf6ao7dsPjhjUk9lJ1s0/a4oM5CzuB7JCa/njs5rkBSN9QLHClQeravwAdZc/umjHgha6lDWZoNLWq4zs3CZSyaFPkpHJ6rYB+MP10UWNtznvp4TsacImQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725380862; c=relaxed/simple;
	bh=y4lqeonZkRRoG/8McwnrcegzTshsZjBbdKfCusayZxA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hohHD72G7V8xgWJZSDSSshZFdRkRIDfuIjV0/0l+qlsVq0U/Z3hu4QZnwna86zW60/BuNZWMBgTSqWTvi7Naj2JIRgbnraBC3iAY4NG1TDqEJeE2UL7awPU9uTMW/3VVU35PAJZAUacBtZrldhD5IgFXkIUGzdD/hE9rg4InAqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UOtWxojh; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2053616fa36so34270935ad.0
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 09:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725380860; x=1725985660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ViZ2Qk+Vtw2VzGYfDD4Bo4v3B7DoDiJQtKRYgmWotpA=;
        b=UOtWxojhBO3e4vmRfp2/zG14z/p4m90JO3I3RSV2/R38ma633Eme1KUEGv3pyiqMa/
         c5gPkbJlZio67ASTs8h7DFuyCGA7X0Z+meu3VB65Jf2B7TcirNI5llzaIH1knP1j2U9x
         RMQzDDEglmWarwXh55IY1HLjOC/HlBozRc3bNB8NBjcK8MjoNihjIOavliVLJXl6gItv
         k1H2tYHFbzNNSelgZEU2yPbcqif84xgvsSAnvjG8fXXlNjdkB34pcCD7EarHojbnLuEY
         +3gJA7+117KdOiX81yMTPKSjeTdD4Tzm9wMMw2yPROK6/gankWID0O8B6i1GVdc4yhPH
         t9YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725380860; x=1725985660;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ViZ2Qk+Vtw2VzGYfDD4Bo4v3B7DoDiJQtKRYgmWotpA=;
        b=cuhDu6qryBtpfYTmENV4ShG4PUz9mxZZhrdi3ivyoNX1qiMOEgwVPfJuP4uMb5L4F/
         Xuw9ybnbHf8EwwjKqXEEG1e27wBbOEvfpNjhZRhcNvEFIcSaq+hgbAkM1Ow346/qvWz/
         Z5escoi5c/IgdcK4KDZ1gIFdXxTqwWL9iY/EdjGwVgJYgjbJLWlzwojl2H2SPSHyED+/
         mSir2OS5x6Q0JWrya9gPZMQ9SqUn6O2KqaSOA/bn8Qv03sLI29Qvcji/RwgrevGrLeGT
         mMmRWfGu6WNa8PLTHfIQZIPbFrAjfxq0vpN+q7RaTmgHSV1omr2Zm/oRdjDZ5YJRHMHh
         FXqg==
X-Forwarded-Encrypted: i=1; AJvYcCU7WNui+duSU7KfaoCnAU6iKIT8/VrgZgCwjJu8j+X2oHEidyIJUKSfBfXs7bFDJi0IgPPgfs938BbA@vger.kernel.org
X-Gm-Message-State: AOJu0YzYl+BIO4KMBRLBy9I+4Z9Hjt2IK1E+QNRo9v5pdkpq07FVy6Qh
	IaTsGcUMdw9Q9B3abTVty5n1dsvUpGNu76C+DBl+9w7HJkUHLCBXdZrZpg==
X-Google-Smtp-Source: AGHT+IFWoAsi71mQ5SIl33bBxgwV2NfZspH9Nu1mtON226BSC45BsRnCT2jmiAIN44wzjafp79E0Zw==
X-Received: by 2002:a17:902:d48a:b0:205:968b:31ab with SMTP id d9443c01a7336-205968b34cbmr33233955ad.58.1725380860399;
        Tue, 03 Sep 2024 09:27:40 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:ec5f:2356:2bac:7d11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea37cc2sm466115ad.160.2024.09.03.09.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 09:27:39 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: mripard@kernel.org
Cc: marex@denx.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: lcdif: Document the dmas/dma-names properties
Date: Tue,  3 Sep 2024 13:27:29 -0300
Message-Id: <20240903162729.1151134-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

i.MX28 has an RX DMA channel associated with the LCDIF controller.

Document the 'dmas' and 'dma-names' properties to fix the following
dt-schema warnings:

lcdif@80030000: 'dma-names', 'dmas' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../bindings/display/fsl,lcdif.yaml           | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 0681fc49aa1b..dd462abd61f8 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -50,6 +50,14 @@ properties:
       - const: disp_axi
     minItems: 1
 
+  dmas:
+    items:
+      - description: DMA specifier for the RX DMA channel.
+
+  dma-names:
+    items:
+      - const: rx
+
   interrupts:
     items:
       - description: LCDIF DMA interrupt
@@ -156,6 +164,17 @@ allOf:
         interrupts:
           maxItems: 1
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - fsl,imx28-lcdif
+    then:
+      properties:
+        dmas: false
+        dma-names: false
 examples:
   - |
     #include <dt-bindings/clock/imx6sx-clock.h>
-- 
2.34.1


