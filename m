Return-Path: <devicetree+bounces-76609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A4E90B52E
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 17:50:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38B101F22229
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 15:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32DD91D953A;
	Mon, 17 Jun 2024 15:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ql/KEDIw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7171D9502
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 15:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718638003; cv=none; b=betSsKVFp2jN82IGqFQPRXO1Cfvw0ZGPOZZ1pcgsiKULHaXUV6ZSSS6bhyajNhutGU6l/Bhm5QScriPGgKqLEmTTCif2qMR8LAUpwdMr3Ox4QeTVkq6kn3zOda/8Qax91U3vd5OpgWG81dZgxoDQ07W0RFFylsIpnmHAt79ZFPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718638003; c=relaxed/simple;
	bh=fe0hAV7ALNaaXPDURyyV5f+mGCPo+4ZJTjNHFkb4faY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HZH+8Cz7M+ZlotBWfLF/mZUhWBuk3wd7IHSmn2xJd+qIgI21059iq8afVYg6CNoG0erL2MaTs5/VPS4/Ka56gS7GvXuMiSnMW7Wwx6BA+Uh3xI5LDzlNrHWEWFNcpkDcg4wgN0lK3PZWflou21SnfQ0eiKYsPeocIcoBpi7df/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ql/KEDIw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 881B6C2BD10;
	Mon, 17 Jun 2024 15:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718638002;
	bh=fe0hAV7ALNaaXPDURyyV5f+mGCPo+4ZJTjNHFkb4faY=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ql/KEDIwhYlnCY2yZFGzTa/F2SAokuIHlfjqNaQBGdzycDGXtBYTSLfr6OgNVqw5x
	 mNXAPAl5ZvM8hkiOQOL+BuwHnQXhIzt91R4Fa9Xsy+eTAoD8RQEgf2EHhZW3xwoRVF
	 KN3rqloBvnSffDK5tRbFUOJCbNqJ/ftYVc4NiEN0nD+GFsJDTwewcH7nACgBVeuzrL
	 EF7qXPdPGBzeVN9qQm5sOpzJyQ0h4vtjeKL6MVrEj9PU/vjhVaridAlv6aLbX6NlNn
	 Weznt5CPOFPU57t+vZfL+CkIzXxeRUu56J4UT7Xgw7nhr8ELuxtid69yv4EVkS467H
	 MRIOZvQ18ldBA==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org,
	arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v12 8/8] ARM: dts: turris-omnia: Add GPIO key node for front button
Date: Mon, 17 Jun 2024 17:26:06 +0200
Message-ID: <20240617152606.26191-9-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240617152606.26191-1-kabel@kernel.org>
References: <20240617152606.26191-1-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now that we have the MCU device-tree node, which acts as a GPIO
controller, add GPIO key node for the front button.

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 .../boot/dts/marvell/armada-385-turris-omnia.dts    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
index 59079d63fe27..43202890c959 100644
--- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
@@ -112,6 +112,19 @@ sfp: sfp {
 		status = "disabled";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		front-button {
+			label = "Front Button";
+			linux,code = <KEY_VENDOR>;
+			linux,can-disable;
+			gpios = <&mcu 0 12 GPIO_ACTIVE_HIGH>;
+			/* debouncing is done by the microcontroller */
+			debounce-interval = <0>;
+		};
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "SPDIF";
-- 
2.44.2


