Return-Path: <devicetree+bounces-287789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDr4OLqk4GkEkgAAu9opvQ
	(envelope-from <devicetree+bounces-287789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 10:58:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4E140BEDA
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 10:58:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1F5C3171DFC
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 08:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28204395275;
	Thu, 16 Apr 2026 08:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="Iq5somVu"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06E538F938;
	Thu, 16 Apr 2026 08:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776329715; cv=none; b=pvjX5TMXp4ohwilmmYTClpihM4wjLtoswuDswLufCMbbBTUPSNoVBYaRQeV1hMu1DQGhwyYKMAXn5PlBzpZfyrxATY3a/ypiuLCwn/kFFvJWSQt/DyIpMMjLxIQwcC67oXe0isJtLzBPLj5mzAh2YZ4Q7LJqwAcLLgCf1LSAUCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776329715; c=relaxed/simple;
	bh=5dwFJADDv48q8TA8PHHEBjFP0VQQwZ8DdLYNIrtO1DM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ti5psuCcsz/bkLDB8mJh6tm4+vzTcPaQVipkhkeNd5dfMsXDZRtjnieXfkZc9ooA6c7XhdkbYnovFTbJ2frGthXgWsgz9ZfqGNYKQbWcUSwX9dRDrcS5yKjNs+92udo3wIIaLjOg20FwxdGE0LPvJ3Owy91Rf6S+pMtoY8ioRJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=Iq5somVu; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1776329705;
	bh=5dwFJADDv48q8TA8PHHEBjFP0VQQwZ8DdLYNIrtO1DM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Iq5somVuCyWlQilOgH/ZxtHnN1jxREwHZzBPSmAyaSelKk9tIpqVt/uegn+SV8cwh
	 Md5ztRSjNk2xngY1fIRyh1KvQR+Xgki4+f3IdYnZ+DyYAAYINiz1s3mIyQ0O7mJnbd
	 KlLvvRrbcqICEqPNHRdfFvSNLJb1IHJvoh4DSlHk=
Date: Thu, 16 Apr 2026 10:54:42 +0200
Subject: [PATCH v2 3/3] arm64: dts: amlogic: t7: khadas-vim4: Enable
 Bluetooth
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-add-bluetooth-t7-vim4-v2-3-9a57098fd055@aliel.fr>
References: <20260416-add-bluetooth-t7-vim4-v2-0-9a57098fd055@aliel.fr>
In-Reply-To: <20260416-add-bluetooth-t7-vim4-v2-0-9a57098fd055@aliel.fr>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openssh-sha256; t=1776329703; l=1625;
 i=linux-kernel-dev@aliel.fr; s=id_ed25519; h=from:subject:message-id;
 bh=5dwFJADDv48q8TA8PHHEBjFP0VQQwZ8DdLYNIrtO1DM=;
 b=U1NIU0lHAAAAAQAAADMAAAALc3NoLWVkMjU1MTkAAAAgMGec55oxeeisqykQiUedekMYyOnR9
 BG9E/7rDWyqdNoAAAAGcGF0YXR0AAAAAAAAAAZzaGE1MTIAAABTAAAAC3NzaC1lZDI1NTE5AAAA
 QIXwE2g0xgSsmV0hMeQZGNLsN5zJJxnJdIYbj2GsE+ydRVdwZz4D3k2FSgT+Uoz5xMvr/XOJKQx
 xERIPUljPBwc=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openssh;
 fpr=SHA256:kch4osYZ6A1BrPps5AUs6KnfdE2wm4ocMtyTc8TmZMs
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[aliel.fr];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN_FAIL(0.00)[10.253.234.172.asn.rspamd.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-287789-lists,devicetree=lfdr.de];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:email,aliel.fr:dkim,aliel.fr:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7F4E140BEDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable UART C on the Khadas VIM4 board and attach the BCM43438
 compatible Bluetooth controller to it. The node configures the RTS/CTS
hardware flow control, the associated pinmux, the power supplies (vddao_3v3
and vddao_1v8), the 32 kHz LPO clock shared with the wifi32k fixed
clock, and the GPIO lines used for host wakeup, device wakeup and
shutdown.

Remove clocks and clock-names for UART A, as they are defined in DTSI.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 .../dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts   | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
index 69d6118ba57e7..8ea7ae609fbd5 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
@@ -250,6 +250,23 @@ &sd_emmc_c {
 
 &uart_a {
 	status = "okay";
-	clocks = <&xtal>, <&xtal>, <&xtal>;
-	clock-names = "xtal", "pclk", "baud";
+};
+
+&uart_c {
+	status = "okay";
+	pinctrl-0 = <&uart_c_pins>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio GPIOX_18 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio GPIOX_19 GPIO_ACTIVE_HIGH>;
+		max-speed = <3000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
+		vbat-supply = <&vddao_3v3>;
+		vddio-supply = <&vddao_1v8>;
+	};
 };

-- 
2.49.0


