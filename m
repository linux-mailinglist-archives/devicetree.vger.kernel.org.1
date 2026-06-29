Return-Path: <devicetree+bounces-316901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n5e4IFZDQmoS3AkAu9opvQ
	(envelope-from <devicetree+bounces-316901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:05:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2630A6D8A23
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:05:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DCmrBkIJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316901-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316901-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55F833027D9B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4FD93FAE09;
	Mon, 29 Jun 2026 10:01:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817B53537DE;
	Mon, 29 Jun 2026 10:01:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782727272; cv=none; b=YUq3s2BYwCBh9yrdnlsgI2Iw8ELI/a/w8tY3OR8Xua3LJgJN8Oye87PkpB4d2QC7ue5MnPAbE8psGE81aFNtHydPNMPGXPflEuhArGIhQgg8R1e+9ESJKzUzJc5f56KbACJfzZeY1f06JuNll/zzmN+BmdB9lOrq0HhpHHEb1rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782727272; c=relaxed/simple;
	bh=rbgcrkj6z95Tpqoh9xStzNsaQrUhtiLAyJIzfA0gGDg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Sy/nKxzSkG03G0gVmyOc2gzFWaZKuSwfTaCCl7QLsawp4MUoMkDcQSk23jKFz19gs6FUuMuOWUUAZU0/hAp+79INA4pB+j8kADboBWOTclHAP3/P1av/Y9r8RNvPzlHA6IPOAYx5rGlQqePzXGKhKf6O9nFBWQ5uvBI88Pucx3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCmrBkIJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3225BC19425;
	Mon, 29 Jun 2026 10:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782727272;
	bh=rbgcrkj6z95Tpqoh9xStzNsaQrUhtiLAyJIzfA0gGDg=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=DCmrBkIJINrZGTToIVDyLNBHvawuYIFgAEi4hPjA1blHBacfPjR4KKmvCG+PSxeh9
	 hOvHVOlIaIsFPBdHlaWDTttljRYpthLJCdAg94hNUpVNRW5jO4CJ+SaczWnarKhL+t
	 QNIkgdRv53747ZJ+24dXvnqZeWjBf50dLXfhugvKskkIw0sViGmCDDNfqKRzlfFiKc
	 9DMpqnmgaVOBWCIY4MbwrAX66JyAcxvmq7xTr3wSIOjpVcFSH4X51+6Wxv+K0rzTac
	 2oPlQNGXuDQTJaLvBwfdLV0eRJnBQmGteXw/KA6Q+kupswEl0jL9nWDPfRxZ0YmG2n
	 y2plyJCUBv7tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E9BAC43458;
	Mon, 29 Jun 2026 10:01:12 +0000 (UTC)
From: Michael Reeves via B4 Relay <devnull+michael.reeves077.gmail.com@kernel.org>
Date: Mon, 29 Jun 2026 20:01:01 +1000
Subject: [PATCH] arm64: dts: apple: t8122: Fix I2C resources
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260629-t8122-i2c-fix-v1-1-cec044001550@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFxCQmoC/x2MywqAIBAAfyX23IJtL+tXooPoVnux0IhA/Pek4
 wzMJIgchCPMVYLAj0Q5fYGmrsAexu+M4goDKRrUQBPeuiFCIYubvLi1o7NT3xltHJTmClz0/1v
 WnD8NkdvVXwAAAA==
X-Change-ID: 20260629-t8122-i2c-fix-f37dc954a8ad
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joshua Peisach <jpeisach@ubuntu.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Reeves <michael.reeves077@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782727271; l=3584;
 i=michael.reeves077@gmail.com; s=20260105; h=from:subject:message-id;
 bh=hlK9MIO4eVxPvoDNzV4TiPgH3mA8+0MVI+myk5cQbdQ=;
 b=vYF0LVjBAeCJcRh29ld6F43XBlcJxMcwpDIHly0ExE8C+l4bbcQoAmwrodt/K1BgAyA+/QP+v
 1coryZJwg20A0DSyZiyWQEwURtdFJQjZyyobYmlYB8v5roNUuRz/84f
X-Developer-Key: i=michael.reeves077@gmail.com; a=ed25519;
 pk=QIrgWBGCm3LG0YYc6MLCDkwuVXLTGGooVBdWX/KhSiU=
X-Endpoint-Received: by B4 Relay for michael.reeves077@gmail.com/20260105
 with auth_id=591
X-Original-From: Michael Reeves <michael.reeves077@gmail.com>
Reply-To: michael.reeves077@gmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316901-lists,devicetree=lfdr.de,michael.reeves077.gmail.com];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jpeisach@ubuntu.com,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:michael.reeves077@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:michaelreeves077@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[michael.reeves077@gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2630A6D8A23

From: Michael Reeves <michael.reeves077@gmail.com>

Correct the MMIO ranges and IRQs for T8122 I2C controllers.
They were mistakenly incorrect in the original commit. This
fix is required for i2c dependent hardware to function
correctly, i.e. audio codecs.

Tested on J613 (MacBook Air M3).

Fixes: c65ab4905e58 ("arm64: dts: apple: Initial t8122 (M3) device trees")
Signed-off-by: Michael Reeves <michael.reeves077@gmail.com>
---
 arch/arm64/boot/dts/apple/t8122.dtsi | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/apple/t8122.dtsi b/arch/arm64/boot/dts/apple/t8122.dtsi
index c6196225e96e..1ee61c5b3409 100644
--- a/arch/arm64/boot/dts/apple/t8122.dtsi
+++ b/arch/arm64/boot/dts/apple/t8122.dtsi
@@ -186,12 +186,12 @@ soc {
 		/* Required to get >32-bit DMA via DARTs */
 		dma-ranges = <0 0 0 0 0xffffffff 0xffffc000>;
 
-		i2c0: i2c@235010000 {
+		i2c0: i2c@2a1010000 {
 			compatible = "apple,t8122-i2c", "apple,t8103-i2c";
-			reg = <0x2 0x35010000 0x0 0x4000>;
+			reg = <0x2 0xa1010000 0x0 0x4000>;
 			clocks = <&clkref>;
 			interrupt-parent = <&aic>;
-			interrupts = <AIC_IRQ 761 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <AIC_IRQ 780 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-0 = <&i2c0_pins>;
 			pinctrl-names = "default";
 			#address-cells = <0x1>;
@@ -200,12 +200,12 @@ i2c0: i2c@235010000 {
 			status = "disabled";
 		};
 
-		i2c1: i2c@235014000 {
+		i2c1: i2c@2a1014000 {
 			compatible = "apple,t8122-i2c", "apple,t8103-i2c";
-			reg = <0x2 0x35014000 0x0 0x4000>;
+			reg = <0x2 0xa1014000 0x0 0x4000>;
 			clocks = <&clkref>;
 			interrupt-parent = <&aic>;
-			interrupts = <AIC_IRQ 762 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <AIC_IRQ 781 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-0 = <&i2c1_pins>;
 			pinctrl-names = "default";
 			#address-cells = <0x1>;
@@ -214,12 +214,12 @@ i2c1: i2c@235014000 {
 			status = "disabled";
 		};
 
-		i2c2: i2c@235018000 {
+		i2c2: i2c@2a1018000 {
 			compatible = "apple,t8122-i2c", "apple,t8103-i2c";
-			reg = <0x2 0x35018000 0x0 0x4000>;
+			reg = <0x2 0xa1018000 0x0 0x4000>;
 			clocks = <&clkref>;
 			interrupt-parent = <&aic>;
-			interrupts = <AIC_IRQ 763 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <AIC_IRQ 782 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-0 = <&i2c2_pins>;
 			pinctrl-names = "default";
 			#address-cells = <0x1>;
@@ -228,12 +228,12 @@ i2c2: i2c@235018000 {
 			status = "disabled";
 		};
 
-		i2c3: i2c@23501c000 {
+		i2c3: i2c@2a101c000 {
 			compatible = "apple,t8122-i2c", "apple,t8103-i2c";
-			reg = <0x2 0x3501c000 0x0 0x4000>;
+			reg = <0x2 0xa101c000 0x0 0x4000>;
 			clocks = <&clkref>;
 			interrupt-parent = <&aic>;
-			interrupts = <AIC_IRQ 764 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <AIC_IRQ 783 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-0 = <&i2c3_pins>;
 			pinctrl-names = "default";
 			#address-cells = <0x1>;
@@ -242,12 +242,12 @@ i2c3: i2c@23501c000 {
 			status = "disabled";
 		};
 
-		i2c4: i2c@235020000 {
+		i2c4: i2c@2a1020000 {
 			compatible = "apple,t8122-i2c", "apple,t8103-i2c";
-			reg = <0x2 0x35020000 0x0 0x4000>;
+			reg = <0x2 0xa1020000 0x0 0x4000>;
 			clocks = <&clkref>;
 			interrupt-parent = <&aic>;
-			interrupts = <AIC_IRQ 765 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <AIC_IRQ 784 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-0 = <&i2c4_pins>;
 			pinctrl-names = "default";
 			#address-cells = <0x1>;

---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260629-t8122-i2c-fix-f37dc954a8ad

Best regards,
-- 
Michael Reeves <michael.reeves077@gmail.com>



