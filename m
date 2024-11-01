Return-Path: <devicetree+bounces-118145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7EE9B92A0
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 14:54:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CB831F21455
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 13:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D67D51A0AEC;
	Fri,  1 Nov 2024 13:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R1se8zwk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05095158DD0
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 13:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730469269; cv=none; b=CTor4ixOjC9UFW/SQVHmtOkDZiHcePTYxVjtjrAVvaVDQw2YKUzx1mG/RXcZdd8+dwjbIMAmddrnUKKR+IC7wnTRMVw5Fj6uRi6YbJo0/Tmf1rM2eBflWsPb5k2CKeEEEneMNJruKEVRWx6AXP7pFCZbLK0u6hsuR112zCLRlWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730469269; c=relaxed/simple;
	bh=ws4rW8bFaNx06wbD3oHeLj71tdsss9ScLaCwl2/nnew=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=T8s5aapbTbFEOSzW6yyBrnI7GxqjGO/yd+yszZO4DxC8YLp63q5GOuORfFumU1wN7xPbl/9pKzfIin/ZFlEPcm9hdTKWz0TNoDQt7VtXlG86e6PQbU5D+L1dF655tbp91RAu+xbp526dM0bdTNGO2S39iwXiAAaNOY8d36FoUYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R1se8zwk; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71e983487a1so1626426b3a.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 06:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730469266; x=1731074066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HB0jyIh0TpM+lkNAT16hmgBzXyipoZwfI6gr6Fte1kI=;
        b=R1se8zwkXPsHn1L1+VolMA7iqqomSxs0M80DrJZLyDxVf+vtbMR2JbvQ6fF04Kipee
         mljRq9L2fqVJXWOkVNenMqWZO7hJHw1oTT14QLB3/eOF14GLS2HvycydZk+xdNZi/0go
         EnfvPMROWBk8h+1TsIhoResCxaJ61A5Csp0GxDaqm16q/FEoaCglI9V9m/FMm50+foph
         uLUoDE6/Mq9v62CItvs/Hfoh2YqotekUNEovpERT+pGTp03aDVXOnCKMWEUv1AR+RQBg
         COH9aPGsEWVer8RpOKB0TRQCwI8GHJvOyGVB4MDlrN1yTvQ+gid4aDEgF3uPd0GhPtH4
         7IOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730469266; x=1731074066;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HB0jyIh0TpM+lkNAT16hmgBzXyipoZwfI6gr6Fte1kI=;
        b=CDpqucXK0CTuCqnU9kQygMheuZza7AT73MZz8RZ+gUo/k4W/oEg6nYI9TLGz2p3WjP
         a7VTI+1UV+Cr1aLWNl+r0pB6ePP4IX/qHqo0/qMJ4yjDebTf1uZ+pAV5FYx46cxhN6q+
         sR56h1ojprPmKu42cAIlonOBfBi4Nl+XCf1cyK8lSWCmsj2N24LXTYgyLdxs+JBOREa/
         mIF8ou8Lj3EnqAaQX8MNurzCtarL1ADrgGcGRLMMvuMoxuGs+F8BUHmBzHE9m8gXNRFf
         eW5gNTT/gbq7J382+R9jWr20Xt2F9rKCP6u9tptLMWWwR4FCzHKDdBavm7oE+buI6CvU
         a7eg==
X-Forwarded-Encrypted: i=1; AJvYcCXNH0NcnygyRenBVcQBIfEBvgXYS6k7Pv4Pa+Hi0mWy/qgiEJhJ/1lrap5XB7ipjSi2Gw6K4bGGibfG@vger.kernel.org
X-Gm-Message-State: AOJu0YxW89isDgPtS+EQAY68CC8nRHE3GbRet0dADl7bMf6OOmmw6lI4
	8c+Nd3tqT0xi5xaONQRLk62FylRokPGhAotMW27yAbHTdqnJ7Qva
X-Google-Smtp-Source: AGHT+IFDJu2muMMX574LjGpxqR6z30/n/2YRYNEjaDajZtXr5fX5zoOaIGrofmuOBUvyB3txoWtOUA==
X-Received: by 2002:a05:6a00:2d9c:b0:71e:6a57:7290 with SMTP id d2e1a72fcca58-720b99f28e8mr10309705b3a.0.1730469266034;
        Fri, 01 Nov 2024 06:54:26 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:f81d:d4e5:9f89:77f2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720bc1eb3a7sm2656270b3a.81.2024.11.01.06.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 06:54:25 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: marex@denx.de,
	a.fatoum@pengutronix.de,
	andreas@kemnade.info,
	kernel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
Date: Fri,  1 Nov 2024 10:54:04 -0300
Message-Id: <20241101135406.47836-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

imx6sx.dtsi has the following lcdif entries:

compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This causes the following dt-schema warning:

['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long

To keep DT compatibility, document 'fsl,imx28-lcdif' as a possible
'fsl,imx6sx-lcdif' fallback.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v3:
- Also update the example.

 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 8e3a98aeec32..aa3204b6aff9 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -19,7 +19,6 @@ properties:
       - enum:
           - fsl,imx23-lcdif
           - fsl,imx28-lcdif
-          - fsl,imx6sx-lcdif
           - fsl,imx8mp-lcdif
           - fsl,imx93-lcdif
       - items:
@@ -32,6 +31,10 @@ properties:
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
 
   reg:
     maxItems: 1
@@ -182,7 +185,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     display-controller@2220000 {
-        compatible = "fsl,imx6sx-lcdif";
+        compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
         reg = <0x02220000 0x4000>;
         interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
         clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
-- 
2.34.1


