Return-Path: <devicetree+bounces-241885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEE6C83E90
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:14:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6F3DA34CF7D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72D082DC32C;
	Tue, 25 Nov 2025 08:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="GHRJPu3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AAD2DAFB5;
	Tue, 25 Nov 2025 08:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764058392; cv=none; b=LsMGOacyWu/Ptpe/ZHjMM25+kl+vGAiZW+ZpQ0kp8rF0EWhmYlszT+C4cOUqWTpZaWpB0xfkWdjkQWICyGB13/CRcByK3rVswrFAR0nL6qCyhL3o8HPcXwNqSFywvxCuuq4b9bUSVmLN1xgYISv3oYKVjYkUrSJQ3xtX7GQ77qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764058392; c=relaxed/simple;
	bh=nuPgZMv2v7YH9uGUJAiSKYtrG654yYp+xdV29Zh1VgA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z21OZ//KT9ZwH5pwB1ycfSWBsoZs/ldVe6BEifGHqTotSs4TlmdDby7PkVXGRpnvw2S+3dIqjP9B/M31/jQOKtZUQcg3pOgZ8jusRCfMHqCTrLA7MO0KX3ZNrjAp1257wUTCqyBSZDpVua5OCO5nspFWMgE9cWVPYUIw3o71Uzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=GHRJPu3Y; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1764058387;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FNQj/mbz0pHEJxgeXXzGFCx6Kd94mPi5sQkaS47hjl8=;
	b=GHRJPu3YbGVWx5/B8WW3K9dWKMaCVuqbHXYhLhEJMFQnHY9x6HKKaF94aeNI7gGqGD3DWP
	39yuZB1ev0u+AoYScy1ZfEcpKcGMHZV9JWwY99LhvloRkvvc7KpV5sgqr+LaHfGJJ0G4Lf
	Swltd0kxBmiQyH35nmDTCr4JroWxXLIYaGZ9FD9CNH/1w8af80cVcu06BMiO8783sap1rB
	Oqznz13A3Xr3ooF8kmxbdFc4WKiDjaPGxHEe3qj8DZ12akSj7t8i0m/qu1saJ4UkMuqMrL
	mtSs8a8j3/JkzUfpfI5bC8/5byWQuZ7lMQbZ2xhjhW7K5BUl+VlH4lcGz98YQw==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Tue, 25 Nov 2025 00:12:33 -0800
Subject: [PATCH v4 03/12] arm64: dts: qcom: sdm845-lg-judyln: Add battery
 and charger
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-judyln-dts-v4-3-a5a60500b267@postmarketos.org>
References: <20251125-judyln-dts-v4-0-a5a60500b267@postmarketos.org>
In-Reply-To: <20251125-judyln-dts-v4-0-a5a60500b267@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 Amir Dahan <system64fumo@protonmail.com>, 
 Christopher Brown <crispybrown@gmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764058372; l=1280;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=tZh55LHxjPWkc471WehWfJcw9WfsHkY38FMeg9Jfp3o=;
 b=NOHegV0fdUHCWOdQJD6IBDmeermKIAXc111cS1LIWGa63ykwCb3MbgxCDFjb7Cdjg0M0b1yk8
 K8xLcS0qeLRDbhhwTiam1pjMigZ+SLKE4kZAuLUzBMB888DOGHWRlhf
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

From: Christopher Brown <crispybrown@gmail.com>

Values based on lineageos kernel

https://github.com/LineageOS/android_kernel_lge_sdm845/blob/lineage-22.2/arch/arm64/boot/dts/lge/sdm845-battery/LGE_BLT39_LGC_3000mAh.dtsi

Signed-off-by: Christopher Brown <crispybrown@gmail.com>
Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
index e530a08f5e27..fa048937e396 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
@@ -37,6 +37,14 @@ key-thinq {
 			interrupts = <89 IRQ_TYPE_LEVEL_LOW>;
 		};
 	};
+
+	battery: battery {
+		compatible = "simple-battery";
+
+		charge-full-design-microamp-hours = <3000000>;
+		voltage-min-design-microvolt = <3200000>;
+		voltage-max-design-microvolt = <4400000>;
+	};
 };
 
 &adsp_pas {
@@ -63,6 +71,12 @@ &mss_pil {
 	firmware-name = "qcom/sdm845/judyln/mba.mbn", "qcom/sdm845/judyln/modem.mbn";
 };
 
+&pmi8998_charger {
+	status = "okay";
+
+	monitored-battery = <&battery>;
+};
+
 &tlmm {
 	thinq_key_default: thinq-key-default-state {
 		pins = "gpio89";

-- 
2.52.0


