Return-Path: <devicetree+bounces-114884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E0F9AD4C1
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 21:27:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9CE69B21BB6
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 19:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 485D11D6DBB;
	Wed, 23 Oct 2024 19:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fNlIi4/6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D333B1AE014
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 19:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729711619; cv=none; b=JosahdoUXefJzO4nFzl8JrCtLSXz0YQ76Cr63TvSFLO3MCRXEJTxzaeYs2p/5njP97jXrH1K3aDV6EyzWuAJXe07Qs72UZVtSsrWNdRUxb+ytYENPEonOJ8PtOe38HbeRTLGbXAjrquJVYkOIBThnnxfa4j2nBJngc4LUM6Gzt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729711619; c=relaxed/simple;
	bh=33voqyc4TLmcbxl6giaAWjh04Z+4AjFGJzickroykX4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SrnfFTvhMTzfkbEKC77AztmJomLJbxhVNYj4T09DXUkrVRv+kfob/RpFfuTygK/rKTMwxBWXgABCMkYEm0G3PlqCTguK0cXjkjPQid1N2ih1seHQ2QYMf2H8zaNappwx4E+WTe7t0z1iWP4xtkQRSp/6NNrJANiCUkSexdwOIag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fNlIi4/6; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20cbca51687so860745ad.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 12:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729711617; x=1730316417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ZZgc7NDi6YlZ282tPqnjhZ3qjRGLRGk4q9ZK0X/XpA=;
        b=fNlIi4/6nzX9Kx3e/rNJV4vDmf+rGtXtbItbeCxne8nxdZ5iDA7uA3+5rIyVGhuC2G
         Kozo5io73jirQBD1LRLmbWLDyJrY8lxi8QrE8VX+dW8wsNfqo8csogSWaGgxbAP13LxH
         ZsC71rChAm6mF00lBnTvyH6WTNztgVXTGh4e6VrzkW7IspA/7jOYaFUrO/JFXbVrFFsn
         W2y+300C8mcEdhJcuF/zy1KsqZxK6k9sXMbcxDKcFssbdvhfzl33weXFA9Xs/dic4ZJa
         mTL9DeTqK+6ErK4WQwp/XiQOdHi7SpGx6bQSp7XjvzyjFnYT63+dcvwlvXBvQVAcex/a
         a7BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729711617; x=1730316417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ZZgc7NDi6YlZ282tPqnjhZ3qjRGLRGk4q9ZK0X/XpA=;
        b=KG0DHyAXGqtX/K/jzgIfbUjjQadgfM9rWrS7SJGb/Rw+vTEhYId0F2NU7oBo+suPyJ
         g5/bDzvyJln2kBRvpolM+nHgmGv/ugtEKAO5UUYHXgAlrAUW+4Jl/+OAozHiKSbCUJkV
         bB8eR41+36It1kex/vshk2MdheudIROSGqzcrdwBFW/7GdHBxaQkPCAlYpcuelwkksQs
         x8kT2hA7oTBiQDJ+9yw32Gwj9/cSPG9KOmQvkezkygz4YFiZDDZA5K9HWGM/8um/8oKw
         jqDGUKy3ZTGFh7eYpU9wPvs7wtIHfuMNbQBMAwUPmcMfHzuUBg9IPskIf7E0CqVlmreu
         np+A==
X-Forwarded-Encrypted: i=1; AJvYcCXual6I4Cvxsxs+cPye4KXU04d2C5c7fodskrI+wJp54w76Qws/ee4yde3qBCBkTS/pbGmGptaKi0JO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2LHrsG9kS2vjILU1DQwr1H3tKeW6E9edjuhmR5t0NIiIobwoL
	1iwcYsgoHkb+GAHXYLhduybc+SC3hH5UnyVLFVY3UPOi0pahhCw/
X-Google-Smtp-Source: AGHT+IE8cfK1Q3ro7s4ioQMLwil46AxPf6iM3nXK71sYBrDHb0MP+dy8N3vAGTBNXN/kiXG3Lo3xUQ==
X-Received: by 2002:a17:90b:3890:b0:2e0:894f:198e with SMTP id 98e67ed59e1d1-2e76b6cdb36mr3930784a91.30.1729711617201;
        Wed, 23 Oct 2024 12:26:57 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:248:317f:2ba9:e66c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e76e0877a6sm1837839a91.54.2024.10.23.12.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 12:26:56 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] ARM: dts: imx6sl: Remove incorrect mmc fallback compatible
Date: Wed, 23 Oct 2024 16:26:37 -0300
Message-Id: <20241023192638.1214045-2-festevam@gmail.com>
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

Per fsl-imx-esdhc.yaml, the correct compatible string for i.MX6SL is:

compatible = "fsl,imx6sl-usdhc"

Remove the undocumented "fsl,imx6q-usdhc" fallback compatible.

This fixes the following dt-schema warnings:

mmc@2190000: compatible: 'oneOf' conditional failed, one must be fixed:
	['fsl,imx6sl-usdhc', 'fsl,imx6q-usdhc'] is too long
	['fsl,imx6sl-usdhc', 'fsl,imx6q-usdhc'] is too short
	'fsl,imx50-esdhc' was expected
	...

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sl.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
index 6aa61235e39e..0883dee72bb6 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
@@ -859,7 +859,7 @@ fec: ethernet@2188000 {
 			};
 
 			usdhc1: mmc@2190000 {
-				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
+				compatible = "fsl,imx6sl-usdhc";
 				reg = <0x02190000 0x4000>;
 				interrupts = <0 22 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_USDHC1>,
@@ -871,7 +871,7 @@ usdhc1: mmc@2190000 {
 			};
 
 			usdhc2: mmc@2194000 {
-				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
+				compatible = "fsl,imx6sl-usdhc";
 				reg = <0x02194000 0x4000>;
 				interrupts = <0 23 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_USDHC2>,
@@ -883,7 +883,7 @@ usdhc2: mmc@2194000 {
 			};
 
 			usdhc3: mmc@2198000 {
-				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
+				compatible = "fsl,imx6sl-usdhc";
 				reg = <0x02198000 0x4000>;
 				interrupts = <0 24 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_USDHC3>,
@@ -895,7 +895,7 @@ usdhc3: mmc@2198000 {
 			};
 
 			usdhc4: mmc@219c000 {
-				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
+				compatible = "fsl,imx6sl-usdhc";
 				reg = <0x0219c000 0x4000>;
 				interrupts = <0 25 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_USDHC4>,
-- 
2.34.1


