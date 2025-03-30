Return-Path: <devicetree+bounces-161817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BABA759F6
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 14:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 286141681C1
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 12:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F2241C84CF;
	Sun, 30 Mar 2025 12:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="FA6g00eW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4924213665A
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 12:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743336868; cv=none; b=UhiZKE8AIV8cKt5pjGgIA8Vn8VeuN/zOQh4wPDUhhL5ES8myCpL+LK5wm3cmzhWZXfIiQgyU7OIm9QBz3fOxrsl9LPOOqZq66ykVIn63RfN1pUho1CypryU2caQXsJsVPou1dZzkrCDW57+1wn/JVrdnBosJ3xjZz4WGjtMY6JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743336868; c=relaxed/simple;
	bh=qW3vR+dS1IUTKdlJCGJqgmHFBh5EkH3C1oTQjxTFd8A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i63ykedZ4F+ELMy+BMpDjUGSg1BEainTJOif+Um8YvQA5lREU63gWrBHr7dFT2J+ByNJKpnYoGiRSeJSpONuCm6Q+TF/NWpHmvWCs6kr9smJaNjeJhFxcsUH3DZIoAy0UiRpTVPix/+rYGg0cSE+vd2SeIusEb8xNq4ILilUqEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=FA6g00eW; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=WwJhni5/5Bwr5fJgMYHBreJV2sFccs1GFIX3R6qhvEw=; b=FA6g00
	eW0oW5XhVpYFDk3DaLerrM1NuDMRoUdNvMJQS0EHbscumIPDsjfBkshE3SYIncfm
	CiltdblvvlqgB8CYZjxBao7Zw9ghF2/EPizCV+PIA6irjGsi+gFbk0c9LnHMW+B0
	RudyMP3WHYb0LMW0ole/SqroAT/AzDfW89JWykLDMvdD8w1rsyIihIUfnzde9Qie
	EzWC+pMvKt8M/MY+P6pq8maJTqr9F/h6NdhIvS/3HZlzOlDtjlg6kUJC5aomD6CX
	XgvNMnacaa4lQvEwVZSSibRnBMxCkbuMLZCX1scf5vAAg/uik0rFDRKaHPmZfG7p
	Mk8VhSDk+EI7n2Fw==
Received: (qmail 855931 invoked from network); 30 Mar 2025 14:14:24 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Mar 2025 14:14:24 +0200
X-UD-Smtp-Session: l3s3148p1@cmCAPo4xgExtKjBa
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Alexey Charkov <alchark@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 5/5] ARM: dts: vt8500: fix faulty ohci/ehci node names
Date: Sun, 30 Mar 2025 14:13:28 +0200
Message-ID: <20250330121326.9069-12-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250330121326.9069-7-wsa+renesas@sang-engineering.com>
References: <20250330121326.9069-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They should be named "usb@".

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


