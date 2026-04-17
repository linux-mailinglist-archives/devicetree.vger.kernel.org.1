Return-Path: <devicetree+bounces-288040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLLbIDLW4WnQyQAAu9opvQ
	(envelope-from <devicetree+bounces-288040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 08:41:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CF35241781A
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 08:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 794C03016522
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 06:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08AD833260B;
	Fri, 17 Apr 2026 06:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBGoPoO/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D892132FA2B;
	Fri, 17 Apr 2026 06:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776408110; cv=none; b=WkqO3gJ/SFsSyuNqynV3eplTiqKBsWGKA1EoA8g8x2obR6dY43BoY99yDtl2tZHkXuQjgizsB+aCwmAomjPJLiNDwhN6BMXe8rkMoH9UJlKumydFS2t0VcATnir/A6ROM69rbq/yOa+MZAri7/JG3++zVIlUjFw2a72lW59ohJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776408110; c=relaxed/simple;
	bh=5ILW9ovCD9rkcdvfce9O9NVrQf0affa8qsElbU+IUSU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=brh5G1nQwaksMQeQN/jIBABqSC31GR0JmQdcl7uOM0Y1T4r21jDIp3QNHAFhqZI0oTy73Rsq6qhdgLYWqpZJoMcVnwrzc//Nns16pszdymZm/KoRa74GIlmhMtEk7hC8YOV/eydmPInXhsMWuCFW+JPlvhQU5TAhsZ43FmcD50g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBGoPoO/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74632C19425;
	Fri, 17 Apr 2026 06:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776408110;
	bh=5ILW9ovCD9rkcdvfce9O9NVrQf0affa8qsElbU+IUSU=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=NBGoPoO/ysm/6kB1rqLeSuI0cda6XCijr57MuJr48/DLaikWp+TxXklLuhWiur8aa
	 ZW4UxAwNr07BWcxpa3h8hYtNuVx+znRS+lHzb031Jrv8UJ/X47I54EUj1J20R16pz4
	 7155x4O7LNQ/Zb78Nv89nGwmyjtvP1+oedUrIDKzT4QEAs23zsZO5LbeiiJgvp+rdX
	 OebX2KXEs182I3WZ3hCOaYbYb846LkCdyMVaIor7Cod1iUgWbBwZNP8F8y5gNuQa/Q
	 MXM7JO4hm8ZnoxoW6TFxhv3dAHDx1gkv2PG6/kn1Xk1DVe3inXml88N9/7uAcx29RH
	 yn8kZSaE5C7LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D51F8E49D;
	Fri, 17 Apr 2026 06:41:50 +0000 (UTC)
From: Rex Fu via B4 Relay <devnull+Rex.Fu.amd.com@kernel.org>
Date: Fri, 17 Apr 2026 14:41:49 +0800
Subject: [PATCH] ARM: dts: aspeed: anacapa: add interrupt properties for
 PDB PCA9555
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260417-anacapa-pca9555-irq-v1-1-9a6d28b1b656@amd.com>
X-B4-Tracking: v=1; b=H4sIACzW4WkC/yXMQQ6CMBCF4auQWTvJFKhNvYpxMZRRx0WtLRISw
 t0puvyS9/4VimSVApdmhSyzFn3HCnNqIDw5PgR1rIaW2jP1xiFHDpwYU2BvrUXNH+zI09ibunE
 E9Zmy3HX5Va+3v8t3eEmYjhRs2w40R47BdwAAAA==
X-Change-ID: 20260417-anacapa-pca9555-irq-3090d4120270
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Rex Fu <Rex.Fu@amd.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776408109; l=2007;
 i=Rex.Fu@amd.com; s=20260417; h=from:subject:message-id;
 bh=o8qWPDdSQIz2wmiJKXl6X/Ju2Iig3de8Ah1xPVk1Lb4=;
 b=9MQxnVgP2xpf8cl0ReSJT9bCAGSgrGLhuJrX1lJDGwcxn2Z0N5+8gjRkpTj50taQzIWiLxU4L
 Rb3uKLvuM8zCiSq+XVL/I8mP31UxsiKnatCzhTZShNcZeUVeGzJucDu
X-Developer-Key: i=Rex.Fu@amd.com; a=ed25519;
 pk=26ECoh24fxrbXDKgA4hCmgg0xjQ+IxU97kXb46ovwgc=
X-Endpoint-Received: by B4 Relay for Rex.Fu@amd.com/20260417 with
 auth_id=738
X-Original-From: Rex Fu <Rex.Fu@amd.com>
Reply-To: Rex.Fu@amd.com
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[bounces-288040-lists,devicetree=lfdr.de,Rex.Fu.amd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	HAS_REPLYTO(0.00)[Rex.Fu@amd.com]
X-Rspamd-Queue-Id: CF35241781A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Rex Fu <Rex.Fu@amd.com>

Add interrupt-parent and interrupts properties to the PDB PCA9555
nodes in the anacapa DTS.

Signed-off-by: Rex Fu <Rex.Fu@amd.com>
---
Single DTS update for the PDB PCA9555 interrupt wiring on anacapa.
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 2cb7bd128d24..7319f2319bb7 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -481,6 +481,9 @@ gpio@22 {
 				gpio-controller;
 				#gpio-cells = <2>;
 
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
+
 				gpio-line-names =
 					"RPDB_FAN_FULL_SPEED_R_N", "RPDB_I2C_TEMP75_U8_ALERT_R_N",
 					"RPDB_I2C_TMP432_U29_ALERT_R_N", "RPDB_GLOBAL_WP",
@@ -500,6 +503,9 @@ gpio@24 {
 				gpio-controller;
 				#gpio-cells = <2>;
 
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
+
 				gpio-line-names =
 					"RPDB_EAM2_PRSNT_MOS_N_R", "RPDB_EAM3_PRSNT_MOS_N_R",
 					"RPDB_PWRGD_P50V_HSC4_SYS_R",
@@ -529,6 +535,9 @@ gpio@22 {
 				gpio-controller;
 				#gpio-cells = <2>;
 
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
+
 				gpio-line-names =
 					"LPDB_FAN_FULL_SPEED_R_N","LPDB_I2C_TEMP75_U8_ALERT_R_N",
 					"LPDB_I2C_TMP432_U29_ALERT_R_N","LPDB_GLOBAL_WP",
@@ -546,6 +555,9 @@ gpio@24 {
 				gpio-controller;
 				#gpio-cells = <2>;
 
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
+
 				gpio-line-names =
 					"LPDB_P50V_FAN1_R2_PG","LPDB_P50V_FAN2_R2_PG",
 					"LPDB_P50V_FAN3_R2_PG","LPDB_P50V_FAN4_R2_PG",

---
base-commit: 76b4ec8efdc3887cdbf730da2e55881fc1a18770
change-id: 20260417-anacapa-pca9555-irq-3090d4120270

Best regards,
--  
Rex Fu <Rex.Fu@amd.com>



