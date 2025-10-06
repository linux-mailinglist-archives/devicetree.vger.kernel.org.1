Return-Path: <devicetree+bounces-223918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5DABBEFFA
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 20:39:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9CC394F25CE
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 18:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 570F72E03E3;
	Mon,  6 Oct 2025 18:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GOBAWtz5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8492DEA8C
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 18:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759775856; cv=none; b=TDlyK9v70Sx/DbHHcXgiX0IEJjgYZn7pmA8o71MicedVRKUPiVD0/NWCcoI1rRpixZ/JCAoe3PTDm+RVhdu7f3W7swn6x9Qs/TAt9Kt9m4EJBsMJqMZUL9iU25Os2yi4maqVuc9At3Xpf2WB00rjsbrAMYv+5aIkGZmoWGT16+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759775856; c=relaxed/simple;
	bh=zXvVqOY+FmkLEkipbzYVu9WiK1E5b/lEUQslscbETwc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hMXuZ7HhPrzVCaacCbS5SiSw0o9LwfEYcxoMlkeqhvCv/fPhZ+pA9cmnHOxfkCZIPb3ws9dIE8Kn8PeJBUmoRQJPH6joYrVDFT+lI0CtGtigdy9q3oYe8ava3gPG3LUqglMvN3LBSq8dRD5YAOpIyY/j+qfuiBNVPtJsX81sGlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GOBAWtz5; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ee12332f3dso4626556f8f.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 11:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759775850; x=1760380650; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QnX5XErDx5O3zbBQ7ufQmhBI+YSqvg4f14xs2R71brc=;
        b=GOBAWtz5AJ3DuuRSv+O8vCaxdolOVa7Fy8opj6vg9Y6ogfjRwbgcEl/eQfl7wwnw4l
         Q4/o7GnYZkCc97fd/H/7MlvrDIU+qMnN1vPnk/UokRdePqsYlGR3xITlpbWNVYLSs+ZO
         n/pcJDvG+jJKkTHMp3O6uqgYrqfGYkEmtICjNicXvwbZf/8uJVK7eUms5aFFOlde6uge
         Fi5DOSTbOFE2yspCQuhufyefiw9oly8Ffgaoxf/isDrkH+JCkNZ91f40yVa0dig3eUF5
         SnXBxYFgQu+EBguWYYw1fu/8ai0WnTu1+boc8/FGE9mjF5mxtu37PxAGL5GzsGr/EuYz
         XnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759775850; x=1760380650;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QnX5XErDx5O3zbBQ7ufQmhBI+YSqvg4f14xs2R71brc=;
        b=eSzMtaVm2aGjGSgPlgDsUL/bL5lfAZiadeh/IzyhhQv7fuy/YTfXmicvRo0LxQgcGD
         vslxZF9p70YuAj2U3l8oClJzDm5bch2XQvL59MGgDBzvFni1Wkp3AE570TUz6gqop4mS
         k2D6q0sofx8pgHPaBCQ0sTMy4fjrG6ixVumo2pZlXYyyipIZxnZ/h5ZHeMDc6CJwtMd0
         lFuxNkbDjy5sdh+tB+3DzhEES/CnMAszjb/LtbT6baU17ZpJYMYDHsx57iBx7rno5oy2
         nJOyUYpw6OjmS5rMTh5qJWEPbyTMjNy/c08tCuf6LIXcz2or+coTaQ/m00F611hAuYRT
         h3RQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIqaupvFbqZweOiqhTMP5oJFIDrutY4Zkr3Li0w+J/R/jtn14TvTYawC5pvFF3ZGplWZYjGp4f+Fd+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6H94IjfRyHXOyav3hcLoU7bqNOEczWjEr/2rN/i5cLZIkHXsT
	m4ICwp/dpe4yHbTP1zgc4HBRYGV3+oli2NMcRVwpUoz6QG/FT2YErKz7ZnyikDeNk80=
X-Gm-Gg: ASbGncsQtGh6K+G0fDnItI87Iwpvx/GpTv5ntDaZmWPWq4cWZ2PyoKhiVoBxJ/5lIet
	YVyvRKwHNkCZjKzq7Wsvzy9j1qUL8oi2WWZe92ocIjZ85DtAAYCITCSfhf/VoW1yDYTIKUsGyZb
	den6cKkNIvkhDrSlPhNnKgMDQyNp/9HHjVctnOxothZf7ERoOv5+HBb+xeS0vi32E8/AO8K1R07
	1OsI6Mo/cHoj99N9Ccv9iP6geap5cHlPLPksYxB0OfDqgOt4XoAPZ04DYrceNvRoaJ6GllbM/3j
	o3esO63BaiNwNQokDKWZ2ROyIJWb/4vQTV383B923S1/ZDI9kwRzVCA3v37jJIu+4F5PqtKqiTp
	vLXopWT9SFwA63NrS8mck+29B4k82xY4Lck550uLDjnwnuuD+yFdmcowb9lXMR6p91JadNOA=
X-Google-Smtp-Source: AGHT+IHmiv4QNzGSgUm/ckW+jgSBd7VLloyZLLNL+/yjR4sSGkKLrO/+NrpaCk6W+wa8KoSBCF8W9g==
X-Received: by 2002:a05:6000:4382:b0:3ea:5f76:3f7a with SMTP id ffacd0b85a97d-4256714a519mr8024107f8f.22.1759775850429;
        Mon, 06 Oct 2025 11:37:30 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e61a022d8sm254997085e9.12.2025.10.06.11.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 11:37:30 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 20:37:19 +0200
Subject: [PATCH RFC 6/6] sm8450-hdk: Enable I2S for HDMI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251006-topic-sm8x50-next-hdk-i2s-v1-6-184b15a87e0a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3244;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=zXvVqOY+FmkLEkipbzYVu9WiK1E5b/lEUQslscbETwc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo5AxkIxmKn5IT1+b4gR0HImUqI1UGtFwwvxZXXk0/
 9W1tRUqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOQMZAAKCRB33NvayMhJ0XBvD/
 4hnkvv1QftgEOxXWgVl6SGY6xgEt37UnmWMdFb5pHZNPt2NpiK30PK3phila+tmSllvcE5922lIipV
 iA00yRuF/EmkF4+6JCbOC7FYu0a3jIDJ2vL9nkPkaIs8vUIGxuxpJQP1sKTviqJ/UdeJwWKJX0Cpvg
 HNsBDQHPRjfSVVkHgfyaa/u6ZgqSyu+uM39s0FcXyjQ5h/ANNpQI1ejDfsTJ3gLQYqRqd/DQH7z3sv
 u0K3KHkYJbDCXLfgM6L77OF0oXe4BLzKcjIsftfzDUxo1jr9+8u1GdwzOCq0tYThHVIf1BMF4EEhM4
 srH5d76BCSsJbGQE6Fy9U1sthvmyt9jj2IeH9c/H43dRtiC2O2QUsycfgHBPBKfhc2X02Weo1yT9ZK
 8r2m2xXIcdbiy0EjPYqxByBWsezqZTrbYetEaOuPAGLcoDKne7puRxOyWReVq4NHj8n8jdVs3PMdTL
 kpXhdg8MsXqYIwqx775ee/93ld8j7C4jCa7MQ4uYaW2Ow5LnRSInUVw0SW0SB1PPd5c+EApHnsPE1g
 LnJBTGXTzcQ08Jq1yGscYHopnBBTu3xSMdrJPSdmAyYJrPsok7UpdQxQqfGx/XZjwnmYz9FTQsCl4W
 SGg4rlHYlP9RRrXPr74jniXK6d31yi1PsWwVDpn9hVIQBlTK6FDXCUw99RJQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the necessary nodes to configure the right I2S interface
to output audio via the DSI HDMI bridge.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 30 +++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi    | 40 +++++++++++++++++++++++++++++++++
 2 files changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index 0c6aa7ddf43263f30595b3f0733ec3e126e38608..c8fd4c8c6bc644ccb5f9fb05c099f27513b86e99 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -667,6 +667,8 @@ lt9611_codec: hdmi-bridge@2b {
 		pinctrl-names = "default";
 		pinctrl-0 = <&lt9611_irq_pin &lt9611_rst_pin>;
 
+		#sound-dai-cells = <1>;
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -1016,6 +1018,18 @@ &sound {
 			"TX SWR_INPUT0", "ADC3_OUTPUT",
 			"TX SWR_INPUT1", "ADC4_OUTPUT";
 
+	pinctrl-0 = <&i2s0_default_state>, <&audio_mclk0_default_state>;
+	pinctrl-names = "default";
+	clocks = <&q6prmcc LPASS_CLK_ID_PRI_MI2S_IBIT LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+		 <&q6prmcc LPASS_CLK_ID_MCLK_1 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+	clock-names = "pri-mi2s",
+		      "pri-mclk";
+
+	assigned-clocks = <&q6prmcc LPASS_CLK_ID_PRI_MI2S_IBIT LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+			  <&q6prmcc LPASS_CLK_ID_MCLK_1 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+	assigned-clock-rates = <1536000>,
+				       <24576000>;
+
 	wcd-playback-dai-link {
 		link-name = "WCD Playback";
 
@@ -1079,6 +1093,22 @@ platform {
 			sound-dai = <&q6apm>;
 		};
 	};
+
+	prim-mi2s-dai-link {
+		link-name = "Primary MI2S Playback";
+
+		cpu {
+			sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
+		};
+
+		codec {
+			sound-dai = <&lt9611_codec 0>;
+		};
+
+		platform {
+			sound-dai = <&q6apm>;
+		};
+	};
 };
 
 &swr0 {
diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 23420e6924728cb80fc9e44fb4d7e01fbffae21f..5ddc1169e8c23327261820f7baa31983a3eb0bf8 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4288,6 +4288,46 @@ qup_uart20_default: qup-uart20-default-state {
 				pins = "gpio76", "gpio77", "gpio78", "gpio79";
 				function = "qup20";
 			};
+
+			audio_mclk0_default_state: audio-mclk0-default-state {
+				pins = "gpio125";
+				function = "pri_mi2s";
+				drive-strength = <8>;
+				bias-disable;
+				output-high;
+			};
+
+			i2s0_default_state: i2s0-default-state {
+				sck-pins {
+					pins = "gpio126";
+					function = "mi2s0_sck";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				data0-pins {
+					pins = "gpio127";
+					function = "mi2s0_data0";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				data1-pins {
+					pins = "gpio128";
+					function = "mi2s0_data1";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				ws-pins {
+					pins = "gpio129";
+					function = "mi2s0_ws";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+			};
 		};
 
 		lpass_tlmm: pinctrl@3440000 {

-- 
2.34.1


