Return-Path: <devicetree+bounces-116664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 028339B38BF
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 19:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A7A31F22AE4
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 18:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876DE1DF720;
	Mon, 28 Oct 2024 18:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TLaYukhd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A341E1DE889
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 18:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730138964; cv=none; b=kbd2PBJLjWMm46etSIpqcTqJVlCpOzDjUlDLuWXcFBINn+Z6gsnGwkU06jxACWLmXr2fZbGYAtGzWOeXVX4EBWbgHmiA/Y2x7RjEH0X+o5MC1rGOBvl7Oeq4isDunafxXZ+j3ldNrluJpn+6NlkIBzgO1JE1Iz+Ntfj5GTZh/Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730138964; c=relaxed/simple;
	bh=aYF7DphdhzZk+tP6NwU4u2f9RMs1X5zWIo/39nUL8og=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=luoP6jFTaDxHEQTQnaAo4W6BnzVKatQbE6wrgV3zuAg3CsdgdxfUPy5SyCJsYtUla+TJsDs4D0fnvI8QSHrD7QRSarRmHDUuf0k5qFL0baKeGoAXzw14Vq4Vog8fUuHZ2JwO+KH8z/LqmuOHhZUuesCfuWYvudQzjXMEwJXDUfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TLaYukhd; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2e2b9480617so3658470a91.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730138962; x=1730743762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UGG5X0yybapnwgmSNjPP2ZTIazkkUBze7cfeSlPaqKw=;
        b=TLaYukhduJqX1Xt+N0IAEq4d3vVtqVhAkCE13Q6+3fN5LS+w46WVB2pOkoPJdisdNO
         LuOOpKmY7wlyGimEfcQkGNZcRjMvXxTcXrbKtHAQzeZZsuJzI7T9Ki1pF3SDMyUVNOcy
         A9xz+/fiYsQe6hvW9Y0JK1BQ0w0MFf5PTdv/1PHY1+3NJEM4SkarmbEBU25i/CuuD06R
         KdHwyVbcE/HIPNjHKOLpL9F4KvuVha7BH17gdJ6MgNKefigImiZBda6eucgSrcMM4oT0
         ggJ/PnVHxTg/58OzHFjwg+euNJts+hqZy76hA+YOCr8naBzFgmGPLEVn/dv5MPhpMx9m
         dk9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730138962; x=1730743762;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UGG5X0yybapnwgmSNjPP2ZTIazkkUBze7cfeSlPaqKw=;
        b=nSgQpUxiEa8Kj7UoLLgJJVYdgaTqzK04qS46Hl75xiBRL2qcaopYLXmLR5Q4cbsR4r
         +zTqRpLg8ywdqPICaaZMY/o7bijUViPaUXZqrij/AHyLCm6fYZ9JJQDvyKxNB0W5qTPs
         e9SkPUxoK6EN6+2TkUYIEVsX7UrvpuOPEG3J+fDq+VuFyRqcoSsYJ+wl4BFsh6q0Zzso
         yH778nb+n7GAqZxH1+3DPktdVMzLTsLaGKofzH6ONk38/ud+ceZjyu3RYdDF1FSsoF2o
         r9lVaST6kDKAUuhpfeeJJcFcHDoU5Tz9+nMH0rJ8lLSmc9QQsjja0HYiihVq6KpAy6c+
         R4Lg==
X-Forwarded-Encrypted: i=1; AJvYcCWBLmO4dCy1+Dxsh2R8pPKsOPZXk/gbRXtcgkU/S4rbMh0CAPL6MxAKBCSFI6Td0OQy9fnkmrbdE0gn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy6AL9jvfe379DtbQhnYvirivMOVd+CWBTxDSqqcgq36jleFHT
	2EBluxHEWCYqPkCP7WS+EgVCPRi0h/lTLHsk6xWDCGItiTs7DO8Z
X-Google-Smtp-Source: AGHT+IFwLZKrhb4CCtfrwaROp/UzNVA+c8FepE7KZrzTAdYxYuZwqx98BKpaRPPTEhyUAxG8NTFaTA==
X-Received: by 2002:a17:90a:4b08:b0:2e2:bad3:e393 with SMTP id 98e67ed59e1d1-2e8f104f1d4mr10710044a91.3.1730138961890;
        Mon, 28 Oct 2024 11:09:21 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:325c:8d87:ee5c:f04e])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e8e3572efbsm7690441a91.22.2024.10.28.11.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 11:09:21 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	andreas@kemnade.info,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: imx6sl: Fix lcdif compatible fallback
Date: Mon, 28 Oct 2024 15:08:43 -0300
Message-Id: <20241028180844.154349-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,lcdif.yaml, the correct imx6sl and imx6sll lcdif
compatible fallback is 'fsl,imx6sx-lcdif'.

Change it accordingly to fix the following dt-schema warnings:

['fsl,imx6sl-lcdif', 'fsl,imx28-lcdif'] is too long
['fsl,imx6sll-lcdif', 'fsl,imx28-lcdif'] is too long

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sl.dtsi  | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
index 6aa61235e39e..c213f48382d5 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
@@ -773,7 +773,7 @@ epdc: epdc@20f4000 {
 			};
 
 			lcdif: lcdif@20f8000 {
-				compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index d219c2b67294..156cba79268b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -660,7 +660,7 @@ pxp: pxp@20f0000 {
 			};
 
 			lcdif: lcd-controller@20f8000 {
-				compatible = "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sll-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_LCDIF_PIX>,
-- 
2.34.1


