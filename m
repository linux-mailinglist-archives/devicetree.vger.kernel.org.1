Return-Path: <devicetree+bounces-70113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEF78D26F7
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 23:19:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95D3E28289B
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 21:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 833416A33F;
	Tue, 28 May 2024 21:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cUslpZ9a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A35224D1
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 21:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716931139; cv=none; b=LO7UcVdnM3lqMdR0UwiohHH3hzWdUfEDmjhP9hbfHsL2FVu7zjaqdOjm2yMA9nRqoXssR9Jq97EwXM0hredKGcksU++HWMKPoPaHB0kCSxvUG+jAo4BXaqrHCtBFoGnSM5vJ0XupZPO8MznnEoOiHP9X8c9ON1zHn/6rI6YVkdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716931139; c=relaxed/simple;
	bh=1fRYHSi0mjmCvHoGzx4YHmpPxnjofRb8n/LP8z3Pafg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=agSJMNbdLL7OW2ms4i67DBZa+hWY4lWmzEYX59cFQmtlEcIG2TM+bszrHlvh9VaNF07jruovD4JQ8nPGvYe4JgBrAakHqM4GQ63fS7V9e6VbCGzsfnEos/9GDxk0L7RWJ+yK/FsHvmSEsC6WySmNI62g/iBPdktbPCr3S3EeQO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cUslpZ9a; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1f32696c112so765275ad.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716931137; x=1717535937; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zOLG/xiP19Du9416MvTHWN0x62JjOGZwmlDMwy+iLDQ=;
        b=cUslpZ9aRuZsLRK6DzY53cIkCm2ofWpXEpcYr9wd1mmpUXFVN41nJWPdANBX6JgOFP
         C2LgjISjmTmGrBgiE4pscRjWps9/0BxIPFtQlQ78xEGikHQNNijzuZQ1kk5VN19CXYXM
         c3TkHDa31VeAwR+H9AkWFeSjoWJfP9OqgvtmXFGkDFhtz81fWd8+NyCe0/+uNi5qsOG9
         JRC0LntaBbkt+kLwt3mVROj9Zxg09pWIimRymmWPBBstKx4RLbEnY7CCeo35k2U37USU
         5kgzOQZ8XcG4uPMe16FTRvl2VjHQr2B+Z4xFjVGU2hQrYRuaG6ofzamwNdBvchUIgh4Z
         gwxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716931137; x=1717535937;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zOLG/xiP19Du9416MvTHWN0x62JjOGZwmlDMwy+iLDQ=;
        b=VriRkdl1v0VpWKqV1dWZU4CSF0qaZkNxXKb+70Oal8bABCxMgJYNGg+3cawcCyFB4Z
         bCY26B9djC/eQxLWKCGmT+vqeiueLrzo11uGEECuhzRV/aLVdpJeTo64/Y1SPC1wCsOE
         w35UXs1Vs+r1jN4NIbOhx/BpKpuCgwCaCE2iR3jEndoZS8TqSqWeOzVimzV/3j9CoRoC
         Ag+bbEpRDIYs2deypSIO6FsqGfNuYJiPH/rjH8U1kkw0iZtFn71g+TygGV1cQnZ01YE+
         ZkCGBno6oIjwuHfyt5Ipq75+n4JH0+4vlMf5YZjh6SElUrM9/9NnGG6380UzMSHEfl1L
         0Vyw==
X-Forwarded-Encrypted: i=1; AJvYcCWztrUoa8zmPDm9sqo0TFCHNJRf0DIYk7YnBTp3m8eQaDm3S2qmtYJzuWq9UzvWjpuJk963cJS6CLC/l+Aj8Efr3YZjiwoUGeb6AA==
X-Gm-Message-State: AOJu0YypNGC5YcYuLqGNOGe93k3EwS2L/0NEtbl9eRIBNjrnYCgjMf6U
	od5dMPBJDBA1/KDVg6w6wNGlB5UYzLWZ7K3Fw/aTIBp2qPAfMVMiOxkqTuGx
X-Google-Smtp-Source: AGHT+IGp2BBVzmx4plp8sk06/lBMeVlCsJwWJUFGaSY3rZ8VTvsqB+1mahzneVs7+BeOak65QC+tPQ==
X-Received: by 2002:a17:902:f688:b0:1f3:358:cc30 with SMTP id d9443c01a7336-1f4486d1fbamr150047285ad.2.1716931137334;
        Tue, 28 May 2024 14:18:57 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:dfd9:2d9b:ff9d:4f57])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f44c7d1b46sm85105975ad.110.2024.05.28.14.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 14:18:56 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Document Compulab IOT-GATE-iMX8
Date: Tue, 28 May 2024 18:18:45 -0300
Message-Id: <20240528211846.1403524-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Document Compulab's IOT-GATE-iMX8 board, which is based on Compulab's
UCM-iMX8M-Mini SoM.

Board URL:
https://www.compulab.com/products/iot-gateways/iot-gate-imx8-industrial-arm-iot-gateway/

SoM URL:
https://www.compulab.com/products/computer-on-modules/ucm-imx8m-mini-nxp-i-mx-8m-mini-som-system-on-module-computer/

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6d185d09cb6a..49296e77101b 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -946,6 +946,13 @@ properties:
               - prt,prt8mm                # i.MX8MM Protonic PRT8MM Board
           - const: fsl,imx8mm
 
+      - description: Compulab i.MX8MM UCM SoM based boards
+        items:
+          - enum:
+              - compulab,imx8mm-iot-gateway 	# i.MX8MM Compulab IoT-Gateway
+          - const: compulab,imx8mm-ucm-som      # i.MX8MM Compulab UCM SoM
+          - const: fsl,imx8mm
+
       - description: Emtop i.MX8MM based Boards
         items:
           - const: ees,imx8mm-emtop-baseboard      # i.MX8MM Emtop SoM on i.MX8M Mini Baseboard V1
-- 
2.34.1


