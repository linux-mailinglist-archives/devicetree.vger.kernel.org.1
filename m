Return-Path: <devicetree+bounces-298740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBU0KB6nCGpizgMAu9opvQ
	(envelope-from <devicetree+bounces-298740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 19:19:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 029AE55CE28
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 19:19:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4847F3028370
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 17:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6DA3EEAD8;
	Sat, 16 May 2026 17:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUj2GZXr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FAE3EE1E2;
	Sat, 16 May 2026 17:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778951902; cv=none; b=OO7h41VXWY+aiDcaUD6xkAsNwsqIRpETr9vJKUavsE0bdCEvwl2rc2zYrJ07MYCIrytkM43WvDDJkzZDWf+eU5w5Uc8g4Y2ZKVHqRJhnfC6un99gHI243SYiCG2+B+ZFTFZjk7vG3+eZSByT6LN5Ut+6RpsIANPP2eso4Hqf+Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778951902; c=relaxed/simple;
	bh=0i79ZDOBUMf/y7rR7lHOzqHQn+JRQngDYQDzRKcFojw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uWCwSuDAcDWkwAICPJ2Py3GNWGG5A0lpTdu0PCVpVbjy9000BEpTSroqJnP4nojGz6wYAQs3kUexTPV0jfsZaIP6CCnynJER9JF7mVSElu1JQNjQyaX2n9ZR3igan2uaDS1XAmE1RGGo+zXLv1tuNgZhJTQWjB6HzqtJls9BWZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUj2GZXr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ECBEC2BCC7;
	Sat, 16 May 2026 17:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778951902;
	bh=0i79ZDOBUMf/y7rR7lHOzqHQn+JRQngDYQDzRKcFojw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=BUj2GZXr4Wu+NKiooR3l6M6jBFvOtp7W7F4qPNO8N9rJ/sLq+BKm0HSdXTrx3IsIC
	 rAF31AERfjC649Y0KP/0QOv3r2IMvPd/RxFE5VPJTDslKvMnOQ27wfrYiHBiReWE0V
	 49UqPT9yEcqKIfnTq5Inqb3Yvc2bHix1h1NCQyB3fXJ4tClnENan9ec6A3pofxgvLh
	 BLHLKpaq6iM9bVVjHLo3Ff9bZL85oZrnHkdPXT/HfzMwzsnM9K9SbMI4+vCNAeO6Cr
	 F1RugWiDVcvfI6fomcMLT/R8twgaSuJ8kw6nvHAi9Io5g7VjNo9cqRYBuO/CnOJNdZ
	 S70izNruyDSyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80713CD4F25;
	Sat, 16 May 2026 17:18:22 +0000 (UTC)
From: Ronald Claveau via B4 Relay <devnull+linux-kernel-dev.aliel.fr@kernel.org>
Date: Sat, 16 May 2026 19:17:07 +0200
Subject: [PATCH v6 7/8] arm64: dts: amlogic: t7: Add i2c controller node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260516-add-mcu-fan-khadas-vim4-v6-7-cccc9b61f465@aliel.fr>
References: <20260516-add-mcu-fan-khadas-vim4-v6-0-cccc9b61f465@aliel.fr>
In-Reply-To: <20260516-add-mcu-fan-khadas-vim4-v6-0-cccc9b61f465@aliel.fr>
To: Neil Armstrong <neil.armstrong@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Beniamino Galvani <b.galvani@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1153;
 i=linux-kernel-dev@aliel.fr; h=from:subject:message-id;
 bh=ZSNkfEC4FeiA6QucNF9aNhEEdVvV/IVtkbNzZYp3uHA=;
 b=owGbwMvMwCWm1SvKXP3cUInxtFoSQxbHspuTHzq5qUwXkZpUnHZ61afrcxf4v1q9/3nz4ZZ7v
 6fFPlzk0VHKwiDGxSArpsjSP9fyxLvLR8983aOeAjOHlQlkCAMXpwBM5OBPRoatd06oXwzY6KH5
 5KzA8ewrSt/O828Q9DomxNJWoMvByRfLyLD0H+Nim48TL4o8O5DqYnHjo/ns6IC/y1X/3Uw06uX
 y6ucBAA==
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openpgp;
 fpr=DFD863F61375BF917F0012173953305EF1D0EC3E
X-Endpoint-Received: by B4 Relay for linux-kernel-dev@aliel.fr/default with
 auth_id=744
X-Original-From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Reply-To: linux-kernel-dev@aliel.fr
X-Rspamd-Queue-Id: 029AE55CE28
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298740-lists,devicetree=lfdr.de,linux-kernel-dev.aliel.fr];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,googlemail.com,gmail.com,intel.com,arm.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[linux-kernel-dev@aliel.fr]
X-Rspamd-Action: no action

From: Ronald Claveau <linux-kernel-dev@aliel.fr>

Add the T7 i2c controller node used by the Khadas VIM4
for MCU communication.

Use amlogic,meson-axg-i2c as fallback compatible.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index e96fe10b251a0..560c9dce35266 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -711,6 +711,16 @@ pwm_ao_cd: pwm@60000 {
 				status = "disabled";
 			};
 
+			i2c_m_ao_a: i2c@76000 {
+				compatible = "amlogic,t7-i2c", "amlogic,meson-axg-i2c";
+				reg = <0x0 0x76000 0x0 0x48>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 330 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc_periphs CLKID_SYS_I2C_AO_A>;
+				status = "disabled";
+			};
+
 			sd_emmc_a: mmc@88000 {
 				compatible = "amlogic,t7-mmc", "amlogic,meson-axg-mmc";
 				reg = <0x0 0x88000 0x0 0x800>;

-- 
2.49.0



