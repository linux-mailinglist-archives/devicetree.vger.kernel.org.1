Return-Path: <devicetree+bounces-277854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLcoFVQYvGlEsQIAu9opvQ
	(envelope-from <devicetree+bounces-277854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:37:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DC92CDD1F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:37:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45FE3319A146
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E483E7165;
	Thu, 19 Mar 2026 15:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jBBet7Ka"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51A33E8660
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773934602; cv=none; b=U5bzQXJSyPRQTpJPEw04uVowU2EULXu066TRIY7FIrdqj58c2fX+q7wzG/oIpUSV/qxkoFvm0QxLOwdt4NeWBvrYTOMepVVqu4wZRmE5ErrMehgmdXsdDx3xge+YpcVs84nDiAtAQKAGAJRstVf6MYTAlzk1l4jj2Cz7Ri2sdis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773934602; c=relaxed/simple;
	bh=3ipKa8hblnRNaaERan/n8j6yf85GaajtJfWVBjNmcTM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A74OORRCLV7OIA6/p1hQ8lNToKAA2ui4IBhZ5AG+FrzbK9yUqhYFrRCYwYlv94XJ9q805aRnp+0HTg6i/uOrp6MI1rLnN7ZIeD/GXyWI6AYKjurg7M2AsmtpZfM7sTqe+gboW2lIUJZ1lxF6g/6d/48xo/nd13y+FPCf3/U+k1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=jBBet7Ka; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-6634bb959a2so1743440a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773934599; x=1774539399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DadYwL98ykk3/5F14uBh5E91zDpVmTxndHcyki21VXU=;
        b=jBBet7Kaas7mqivQ5SEfduxCvRdW/yjnJKA/yAyMr2ahxNdPvjs0yMF6dTO4ez375i
         RSSUm/4m3TaxXbXGQ9I4fDpMQVXscy6p8Tm4HO5yUc5WrTN5gLR9PgpYSkt0yUz1zqq/
         Qxdwd28RvWpXaRlymt0HQKrLR9RutXMCE3NfnG2yOhJf0Ten+w5fvfAduF9Fb7TW8tZl
         SEVSdBwKjVDKdsikvmnvmqhutKqV4+ZhizhEc+cigSsKWvCdQ0Q8eEsKaL4Whs625Jwz
         9aQ5M3y/gsif4zpRVmGuvprIRTVdtfIBr4bSd5L1cdE98rG99O9UIAmwaGJgGDomhcgQ
         Wfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773934599; x=1774539399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DadYwL98ykk3/5F14uBh5E91zDpVmTxndHcyki21VXU=;
        b=HtOOpSJlaF6zcStKMw0lovkJI/ATWk/p51bzBHGdP27gI/eoYyjEVnqS+T9jBxvEz8
         OFfEiqEo20WEDUmelotFPHgvKIe3P8m1oLOHX69drQLy1JMg1AyPOpb/c6UZzAqvViaw
         WkFIJiXYr6s8+LIrXSFPsgjZ48nAwE8t5SLJVkTuSKlV675c6EbJh9iBfCuITxD+mjj1
         rJDhbOlobpmG4CcEcQUefXTUDksQMQMeLVC26UTOKGjwM3YnbuGiOLaYHKDsnljm8LAV
         Faf3NAHi7HB31t5iC9d650d8ls//1aC2KffIRRjzjYnZmqSKduS62+G/xddREd3mkIb6
         eJEA==
X-Forwarded-Encrypted: i=1; AJvYcCVDGNt0up8GVu/OsxCYVe2/sr2u1fj62imJiUw+CEQKAqnHZ77UGLxqYvj0nAaZnyT3J1SSzJpICzQH@vger.kernel.org
X-Gm-Message-State: AOJu0YxBkMbDOFH+7sqznxacDgk/8KjftS9Dhp3MKceo3A+KEAmkZ6Ri
	p2CUPjvRfSwHrrCP2mtLg+2O3BHEKm15vzhHOzr3up7bU3edvynRi/62k4C8/yAzTI4=
X-Gm-Gg: ATEYQzz8tGiBDt1m1RKY2YsmqYORsGw0OeXiRNRItZNaKoFCiCL9dPjlaCWUMfg9V6B
	z1caoJKPqZyyD9pEqtlvNt/29+FK+5Z6bS9E/hnacKFnvMjTqlCdfLUlDM+GQsCLMSwgN14yvlg
	5CoqzzdPiLVFqn2wt0wpRdGmGNS5cZC1NsnGernHCQ61VITMy8QEDCQ2xhuJ+UiwAUQzttBPrlD
	Qgmh/K/uP17lB+j8hty9YAsZnwEwNz5Ta4jWViHwA91n+94YuzWp2PoOY/Rot9O+7N6U8/qSLLW
	iGJuJd2vql0KZbk+FBX1IDasbCXwiQyFXe3SLw0pXRCxyOOXJKS2qkh7HG2FiPYUs4Utzu8C9Gg
	QYoWXBG0VXoCh6UH66kJFNsmjUwhQfww9jc9YfHCaet56zVyeNgHDIg3rbLTk5rbkVU0P2NgRoN
	yz7xaw+5C/TdPG+dH6O93scTYia3vBG4R69e1+q37T6c39g/GXiS4+Z55DLNGQAJMrbrKAtVuQ8
	RfcFA==
X-Received: by 2002:a17:906:fe02:b0:b93:c5a9:a5e6 with SMTP id a640c23a62f3a-b97f4796631mr464698666b.2.1773934599020;
        Thu, 19 Mar 2026 08:36:39 -0700 (PDT)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3ccsm457568366b.59.2026.03.19.08.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:36:38 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 19 Mar 2026 16:36:29 +0100
Subject: [PATCH v3 2/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Add front
 camera support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-fp5-s5kjn1-v3-2-9cf4b8c09567@fairphone.com>
References: <20260319-fp5-s5kjn1-v3-0-9cf4b8c09567@fairphone.com>
In-Reply-To: <20260319-fp5-s5kjn1-v3-0-9cf4b8c09567@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773934595; l=2959;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=3ipKa8hblnRNaaERan/n8j6yf85GaajtJfWVBjNmcTM=;
 b=RV2mgo6do5gEw3QIUx5tviPaX0BliCVJrlcje5AmWGDs1YRAZEYN6hl8IStYAebbdojZRElQ+
 7ap9WuLBxHnARQD88+/9EtucHbka97EVEuZ+9+uk46z9oPvDQN7p8Cr
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277854-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A1DC92CDD1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add and configure the necessary nodes to enable the front camera
(Samsung S5KJN1), connected to CSIPHY 3.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi               |  7 ++++
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 47 +++++++++++++++++++++-
 2 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 343da1b18095..6cbf6ba5fbc0 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -5774,6 +5774,13 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 175>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk3_default: cam-mclk3-default-state {
+				pins = "gpio67";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_default: cci0-default-state {
 				pins = "gpio69", "gpio70";
 				function = "cci_i2c";
diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index c9c24c36ba7e..04cb9230d29f 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -12,6 +12,7 @@
 #include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
 #include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/media/video-interfaces.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
@@ -626,6 +627,23 @@ vreg_bob: bob {
 	};
 };
 
+&camss {
+	vdda-phy-supply = <&vreg_l10c>;
+	vdda-pll-supply = <&vreg_l6b>;
+
+	status = "okay";
+
+	ports {
+		port@3 {
+			csiphy3_ep: endpoint {
+				data-lanes = <0 1 2 3>;
+				bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+				remote-endpoint = <&camera_s5kjn1_ep>;
+			};
+		};
+	};
+};
+
 &cci0 {
 	status = "okay";
 };
@@ -666,7 +684,34 @@ &cci1 {
 };
 
 &cci1_i2c1 {
-	/* S5KJN1SQ03 @ 10 */
+	camera@10 {
+		compatible = "samsung,s5kjn1";
+		reg = <0x10>;
+
+		vdda-supply = <&vreg_l3p>;
+		vddd-supply = <&vreg_l2p>;
+		vddio-supply = <&vreg_l6p>;
+
+		clocks = <&camcc CAM_CC_MCLK3_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK3_CLK>;
+		assigned-clock-rates = <24000000>;
+
+		reset-gpios = <&tlmm 78 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&cam_mclk3_default>;
+		pinctrl-names = "default";
+
+		orientation = <0>; /* Front facing */
+		rotation = <270>;
+
+		port {
+			camera_s5kjn1_ep: endpoint {
+				data-lanes = <1 2 3 4>;
+				link-frequencies = /bits/ 64 <700000000>;
+				remote-endpoint = <&csiphy3_ep>;
+			};
+		};
+	};
 
 	eeprom@51 {
 		compatible = "giantec,gt24p128f", "atmel,24c128";

-- 
2.53.0


