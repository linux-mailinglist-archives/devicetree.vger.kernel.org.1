Return-Path: <devicetree+bounces-67741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BADE8C98E1
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 08:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 875FE1C20E12
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 06:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5F914285;
	Mon, 20 May 2024 06:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cG04EhBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCB410958
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 06:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716184955; cv=none; b=HrPkch1xBHSb550PXA+XdHN+6NrJkgBE43erMBKwD+XxHniVbiqUab0NQFabHqVVYvUp1+bjPjc5M2iSLPwpxI8gsfKSWIVgypnbdf37Y3f3nZKOiu0mIC1Ilqjw3RC49EmlvbhEQHLdaTfmrHZTf2oOU/HFL1sRKf2sgPQmZXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716184955; c=relaxed/simple;
	bh=Kk+hKlkm8j3/4MUcgS0+ybEk+JXXrdmv8W1xFjpJZeI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=UiVDMmNZOB4gcuOIUuNRhSAPW9RMML1IC7OWBZR9j5pC/IWc/TuJUBOj+PV9EWJBxmCFZfCXVsPT9II3851wdKdfRwcKVnd6KssgslC1toITqaTJpf9775qzPW+gkX2yqB3cs3p1JAx7g6NM8kCx1Zc61boKML5soZoZLRVQBhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cG04EhBC; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51f0f6b613dso5003173e87.1
        for <devicetree@vger.kernel.org>; Sun, 19 May 2024 23:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716184951; x=1716789751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1LQlzhEzOG8t8n4JgFMN8rtNdoenYFCDtUlbUryUBdc=;
        b=cG04EhBCQpZ6tLosO8BVGMFkQNMdqYkEEuK+6G8KAgnh9TmhKD4K99+TukUpxuC66i
         EMGwKSXJx3fRBUe2gyzoPZI8MQDEMb0a518W2qd80kFsRFOXAcwgWq5UWwb+NszGlXyL
         mA2Cxh3McPELDO5EtqFPvMC7JG5uqoYRcFD598oh69lOdpSEOSViGPUfRyxTG7OcwZ19
         8ABe886gGFtlTFMQQg0Nbana9DSo/a6wNgPF22xx+9dFTuFJz3oLxEZVBPfLfmXr8GL+
         nCM6Fal+oUNMJ4GvZrptjPGHg8hasT5NyfAjondwHcP5VVmOECy7xkcRM6MZXW46tDYb
         t+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716184951; x=1716789751;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1LQlzhEzOG8t8n4JgFMN8rtNdoenYFCDtUlbUryUBdc=;
        b=k8wHkjAYRtAnfxiNGZridKJ4QUd2ikM1iD3ZYNOQiAYXRzNRZuY19XP5MqvDI7fEHm
         vuLOiXjyxlmQXyrny1S22ZzCUS5HZaFa39LsMvvRXJsdz38w4dUcE5v/yB6OIlIQeaif
         2WW+ugnpkORk601lriubsgM703bX4wXCCBbcvNNaPX8yOXIb5isRqJAOTkQvE/jzcrjL
         RAFcxg8ipjIF6fuQOeWGE7Q0+x94iDmW7g1pxgVxKEYSYk388RP5fwnSgaPK4TQIv+Sq
         zhgCQEeyWChHnKbqZWMTEv+CPPNOotD0n93SagTnzEnjXLbVmHCGaqQELHBx+4ByEQ3Z
         0INw==
X-Forwarded-Encrypted: i=1; AJvYcCXNPch9j1MJK0hKiXkFJO/4qoL5D5R2qopU7CDSHLxHbbZ5h3fdgJOhnc9hezFgy5rx20zMhmW24t/1UBXZhFQXlBo0nttmSfmRNw==
X-Gm-Message-State: AOJu0Yx1h2+900P/k7DG4ixoJJLJCZ0xkjkUKSj/KKYWzDDjFmAcJ9PX
	B9ZkbhepO+PioRfa2cDdzZsSkkLnKLSULWF/OMqbyEiW9kAjxyUA
X-Google-Smtp-Source: AGHT+IEUMxwsdn95GJ80iOIBJ473ZyoaAkcwkF09a1jEP5o+o5PJFPWaXYkUTeHTv6cakuKO48xQ/A==
X-Received: by 2002:ac2:5f89:0:b0:51f:6a38:be0c with SMTP id 2adb3069b0e04-5220fc7d370mr17303695e87.22.1716184951262;
        Sun, 19 May 2024 23:02:31 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733c323887sm14759024a12.89.2024.05.19.23.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 May 2024 23:02:30 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: nxp: imx6: convert NVMEM content to layout syntax
Date: Mon, 20 May 2024 08:02:22 +0200
Message-Id: <20240520060222.2980-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Use cleaner (and non-deprecated) bindings syntax. See commit
bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
details.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi | 12 ++++++++----
 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi | 12 ++++++++----
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
index 238f3af42822..807f3c95e3ce 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
@@ -22,12 +22,16 @@ m24c64_57: eeprom@57 {
 		compatible = "atmel,24c64";
 		reg = <0x57>;
 		pagesize = <32>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 		vcc-supply = <&reg_mba6_3p3v>;
 
-		mba_mac_address: mac-address@20 {
-			reg = <0x20 0x6>;
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mba_mac_address: mac-address@20 {
+				reg = <0x20 0x6>;
+			};
 		};
 	};
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
index a587bc88f76f..789733a45b95 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
@@ -32,12 +32,16 @@ m24c64_57: eeprom@57 {
 		compatible = "atmel,24c64";
 		reg = <0x57>;
 		pagesize = <32>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 		vcc-supply = <&reg_mba6_3p3v>;
 
-		mba_mac_address: mac-address@20 {
-			reg = <0x20 0x6>;
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mba_mac_address: mac-address@20 {
+				reg = <0x20 0x6>;
+			};
 		};
 	};
 
-- 
2.35.3


