Return-Path: <devicetree+bounces-95016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D27B957A70
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 02:24:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F0251C22F78
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 00:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A807D33C9;
	Tue, 20 Aug 2024 00:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eqNY+i6y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430C1DDA0
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 00:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724113485; cv=none; b=FlIWqP3ELC1yWYmW828gmO7vyzZDmoEuJPeQ5DKFQp4VnMPFEpt/brfrhAqfPxjHKIu37OYs82ieMGjdt986u+w1hic6wpMy/PSZ6xvD/G7LGq8vxcW4SaB1mIFplgX/SqFVmUHm2pyfM8NiMuGYbch8bDH0fS+n2trjwaeedqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724113485; c=relaxed/simple;
	bh=Yv1SgppAFuR7goHdktq0NA4KV3mYRlZCtmJ6/xzMlKU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RSVIkcg9pFNvmh9im3zZ23GCmzN1n3qJXfKOC2MX5qRBan687fOzBgTJl40zgLhNkFtmvtipwjP/R9Nrat2lglrEMgMz6WmyNVWAX6Ik57XPK/zzQ3NtAaxu7BKUcAey2uXVAVYLEDvq4xQ0AR7r7t0VM/VCAy+BiGk3+qT2SYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eqNY+i6y; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20201433461so1491865ad.3
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 17:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724113483; x=1724718283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jyY7KvfdY8BQUqejSKI0d6l3cGtzDeM4pEyelBoVR8M=;
        b=eqNY+i6yEOzBOk8TYWcrMNcmRd5G98vX513PY063mcDelSm4uTjSYD3/i90wm3stjU
         l9dFo7TPwdaBHgBmtoucG4LSgH17EgDGbv2j9MYVEPJvGwj4TlnQtJK2vNenqBIJbiDq
         38q4X9dWbSBTGMtH7+zT5oM/ufol+zVmNlXk1qbQEecDMiHWVJqTedIXjTcbfVbjRB+Z
         lvFOgGp8Vp+Uft5jYx99kZ/+49Nj2k3vsL6bq4v/hb9fcEdQX3QJSANRXbkqhX1XaKeM
         x6Sgj+ctNh0OHPfzIOGvE5Kflj5WiAET9IoXkbz7z0XZfEPpc0YkveqsBB+VQq9+zTkF
         CH3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724113483; x=1724718283;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jyY7KvfdY8BQUqejSKI0d6l3cGtzDeM4pEyelBoVR8M=;
        b=pHDCwmgpbKH7kyQnASirmYR30Y9AEeZhlciqGLRLxKawF9fZzFegLyCLJoEmAEbzPP
         /4OnrQCqxd9EG+RwJjbNkHPL6Dah8ycIBlqNJdw9CnL4kV8trZI5luRtzJM2ieElWDS1
         f9h5i1mPBemZW6PC8f1KFLCqhQjRp7APyEmPds9rD1NGj3wcWI8BONAiI/1RHnB3JcSu
         mreOPMRdrNeTxBBjqadypJTCqGjkGT3uk7MMAgD/cl06CcVfYyhhNXWRYiiCXldyleUM
         qHyP/NTq/CLmAs3DUJqoxPJRbN+6X2t6f0Ehst2wJjEPBFqHJiroAMSX6MWkgSSPPwTs
         4LLg==
X-Forwarded-Encrypted: i=1; AJvYcCVd7JgbZwMY3hP+mteKdgM7xy55xs5UN9CpEtTDQr+9mhoUc3gTrlcxLYbwy67f8ieUqZ1kDVyLn19R@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9hZPB0xCbMX6VJ3WjfLmZA4zzQQwhcpgdzeCvkjml7DAfIpM1
	Kp2gr2drc5NMUM7no1FhSgUWmp/uXxlU35NSqnj1iCoKMJWYPsnTEpDuCg==
X-Google-Smtp-Source: AGHT+IESaJelozfAIAijBJAYP86Yy1Wl/XlDjoYSD8ZNBJtH7FLy7ntIF9kbH1PJRaohkLNVard2Dw==
X-Received: by 2002:a17:902:c60c:b0:201:e4c9:5e95 with SMTP id d9443c01a7336-20203eeed06mr78838685ad.5.1724113483399;
        Mon, 19 Aug 2024 17:24:43 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9187:7fc0:77bb:926e])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f03b432csm67915155ad.307.2024.08.19.17.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 17:24:42 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx28-apx4devkit: Fix the regulator description
Date: Mon, 19 Aug 2024 21:24:35 -0300
Message-Id: <20240820002435.1411201-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The regulator should not be placed under simple-bus.

Remove it from simple-bus to fix the following dt-schema warnings:

'regulators' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
regulators: #size-cells:0:0: 0 is not one of [1, 2]
regulators: regulator@0:reg:0: [0] is too short
regulators: 'ranges' is a required property

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts | 20 +++++++------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts b/arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts
index f9bf40d96568..4c4ea91c286f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-apx4devkit.dts
@@ -11,19 +11,13 @@ memory@40000000 {
 		reg = <0x40000000 0x04000000>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		reg_3p3v: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "3P3V";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
 	};
 
 	sound {
-- 
2.34.1


