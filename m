Return-Path: <devicetree+bounces-223917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 099BDBBEFEB
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 20:38:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 34FD14F1458
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 18:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296222DF14E;
	Mon,  6 Oct 2025 18:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XyRlcWC2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B847F2DEA72
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 18:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759775854; cv=none; b=O2XE8yRIRY6NwUwvLDM4+VH33VWdVIIiiYm8Ay6UnNS95IJIljVlK/7ID6C9erX4s6ZOODPqiI1sQYtTrY+WkOb96Eh2E3zfGd+1BCNyulYTM26W+biIwas9/khvtm6CXeS9SPHyw3Xi3nw1h2UkGZuPnk4DQNp3Vj3smeOVaGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759775854; c=relaxed/simple;
	bh=RUQon0X2l9dewpgoFW5x1ZQM3uIRhbtsZW3j0c8QLxw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sIogJ+1dp2AMGlITDPcu0Ir2ZbfRCKdDZmlJlpvtaIZ279BzVJ4+jBe+IFS9XEwqVGVKF/AU9eq77CtSjkpa/rUY76+tThZE2rBVs6Ug/OhHBxcv5r0f+PFoxN19IuWHdYGmPAaTGU6Ezt0k00PAkGlqV7xumZ9+V7uUStMBKYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XyRlcWC2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46e5980471eso26219375e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 11:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759775850; x=1760380650; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4nqpL022ZHzLxoBSNe8lQlcLzj+7YwLeMNobOkGqn9Y=;
        b=XyRlcWC2nBn1dRMNzO5nhx7jSnjEeACoML5xqyYWZxIa/XZNWGYn9MG/7ir1KwhUvF
         +h2nGeEvWWord8GJ4ClejJtinQgkeD4ySnqER7BpBy6qAm/+QaO7+ra1RPHjVxZbVZKG
         ixHap+w0SOdbo7dmV7v77h1ucEF3Tpd21UqtqFgsVFh6XjCm36Tl8uIq26ohgs0hSMor
         E+A4ALXjz6oDqal/hCQnRoX3Feneo1z6K66prIMO6muUSL4/wVeLu+VTXmQpQV/ws1Br
         d6Vo95ewebAVkh3iJobAAiHt7FvCRur6tBgCyOBx8f/MGCq5eHyA32KEvZRJ+4DfVjQq
         eUkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759775850; x=1760380650;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4nqpL022ZHzLxoBSNe8lQlcLzj+7YwLeMNobOkGqn9Y=;
        b=xLY83w1ydbZkAgBLhfW/gZlfVrf8R4P+rf8m6viGJYAG82+j6lUUdTkdzHVbmfPgfs
         ztnOa4rNmtHL09ZyeOIECp7QBbRB1FhTgHhIskrN3Crayn8Bhb6x4sOGlnniN9gmR+Hj
         Tw192Xf9ENvfpemKJsdG8mm34RIniJk8X27hz5l6r+MzNM4rj+gRlZkcaAVHbz4cz/7s
         yAMKR8w1z621k6cW6o1DUeyD9Bz0gOwjC426YkacCQLEHcW82LH3BmubL64RyA/J46aG
         TVJRTQPe6YIGOhvAXCEntAlNuzHIMFc6roYNzhpSRyFep53Ge1WIOnvNtC/R+bzNshRQ
         j/mg==
X-Forwarded-Encrypted: i=1; AJvYcCX/O+MRrOLgDA7lcYW4t3LjgoUjMgs5UBeo3RaoaY0CAr7/kXcWWfn1Lj+TfSPZms7nZlPErfqs2FU5@vger.kernel.org
X-Gm-Message-State: AOJu0YxnEfNQJynbbkqjW9/I4/KKvuoogB68nlIwa2uV9VxYyo7yk1jE
	jf6dqbTWlHgsFPTczTLALIpJ7gfH3d4XJrns9rJSpw9JXHBDiG/KmEijF3goTNGJnhE=
X-Gm-Gg: ASbGncvGthCfT39nqPdlPoXowZc9ypJLPWfj9RkYMmrTWAKLS/0S7YHilYGyqBLJFNF
	YneEuozPRIxAuWH8GH/V+7J2wtMQKssjU85v29X4I0qRe9rfQYu8RlZkaOjWIzR7kldVNpGGyTJ
	rn8ZXtDVIK0pvhp3JOwJvYiOv9ph05uE3K8PhTWHZue1TI/fiBhU4btVfmloz50xRdfzGhPx/fq
	yrbCyhminsnOgKaW3OdkB9C38+mKWVoQlDHcaEFaLO8JBVWhn57zKpCcc+oxMyUxmyT22tVnX28
	3qwboPncKsNAl68ILaerAyN8qo9oS4xKX/dNRVjFY6CSfzzL5Axc38HgxhrLPopTlIXlNz090NI
	ZOwFCJOkhkJrOjVr0kn8TpNxz8h5XpGtzhXE1xz8Aj6QWGVxnvouzc8xEEQJ1Xd8PHzCmLa+p5s
	9ljUUWXA==
X-Google-Smtp-Source: AGHT+IGVfYaIP/zCK/+Ukb7WUJrFoG+q2zlnyv+sL6LlfSFtI3oHSUhRuOZSiaVkqiU6+Sz2bxLJ1g==
X-Received: by 2002:a05:600d:41d0:b0:46e:19f8:88d3 with SMTP id 5b1f17b1804b1-46e71140bffmr77041755e9.22.1759775849697;
        Mon, 06 Oct 2025 11:37:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e61a022d8sm254997085e9.12.2025.10.06.11.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 11:37:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 20:37:18 +0200
Subject: [PATCH RFC 5/6] sm8550-hdk: Enable I2S for HDMI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251006-topic-sm8x50-next-hdk-i2s-v1-5-184b15a87e0a@linaro.org>
References: <20251006-topic-sm8x50-next-hdk-i2s-v1-0-184b15a87e0a@linaro.org>
In-Reply-To: <20251006-topic-sm8x50-next-hdk-i2s-v1-0-184b15a87e0a@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3890;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RUQon0X2l9dewpgoFW5x1ZQM3uIRhbtsZW3j0c8QLxw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo5Axkall/cRF/u+lnGGBUUMUWRb93dFEOPn5wrGEQ
 t7wwg/qJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOQMZAAKCRB33NvayMhJ0RSuEA
 C3YnCo8MHFyVI8i65vd7TTct606yieKnEtl/1K6NVtKEav5fpC5ZlXYnso1R1ZND/QMEtG0Xz/IQj8
 Ll8Nes3EjHrTkquzuNcguJBJURT+Ba6VMrYboJx9kqUcOsHfLpJZCn4EHvritjrUvP/4EDh/7phQ85
 4H4ieU6w8Aw6e9qWw87mXGJTOwYZuN2+R96dxc8LWE96sGFcqa+60pf/5vzAAMd98x1DJSQV9zu6xQ
 aDuV18tmZPPy7nEQ5mEHXFSGbg7wK3virDuk4htX5R45XvJb8dq4LcY2MSJ+sC6kOCQDaL0ydLvBuq
 MarssHrF3IO/7rb+0xgX17yrIcut8Zcv1nwXWRosJs6S8wIysv9qksCsnjFgmXYN5HhpQzhOPvPgg5
 ZiDJdxvmzleWfg9mc36MmQMCBy5AVeSFUsiiktzcO7HgxpJbtSV78oLG2F3jNzEjTRrxUJpxpdc+Ix
 9Xj46u+f9Dkj6HseFDj7BNWqAQiIOKrwH5i77dw3zaULTFSDdKf7zOxuA/WMB6ZX0CVgDLR7S92XaG
 UYbkNcEk68P4HZrqckx4Lnp+S2UDuNdO9S6HezjsC6nNxKbq22TaP3R+8ypwes7ejNiH157/ECpC0x
 xxu4WiBHwOJuV/T8+12hP4jZG7ZosvWbDcuoFQhFLZ0lirBcsCOHDxSIQxTQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the necessary nodes to configure the right I2S interface
to output audio via the DSI HDMI bridge.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 30 ++++++++++++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 73 +++++++++++++++++++++++++++++++++
 2 files changed, 103 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index b5d7f0cd443a18b167c94e450b5b9412897b2ba2..29c31a3d380d52155a605b24fff793745ba3b17c 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -215,6 +215,18 @@ sound {
 				"TX SWR_INPUT1", "ADC2_OUTPUT",
 				"TX SWR_INPUT1", "ADC4_OUTPUT";
 
+		pinctrl-0 = <&i2s0_default_state>, <&audio_mclk0_default_state>;
+		pinctrl-names = "default";
+		clocks = <&q6prmcc LPASS_CLK_ID_PRI_MI2S_IBIT LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+			 <&q6prmcc LPASS_CLK_ID_MCLK_1 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+		clock-names = "pri-mi2s",
+			      "pri-mclk";
+
+		assigned-clocks = <&q6prmcc LPASS_CLK_ID_PRI_MI2S_IBIT LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				  <&q6prmcc LPASS_CLK_ID_MCLK_1 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+		assigned-clock-rates = <1536000>,
+				       <24576000>;
+
 		wcd-playback-dai-link {
 			link-name = "WCD Playback";
 
@@ -278,6 +290,22 @@ platform {
 				sound-dai = <&q6apm>;
 			};
 		};
+
+		prim-mi2s-dai-link {
+			link-name = "Primary MI2S Playback";
+
+			cpu {
+				sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
+			};
+
+			codec {
+				sound-dai = <&lt9611_codec 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
 	};
 
 	wcn7850-pmu {
@@ -891,6 +919,8 @@ lt9611_codec: hdmi-bridge@2b {
 		pinctrl-0 = <&lt9611_irq_pin>, <&lt9611_rst_pin>;
 		pinctrl-names = "default";
 
+		#sound-dai-cells = <1>;
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 7724dba75db79a9e66a2c61e1ea3607bacfdf5bb..73df93288f6e0ed71ec1e7f5ae09276e7593fd60 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -4956,6 +4956,79 @@ data-pins {
 					drive-strength = <10>;
 				};
 			};
+
+			audio_mclk0_default_state: audio-mclk0-default-state {
+				pins = "gpio125";
+				function = "audio_ext_mclk0";
+				drive-strength = <8>;
+				bias-disable;
+				output-high;
+			};
+
+			i2s0_default_state: i2s0-default-state {
+				sck-pins {
+					pins = "gpio126";
+					function = "i2s0_sck";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				data0-pins {
+					pins = "gpio127";
+					function = "i2s0_data0";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				data1-pins {
+					pins = "gpio128";
+					function = "i2s0_data1";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				ws-pins {
+					pins = "gpio129";
+					function = "i2s0_ws";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+			};
+
+			audio_mclk1_default_state: audio-mclk1-default-state {
+				pins = "gpio124";
+				function = "audio_ext_mclk1";
+				drive-strength = <8>;
+				bias-disable;
+				output-high;
+			};
+
+			i2s1_default_state: i2s1-default-state {
+				sck-pins {
+					pins = "gpio121";
+					function = "i2s1_sck";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				data0-pins {
+					pins = "gpio122";
+					function = "i2s1_data0";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				ws-pins {
+					pins = "gpio123";
+					function = "i2s1_ws";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+			};
 		};
 
 		apps_smmu: iommu@15000000 {

-- 
2.34.1


