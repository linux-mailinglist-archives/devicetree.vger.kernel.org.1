Return-Path: <devicetree+bounces-81892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA00991DDEB
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:30:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB5681C2245A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 11:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E246813DBB3;
	Mon,  1 Jul 2024 11:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYjixNMV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD07613D53D
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 11:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719833452; cv=none; b=BPj5kb7LS8ysu9vGC4b4Ar5+MObnYp0J4EHnMRIgHlLkzTgJ6rnOcOQtY/iPYYK2XQiHZQVw0N0SbruPOJanD/ptacu9r24I1+AHzfBKxpmVGc9GN50JSI9EkBZcZei+N3TgK4dLovG1EGYn99v3HrhmjFya3S8Ej/2OkBChung=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719833452; c=relaxed/simple;
	bh=fe0hAV7ALNaaXPDURyyV5f+mGCPo+4ZJTjNHFkb4faY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VQUkWupCOC0fuws6oAMsaBCuG/qltxhRQcswWR5cGltis9mniR2WXqdfbrIHe4o5SmLV0c4j1+R3S4Jf/97KCN7JiAMxtlKNBi8OG7g9P++TD6fTry7Vgp7HP57aS49DdPltoER9CMr8L2KUMKio2b0jWGbofcMsi+hHSHHCofE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYjixNMV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29FF9C32786;
	Mon,  1 Jul 2024 11:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719833452;
	bh=fe0hAV7ALNaaXPDURyyV5f+mGCPo+4ZJTjNHFkb4faY=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aYjixNMVCXEdCyd5ttXVvy6wambd51K4Ee4r7Cse1TcxJE37qLslx5SkAxmNXSzY6
	 8m06QJeC8j3G2gISnZIverCU3ExG8K+CmFyB2LEM2p1MV7gm/Kurk2BJfco/3KU7gE
	 7Dc+MWcYfq17xaR96muZgEOn/nNjCg5kkhpBN2qLUV8tzZ1mAvS0aVGUcR73n7ISGZ
	 4mKL1E40HQRB3pi0VjZzRae2Du+aISwTD7gdmgCDAffACj0d/sKUI99DnMXU4gL7J6
	 Ne0fvbvkjBRL2R4rjyWPENAxDq1IDSRkMeEOUi1KmFVa+Zgakw9OTnHJqoa61JnvMo
	 e30HfyMksXhtQ==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
	arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v13 8/8] ARM: dts: turris-omnia: Add GPIO key node for front button
Date: Mon,  1 Jul 2024 13:30:10 +0200
Message-ID: <20240701113010.16447-9-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240701113010.16447-1-kabel@kernel.org>
References: <20240701113010.16447-1-kabel@kernel.org>
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


