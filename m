Return-Path: <devicetree+bounces-114885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E04099AD4C2
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 21:27:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1638283B1F
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 19:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5143D1D1F4D;
	Wed, 23 Oct 2024 19:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dvIhHrwU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6E01AE014
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 19:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729711622; cv=none; b=gEWi/kAYngnAe6+sBeuTVN0N30FI+9MvJnYkR0V6c9jSwlsedNoyTiIU3WSRLmODc0PlnbTtXZAwBJkl5AecfiaeAtOxXtD7mHMQ+xihsWGgHoy7jHt84MCStBLCPqtoztuN0g000rEU/Sz4y5NWQ1JXd/RXcl8BCtNerMUnf18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729711622; c=relaxed/simple;
	bh=pHdB1mBKkvWlU5gLJkzbozOecCtrk6xKwLM+xZCa/GI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bCydXPVM+sVo/B+xCRjCTnyUhq31bMXfk2PrdXRtjO3+aWhtyKvaCHA6UK9v1gST+A7FQuSnkcTkcYbVH+CcGQWPapFkYNqIw1FtCzxqjj3mf0NSWXlFxm3RsDIOmRwzfveusGCEXjiQGiJlIngXYxaOSBuM62YEo+74MTTICMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dvIhHrwU; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2e2ed59a35eso191257a91.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 12:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729711620; x=1730316420; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1O55tH4mg+dDTUW5UrQWZ+uhv6UBmUWklyeFXKvl0nU=;
        b=dvIhHrwUjI/FfA6rClgzbwTGdHph7g/tS4bKeF4GL6iHG8Z3zKdkcyNlq2CpVr4mXE
         hKXrO3WlWd+emw26KkiRmLHQC/i4yhqSNwOljDCbZ/TzfXZxAeS17LU0pudO6030FcVW
         QnafWyFtUy50MGK7vrufdvNnRD6FiwnwPtktiKyUS7N+OmpeLAuViuFl1EBexWxC0ie/
         OCipkN+2VMJzglCyrhZDr0UozSZJe88Y4/clf07ytfU/I0NnMvIZtfVkKpcRh4s3+Cy5
         wc5IseMBxKo2YDafTivOUIUFbu56Qx+AHMiAdUyc8oiCRShC3qDDvDIUVTq4r2MKKLrW
         R3Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729711620; x=1730316420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1O55tH4mg+dDTUW5UrQWZ+uhv6UBmUWklyeFXKvl0nU=;
        b=eGTIWqCc6Y3oi9Xy1CVt2WhjnnWU2hJTrxlOIhPYX+L1Lia+IYq4ecx1Vnim3GGHC1
         joZr/M1GlCEzN2PNMmRLYSlxxsaK3tPiphHl8gH3yyGypvYNMaGh6oE1eb5hI6UKTUoa
         UEVc+o/pQEkeYT94eF1TBXtc3ULwaJDJSd9yGKrR1oKtXcpTe5XNCu83foIQwuA2VskC
         LegoFHW4+2mrOicAQ/+GkgAaS1g5zPkagSOgUVcUiL+VGRSI+lc3igzYDLu0voHnw90v
         wK/rkdw0H3de4gee67XmI2QnILcn411qK9LMv95YNPuP9nm1ynRXeqgmDw6RwidoEHM4
         WjKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBhkpsMZUd+K0mens+MOxL2TZIJ5JXeiQusU268Vk6ahNsSqgTrYY0DVV+16AQiqB2g6kd5CnrDf4k@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4+Eko4B1Q4xpVJ9ruDhxIVE/BYYV4Q12LNBu9h2T8Fv8+08YG
	b213Aw3mcrCP0qAZyXJ2Bs6898PLXxDs9Z8447jKFN9/NgIVdKXUp+/Kag==
X-Google-Smtp-Source: AGHT+IEQiy/xrKWaVqAIUMeAVSlB84ZE8bBKTViAbSYn9QvjbVrK0iE88B1fokuihlvyMJ2UBAPz3w==
X-Received: by 2002:a17:90a:7e91:b0:2e2:daab:cc69 with SMTP id 98e67ed59e1d1-2e76b5dbaf9mr3946085a91.12.1729711620181;
        Wed, 23 Oct 2024 12:27:00 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:248:317f:2ba9:e66c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e76e0877a6sm1837839a91.54.2024.10.23.12.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 12:26:59 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/3] ARM: dts: imx7ulp: Remove incorrect mmc fallback compatible
Date: Wed, 23 Oct 2024 16:26:38 -0300
Message-Id: <20241023192638.1214045-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241023192638.1214045-1-festevam@gmail.com>
References: <20241023192638.1214045-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Per fsl-imx-esdhc.yaml, the correct compatible string for i.MX7ULP is:

compatible = "fsl,imx7ulp-usdhc"

Remove the undocumented "fsl,imx6sx-usdhc" fallback compatible.

This fixes the following dt-schema warnings:

mmc@2198000: compatible: 'oneOf' conditional failed, one must be fixed:
	['fsl,imx6sl-usdhc', 'fsl,imx6q-usdhc'] is too long
	['fsl,imx6sl-usdhc', 'fsl,imx6q-usdhc'] is too short
	'fsl,imx50-esdhc' was expected
	...

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
index b093f2a447ae..3c6ef7bfba60 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
@@ -218,7 +218,7 @@ usbphy1: usb-phy@40350000 {
 		};
 
 		usdhc0: mmc@40370000 {
-			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
+			compatible = "fsl,imx7ulp-usdhc";
 			reg = <0x40370000 0x10000>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
@@ -232,7 +232,7 @@ usdhc0: mmc@40370000 {
 		};
 
 		usdhc1: mmc@40380000 {
-			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
+			compatible = "fsl,imx7ulp-usdhc";
 			reg = <0x40380000 0x10000>;
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
-- 
2.34.1


