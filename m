Return-Path: <devicetree+bounces-82163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A21991E9C1
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 22:41:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B89E1282113
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 20:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C9CF17109D;
	Mon,  1 Jul 2024 20:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ANoF2OTf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24E216F8F7
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 20:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719866500; cv=none; b=Oei4arb3fD6F9o/6L0GH0jLI2FQ7jDHOfQPl88/MraM/FgTxkkqIZ2msVfIMUZD5PaHy934fJ844u5q6toN1Q2tCi8P6KQMdRcEmL+sZJa1EdM046helzK0nu75gjlVbxgY9yvkmBaQS7rHPHxJMG9HTQ/GSry72C3GYs72hDMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719866500; c=relaxed/simple;
	bh=Cu44QcwrANpy9SEfRV6ZEi5s0GdqQ9PnZnhZ2hlcamM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=jkv7AgRxBBQmSkyXGyZIPWU6KiY3Oz/hPxtUDLG2U3rzGWl9kTOTpxAqlUk6hJSK/ZyBo3cCBTj5R772/uqMvlw4v83mgJvXFHW7kuTSyPUJf9gDvbcFJAxNeQkYWzlZStntNFTDdi7eyoBAyvbsxTIoyB0VnMX6r06aK9pyVUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ANoF2OTf; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2c86869685aso642514a91.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 13:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719866498; x=1720471298; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bRjME66AEhK3sky1jg1BJXWNOXGIrVl/Jf9E+rXM3II=;
        b=ANoF2OTfVopz1/QSIOCtMBmkdY/DAlssk+UtMyVJ6wZWYZ+XcMR4UDpe8Jyfo1p/IZ
         feSZT3/ThS48VQkOX1FNFNZ8Nk/8snCqgHOSMFuFMCzczf/wnJm3sTu32Bdjq5k0CCfM
         /jdxDPCXvCoBvVQHueqfe5p6+biZcH9541G5AUblI8bsK8Tpec8gpZY7xf34qNEtIMKb
         3XyJCnID5KWgq9Lj1vmoRuHc5KZS4XRBSD/yHO2qzFIrTsFIrkgCb96A/ybw9oV3wUUq
         vmhkxu+xvSOzw9N14/opLyWiI0VxG06ga47nCYGw9uaMOFkyw0zuXhP3Do81bGi0nywT
         q40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719866498; x=1720471298;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bRjME66AEhK3sky1jg1BJXWNOXGIrVl/Jf9E+rXM3II=;
        b=Dj5r3TKNyxHSFEsEQxYbVREFxd4m/X2hg9aSyuDsAafBjp0YITW3eNJzBHdZk3RkVp
         gLIvP0vQve1hyBrc4HOMYNsCzt0YkylxvbPb2kMz5T8kjX5rG0I8D4cHgHYaci7Fy6c/
         WncB5rTJ0TXgIo6ZO1vFKcBT/gwzvcwq+NtSTee2upNTQdWdQVEdkARHPDZL1vZh3paa
         4C/M6EA7ESdSmAIe6QqvrJeHtZWxej65ySbhBaZyIdmeCOOx97rSIzfpoDPOFPni3k5l
         vTxHkhPtvKSALj0jeT+TOmZ+gIAMxBuiIs1l/Pt89hwpTDTEkQTnv3fsAov1vFXYOTLo
         da9A==
X-Forwarded-Encrypted: i=1; AJvYcCU3Rcza3kiw12J0dK+zfA+uDYaGyt9ErU8Brqks7w2/qpeM8Mvwt6+Au1rMOpbxjSHItgD7U16Jvk4qs9XL7LviYilcWk5HsuwcxQ==
X-Gm-Message-State: AOJu0Yyed/uKM8zvIUpaYfmq6u0aJjf0QDvSt69z3KXYSssCFmkdCxTH
	5+Br7fpI+J09JyA6VpTGfXZPvnLTP6DHZn5VWmSa+VtyY4ILczbH
X-Google-Smtp-Source: AGHT+IEEicPIiq2+PXrEiN5+YdT3BqvnEpx2DcWFiTX9F7FX/2GS409wIE0nbzy/3x7vqQfSjMyahw==
X-Received: by 2002:a17:90a:a083:b0:2c8:af45:adb9 with SMTP id 98e67ed59e1d1-2c93d5ea08cmr6916270a91.0.1719866498024;
        Mon, 01 Jul 2024 13:41:38 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:27dc:3453:bfb9:bce5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c91d3eac48sm7209232a91.56.2024.07.01.13.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 13:41:37 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	tglx@linutronix.de,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: interrupt-controller: fsl,irqsteer: Document fsl,imx8qm-irqsteer
Date: Mon,  1 Jul 2024 17:41:06 -0300
Message-Id: <20240701204106.160128-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Add an entry to fsl,imx8qm-irqsteer.

This fixes the following dt-schema warning:

failed to match any schema with compatible: ['fsl,imx8qm-irqsteer', 'fsl,imx-irqsteer']

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml
index aae676ba30ed..6076ddf56bb5 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml
@@ -17,6 +17,7 @@ properties:
           - enum:
               - fsl,imx8m-irqsteer
               - fsl,imx8mp-irqsteer
+              - fsl,imx8qm-irqsteer
               - fsl,imx8qxp-irqsteer
           - const: fsl,imx-irqsteer
 
@@ -83,6 +84,7 @@ allOf:
           contains:
             enum:
               - fsl,imx8mp-irqsteer
+              - fsl,imx8qm-irqsteer
               - fsl,imx8qxp-irqsteer
     then:
       required:
-- 
2.34.1


