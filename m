Return-Path: <devicetree+bounces-19319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BAF7FA623
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0A20281836
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1E136AE8;
	Mon, 27 Nov 2023 16:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sXgLgt0T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA0A519B
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 08:20:20 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c887d1fb8fso54851441fa.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 08:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701102019; x=1701706819; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tWgyzigPoAR+4Ex1d/u4hf1QcdRIIjXWN2uqL4LI7/Q=;
        b=sXgLgt0Tt2utyLG259t5GhGEzPL7cbmpSLdnHckF33cweMUA365Q/KTFlu4GcT2QWs
         /F7A9Gq40E5+BIYKf4fgdFyNmziWi8vcSmOIhGU/LE9/bJuQgL2X5J1F/L1POTN6sRc4
         qGHizMMqRDFHMTFNZsYUAb229OrCAp9LGDGC4fHv64Gv26EaFAlHxWTVoIFnaBt0eV/7
         bLOK1mBrR/UlRXn8SZFC4ofj/jxrPEH+ilU1NOkyoJPjlC8UA1kCPeyp/BTQa44ZsvLV
         K3Y8FaAMM3jMrexCYPGA7fiwSwUhSGIVyxylx88zT5h6Z9W4BM3ST7PRYT60jHympZ2+
         ka0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701102019; x=1701706819;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tWgyzigPoAR+4Ex1d/u4hf1QcdRIIjXWN2uqL4LI7/Q=;
        b=eXYKGV/5XSFeOdKAwHM+NVUI/kytoDNW86+/EdZuaHJMEz2D646KDU1gP/dgSA8vL6
         ifK3mMDcqRM2PUnVYMpmAOi7sPPfFTV2ZoTGTuhrG11Hfzmy7bhUDVS+6G06Vwd1/hLB
         5h6qYu6pt8pAGVFdp6mewLbCbZzt20Tenad9EkNt+fXdMXvwLuMvzPoo+J36A1RxQ5/p
         km4pfvt18Lt7VjB0/eC0Er0BvILksNmF+exwVN4RuR01N9ST2uuvDAJe4BSP7zxcyfWz
         joRQdoEU/5CyxAHSz5/kDGZxGezYCMZG9k2XZAMiczo5McPx5wGVUXbT/aZWliEzty6c
         QR0g==
X-Gm-Message-State: AOJu0Yw+EFs6wRTsEYGlb1MoBz6/CthBLwZNlEqKUqELwE/NNctUhIBb
	WjqL8H0S29l8wktIUeQNCIJTnA==
X-Google-Smtp-Source: AGHT+IGw6vE+zL9Gh3AlVvTWxBmVd6/TxfPV1VqdSfmuraUROfoqa4jJjxDQMuwiJbHnGCOXV3K0hw==
X-Received: by 2002:a05:6512:10c6:b0:50b:b504:996e with SMTP id k6-20020a05651210c600b0050bb504996emr1650818lfg.31.1701102018884;
        Mon, 27 Nov 2023 08:20:18 -0800 (PST)
Received: from [10.167.154.1] (178235187180.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.180])
        by smtp.gmail.com with ESMTPSA id m12-20020a1709062acc00b009c3828fec06sm5734760eje.81.2023.11.27.08.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 08:20:18 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 27 Nov 2023 17:20:06 +0100
Subject: [PATCH 4/6] arm64: dts: qcom: sm8550-qrd: Enable the A740 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231127-topic-a7xx_dt-v1-4-a228b8122ebf@linaro.org>
References: <20231127-topic-a7xx_dt-v1-0-a228b8122ebf@linaro.org>
In-Reply-To: <20231127-topic-a7xx_dt-v1-0-a228b8122ebf@linaro.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701102008; l=737;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=WLJjkmxb1cqo6pbyXNVnfs/XlxQsP2z9isMMjjm728Q=;
 b=wL/heSXr/KYsRGVKMJh1kN+9cq9XComDpTkZuwSoUDRT8ZsOM9auMBIyT/xns5wFL6PAzP39X
 1A+nIrskDvcDYWvIhBLe1YI+d5KvvBVn0Q2oWYv8VOh9s/r5sTCzt4o
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Enable the GPU and provide a path for the ZAP blob.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index eef811def39b..9fe51d308675 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -596,6 +596,14 @@ &gcc {
 		 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 };
 
+&gpu {
+	status = "okay";
+
+	zap-shader {
+		firmware-name = "qcom/sm8550/a740_zap.mbn";
+	};
+};
+
 &lpass_tlmm {
 	spkr_1_sd_n_active: spkr-1-sd-n-active-state {
 		pins = "gpio17";

-- 
2.43.0


