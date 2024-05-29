Return-Path: <devicetree+bounces-70432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1F78D34F7
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:55:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8BA90B24228
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A373517B50C;
	Wed, 29 May 2024 10:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iKOgqQ1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31668383A5
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 10:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716980141; cv=none; b=l+1leCuB17w2xD1RjFl9jEny9R+bYnP/LdnUz9x2RQtppb8YWBY0lIKqXf4mkBr2JaJ9cfpN/y/djkmaCdqGuebnt9iCJjxi00LJdPhNP+oM5OhCQLGRt4WugQ0UtedC0kxT5tfUA5r8X0FeUf6vG13OLj+CLgjwuzblwyH9YKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716980141; c=relaxed/simple;
	bh=3pFIpskMK91HnoigEO14Rpp3QFS0RfHa31ncHVZstu8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sYZcGUZFWaxbLnJ1rs3y6HsdP0AjHsNbAI6awwh94O+btbOkJujs6phuxEv+Evc5PXaZKC70noWf1mLudVTyFCK7yWTLvwqSrC4y48wg06uKhdv4n290xsZGU5bo7W2Fqodk0TOiNUCaCoEREMyh4qMFz+5O34knhJXNZiRbt/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iKOgqQ1l; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5b2f4090ac9so342704eaf.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 03:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716980139; x=1717584939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TVeVMaME1h+13I5Mxqo4FPqYeJecQqtlhUvq84lRxAw=;
        b=iKOgqQ1lID6/KfBStMEXeIFipNOjBpr7YG9F3wIinM1EtbA1vCEwvrdbreTZTps+fZ
         GQCIwPeB2vseczXVhgmjrmqb5MBnp7Gdu1urKHkdNtKyjTRkYi8VJGP+s7PkZxlJZ68y
         XJXlcXWAqpt6B1FjjT7rnaqFVWFzlAjlkLXlWshghwgSUkhXAFDyQMee2oQayLTHdDMm
         CG9CqVVz0/kNIhMCaNvgtppVTKG4NWYygTrgZv4Q/8viUwmD+LCw5pWWgApYGqD+jcxW
         0u2MVDiKPSSEhgWMk5WvSzzpi1lRdXLlPQNvvmBDHaeeHF4w6sCB8M+xVkYazPHMziTM
         dl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716980139; x=1717584939;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TVeVMaME1h+13I5Mxqo4FPqYeJecQqtlhUvq84lRxAw=;
        b=o2Dg53E+LnLZSHxkJ1jjUzRKlmczolHIpgZUdMP0dH6xFN5wcEd6qIsw/wCjwtXxQ0
         xBnUMszBXGDIBTwwiy2pdiGhQOrP0/6x9uA36eEpZx8YHzLnfwU0gtafXfG/8skmgvye
         TVcyoQzJ113XejQy/Q2XWyfY1H5z59FccY4CnxHoVSmx3lr0elXwvmHsE1QJcoZYA5pQ
         Y3h0cre/R8DgMr+dmHd4G7ncw2XZ120uznGEQDp9ndvMVMN9mBa6ajNOWeBwcpQa96mK
         L0qJVLWLCuPQe44Fp9qdG93FAa5KSCtuD4k7jOqVyqzMxs0Jy/ylktOfewE5kSWgMb/c
         VLAw==
X-Forwarded-Encrypted: i=1; AJvYcCVXCow+TzXp4HQCNjzZRu7sUCSgrEo/ilrn+8Y0zh/11yecxHWJdWOXkLgOHApi0xxuiRXoAdDJHRTUsb/7EKvCOYr55M0KO1Xn1A==
X-Gm-Message-State: AOJu0YxoKxxNz8YwQecAbm+E+viIR/izU4mn58RvRMGYt1gnOu2U6aHh
	r5IcKF3X6O6ETSsIKUjjAcMkhLlq1DUIfXKdHLwMGJfkS465a8Ru
X-Google-Smtp-Source: AGHT+IGSod0EWw+wzJUk3wwYHySmANo6MNMeQHtP9wDonLa4JzBxu3ANXGfIZ8dHg8kyop0fwEECVA==
X-Received: by 2002:a05:6870:d68b:b0:24c:5ef7:6588 with SMTP id 586e51a60fabf-24ca11d466cmr15331681fac.1.1716980139036;
        Wed, 29 May 2024 03:55:39 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:1303:a123:b1e9:a763])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-702220d948bsm389352b3a.131.2024.05.29.03.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 03:55:38 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: fsl: Document Compulab IOT-GATE-iMX8
Date: Wed, 29 May 2024 07:55:23 -0300
Message-Id: <20240529105524.1611432-1-festevam@gmail.com>
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
Changes since v2:
- Only collected Krzysztof's Ack.

Changes since v1:
- Removed tabs.

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


