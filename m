Return-Path: <devicetree+bounces-272537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHiKGIcGrWmkxQEAu9opvQ
	(envelope-from <devicetree+bounces-272537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 06:17:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2E222E8F7
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 06:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B55DF3015878
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 05:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A9A2D839C;
	Sun,  8 Mar 2026 05:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="Sypk/RGm"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC06287253;
	Sun,  8 Mar 2026 05:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772947072; cv=none; b=Ajm+6xGLdS/37mZkIg0Db/iNSxVpglVAXyO1VeE4X3xXIdIPRhtN8lZv88WjJKDS0IXPY4VVoJeD5rz8wIJpdTvjjQCYA0e4047DhlgyiDZT1rZXKoxzE1ywSumah5bV1SiDNOdrKF7/dW9QRiB3cmUKjt6t/FMzCfqtrbfcLzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772947072; c=relaxed/simple;
	bh=wRlY9EhqdoRo+41ZkIEaclvfQ9HpOHyVOUVlbpFpXv4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qNcaYSEutf0NiiuY1hgqblK+wrb/Y+seyENHapTs3zUwAluqEgXL/whwsy2ANhCe55ya7FLvqyO7bnKU2pSkhuT1mJ/R6SpxQn+YNbJciidGzJ0QCRCpiAECUuTOkWBZfueN1lC0jTOa5RgAbm8Z7cKA+y2Rhz14Hplcf7+gFKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=Sypk/RGm; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HyQYqF8dm9dm7F4KAv5Bd3+xVsMbty6DU/nWv1RHZ2Y=; b=Sypk/RGmy/2OwnJ2n/6Z+dG65n
	y6v+fRnPmZFOzE3mRDOcVFGPjlAUQCK+CXZoLHlzUG8YaJKuV5MKMHuVWsf5+d0lG/mJti0J3t7UB
	kyO0vOXf9CwdSjEfpcYSI7jkZExSV4Hb+4gHYYHISvM+KoTzMdzUpx1RqIgsUpaUVf2wUvvskcgxu
	YQxdroVSytfyVXLcJmPj8bHNOVuXPmtevtBU3sLfJECcUNQdTPFCcUhrasYfaV5Uy/sMl1LPTzHrB
	rrmhYPLjjUpG4yGmj8npSvLTVCjkaVl7/E4iFl9FOYJF7APY3izQnfaIR2oFKaMyd9IBKNVc7mnQp
	7fGz6oAg==;
Received: from user-5-173-16-20.play-internet.pl ([5.173.16.20] helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1vz6WS-00000007XHz-3Z9X;
	Sun, 08 Mar 2026 06:17:48 +0100
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Date: Sun, 08 Mar 2026 06:16:52 +0100
Subject: [PATCH 2/2] arm64: dts: allwinner: orangepi-zero3: fix axp313
 interrupt parrent
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260308-rc2-boot-hang-v1-2-d792d1a78dfd@mmpsystems.pl>
References: <20260308-rc2-boot-hang-v1-0-d792d1a78dfd@mmpsystems.pl>
In-Reply-To: <20260308-rc2-boot-hang-v1-0-d792d1a78dfd@mmpsystems.pl>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Michal Piekos <michal.piekos@mmpsystems.pl>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772947022; l=1582;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=wRlY9EhqdoRo+41ZkIEaclvfQ9HpOHyVOUVlbpFpXv4=;
 b=pbuhMCrHOMEGAFSJbb1V7QGKXHtzhaT91KrYMOK1Yfr+uWNG9ydw6rLmkbfTUUUSU5gkE91BA
 MvPVAonUMA3Al7zj34PPrctkWCcldNR42mfies4N8cZmEt011I+XI2d
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Rspamd-Queue-Id: CE2E222E8F7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272537-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.361];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.36:email]
X-Rspamd-Action: no action

The AXP313 PMIC interrupt on Orange Pi Zero 3 is connected to PL bank
GPIO handled by the R_PIO controller. However current dts routes the
interrupts to PIO controller. This causes the kernel to select wrong
pinctrl instance when configuring the interrupt which leads to invalid
register access and a kernel hang during boot.

The problem existed previously but became visible after the commit
01e10d0272b9 ("pinctrl: sunxi: Implement gpiochip::get_direction()"),
which causes gpiolib to call the gpiochip::get_direction() callback
during interrupt setup.

Route the interrupt thrpugh R_PIO so the PL bank GPIO is handled by
correct controller.

Fixes: f1b3ddb3ecc2 ("arm64: dts: allwinner: h616: Add OrangePi Zero 3 board support")

Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
Tested-by: Michal Piekos <michal.piekos@mmpsystems.pl>
---
 arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
index c51d4d9120de..c46ae00aed5c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
@@ -48,7 +48,7 @@ axp313: pmic@36 {
 		reg = <0x36>;
 		#interrupt-cells = <1>;
 		interrupt-controller;
-		interrupt-parent = <&pio>;
+		interrupt-parent = <&r_pio>;
 		interrupts = <2 9 IRQ_TYPE_LEVEL_LOW>;	/* PC9 */
 
 		vin1-supply = <&reg_vcc5v>;

-- 
2.43.0


