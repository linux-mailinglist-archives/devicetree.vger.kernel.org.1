Return-Path: <devicetree+bounces-287307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCxoIGAp3mmSoQkAu9opvQ
	(envelope-from <devicetree+bounces-287307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 13:47:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDFB3F9959
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 13:47:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBCDF30AEEF9
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 11:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E48F3E1CEF;
	Tue, 14 Apr 2026 11:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nG/iCYRX"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D163E0C6C;
	Tue, 14 Apr 2026 11:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776167130; cv=none; b=KoOl05nesxvKQU4jRWmvN3p+GKvjvs44UcrBjOyICUum5DRvqBTvhyCwheZT8IYBFne1hSVMDuJEpvPLW1phRcCGxhUrmzlaE9N0QCH8pnU14BBkxOVGoPBF6vuR/y8nU7q39zRiuW3CjwTfahSJkyZqpQIMhirF3HTvCC6b38s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776167130; c=relaxed/simple;
	bh=09+/PNoK8kcy3tykKGdhLQqIcG+vb4KRNjnvsVv0LZQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Alhn2jWOxUvrz4OzLnQboYpXrN+sKXae5wV7Mt9Ge7dIqiSQm6lBdi6kOwN0m99spoAGissykWdMYJlL7DSrYxCqGcpmI7Vg0cqkvD5HusJbh17NPtVXa7pkfLB1Jqb5nzczAyzGLgRcPEzlFJkfEro3M7aISD2hB1c0XbJBCc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nG/iCYRX; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776167127;
	bh=09+/PNoK8kcy3tykKGdhLQqIcG+vb4KRNjnvsVv0LZQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nG/iCYRXf1WPLsrtsN9qfatEPYqVnMt33MFRH0S3mefMWqy/TRiwAI7IabAHel0m6
	 W2gmWxzULrYr93JzLIXR5dD83HM/Zxo5nD5IJtmmLU/8eFt6Y465zMCtTnu98c8GUl
	 hvibRgHkhoQFPcKyr7F0hVRspj30X6NVEyRaVSSGWgC/TuKJ/WeM3Y8iszkjytB8Vn
	 Qd0GHqjgoJDiBfh6rGzlTMmAonmmvnmaH/pLzTInU/RNqU9aGvB5rkqBUv+JwWr3qx
	 ccyp2b9JIvMHaqywnDi19PM6tDHu+DhSnGfxun8Uz/wFrpTIPinfEARaPNnGRRb1do
	 JPBWOK8pLbOgw==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 838C417E1388;
	Tue, 14 Apr 2026 13:45:26 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 14 Apr 2026 13:44:12 +0200
Subject: [PATCH 3/3] arm64: dts: mediatek: mt8395-genio-common: add MT6360
 PMIC supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260414-mtk-g1200-pmic-cleanup-v1-3-2a7193ed4e93@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776167122; l=1642;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=09+/PNoK8kcy3tykKGdhLQqIcG+vb4KRNjnvsVv0LZQ=;
 b=a4SI+ENVQILnLG7y6zfEQXevW4hMFOBxcQWmPneL4RxKKk+7c3dV/57nLiM+3mzCDzy4vmQGe
 6NI93vDFxSaAlLm7jols83aN2HOqnTZqT8/znfI95TdY64KyS/Mzi/Y
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,richtek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287307-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DEDFB3F9959
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Mediatek Genio 1200-EVK board has a MT6360 PMIC, powered by the
board system power rail (VSYS) and an additional system power rail
(VSYS_BUCK).
In the board devicetree, the power supply inputs for its buck and ldo
regulators are either incorrect (LDO_VIN3) or missing (LDO_VIN1/2,
BUCK_VIN1/2).

So, add VSYS_BUCK regulator node and the proper supply inputs for this
PMIC.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
index 01e153137a6f..21dbcabe5e72 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
@@ -209,6 +209,14 @@ reg_vsys: regulator-vsys {
 		regulator-always-on;
 		regulator-boot-on;
 	};
+
+	reg_vsys_buck: regulator-vsys-buck {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_buck";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&reg_vsys>;
+	};
 };
 
 &adsp {
@@ -486,7 +494,11 @@ otg_vbus_regulator: usb-otg-vbus-regulator {
 
 		regulator {
 			compatible = "mediatek,mt6360-regulator";
-			LDO_VIN3-supply = <&mt6360_buck2>;
+			BUCK1_VIN-supply = <&reg_vsys>;
+			BUCK2_VIN-supply = <&reg_vsys>;
+			LDO_VIN1-supply = <&reg_vsys_buck>;
+			LDO_VIN2-supply = <&reg_vsys_buck>;
+			LDO_VIN3-supply = <&reg_vsys>;
 
 			mt6360_buck1: buck1 {
 				regulator-name = "emi_vdd2";

-- 
2.53.0


