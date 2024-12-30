Return-Path: <devicetree+bounces-134723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4809FE5EE
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02E0D188273E
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 744EE1A9B5E;
	Mon, 30 Dec 2024 12:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uFjfNf04"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0AA1A8412
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562696; cv=none; b=oxWikgF3jSouryvm2W4X5jS2FqYfqwLPosEyPkzV+CKZqR0Kerp8d9QloYR1kOnvzwXP0mjxaK4D3vQ++ns5StvvgPnU426eHGVOcc8UT5NktFcn+wxPUlHUR1xmhqXby+vmt9ZQh93kBu+a5SsdTHGBQUz4oXBDhXlCyATBAkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562696; c=relaxed/simple;
	bh=1twL1R6+Gz6p/VKm6pQxuF5xcNrz1voVT8gEwVMUkrA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A71p7U2dw3eJn4sDZ7u149S7ijZc/9w/xsfa1F4l6A7MWV8oaRGUXhVUrGTgLBS6jHobaZskpbFC6yXOyj7JFf/54ON6PDOwN6e3pmellIboTmbzjIIgXNh3YERzyTKdMKqWM2YIEPMjWsGb7DBhmJwNXNmuQw2u8nvEEojOc/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uFjfNf04; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43623f0c574so61594685e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562693; x=1736167493; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8zxzmfN+S+EqwXDEGQufwjDgqTqyEKpfp2+VozhCeAc=;
        b=uFjfNf04Ik4uoyH6prnROdFh5ggoLYOyCwq8lF2kz6Na/4dSNYmRqKRDTtgkHT4ROB
         dZJ+eiWY25DOIMr10VwTwkF6Ff2CtNzHHKRISQb/oG0P7HkRmhmNGMbVgo7LPvfWEkPx
         ifcDc+dECRdLnmId1CX5bU6Skv2mXwM11/CqEKOc9gdqB7ZzxJ9iUdHTDnWSfAIZjdXR
         SUvv1so8Sten7MroJE26VHKStmpNsWlCt4Bu6VzphO9IywIiZWEl7HgdLNOCyNU6sSmb
         gmGtcUXDZTa98m/3VRcrEUtkXyM7sSQ10UtsTskytczFL/1HG3NIq9y0LmaArTmmCqfR
         ms4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562693; x=1736167493;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8zxzmfN+S+EqwXDEGQufwjDgqTqyEKpfp2+VozhCeAc=;
        b=mXRmm3Vhd/E3bmhzkFpsPJ2eqYBm+PNpjjeuJPdARnhguLCJcGAGzpB6ji4FpVQpE8
         AzGxFQQkUpEQV30yGBwwqKQXHf90M0Uus8CbEW9NGkE2FLsuNoev4DDw4wjuDBPzMWia
         o5jEQLgpBxYpD6xZDCLa0f0SCNI0Ov7sJSeMfiJgx8rFXgeuU3C8wmzJQb56SL1ibc4+
         Y0XonkVosmci2utWPEZSSBSUQDpYC8Voai/RC4aKsUMo3fEKYRBogepqMAbgI/vys4NU
         3syC1eVhpfjqgZkQoN6SGh6MEXF4OWyJ81FaAvwIQ/VBXlmczyGys2n7p5QN/TmjBRJ9
         zU+w==
X-Forwarded-Encrypted: i=1; AJvYcCWzhy0UXel6V9jmlJHzKn/aqUQUAxgY9CnXKBdRtpF10kx0cjpNJTSAcU1kScxV1ZuOLWv97tJZSrYT@vger.kernel.org
X-Gm-Message-State: AOJu0YyFmydZf/ITguENgf/5xjMzq0BAMPfOuaouvfTly5LqxrjxYiPz
	eA2jl/c7JJVd6+MFmXsdDTkiEsftkvQo8RuJa+9eVkDfZQYGjK0TkQvgl40MiIk=
X-Gm-Gg: ASbGncuoBbFo07ntr+7DJO3nktAyDDBffc31NL0pV+TpBL8sbEppSSGdFa2fi6V5Q8L
	e9CB8szx1KcJ6XryjAfNMZyJsJbEM5TkqHuHN1+XoP5IhEZwqpw8wlL2eI4hT2a2G/Yy1DbPUua
	cZErDPcseeRFKWfs77BV1yQS780WzYkgY632dxqKghFU8hc5yUmB4sbQe45vGbXzPE3HzUpNtOD
	RRgQu9P5giytdVo63S1asi9KyOIpMWi3ZnGzxt2SNItmVLR19pdJMLMi4kh6iI6Vo3WJQpTPD06
	yA==
X-Google-Smtp-Source: AGHT+IEofBUb1zs6VJBgdMv3fHfb5nIMgMaWaxPzn0kbnVaxnMjcoobq1d6KAl0JRI0/I4ZgXayOJQ==
X-Received: by 2002:a05:600c:138d:b0:434:ff08:202b with SMTP id 5b1f17b1804b1-43668643173mr316610935e9.12.1735562691184;
        Mon, 30 Dec 2024 04:44:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366121955fsm359913215e9.21.2024.12.30.04.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:44:50 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Dec 2024 13:44:45 +0100
Subject: [PATCH v4 2/6] arm64: dts: qcom:
 sdm845-db845c-navigation-mezzanine: remove disabled ov7251 camera
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-topic-misc-dt-fixes-v4-2-1e6880e9dda3@linaro.org>
References: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
In-Reply-To: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Felipe Balbi <felipe.balbi@microsoft.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2168;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=1twL1R6+Gz6p/VKm6pQxuF5xcNrz1voVT8gEwVMUkrA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBncpW9dio26gXaBHtFhv5NsMh61BNHi55g8yAYKLA6
 1rYgWJGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ3KVvQAKCRB33NvayMhJ0S+zD/
 9uH4Cor6MPmic5ikGxMQzk+NPlE0uJDsPttlhXRvqMfvFmtn4zDqnaIMPcEv2zjwYAkeAQOrd2VvFD
 yoFsNeJ81ecYh7BKb99Ju60DlB5r7iWCOEVQd2Z4gyY0nEiHL3NJAuf8M4FANqGmJWfmhjysJp1rls
 fnE9fZT/S1GCj6n8U9BDPhpE+hHa249Y/yr8tmAvPzrASVKbwLfkhF1w4dZOPKpuCEfuSIj5XFN0Gq
 JngLZ6TSGTn9f7L1wUVEWReo/sruWVCisLScRyfv4vkC6LBJfGnr4Yn04MS75FqOqeQkilW0xnuxVV
 IxSu9fwD6cFR2gY1p4w6CNEzo8p8puk2f/kSQSU2HUdiHltXOGDIZTAzIjrnBV1Br1Z9nO8Mro/SRS
 aEwzt5ttYKFlxWnUVXjhWWrHYYDQkuh4hjxCc9dgPzdgmMAOhFNwqsz0KA1MhNCx8doBnjHKMwn+II
 dFlfME4HBc+2iykSBBzQfq0xaF3kQdiev8lItIRR3NTy9iJ/2Oa0vA/+YufuaWNGBKmZ07Cn0Iy0BY
 usNPeVsK2ljzpfKw6pffiq8ZdsHI217QYp55/M+COW/PvlfKE42MPN7a9MaKR7OcTUd54wI/X1nhgW
 UB3z9OVWSSeYatoGlYunSJoxia1LCa2erxPujYaoYjZ65wFQNXoiH16tgaHA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The ov7251node has bindings check errors in the endpoint, and the
camera node was disabled since the beginning. Even when switching the
node to okay, the endpoint description to the csiphy is missing along
with the csiphy parameters.

Drop the ov7251 camera entirely until it's properly described.

This obviously fixes:
sdm845-db845c-navigation-mezzanine.dtso: camera@60: port:endpoint:data-lanes: [0, 1] is too long
	from schema $id: http://devicetree.org/schemas/media/i2c/ovti,ov7251.yaml#

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../qcom/sdm845-db845c-navigation-mezzanine.dtso   | 42 ----------------------
 1 file changed, 42 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
index 0a87df806cafc8e726aacc07a772ca478d0ee3df..59970082da45203311146cc5249298f6188bf67a 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
@@ -79,45 +79,3 @@ ov8856_ep: endpoint {
 		};
 	};
 };
-
-&cci_i2c1 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	camera@60 {
-		compatible = "ovti,ov7251";
-
-		/* I2C address as per ov7251.txt linux documentation */
-		reg = <0x60>;
-
-		/* CAM3_RST_N */
-		enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&cam3_default>;
-
-		clocks = <&clock_camcc CAM_CC_MCLK3_CLK>;
-		clock-names = "xclk";
-		clock-frequency = <24000000>;
-
-		/*
-		 * The &vreg_s4a_1p8 trace always powered on.
-		 *
-		 * The 2.8V vdda-supply regulator is enabled when the
-		 * vreg_s4a_1p8 trace is pulled high.
-		 * It too is represented by a fixed regulator.
-		 *
-		 * No 1.2V vddd-supply regulator is used.
-		 */
-		vdddo-supply = <&vreg_lvs1a_1p8>;
-		vdda-supply = <&cam3_avdd_2v8>;
-
-		status = "disabled";
-
-		port {
-			ov7251_ep: endpoint {
-				data-lanes = <0 1>;
-/*				remote-endpoint = <&csiphy3_ep>; */
-			};
-		};
-	};
-};

-- 
2.34.1


