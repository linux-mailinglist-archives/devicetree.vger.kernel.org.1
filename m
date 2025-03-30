Return-Path: <devicetree+bounces-161860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3662A75BFB
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 21:39:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62F5F167C0B
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 19:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7AE1C3BEB;
	Sun, 30 Mar 2025 19:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="B8kz23t8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3BD8F4A
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 19:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743363559; cv=none; b=A+HWiuoSvbds4E7rCwPp3/VC13L26VwhQOAz6yhY2sEU/60MLdNzu3rFr9Gq2zEAMcSORWHZlCqY0FOYsk6WL9tLcBsVB+ev0LoK5tA/nl/YpsIaL2z1J7BcmXId6YFZoXeVloDAghSZMwJeIw2yt3leikKxvjx7bhKtLLJioPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743363559; c=relaxed/simple;
	bh=QlLRzmLyw5y2TgEAjoVTY600UJ/36qrZ0O4pxCPWtWA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qM0CRQdlYVdtvW2LG7V23BUIbFNkndNjFJJGDqCuJCpTj6DRZdZCODn9trMtPhnNVBrXfH0/Y/+09/fu/3C3tCmhi9J8tfNBUYPN7+2XwYlh3flUOq1vPeMoNwRzSmWKqXPcKYHqtVm9zaoaDsxWVX4AzEI9br/wCj740c9TAjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=B8kz23t8; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=mSMSevEquPmIXFY3ygGy/B0TyHq4Oq06KRAtU/3yieY=; b=B8kz23
	t8UDQP+FLmWHJf+SCP+e5KSY805+BZqdlT8K2d790fPrrQANQTJ5zU38Hqy0jqIf
	8qNlvhxYn+0rXq2looAXsiBTisC1Lz1U/ONFf1P+epIVBlM/kLbfEy99cOuZY/cm
	IBsL4hl+z4gIAWgGxSSyE+iP8FjK1A3pVXLKTWnu9Vxgu8o2QBJKylROZmP+GWZo
	bXs+99SI5Jgj7LsYWWueby4tSAHEa6fobxrfWLPuTeoskCi9U5adYdB0ft+ZKUqY
	y8g6V90BJHapoPyLJWd/sp3oKlus/sA/hrjRM1Hg+fW2c1uCFl7tWR/8MTSKF9KZ
	ePTIwPKuOm0zx79w==
Received: (qmail 964949 invoked from network); 30 Mar 2025 21:39:09 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Mar 2025 21:39:09 +0200
X-UD-Smtp-Session: l3s3148p1@TXwSdZQxCKxQ8qei
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 5/5] ARM: dts: vt8500: use correct ohci/ehci node names
Date: Sun, 30 Mar 2025 21:38:36 +0200
Message-ID: <20250330193833.21970-12-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
References: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They should be named "usb@".

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/vt8500/vt8500.dtsi | 2 +-
 arch/arm/boot/dts/vt8500/wm8505.dtsi | 2 +-
 arch/arm/boot/dts/vt8500/wm8650.dtsi | 2 +-
 arch/arm/boot/dts/vt8500/wm8750.dtsi | 2 +-
 arch/arm/boot/dts/vt8500/wm8850.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/vt8500/vt8500.dtsi b/arch/arm/boot/dts/vt8500/vt8500.dtsi
index f23cb5ee11ae..09f5ed3e6821 100644
--- a/arch/arm/boot/dts/vt8500/vt8500.dtsi
+++ b/arch/arm/boot/dts/vt8500/vt8500.dtsi
@@ -109,7 +109,7 @@ timer@d8130100 {
 			interrupts = <36>;
 		};
 
-		ehci@d8007900 {
+		usb@d8007900 {
 			compatible = "via,vt8500-ehci";
 			reg = <0xd8007900 0x200>;
 			interrupts = <43>;
diff --git a/arch/arm/boot/dts/vt8500/wm8505.dtsi b/arch/arm/boot/dts/vt8500/wm8505.dtsi
index d9e1280372c5..c81810b967bb 100644
--- a/arch/arm/boot/dts/vt8500/wm8505.dtsi
+++ b/arch/arm/boot/dts/vt8500/wm8505.dtsi
@@ -207,7 +207,7 @@ timer@d8130100 {
 			interrupts = <36>;
 		};
 
-		ehci@d8007100 {
+		usb@d8007100 {
 			compatible = "via,vt8500-ehci";
 			reg = <0xd8007100 0x200>;
 			interrupts = <1>;
diff --git a/arch/arm/boot/dts/vt8500/wm8650.dtsi b/arch/arm/boot/dts/vt8500/wm8650.dtsi
index 35d12d77efc0..555008120a3e 100644
--- a/arch/arm/boot/dts/vt8500/wm8650.dtsi
+++ b/arch/arm/boot/dts/vt8500/wm8650.dtsi
@@ -179,7 +179,7 @@ timer@d8130100 {
 			interrupts = <36>;
 		};
 
-		ehci@d8007900 {
+		usb@d8007900 {
 			compatible = "via,vt8500-ehci";
 			reg = <0xd8007900 0x200>;
 			interrupts = <43>;
diff --git a/arch/arm/boot/dts/vt8500/wm8750.dtsi b/arch/arm/boot/dts/vt8500/wm8750.dtsi
index b292f85d4e69..309f6e5129fb 100644
--- a/arch/arm/boot/dts/vt8500/wm8750.dtsi
+++ b/arch/arm/boot/dts/vt8500/wm8750.dtsi
@@ -251,7 +251,7 @@ timer@d8130100 {
 			interrupts = <36>;
 		};
 
-		ehci@d8007900 {
+		usb@d8007900 {
 			compatible = "via,vt8500-ehci";
 			reg = <0xd8007900 0x200>;
 			interrupts = <26>;
diff --git a/arch/arm/boot/dts/vt8500/wm8850.dtsi b/arch/arm/boot/dts/vt8500/wm8850.dtsi
index c61717ebb4f1..3f4a514d65e2 100644
--- a/arch/arm/boot/dts/vt8500/wm8850.dtsi
+++ b/arch/arm/boot/dts/vt8500/wm8850.dtsi
@@ -238,7 +238,7 @@ timer@d8130100 {
 			interrupts = <36>;
 		};
 
-		ehci@d8007900 {
+		usb@d8007900 {
 			compatible = "via,vt8500-ehci";
 			reg = <0xd8007900 0x200>;
 			interrupts = <26>;
-- 
2.47.2


