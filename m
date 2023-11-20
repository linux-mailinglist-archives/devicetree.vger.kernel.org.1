Return-Path: <devicetree+bounces-17100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4997F12E9
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 13:13:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6F9F2813BD
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9D519473;
	Mon, 20 Nov 2023 12:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BR/P1bMi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16BC0F0
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 04:13:10 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-53e08e439c7so6196634a12.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 04:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700482388; x=1701087188; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y4obJbFuX32a51CPgRwasEGqIWFeGs2SFetYjrfd9IY=;
        b=BR/P1bMiVUDoKw1BoecSGM4mIDLORYLlo7RbXSocFuXCQ1vmatjqkTtF6tc2iReXpT
         r5nkkdBIF3RwqdtcP1BGb4TlVMTgbdZT7mW/ttw47RtlAXI8lREjm7SYfWPPFCJPLbY0
         Hr5oiNlsR0aUcsWjfVE/ZjtOCHXkjef3gTGHf7wRF34m+pBtC+g2SVtAreugOqaoMIJq
         nRExJfiPRZUp5I3GjbyxlWV5MXaTPTklBRuRUCTFxKqGFkjStPTqgj2Kluq0pW80hK0b
         XHGCpzLqmv9OiIESmafW96cu8K3LWoLmDX7a48l9a1m00MEhNUAaoAwZ+gRcF8sls/x4
         xalg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700482388; x=1701087188;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y4obJbFuX32a51CPgRwasEGqIWFeGs2SFetYjrfd9IY=;
        b=O2yB/c4WnbKkc1DpZRhMcL9lUV9XOdj5vNgo0/FyZ8+RatI209vrV8bFJ1aT9g2PpN
         HFjLI8pYlJSk9Rm5NRTfHyHKA5WCd5D1G/pnVAM4GNq9K0m6GUjTRky1NWbZ5+vurJgY
         bZDDWscNIIAoiv12St+QluNAZiOHDgMN7uB4w84l10gbIoaCk1zHC5vZ5nsYm1P6hnL+
         LMsMZAlCytPCxcX5Balh/cddHpvmlQ72YeLfu4kwo/F151iMGiyfY6fVXDIYOYNDbgvu
         U+CE/Ob10jFB4TzbuaHBUETH55skM7FJdH0vtKb6FyGHnoolFmYHroONX+L6tIXWClHj
         XDSA==
X-Gm-Message-State: AOJu0YzuUJbf4GUu2E6hLAY5VkwFegJimbm8lJt9ZOzW0CyWlkvXoUDF
	XYJSsylh9y24TySdaMqYTcl5cg==
X-Google-Smtp-Source: AGHT+IHvqKMeMD59wsOARYBHIOOtmh9DOb0vYqoILiQ4tuG247ufeLMp7wMGy+ZaKH140knr325lBg==
X-Received: by 2002:a50:d7d4:0:b0:53f:2128:ff4f with SMTP id m20-20020a50d7d4000000b0053f2128ff4fmr4619581edj.17.1700482388356;
        Mon, 20 Nov 2023 04:13:08 -0800 (PST)
Received: from [10.167.154.1] (178235187204.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.204])
        by smtp.gmail.com with ESMTPSA id i22-20020aa7c716000000b00548ac80f90csm1324584edq.40.2023.11.20.04.13.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:13:08 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 20 Nov 2023 13:12:52 +0100
Subject: [PATCH v2 1/4] arm64: dts: qcom: sc7280: Add ZAP shader support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-topic-a643-v2-1-06fa3d899c0a@linaro.org>
References: <20230926-topic-a643-v2-0-06fa3d899c0a@linaro.org>
In-Reply-To: <20230926-topic-a643-v2-0-06fa3d899c0a@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Luca Weiss <luca.weiss@fairphone.com>, Rob Clark <robdclark@chromium.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1700482383; l=1670;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=FO3D/4Lb+LmHq1IGkCnu/dhJPyd8/ht4WBGb18ODAj4=;
 b=GDIoeoFFvlB60e66DCtoCtdYcFDJbtJgGMbZGN5KrIZ1iWjzao4lxLmmp21pEUKM97CcEFTle
 lF26xtdb/VUC4IGtZsC0gvQrUiKc+np3MWMmV6N9bzHMdNmiX96otsu
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Non-Chrome SC7280-family platforms ship a ZAP shader with the Adreno GPU.
Describe that and make sure it doesn't interfere with Chrome devices.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 2 ++
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
index 5d462ae14ba1..88fc67c3646e 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
@@ -17,6 +17,8 @@
  * required by the setup for Chrome boards.
  */
 
+/delete-node/ &gpu_zap_mem;
+/delete-node/ &gpu_zap_shader;
 /delete-node/ &hyp_mem;
 /delete-node/ &xbl_mem;
 /delete-node/ &reserved_xbl_uefi_log;
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 04bf85b0399a..58563f8fdc16 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -152,6 +152,11 @@ ipa_fw_mem: memory@8b700000 {
 			no-map;
 		};
 
+		gpu_zap_mem: zap@8b71a000 {
+			reg = <0 0x8b71a000 0 0x2000>;
+			no-map;
+		};
+
 		rmtfs_mem: memory@9c900000 {
 			compatible = "qcom,rmtfs-mem";
 			reg = <0x0 0x9c900000 0x0 0x280000>;
@@ -2613,6 +2618,10 @@ gpu: gpu@3d00000 {
 			nvmem-cells = <&gpu_speed_bin>;
 			nvmem-cell-names = "speed_bin";
 
+			gpu_zap_shader: zap-shader {
+				memory-region = <&gpu_zap_mem>;
+			};
+
 			gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.42.1


