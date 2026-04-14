Return-Path: <devicetree+bounces-287306-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AF/DCkUp3mmSoQkAu9opvQ
	(envelope-from <devicetree+bounces-287306-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 13:47:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEC73F9948
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 13:47:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76505309B03D
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 11:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47CCE3B9DAC;
	Tue, 14 Apr 2026 11:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="iKaU5fLC"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B053E1209;
	Tue, 14 Apr 2026 11:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776167129; cv=none; b=KTitHVL9D0srMVkioEEp09n4jr41nw398BnI8g8SVxoHp5c9f2A5sczwtySXPEmtrv6cTCX8/+2wUyD74/kazhOE9SpbKYV440dJFXL8j5R/K9wABCM7TKTgSe7772KSGkEZoT+fT7YdAnmN/E+z3yt0EJBZAlF7XHNfkwGqAEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776167129; c=relaxed/simple;
	bh=HVLzJGaJ0+BYeNYwP5IDRAFG2m2mw5RzVzYdIRE2r+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ASCS1T0hsYj1Tng1aAE7PftsDT1r4EXiAhJxR9FP21ElLoiCNhFjb/Y6gwFCXKAlGQRga7DzcAw3OfnRF6gmJ5YMWOfqMvx+RhQ0sYWz+I/R082SQNa3VeeT4pULyFbpQ6TuCVr/+FX8iPI0akWS+XwdtT7xNDHn5ajWUr0V74w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=iKaU5fLC; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776167126;
	bh=HVLzJGaJ0+BYeNYwP5IDRAFG2m2mw5RzVzYdIRE2r+g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iKaU5fLCPy+7+iQS1BjodT5WeZ579OOE/zF8YqKrPGFbKzksfbiRuOuX+4lvEaGIi
	 +3EVMkSoyCBiRwYesoLUBaF1qXpG0TL55CPA5Z7UL165rA6nM6WEYWwwiKQQLtrXSu
	 qjls9RHOIfcg1bQ/EZgQTi0MZP3kqFMiOvz10421WgkVthcjArmMgm3exqXzoImvqW
	 bvVQMHPMA9uukU8ASXPUigssu3mDkB8MNI2+gjThnKMdVLX9UsxvPKgp0lSRGo3Zts
	 0Y+8cADATcPDuGGJ3x1hVp8vKYysYpnPiD9dAPzK6re5fezGTd+WUBPO68bxJ+VLJI
	 M/FqlIjQOasjA==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 65C5F17E131B;
	Tue, 14 Apr 2026 13:45:25 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 14 Apr 2026 13:44:11 +0200
Subject: [PATCH 2/3] arm64: dts: mediatek: mt8395-genio-common: add MT6315
 PMIC supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260414-mtk-g1200-pmic-cleanup-v1-2-2a7193ed4e93@collabora.com>
References: <20260414-mtk-g1200-pmic-cleanup-v1-0-2a7193ed4e93@collabora.com>
In-Reply-To: <20260414-mtk-g1200-pmic-cleanup-v1-0-2a7193ed4e93@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Gene Chen <gene_chen@richtek.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776167122; l=1699;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=HVLzJGaJ0+BYeNYwP5IDRAFG2m2mw5RzVzYdIRE2r+g=;
 b=jKsSrPjR5En5euXaXG47WIqrPZRWhVQ/ExNlMTBa5iOqEg84E+ZLtn+U6OEBCCV/3IBO3PbWK
 T/0wmIobYTXDWqteTJy9euVEdtGwZp9AIto1dp8TLCPF6d1zE/iSe93
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287306-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,richtek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.6:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:dkim,collabora.com:email,collabora.com:mid,0.0.0.7:email]
X-Rspamd-Queue-Id: 7BEC73F9948
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mediatek Genio 1200-EVK board has two MT6315 PMICs, powered by the
board system power rail (VSYS) and connected to the SPMI interface.

Add VSYS regulator node for system power rail and the supply inputs of
these two PMICs.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
index 62c336e21500..01e153137a6f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
@@ -201,6 +201,14 @@ wifi_fixed_3v3: regulator-2 {
 		enable-active-high;
 		regulator-always-on;
 	};
+
+	/* system wide 4.2V power rail */
+	reg_vsys: regulator-vsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys";
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &adsp {
@@ -1238,6 +1246,11 @@ mt6315_6: pmic@6 {
 		compatible = "mediatek,mt6315-regulator";
 		reg = <0x6 SPMI_USID>;
 
+		pvdd1-supply = <&reg_vsys>;
+		pvdd2-supply = <&reg_vsys>;
+		pvdd3-supply = <&reg_vsys>;
+		pvdd4-supply = <&reg_vsys>;
+
 		regulators {
 			mt6315_6_vbuck1: vbuck1 {
 				regulator-name = "Vbcpu";
@@ -1254,6 +1267,11 @@ mt6315_7: pmic@7 {
 		compatible = "mediatek,mt6315-regulator";
 		reg = <0x7 SPMI_USID>;
 
+		pvdd1-supply = <&reg_vsys>;
+		pvdd2-supply = <&reg_vsys>;
+		pvdd3-supply = <&reg_vsys>;
+		pvdd4-supply = <&reg_vsys>;
+
 		regulators {
 			mt6315_7_vbuck1: vbuck1 {
 				regulator-name = "Vgpu";

-- 
2.53.0


