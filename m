Return-Path: <devicetree+bounces-76186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF34909EBE
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 19:22:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6637BB214DD
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 17:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB8BE1CFB6;
	Sun, 16 Jun 2024 17:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ODbm7uC2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565861B960
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 17:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718558532; cv=none; b=R6ukBs1Ct7JdBD9K+zr1KEMvN2WCgR+NnGsLtNiONfdBkp9iXhFa0W8SeVdGvcKf/5E0iLZTgLxU2SdpLhh/Xg+m4pxVC6dgEXvX3VPrJMGmlaOH2dOwNemOp6PZsybKcjdr6vbyGQWYY8X+2ElSmserOtBThn7mqW3aGyHNa4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718558532; c=relaxed/simple;
	bh=oYT5Y/56lGcSESqEhn6gTNMIF9aLwkiwo9i2y35Kegc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aZrw7Djb4wFBO+fSNXQ0ZFbufQ3G5SGCHXqxBvo1ZN96mSv465q993+FKCBOYE+vt9veBct1fiF2DepFW1tyMTCAT12inlL6CyoYinLhX4fJvdKEssdq0VpMhfEvx1/PVAjM5eTIHA+ZZVzT/1snMnw5ozbMwVmefxnDIL1AtgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ODbm7uC2; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-705bebd4cc2so64857b3a.0
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 10:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718558530; x=1719163330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0E34t2PUQP0NRWISUhTS4WVyqcqfNVir6S8RwvxkwNM=;
        b=ODbm7uC2eemFKSft7smtTq760ljfdRLgt+Rcbj3QjL0KcbwsnAXda0RWFW79jPAsI6
         VB5tdBRLvOQOViD+MrkCByhX0bH0On4A27zdsNNnA/7h5Q0c/rsr4WPdtWgtaMODThu0
         jEkZx8bghQwVSAU4h6dsMRvXS3KzE50kjOaKilVMpOA7X6vNPt3N/QTrwCqy/6XqYZw4
         H3zZXdCXUpsyK+Ao38r0BbrNm3P8cdClR2k0iLGEXdYAFpVHM23z3mdQMvgUodCZIYQm
         8iPPErKh5gYs3mSZs0wu4p6JsjjVbohNe5TIwtV3x8MlcQhUj5V//3qMHz5VuxBTZeuQ
         +fEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718558530; x=1719163330;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0E34t2PUQP0NRWISUhTS4WVyqcqfNVir6S8RwvxkwNM=;
        b=ZNY+oANHty03h1Mc73vRlLNKPH7cBfDehGutaP0vYp2yAik9aoPaUb7Iw9bgtqs/La
         kULOMmaXzwJj3vJRHMGFj7uoBLFHr4ecyvI57eXMPNl0hX3dgl/nSiR/7NYFBQoowoJT
         qD2kveA2Scp8t6Fk7K89HmRjphrJf8s/VJHHqI2SqK6sMnIo8+nsfMMwLqT402BShRsT
         1MC5pXpKsIbPYClbFzsbW5TZl7Dc4EBVZx2CwjtK6VM4raL0SXuocH+/nFdOtXHaUu3a
         3HcoIPZkoNRs8RS0MJIgeIIjVJxvqA0y807wtyD3/9XgChYPVyjiSQvR+iAwIy5cmiPd
         TJLw==
X-Forwarded-Encrypted: i=1; AJvYcCXx//4VtTVyXj1swc+EUlmv2E+HJ85uV0Sxn/TebteNdUhBrIYwrD406hSQpfRxfNGpIW7OJvfnudhiccLvOVzqFyGW3gng04Jqkg==
X-Gm-Message-State: AOJu0YyOBiL+ZSxJtOuk9f63X4vc9Zhau7OXqD+X8JX7NMTNFEKjEWOK
	ceKOq2XIDB6UB0dSSvZKNSambwRNbAYeDeMebPjmcXHp85LMjX1c
X-Google-Smtp-Source: AGHT+IHBVeK7nzbTxXp+bRu9RrZo7YpEk8NqgvlZCmvJnTUhMhEIxaQ6scWMlwzgK1JvYckCmSK1ZQ==
X-Received: by 2002:a05:6a20:1584:b0:1ae:42c8:4f69 with SMTP id adf61e73a8af0-1bae7b3c320mr9587966637.0.1718558530429;
        Sun, 16 Jun 2024 10:22:10 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:3afc:adf7:7d20:b095])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705ccb3d309sm6144312b3a.104.2024.06.16.10.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 10:22:09 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: arm: fsl: Document Compulab IOT-GATE-iMX8
Date: Sun, 16 Jun 2024 14:21:48 -0300
Message-Id: <20240616172149.2542621-1-festevam@gmail.com>
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v3:
- None

 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6d185d09cb6a..5a2ddb88d0b3 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -946,6 +946,13 @@ properties:
               - prt,prt8mm                # i.MX8MM Protonic PRT8MM Board
           - const: fsl,imx8mm
 
+      - description: Compulab i.MX8MM UCM SoM based boards
+        items:
+          - enum:
+              - compulab,imx8mm-iot-gateway     # i.MX8MM Compulab IoT-Gateway
+          - const: compulab,imx8mm-ucm-som      # i.MX8MM Compulab UCM SoM
+          - const: fsl,imx8mm
+
       - description: Emtop i.MX8MM based Boards
         items:
           - const: ees,imx8mm-emtop-baseboard      # i.MX8MM Emtop SoM on i.MX8M Mini Baseboard V1
-- 
2.34.1


