Return-Path: <devicetree+bounces-70143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 900F48D2941
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 02:05:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 453F32829B5
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 00:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3133F363;
	Wed, 29 May 2024 00:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mjXl8Qdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E7F632
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 00:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716941150; cv=none; b=Id76R9tKEjGYTZWjFWdYLX6ogYuULfRHW3I/vjI5KGIlTRSXxeLhbOsAddOUvaFpTBxxMMSO34xNRTKyBqkz1EF6v/VQJe/1mR9K8q4Ij2q7+7ALqBgNwrlvUUTbD9dlf7UTssOPxAi/oAtJsDyCCQ6IgNYw3REjofpjOJrCE2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716941150; c=relaxed/simple;
	bh=7ol4garLMsDzRKxwki4fWgqkSt9RLCXcjj5rZyk/m1w=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HrdujoiTeEK9mu1Jh1QVQNisPQbBx+t9ey/klldGvRr15fbn+zr4j91qUmEa+X8GfN9PwHkFDW8ztFKTRy2o7eN8ZBkK0GURBUDSGsy2ftQq06E18dwBG7jt/mQgYbRgCt/cRt01+uMxRt7bApiOSCZ9zVvckh/xD4nyfRDZfIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mjXl8Qdw; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6f8b36f10d7so22467b3a.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 17:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716941148; x=1717545948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vjTBiv/iWOE80tHDjG/tHhcP238L01dLxxKXKr+oXB8=;
        b=mjXl8QdwTqQUKMpNn3WosJxFnfI5ZkTTGf304YTFHxDeF0iQI8A5GiF+MBclh0HAxt
         gGTRUn2QwO+l0s4ISuwDZdE68hMaxia6wJp1lp945iXvP4z/dFaU9lIqbWoFsMDc0zJ5
         Q02llraRegxX5bWOKl5LnpERAAyJ36siGLuJ0JQmaBqUrDYJjUC7qK4WcfYL742cPFTJ
         4CETka97IvLntnoRORhBFTGeCyhuVi65vRK/gUBqz2o9k5vU5yxIs3WWtLLbNsiWMI1E
         IeD+unsbUTURjyOfsRorGpvyYvSUwrqYVwJ9hThRh8K9ru2GVEJ6ngPOblZ5gRu2jaUI
         U9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716941148; x=1717545948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vjTBiv/iWOE80tHDjG/tHhcP238L01dLxxKXKr+oXB8=;
        b=DGku0H5HJuwtrgbQml/Uv5Z3kyZ1I6EuKbieBdyajbdZ3abyYdszn+G0AbPdlHkXPA
         RpwJj5pHJWHJADrimEKBYWG6JPSRpxpbvVdQ6OVh7dC1AxcHhArPb7BvevWVjjvnvl8y
         agOwy+PrLZmvmrTkSAO72oNCknqn/hwMht8SvDpwaP3ATwf+WBeE2KDTEysHXseeYrBs
         TYQyotf1MN0M/CCxSqvaicBu2eRr3iafkGAnYNHbYvHa7TwKiAEOP03vlPAS/pAS45oX
         qaunZt4GaPa7KcHU8N/+WG5+wkdV/r0TXQWGZ33c7Ierg6mJ4L5Zc7y+gxxxfoDL7wWR
         7pVg==
X-Forwarded-Encrypted: i=1; AJvYcCVezv3UWhoGZLO5tasGTnjXP71tkQbJOziXLmxOatpsL6gQ3rWtxHFrF6uOzLCgIKQJ1LdMndRAbj5pdjzLXq5NWUSmuvS5acexHA==
X-Gm-Message-State: AOJu0YxZO/RK6ORKsVswpddGiGZEhogk3V5ot9UJ8i3gu+fepHtdo+LZ
	XZHdNMm+QHs0frkQ9V4dCxwqRk7/TryixHGUQX+bdUlbbX25aSty
X-Google-Smtp-Source: AGHT+IGrmT7qS0wdENayeJXE2drKhY1T3NsFaOpzHLs0izq9gml6hAY+jfWrhiKunNJnSY1A6C4OQg==
X-Received: by 2002:a05:6a00:4a10:b0:6f3:e9c0:a197 with SMTP id d2e1a72fcca58-6f8f184be18mr14458279b3a.0.1716941148022;
        Tue, 28 May 2024 17:05:48 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:dfd9:2d9b:ff9d:4f57])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-701d44144adsm1518455b3a.58.2024.05.28.17.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 17:05:47 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: Document Compulab IOT-GATE-iMX8
Date: Tue, 28 May 2024 21:05:34 -0300
Message-Id: <20240529000535.1426662-1-festevam@gmail.com>
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


