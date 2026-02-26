Return-Path: <devicetree+bounces-268907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFC6H5hfoGmMiwQAu9opvQ
	(envelope-from <devicetree+bounces-268907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:58:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E45D1A81E7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6941430B89C4
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563243EFD09;
	Thu, 26 Feb 2026 14:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r3UJwM+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A744F3EFD18
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117488; cv=none; b=Hm7aCRMyH8M49663zvtNwZO21XXT1N+wplmvGLEo2YqcaECKBJwd4g0S3Qu2Zu/nhjQCC7/1CDlR6LHCxZbqbPZqpiIzh4JGOFQP7B+JRjSd0uVZODp+KIeXs6k/jc3zggvGMPO7YybgD6e3zUvbZ36XaQ+PxH/tCTadANbqoYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117488; c=relaxed/simple;
	bh=ebkke2YANs9n6nYyCO22AE5aFFfEjzmYBdxWd0Lesig=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NOpvr6XxH0H+895A219evMxoaMSVwooyzcJVs1Lg7FIERqK770Yb/nbrzVWNj/WZYm2JCoyro6UwJHBSkGsxICT4KTz7gA1ChdfgbkuDzsAOmKQketpx8AdpdxsktikfY8r6B7Vb2llvvZceZOVgyWbnB7/Ss0knQCgbkd11s+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r3UJwM+j; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4398d1f06caso895908f8f.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772117485; x=1772722285; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7tos4+IgDSo6CwfLzCIfZMyKUALZ1R6xgwrZqzbsYVc=;
        b=r3UJwM+jzoiyPmw5BYMcv0yOb2kTJytyWsQMkMZbuhBPiJk2GHDxZVcGdurKv4D7vj
         0LsY3T3RocqCahupEGZtDU964E7aLZXPIYac0OCkTYzdbSmxtNP0T7s/DIeZ+RLiV3ea
         +/qLAMhofuJAitjQpznz/CRY7ypmS+RBcdGKiiArj1OHAY2FyoCAVNm5rjgDPG3aV2gS
         jNE4YBgJKNmeMPbojPz79o63TRS7aCcmzyR/SWjtwBJT+TiUWrSsXDL9P4QwvuBUI56F
         LqtA+2wyiFqM7O2uCzVaCNbEmziSznAKgzrEuDArho/j5eYwFFuXhwLTu5xPeQmF9Q4N
         V7ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117485; x=1772722285;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7tos4+IgDSo6CwfLzCIfZMyKUALZ1R6xgwrZqzbsYVc=;
        b=YJqcfR/a0KRUnzmipzpQy+NJGKSkM5+BZ1e1Mg1L3bjURoZkEdP8MtT3ygOoDEXW67
         Uo/sm72iS2e5y7faV5wEGBWi4fCwofIyiqONaM1BHZoWzQDDLyjv56L093lniyRduafi
         YpOGARAGjW7bFrqy3ABnK6xxrsvt+Ukhc17oN4LK9J4aqJzNNh/eAXc5znLVbp3ZRL/a
         +h4FT0X45MRpCFaC+5SLEESN+SAVjZBGOzcWT3gh9iqffYyaXgbp3Nzvm/fT9ik0zCHg
         jWX7FftgilFBzCA4XAKEdFxnJLPvXIjWVg6Bx07zbTbm9eVe51JkNo4pgQ8tT4647urN
         Mghw==
X-Forwarded-Encrypted: i=1; AJvYcCW44zbkzhwPFA6zvSivEoWH9uT8a44hNkpYg+oLkEfcQw73HteRHwprD4qApqzKCvGRUPkLeS9vWvys@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ87fDHy05l4U4mx0ablBos+StAs5WSYwF+SmzqO4W+5M/0Zkz
	ixRZ9hyi7Em+/FAmnS8ODDJzBu48LUi047g6tBqpIF2ei+jq91X00XOppN5JvDCEEIk=
X-Gm-Gg: ATEYQzyVCHhL83RA+R2lgewPJZqceGQcEeyg0x79hZS8uuan2yQ0mB2h5rBL8NL/H7l
	PiM1t2jGaL1W1m8eO7NB1AprQOWMlNispz23N+tmxRu7Z3FQ/IisQr2U5IYHYVXXUtXXs9f08C8
	w3RfnLxWKaWnnvdcvuBP8f+XCwRSZDMTodrOBZ8vwaCNIUFRxKnUyTfDw15zhfoEjsznNFARnpe
	K5A/e+SD+adEbhmPvkQsVvzdUPbiy1VYuQ7JkB41De8rhW1pVewB7aiPgX+R6rtrIjGe36eHmnw
	VY1UQUt2nxexWmi9Qqv5/aIpoSeak82/G//giDAYHtZc0hm6dtPgtPNh4Au1UtnoLhhYG7+qvLU
	8p7r0b+6DGtNiWZu4tAWXDgha+i7k45NUkmLn4RPDNWOGr67I++UkV3n8Xh7PIlyBeymwzPr8GB
	2pmPJ+VaP+v6qTeEAeKTbs/ME1uL1MbGGIvz0IAhaqrHnJuJqiYe8YTmqu2fGHuleeMv2fsxRYj
	pw=
X-Received: by 2002:a05:600c:450a:b0:477:5cc6:7e44 with SMTP id 5b1f17b1804b1-483c2171795mr70338465e9.11.1772117484981;
        Thu, 26 Feb 2026 06:51:24 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf5fbsm36621675e9.18.2026.02.26.06.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:51:23 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Feb 2026 14:51:16 +0000
Subject: [PATCH 11/11] arm64: dts: qcom: x1e80100-dell-inspiron14-7441:
 Switch on CAMSS RGB sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-x1e-camss-csi2-phy-dtsi-v1-11-f3f7ddfbf849@linaro.org>
References: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
In-Reply-To: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2061;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ebkke2YANs9n6nYyCO22AE5aFFfEjzmYBdxWd0Lesig=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoF3eMK8N/ohL1IpsWTi/bBKWzMwgXTHzxWE4r
 nXv4JZz7FqJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaBd3gAKCRAicTuzoY3I
 OnPhD/4+Kdi2g+u0+Vs63hNm9aKV6F2YHkL8P3sf4ExE3ujCtCW7z+yS1htQbyXk0BHSUZM8tRz
 +cVi5UFsFXT/O/dKDIttw/bSKkarXZFBpAYZEqYebfNyt2WeJDHW0tCrNEnkn1WMR2iW8z3nk9x
 a0WQyMKGs2yj7QPG3JGzj3YBhEp9JwiP6TnE5c4OPdIyUJRrGeIKGhRmWRooTaTV83GrgIQPBCk
 9VfVFkBs9Zb3ga4iW5MmuTJlP3usmiie6Nvlqidf5Jz1NLNNX07GgMom5ReZ6ZzdWsCP4tM+eIA
 ptCOjmY61kuQhZlSg+ki885PoVOt39uCTD1T1SpxJMowYFKbE/upQXX43FtC5IWMH5u2z01Uztj
 8F1KgtnuqeVhAmD6nFBs+fJoGRudPGeRQn0GgeICdla+u+SrW4f4jxZ6EU77BIXmTD81Cx11yNS
 BflrrrlYnsAv4YbBy2ybXqGHAnuS7txpx9ypXO7mJu3s7s6y/EcgCAgSpXO9XL/AE9HUoyhEF3Z
 n7TFXhMS7SNaXdEGggANvY+He6e6f7yughB67GYD+c/cR3o4Uz+AZXLpJVGv8/Gr5yRjp5TC/X1
 OzQ5BhqNrrSmNiFwLjM4Bkafp2+vv0Dw4aIRcYNfkEk+l3UI38SpqJp54kmRZRGQkxFocIlYVlB
 GgnXq+AzYvljkyA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268907-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email,0.0.0.0:email,0.0.0.10:email]
X-Rspamd-Queue-Id: 8E45D1A81E7
X-Rspamd-Action: no action

Inspiron14 has a ov02e10 sensor on CSIPHY4. Enable the list of dependencies
now.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 61 +++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
index bf04a12b16bc9..d21963e52ee48 100644
--- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "hamoa-pmics.dtsi"
@@ -792,6 +793,66 @@ vreg_l3j_0p8: ldo3 {
 	};
 };
 
+&camss {
+	status = "okay";
+
+	ports {
+		/*
+		 * port0 => csiphy0
+		 * port1 => csiphy1
+		 * port2 => csiphy2
+		 * port3 => csiphy4
+		 */
+		port@3 {
+			camss_csiphy4_inep0: endpoint@0 {
+				clock-lanes = <7>;
+				data-lanes = <0 1>;
+				remote-endpoint = <&ov02e10_ep>;
+			};
+		};
+	};
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c1 {
+	camera@10 {
+		compatible = "ovti,ov02e10";
+		reg = <0x10>;
+
+		reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam_rgb_default>;
+
+		clocks = <&camcc CAM_CC_MCLK4_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK4_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		orientation = <0>; /* front facing */
+
+		avdd-supply = <&vreg_l7b_2p8>;
+		dvdd-supply = <&vreg_l7b_2p8>;
+		dovdd-supply = <&vreg_cam_1p8>;
+
+		port {
+			ov02e10_ep: endpoint {
+				data-lanes = <1 2>;
+				link-frequencies = /bits/ 64 <360000000>;
+				remote-endpoint = <&camss_csiphy4_inep0>;
+			};
+		};
+	};
+};
+
+&csiphy4 {
+	vdda-0p8-supply = <&vreg_l2c_0p8>;
+	vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 

-- 
2.52.0


