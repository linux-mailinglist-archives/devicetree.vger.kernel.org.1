Return-Path: <devicetree+bounces-293238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNqUFvko+mngKQMAu9opvQ
	(envelope-from <devicetree+bounces-293238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 19:29:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D1E4D2035
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 19:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E2E82300E48B
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 17:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2067E4A2E15;
	Tue,  5 May 2026 17:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG+WlmF8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A1348B396
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 17:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778002154; cv=none; b=qZETHEhbe+VFVAUaCEfqLqnkEDTA+n/mAfndpH8tu0PS++/4WxdLfnNuUkzehGIhebusD6ijxWeqr0cTTGltZJiIFucZS5587QXJrtChcbT5YDsp9xllnq/islpC4qhR4CmGezpNzrP0Od9cUnWNSNYMUt9SC1MLLyRNwA2xT5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778002154; c=relaxed/simple;
	bh=a2VxScLn6dlcb/B5AXY9SHUXcMy7dE/2xkJkiH/Eh64=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qEXNwoybXxbNOje9VK8JcOdw5/CBn3EOjVueYS2KuYylDQVhB+tYku3LC8MBhH7nOZT+OCznxnkJZFX9ZON58j3GyPlFUEa6MmEa8SIp2bnk9iwg0UI2WJB9ddk4n4CPf6EXYoaZvUetROLoO7t1gqfDytGka0DDGwEkhu3V5Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG+WlmF8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A70FCC2BCB4;
	Tue,  5 May 2026 17:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778002153;
	bh=a2VxScLn6dlcb/B5AXY9SHUXcMy7dE/2xkJkiH/Eh64=;
	h=From:To:Cc:Subject:Date:From;
	b=GG+WlmF81wNTntNhmwTh+yozRh7WXzFRPrLxFe5qtm8PDNgQQ7GMWVQkCL0zAoOGj
	 UkPotkAd/zlKhVaS1zZb9ZKKvsvuizmVFUUKc9sP3d8DB+V8+tbkXsG7/378gegIQK
	 6+SgiH8AOiMdlyzQsyMYY7LscWi0kvKqD1yPLEBl2xBKuEqU5Czz6JRYIoubzsTssC
	 JIz7YBmDStHS/iurX91bFDcZ6sETLo6JZSks3LvPQphOtkEfgVWODbSRJTQkeomn2H
	 ZS7V/pnYFMNh8i1RbEUfSxV7rgjbVioCIc+2mj1FFeDnJvknwvFM9LYsnlJxdgqllg
	 nAeWRu7l8G3cg==
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399-nanopi-r4s: Disable removed devices
Date: Wed,  6 May 2026 01:29:02 +0800
Message-ID: <20260505172903.33271-1-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 58D1E4D2035
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293238-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

While the design of the NanoPi R4S is based on the common NanoPi 4
family, it is trimmed down a lot.

Disable all the peripherals on the SoC that are not used, and delete
all the external components that are not present.

Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dtsi  | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
index 3a9a10f531bd..4274d1b6e80a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
@@ -66,16 +66,41 @@ &emmc_phy {
 	status = "disabled";
 };
 
+/* No USB type-C PD power manager */
+/delete-node/ &fusb0;
+
+&i2c1 {
+	status = "disabled";
+};
+
 &i2c4 {
 	status = "disabled";
 };
 
+&i2c7 {
+	status = "disabled";
+};
+
+&i2s2 {
+	status = "disabled";
+};
+
+&hdmi {
+	status = "disabled";
+};
+
+&hdmi_sound {
+	status = "disabled";
+};
+
 &pcie0 {
 	num-lanes = <1>;
 	vpcie3v3-supply = <&vcc3v3_sys>;
 };
 
 &pinctrl {
+	/delete-node/ fusb30x;
+
 	gpio-leds {
 		/delete-node/ status-led-pin;
 
@@ -101,14 +126,21 @@ reset_button_pin: reset-button-pin {
 	};
 };
 
+&pwm0 {
+	status = "disabled";
+};
+
 &sdhci {
 	status = "disabled";
 };
 
 &sdio0 {
+	/delete-property/ mmc-pwrseq;
 	status = "disabled";
 };
 
+/delete-node/ &sdio_pwrseq;
+
 &u2phy0_host {
 	phy-supply = <&vdd_5v>;
 };
@@ -119,12 +151,48 @@ &u2phy1_host {
 
 &uart0 {
 	status = "disabled";
+
+	/delete-node/ bluetooth;
 };
 
+&u2phy1_host {
+	status = "disabled";
+};
+
+&usb_host1_ehci {
+	status = "disabled";
+};
+
+&usb_host1_ohci {
+	status = "disabled";
+};
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
 
+/delete-node/ &vbus_typec;
+
 &vcc3v3_sys {
 	vin-supply = <&vcc5v0_sys>;
 };
+
+&vopb {
+	status = "disabled";
+};
+
+&vopb_mmu {
+	status = "disabled";
+};
+
+&vopl {
+	status = "disabled";
+};
+
+&vopl_mmu {
+	status = "disabled";
+};
+
+/delete-node/ &bt_host_wake_l;
+/delete-node/ &bt_reg_on_h;
+/delete-node/ &bt_wake_l;
+/delete-node/ &wifi_reg_on_h;
-- 
2.47.3


