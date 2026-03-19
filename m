Return-Path: <devicetree+bounces-277901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIQ2JpEnvGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:42:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F036A2CEFFB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66CB73307095
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8141F3ED5CD;
	Thu, 19 Mar 2026 16:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhyCW1sN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71A932571D;
	Thu, 19 Mar 2026 16:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937907; cv=none; b=KmSTjyJhH61Pu/WKxFD+a4goxOJGmF0DX8RSOfqhi7Qf7w719CEYjMURSgOgD/XFHbZEGHvH9h+SgI00+kbS4hNyjnkEIbhC/Pt0qYycs8KXWikcy1xqrpOfVGVvhcPalRfLOkQhEb9qqoNBSSs2OkwD54gt0efYjFSN7fVVb48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937907; c=relaxed/simple;
	bh=LC8AGvhNSfBeDV4o59HbCCsVMWiNjfa7P4YQigFlTdM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GbbnsfixbcroatQkMfZ8L1gSBxJNk1GHdWjkN9hgqq53zQz98vgAibUNPq7FOT4AmRQhpOQGRp2vMDUIIoLdAhssRTvF8MrUg6YXCxK4s/U0q23osgyUoQ5TJS+s+NtrDNChpyzLmzReQ/I93g72nfmx21naSdTHXklp6aueo3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhyCW1sN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72461C19424;
	Thu, 19 Mar 2026 16:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773937906;
	bh=LC8AGvhNSfBeDV4o59HbCCsVMWiNjfa7P4YQigFlTdM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OhyCW1sN1z5Q3uaF5X4vFd6sxFqeq/n7jBmC/O/sc58EkDceOx+LPFuTxOfhReu8O
	 uKeNisq8vpM+lyXP0txjOjPckf83/xYwsj7skedhFSnk99LAK4OG+kkN7g0TbJ8Fgz
	 QH4F3DF8DdBvkAB+6nRFbUDfBns0wdX2utiO7gr3o8rxrUMqGg58APPQiqQIMjop+g
	 93JA6GraGVFPyTD4kp/Ip9Sx0vjkj1fsBpDz2EMiR/QcqhyaxzRKb5X2SIUYnGa0E0
	 ulkCovsLTIKSzhVHuVnnHOPDA0vciBTDZllYuaXRPFZmEuxVud0zGTasGAt6UazIUr
	 NpubKHYSh+7+A==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Valentina.FernandezAlanis@microchip.com,
	Brian.Burke@microchip.com,
	cyril.jean@microchip.com
Subject: [PATCH v1 2/5] riscv: dts: microchip: remove gpio hogs from beaglev-fire
Date: Thu, 19 Mar 2026 16:31:16 +0000
Message-ID: <20260319-prorate-groove-c55784a89775@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260319-outsell-hypnotic-94b480408ad4@spud>
References: <20260319-outsell-hypnotic-94b480408ad4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1837; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=gl16q2VnxS62lKXakjgLtV797OjjPaUC6kdaGQx5NmU=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJl7VK5Mn7v5VtCP2Abzf80XLC94B23YMX3Lry0SEe0X4 17kbjN811HKwiDGxSArpsiSeLuvRWr9H5cdzj1vYeawMoEMYeDiFICJhHMyMvR6TfzQIqxoO6OD TS5l8pWk4DjVZX6ur1uS6w9xFSV9uMvwP/vPh/APTnUC64tsGfXOxYUqJa+4ql6aM+HRhhWhbFm LOQE=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277901-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: F036A2CEFFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Conor Dooley <conor.dooley@microchip.com>

sd-det-hog should be cd-gpios, but when the mmc-spi-slot was added, the
"cd-" prefix was omitted and the collision with the hog was not noticed.

vio-enable-hog is just a regulator that can be modelled as such.

Fixes: 1088d49b62648 ("riscv: dts: microchip: enable qspi adc/mmc-spi-slot on BeagleV Fire")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../boot/dts/microchip/mpfs-beaglev-fire.dts  | 25 ++++++++-----------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
index f44ad8e6f4e49..2c0a420d89ff0 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
@@ -77,6 +77,15 @@ imx219_vddl: fixedregulator-2 {
 		regulator-max-microvolt = <1200000>;
 	};
 
+	regulator-1v8-syzygy {
+		compatible = "regulator-fixed";
+		gpios = <&gpio2 30 GPIO_ACTIVE_HIGH>;
+		regulator-name = "syzygy_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		enable-active-high;
+	};
 };
 
 &gpio0 {
@@ -118,20 +127,6 @@ &gpio2 {
 			  "P8_PIN27", "P8_PIN28", "P8_PIN29", "P8_PIN30", "M2_W_DISABLE1",
 			  "M2_W_DISABLE2", "VIO_ENABLE", "SD_DET";
 	status = "okay";
-
-	vio-enable-hog {
-		gpio-hog;
-		gpios = <30 30>;
-		output-high;
-		line-name = "VIO_ENABLE";
-	};
-
-	sd-det-hog {
-		gpio-hog;
-		gpios = <31 31>;
-		input;
-		line-name = "SD_DET";
-	};
 };
 
 &i2c0 {
@@ -287,7 +282,7 @@ channel@7 {
 	mmc@1 {
 		compatible = "mmc-spi-slot";
 		reg = <1>;
-		gpios = <&gpio2 31 1>;
+		cd-gpios = <&gpio2 31 GPIO_ACTIVE_LOW>;
 		voltage-ranges = <3300 3300>;
 		spi-max-frequency = <5000000>;
 		disable-wp;
-- 
2.51.0


