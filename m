Return-Path: <devicetree+bounces-114883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B629AD4C0
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 21:27:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A1C41C221C8
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 19:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 836941D1F4D;
	Wed, 23 Oct 2024 19:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NKPbxOlc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BDC1AE014
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 19:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729711616; cv=none; b=bHZU31N6v06fLgjLZUW3FsgHAooPzZY8kyOCKUxmM6phwjOX4VATK3YzvoSYfAbScJNq/3cBa9YaoxQ8ApCKBZSxYJ3BCZpVjki77hYAAU6M5DHfRsb+0qaVZsGIzyZFyjUUAZiSXW3JWvueoX9QWOcFbGbdwbR2gstW1yHGs0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729711616; c=relaxed/simple;
	bh=PnHFdvXXOHbGeeTZ8SXistTs2X5Rh/8helFqpLpz0jg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Rua4fIDP20gsg2+PyWHfXAbZwHVzdyTG8anOtkRa9eXJeHZw1X2YnthFNi86GdyfSYJYwxNknHWBQ23iTOwiquhDOJg9TepxiXJgzPIfF4IwSTzqmpXUMDM3LAlDWGqCplZfrobzK/bTxSZIGq0sIPZJJcVf3zzsLGXB+JZy+2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NKPbxOlc; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2e2d1858cdfso160017a91.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 12:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729711614; x=1730316414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DZ6VmVLdmhY28VtA6wAyYo/0YXHAiwZFjFaUDgu9nIM=;
        b=NKPbxOlcdFOL6DvP1F8tZdCNP5rhxaNIEtvRI8qUw/mFoeIsQs5+6cjN0zKGVW/xRX
         fiKZca/pxWhwEb8ZROIRC6L7W7p263VllmdXMpAoU1kuMkN3sQA0LbHNboJVjlafBpTH
         K1ADskPigmPjCpwPKGIvup0gxspAte3BByPJ39L3W8nqFzZCcPfrGKXBMd18eiPmJbw7
         fhH9RnoZ2GVXFSK1ovhtDB6qQL7uEMVaoq5RQdNTsB776TiqTLPqsWiKnUw+mdqqvPHL
         IbtLI7rD3hMZ5hP9rbLR3YcGCWsXrbLeJBuf75m3+ujG2HI1Pfeot8nzZsp8RLois5dK
         sI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729711614; x=1730316414;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DZ6VmVLdmhY28VtA6wAyYo/0YXHAiwZFjFaUDgu9nIM=;
        b=dfdDcftQajYgVaLSOtCHnSbLkM/Kpm85HvTCrbp0nCYHWmwS0SMaj6Yt3tktF75nYh
         cOcXZ6F6UgYL17LP/AvhFfe34Kk8effZ9jC9xdy3xkgrSFeQiihnI/klm9ETY570zFM0
         +hhlqi270NsaXlf6dL+rwUyLmFIIUNdCu2ralWag14n4bA4xjeMjKY455U1831D9cp2Q
         jEDimd2asaR30H56ECXPCtrwI2kCqqVMDn6rms7mXd/pgZsOwbgUl2WPtgj4GH7CcyFV
         WcqhvzP+nNn9XtOqeOdbO5kAu+rJv+2XnvVTM9sH33fTAxCYoN2r8w3jVHe+ryfl5ZLS
         HI/A==
X-Forwarded-Encrypted: i=1; AJvYcCWYG8IQfYqYIvK4CuLZM2ttJqFdPqPJXNwF1J8M107nvGQjUq05A+ySNsFbIayJDWGcLtNBi+3gTF57@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs066i5/GfiJbuU0OgrgUFxHP1wX4cWDm+WmJA4x2mikM2aR6/
	Br1KFv1a4Zf1t1D1cDyWlveeBoTwPKNudwkm1fipxXw5/ZDNitJ7
X-Google-Smtp-Source: AGHT+IE7vid8RJXkhmDafU8mkpKEz7Hv+OtCNibLynfuRwXFP6i8LTmLMJHyAoI8Jc308/MOiT1EEA==
X-Received: by 2002:a17:90b:1e42:b0:2e2:d61d:60e6 with SMTP id 98e67ed59e1d1-2e76b60d423mr3473435a91.17.1729711614266;
        Wed, 23 Oct 2024 12:26:54 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:248:317f:2ba9:e66c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e76e0877a6sm1837839a91.54.2024.10.23.12.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 12:26:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] ARM: dts: imx6sx: Remove incorrect mmc fallback compatible
Date: Wed, 23 Oct 2024 16:26:36 -0300
Message-Id: <20241023192638.1214045-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Per fsl-imx-esdhc.yaml, the correct compatible string for i.MX6SX is:

compatible = "fsl,imx6sx-usdhc"

Remove the undocumented "fsl,imx6sl-usdhc" fallback compatible.

This fixes the following dt-schema warnings:

mmc@2198000: compatible: 'oneOf' conditional failed, one must be fixed:
	['fsl,imx6sl-usdhc', 'fsl,imx6q-usdhc'] is too long
	['fsl,imx6sl-usdhc', 'fsl,imx6q-usdhc'] is too short
	'fsl,imx50-esdhc' was expected
	...

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sx.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
index b386448486df..a94bebaa858a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
@@ -998,7 +998,7 @@ mlb: mlb@218c000 {
 			};
 
 			usdhc1: mmc@2190000 {
-				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
+				compatible = "fsl,imx6sx-usdhc";
 				reg = <0x02190000 0x4000>;
 				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SX_CLK_USDHC1>,
@@ -1012,7 +1012,7 @@ usdhc1: mmc@2190000 {
 			};
 
 			usdhc2: mmc@2194000 {
-				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
+				compatible = "fsl,imx6sx-usdhc";
 				reg = <0x02194000 0x4000>;
 				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SX_CLK_USDHC2>,
@@ -1026,7 +1026,7 @@ usdhc2: mmc@2194000 {
 			};
 
 			usdhc3: mmc@2198000 {
-				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
+				compatible = "fsl,imx6sx-usdhc";
 				reg = <0x02198000 0x4000>;
 				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SX_CLK_USDHC3>,
@@ -1040,7 +1040,7 @@ usdhc3: mmc@2198000 {
 			};
 
 			usdhc4: mmc@219c000 {
-				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
+				compatible = "fsl,imx6sx-usdhc";
 				reg = <0x0219c000 0x4000>;
 				interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SX_CLK_USDHC4>,
-- 
2.34.1


