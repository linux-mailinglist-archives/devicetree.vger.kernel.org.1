Return-Path: <devicetree+bounces-208044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC94FB316D4
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 14:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80BC01C87869
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 984D02EA73A;
	Fri, 22 Aug 2025 12:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SPtGmCKm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3239217B402
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 12:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755864187; cv=none; b=B1RY9ASnKE4nHH/rByl8EQk3LKyhfbSmN3fVXg1x0krJA8Dkatb6VLXzOziKJSx5SLvO8d6Awq3F32cZnUWTXQbFz7S3EacR8e542TDWRQBCwcV7OY3wr5p3A75K7KznjuYhCQmFMAHAbunQrFS/8hnQ63a/J+rMDTbxGFM/w+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755864187; c=relaxed/simple;
	bh=BmyHnrRKvQpFyD/wXq4HnC2cRmGY7HJI1ForB/PRxpM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=EUKKQ7GPK3WMbc7BlVVDQ2r3tYCqee2O2/bxvHDeKOAgSH/V2D72N02IwrHoBY6b1tQPgRh1/urHc9XFjSeW5YRRXtowN/1CXxZxkLcDLVQVCWifWYPRzVzSAGB3jfWiKIxKcSAUalT+rVbR+5guJ20uSUMD3foq4ENseM2Wy5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SPtGmCKm; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b47174beb13so1391872a12.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 05:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755864185; x=1756468985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NmR/EC3Cn8L6cUNQYNHnPUar2XNgRmm87IeGx/J4wBo=;
        b=SPtGmCKm/9jCh/xJd719VHEb/uyiBFuOANelKV+uyi4vPMMmccrLGCCLAzeLe7mzEB
         TCvjV9cNRkb9zPkcpVmne792EDWtUOTMWLGPbhW8USLYNZjEmlr9se7lLvQpVLCz8/n4
         ABnyk8vxQoHTT9QDb8MS6oju3XBVh27NZYGVZr8+14UyEoDPQxCti0/P8AHQF/isA4GR
         RKX8o/t3+s6bhfX3n9T/0Mp2A0/v7bSXg1aOlcbArxQOF6uFqvFrUIHUlj2KFRqtrll1
         F5DZnFE0F+B5NYH/AF1Wun1+p9RbyvvA2GboNLX2tzI+n/oNWFFOcCXUwhDEcOFws6hV
         f0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755864185; x=1756468985;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NmR/EC3Cn8L6cUNQYNHnPUar2XNgRmm87IeGx/J4wBo=;
        b=Usws7DS4w6kPjVouDcedKx3Kv6kcSGjrt6jlQ2WiDKZbYm53SlNdfG6tDPE4xBdelg
         5U/ijdMO7H5fKesQZy1MNdDpt1CyfftG1nSdcRkK6X4yjqRLDxx8qSxhhJncpNPPTVwX
         xpNbquzDxy1FWfi1U5XhXFN9bAjg6e036zgl/PBCT0Md9CM+otsc95yYz+ASe4lNYIuA
         VexXwhfM1EaVEfCO0E86sytj8XAU3GSVyI6U2047HiG1JcgwZnhsavdimZB6MV02cBjN
         5nkpl6DZpEHkBKNStZ/dtDIr6RTGzbUGF9AoY0LnG6BNtiJWlwY1TZjvKv+D4D2XHHi6
         h3gA==
X-Forwarded-Encrypted: i=1; AJvYcCW400gDi/aaATQanHTzz/wTgj8qik2icSI11ryBbBSghB4cc+cq6gTmKE7+aEFqo4Tv0+qfL7+owj3g@vger.kernel.org
X-Gm-Message-State: AOJu0YxfDUwCTT1RPGMVegs9qK4pqbBHdgs/e7/WjKn//YUT4EwBWH79
	pAMdohW+wyqfEW98V+V72k45zp5i97t+wg9awE1z/65DlbJOMp+LZlm8
X-Gm-Gg: ASbGncvGuQc5tkw6Rja73iEiiJK8YK9YcRlYZ2+UYosRtBM5Tf/nazrDbV7yL5WD5Rf
	gYldPMezm3yDJqK6GWlq0rbfy+8D/KPQEDJyqMvhtCFOvCazCxniSBD8vNpAbjUdgml/mu+rO0E
	rK3Z4wMgmXbPVmH4YnkrXDXItFxIZyarqySXVn04pVgadOfXifHD0gc48tLbXU32mjMiWXH9Ca9
	Dvj+Uvqwx1ET5A7WL4xG8GROj1TmV4XTBVULXzRcbN1XAeydGngLypZe98agjst+efoq3PVIk/1
	SsAo9KXEAlrRe9+JQDZCm61bVIiCvy7K4LtHvBqk+Vd5Bg2ENlgvzjWv40Uui81FKmb15IWJ6lC
	Be5lFfH/fWYP2SxLHJRz8aFhf6obEEVxeyg7/
X-Google-Smtp-Source: AGHT+IH47oNxHNWHiA/QQLdgkhelXlu1aLYuXEzULXVeFtTkiDXrRFNb7+py3C3th4KEJf8Mhluf9Q==
X-Received: by 2002:a17:902:d54a:b0:240:50ef:2ed8 with SMTP id d9443c01a7336-2462ee38fbamr40886895ad.21.1755864185349;
        Fri, 22 Aug 2025 05:03:05 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:5ae1:41a6:4f22:1c64])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2463604af22sm20501085ad.37.2025.08.22.05.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 05:03:04 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: soc: fsl,imx-iomuxc-gpr: Document i.MX53
Date: Fri, 22 Aug 2025 09:02:41 -0300
Message-Id: <20250822120241.26419-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

imx53.dtsi has the following compatible entry:

compatible = "fsl,imx53-iomuxc-gpr", "syscon";

Document the "fsl,imx53-iomuxc-gpr" entry to fix the following
dt-schema warning:

failed to match any schema with compatible: ['fsl,imx53-iomuxc-gpr', 'syscon']

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
index 8451cb4dd87c..b77ce8c6a935 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
@@ -38,6 +38,7 @@ properties:
           - const: simple-mfd
       - items:
           - enum:
+              - fsl,imx53-iomuxc-gpr
               - fsl,imx8mm-iomuxc-gpr
               - fsl,imx8mn-iomuxc-gpr
               - fsl,imx8mp-iomuxc-gpr
-- 
2.34.1


