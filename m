Return-Path: <devicetree+bounces-80615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6412B91A10A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:00:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C5B41F225C7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 08:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7AE71742;
	Thu, 27 Jun 2024 07:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b="LLJ1bn/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24328288BD
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719475198; cv=none; b=L0KLbbslrFiWC/Llkky1ozSA8ES2y6eF+/oFUnO0z/Ajd8eANnCnRwmgbNITiiN9AxOfokIJCotAGJnMNhY0U1/cYKdZFoOb/SG1derqU9khGq6krUSZ9DtrYmc7HMT0lJCngPhuQ0gxBomvyrmqZVLxtcDMJ+6PZUxQSpigqDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719475198; c=relaxed/simple;
	bh=NMUcb5zAnzJARTdjp4DhoTn4WuiTBDD1NMODxqHvfD4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m0YfbUnEI4SaxsBr10IoyyGJmeCpautrjXK7OjYLjTSZh+uXIWXUxhjxrGChoHWuhdian3R2hPvdi7Y84coRJQ0stEAkhkhSKu4q9aeyjc4TkdluDmzGW/DSFnXYtgSc3TwEMWc3X5w/eK4g/Og4BUmn7PpqCi64rkc24VXY+5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz; spf=pass smtp.mailfrom=leithalweapon.geek.nz; dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b=LLJ1bn/Q; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leithalweapon.geek.nz
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1faad409ca7so2045835ad.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 00:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bade.nz; s=google; t=1719475195; x=1720079995; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q4DjhfkRszKoe5oPh3mJCAe0ASyt5TfGg8KpZA+jjx0=;
        b=LLJ1bn/Q5wcV//kf1azlvavuL9+RYxT5kV42rA4KylzysVkxVBF44L3vZL/Yc1pCZx
         Lhx8UvxZuY2ZPNQytOSXymRqUeD0zvTrEyQtIl6B1jFfDgMxXhMHxgnT/r+d4dUmyWya
         DMhgu62idPvN76pV4PbF4FbNfsDv4SyAkpXzQjqUV3AcZjkbMpopQ+Hx0OQO+Uvut+qF
         hysHJtwug2Y7SlsUOSCFBCuMqCO5Mt0LSA4OlilNlE3RFVbKD2WTJbKGmD8lP/UUBMnq
         JOs3sg0LSCrxnJ5o0x5Ymk7aCPCNBaoLGAUyZ1PO4YJ7q5h6Q/zMozDEKgpfH1rNAxx7
         Jlyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719475195; x=1720079995;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q4DjhfkRszKoe5oPh3mJCAe0ASyt5TfGg8KpZA+jjx0=;
        b=hgIUMFZDOYPHkQEUrjRE74yvDsAg2CXpsyK1uNkGEErZkwdWaRo4HMAI/OxZB48HCi
         hhYEkNhGRYscrUGz898J/OCIiyk/27IaqsSY44TmlSMCI+zT7POp1CRIjoMohF5M2NJz
         EPOVNBXU/tmEFjiuJoyiS8DQAyH2IRZyBRQSTXh96DMwI5GLfXhONmfbol1cNmro9R4F
         v8bF6PgMjmx0RbgDjEmEYrkmRvik1Daax63H/kEnElA8h8PdahgKdoiRmBvCWprxxz6d
         LkaCSfkLtK6YdTzl34zIoxBRlBOxY2EPVofwperAIYgXDxr+PeU5W1HAyx54KY/mkSiL
         JNtg==
X-Gm-Message-State: AOJu0YzEPZ+NUFlal2zh8OdydnEEbfequJ7l1PD9iQiSynsOhJOhdWQf
	MLNSpWtEtHdHfSw030lIOW/Zz3lPSHf9G3lmzW9lfFB/BUu7TzVwlmTEksPDKTR2j9GUUTTrCAj
	B3LqL
X-Google-Smtp-Source: AGHT+IGFxtbZWAj2r9WPTPIPxXPYFLn109hfACu8p35/RA7zE8bhOqk7d/KHHpV8aS7hPB3fyrSIWw==
X-Received: by 2002:a17:902:c945:b0:1fa:2b11:657d with SMTP id d9443c01a7336-1fa5e671d16mr135158015ad.10.1719475195391;
        Thu, 27 Jun 2024 00:59:55 -0700 (PDT)
Received: from localhost.localdomain ([2403:5816:cd6c:0:6d45:ae2f:1ead:bd58])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1faac9c4cf4sm7181895ad.290.2024.06.27.00.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 00:59:55 -0700 (PDT)
From: Leith Bade <leith@bade.nz>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	frank-w@public-files.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	didi.debian@cknow.org,
	Leith Bade <leith@bade.nz>
Subject: [PATCH 3/4] arm64: dts: mediatek: mt7986: add missing pin groups to BPI-R3
Date: Thu, 27 Jun 2024 17:58:55 +1000
Message-Id: <20240627075856.2314804-4-leith@bade.nz>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240627075856.2314804-1-leith@bade.nz>
References: <20240627075856.2314804-1-leith@bade.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The uart0, mdio and switch nodes are not connected to pin groups unlike
most of the other nodes.

Signed-off-by: Leith Bade <leith@bade.nz>
---
 .../dts/mediatek/mt7986a-bananapi-bpi-r3.dts  | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
index 2cccbec39d34..54087001cc8c 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
@@ -194,6 +194,8 @@ gmac1: mac@1 {
 	};
 
 	mdio: mdio-bus {
+		pinctrl-names = "default";
+		pinctrl-0 = <&mdio_pins>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 	};
@@ -206,6 +208,8 @@ switch: switch@31 {
 		interrupt-controller;
 		#interrupt-cells = <1>;
 		interrupts-extended = <&pio 66 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&switch_pins>;
 		reset-gpios = <&pio 32 GPIO_ACTIVE_HIGH>;
 	};
 };
@@ -335,6 +339,13 @@ mux {
 		};
 	};
 
+	uart0_pins: uart0-pins {
+		mux {
+			function = "uart";
+			groups = "uart0";
+		};
+	};
+
 	uart1_pins: uart1-pins {
 		mux {
 			function = "uart";
@@ -349,6 +360,20 @@ mux {
 		};
 	};
 
+	mdio_pins: mdio-pins {
+		mux {
+			function = "eth";
+			groups = "mdc_mdio";
+		};
+	};
+
+	switch_pins: switch-pins {
+		mux {
+			function = "eth";
+			groups = "switch_int";
+		};
+	};
+
 	wf_2g_5g_pins: wf-2g-5g-pins {
 		mux {
 			function = "wifi";
@@ -471,6 +496,8 @@ &trng {
 };
 
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
 
-- 
2.25.1


