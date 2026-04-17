Return-Path: <devicetree+bounces-288140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMrtD/H+4Wna0QAAu9opvQ
	(envelope-from <devicetree+bounces-288140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:35:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2CA419597
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:35:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3D223249FF9
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422683CCA15;
	Fri, 17 Apr 2026 09:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="e0xZrDdT"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45013C9EF8;
	Fri, 17 Apr 2026 09:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776417926; cv=none; b=lRpedJ4ZjColQNlt1H3lkTpDYXeEFvlKuaTKnatru63yFRg5ORoYI7OIoO5HUiuRy+riFiWIov01G+QmaW19JozFXw5bv3p5bJl9gKLHi5hghhpJIdMrZzmAxxCjucQ+TczRBOkgiGcq2sKgHOe43/D7PdT/sRHT4X/NpCheXm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776417926; c=relaxed/simple;
	bh=c8EPW6zrP1GSWBRtyag22bbAxh2c5bQAErfN+9cizmk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tEaXjRmKr8qJl01b/AcPd741McuRPd2BcI+Gm8VIxFjHhfFLDuRTIKudjv7dnpvC4fP4ui2FJ22Bmqga19iG+RSAG7+OLZulge6o+hYQJQKS84gojPX38AotnWakFL8UFQlL1WnQhY/O42XIyv7Z/UP1VeB84+fjmSfLFQ4eM6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=e0xZrDdT; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776417923;
	bh=c8EPW6zrP1GSWBRtyag22bbAxh2c5bQAErfN+9cizmk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=e0xZrDdTf0wtYNtRNld98RP636Ag4KnQ0dnbgDufja/9NAznvWQTxY5APonyUkWqo
	 e+ZNrfWq/83y1L0bKHSpW7Oil/4GnwmwdCwacsWiUoGqaHW9oYzpHTgUdW/TqzXHWE
	 vI+DaB/hLkfQiKveqWBW2yHFbtC7okqlhhMaAjd8a2CaKnR58Hd9alY6+fpIvzhhnq
	 MEFseroUosHY/PlNvm+waXQlqNHEKPxAIzZHbvn2H82Z92x+QBoeFBBQdL7HM0r+s4
	 dttGLe8+L+TuM48ClIxK7rXzYdETRbgURVg494BytWNHqFsM6cyU525J3Uo5/h86og
	 w+vBBdOn4tscQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5376F17E1274;
	Fri, 17 Apr 2026 11:25:23 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 17 Apr 2026 12:24:53 +0300
Subject: [PATCH 19/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3588-jaguar
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260417-dts-rk-frl-enable-gpios-v1-19-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288140-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,collabora.com:dkim,collabora.com:mid]
X-Rspamd-Queue-Id: BC2CA419597
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The board exposes the GPIO0_D3 line to control the voltage bias on the
HDMI0 data lines.  It must be asserted when operating in HDMI 2.1 FRL
mode and deasserted for HDMI 1.4/2.0 TMDS mode.

Wire up the HDMI0 node to the GPIO line using the frl-enable-gpios
property to allow adjusting the bias when transitioning between TMDS and
FRL operating modes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 5f5d89a33a4a..ad9809aaff7e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -279,7 +279,9 @@ &gpu {
 &hdmi0 {
 	/* No CEC on Jaguar */
 	pinctrl-names = "default";
-	pinctrl-0 = <&hdmim0_tx0_hpd &hdmim0_tx0_scl &hdmim0_tx0_sda>;
+	pinctrl-0 = <&hdmim0_tx0_hpd &hdmim0_tx0_scl &hdmim0_tx0_sda
+		     &hdmi0_frl_en>;
+	frl-enable-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -571,6 +573,12 @@ eth_reset: eth-reset {
 		};
 	};
 
+	hdmi {
+		hdmi0_frl_en: hdmi0-frl-en {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		led1_pin: led1-pin {
 			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;

-- 
2.53.0


