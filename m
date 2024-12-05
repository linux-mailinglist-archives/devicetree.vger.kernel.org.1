Return-Path: <devicetree+bounces-127500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1D79E595D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E187A1881262
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 15:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED74218AC2;
	Thu,  5 Dec 2024 15:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RJXdEOlW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEDCBE49
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 15:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733411294; cv=none; b=ZhyFgjQZ3sW8YNWPAmG8qjA9Bcqv7doGA5AYHE5azIpW5gLz6BvEbOaiKUnkzSEfzq3/5MBGLfSa9yBG8GtjHl4CtMFsdOa7CLAKgyGVppGPDXgNJ2YpwYhEJapy2oXGtnFwB1y9Vi3waEth8BAnugxlFONzar4+jucy6ywj/SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733411294; c=relaxed/simple;
	bh=RYPtTEAzI0OGTqfRzA/UycF6LcmmOXWAmTfNgMLYnHE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZVBHRfK1myaN/lFB2oIfVyNWY4Am16Zvz9F9wRhGHGjyX6vBDkWH20Ebw3/J4a6fXOxmrMjCmhWsWvPPomIeeam/BY3+tp7j3JNv1V89y2sa903lmb50+56nSQlGHeftpfe6wjQYG6quU1OSFzGPnzC4ET1rpSL8g+PngRbv7Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RJXdEOlW; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aa62f5cbcffso73005166b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 07:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733411291; x=1734016091; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PE4EC9PLskFvJMahyM4wT4IIkBhlmTglPbxea814APc=;
        b=RJXdEOlWVI4x+IMPZY5sCrk701e6bK5jjb5eXKI/B7dnI214fS1nXNd6NMdKS/cc4v
         0oFae7XhJACWkAdl8n1/4R3iJqWaxUK39Fs7geEPz7zK0XlS1iXU8TyMbIZNAToXxWTP
         sB4W0SY85BbKm4WwqeyycAS0MBoegb2BWvJ8ptXtKNxYvQO6fd1tjzIPS9e+C2owW0vd
         MsRXamBnLlMl4Po4dDJKvwlDqwrwYAb9XlA0rcxA++5KMbn0noDOmCltk3KUwb9/TvsK
         HkYl2IDL89J37/wCDTX1GieRsOiAjAz1U0D3QuWxTnFMP6we3ebfN8U/+nR5/UtNXF0G
         mqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733411291; x=1734016091;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PE4EC9PLskFvJMahyM4wT4IIkBhlmTglPbxea814APc=;
        b=fp1LWnaAPSQPr4f6zDME5RICEox82VwOW5Yfx5bHRH1XHC5VeFcbaHQSQPqZ/geid6
         YXTf+bzx4emTpfPLcKucW7tYzo27/oRJA2pYeR0T6uh9J29jmLeCN/XUsjqd6txPVjY5
         AR+zUizaNLSqOvVCyEJbNSJA5D/DwVkdZVzqwBHV+GiKIRGV3FURWQPsIeWTEkA468rN
         PI+CDQ6V0+QC0MnUDu1C00sR+IPofv9pctwX0mF5g2hmPMOJKaDY9zwfGXx9M51NBYv6
         PSoaY6mNtAaxpqw17RUTyDFf7wlxa0VpHi5FERTqxframYS1qlwIhFLSW4mRbKh4FvFV
         EngA==
X-Forwarded-Encrypted: i=1; AJvYcCV1TSqSpco7Da571SwRXJr21gABc+6v65raBaLSUYDd3P7LjL4Bi62yFSio2rb6zauImpMtysIsYUUF@vger.kernel.org
X-Gm-Message-State: AOJu0YzPjqGFD2+lolR1b718ijw07fK2uU012NiznJEG6a+/odJzUESb
	BxgxRWhYhqPZ7+kQt9kgu2KrFMewWPf+L2+l9rVOMfE2k+qzwiLQZD82nCH5GWDqi3RogE+jDBQ
	PUss=
X-Gm-Gg: ASbGncslMU4Fx60m8Cv3UfXG6d9nL3MucWB4ujMfT4zc8Ubyff4JrtCiYrj6jbugtLa
	cVq12oqezoiPOpfjDQNIVW74Xh4E8hwYgcOOAKG63EoGPVNRcZzmr2HfjOZjuFH9nDFow1XxGiD
	LTB7R3MaCu+kxmWLL7pUniSga8zo3hinW7RwIe/uVRytzmtQ/T16ULQy6emY4A1oIKDfrKzneA6
	0yTPz35dsqf46wW4rFKAYx8EtNh+9gftNQpi0OUgPMD/bLgKVVIzBeW9d/th9j5snNrlTo=
X-Google-Smtp-Source: AGHT+IG1XEFDu3IE/3HqjxQTBBrt8eu9bg3PesPAyjLcHPehuhNcC0WrhOXXAhfrJuVWwx7+BGIjaQ==
X-Received: by 2002:a05:6000:188f:b0:385:e986:416f with SMTP id ffacd0b85a97d-3861bb5c367mr2698569f8f.10.1733410883551;
        Thu, 05 Dec 2024 07:01:23 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52c0bc7sm62830795e9.35.2024.12.05.07.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 07:01:22 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 05 Dec 2024 16:01:10 +0100
Subject: [PATCH v4 6/7] arm64: qcom: dts: sm8550: add interconnect and
 opp-peak-kBps for GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241205-topic-sm8x50-gpu-bw-vote-v4-6-9650d15dd435@linaro.org>
References: <20241205-topic-sm8x50-gpu-bw-vote-v4-0-9650d15dd435@linaro.org>
In-Reply-To: <20241205-topic-sm8x50-gpu-bw-vote-v4-0-9650d15dd435@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2561;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RYPtTEAzI0OGTqfRzA/UycF6LcmmOXWAmTfNgMLYnHE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnUcA5HvZp2PHgJlyryi+bTlFLh+XAS6Z7umgDCPSr
 Bhe+qHaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1HAOQAKCRB33NvayMhJ0cEQD/
 wODdnXV1Ywe5zB0yYtWBWkIJkMscv50bJFauXBQDQKrsMlnPjejHnvtOexsT3FTdUsR5N8k71mCRN9
 9pvwbmwekcJEjoL0ovrpHX3rehOU6jX2g7ZhnrCD6GdBG0FwIwOclO0aqKC4d3tmYX57jjNiUsKW8T
 D4MWl64KScJDqO06jfZnRQpX0EVPONidZlTW7rHieBzdy9hmVLZ2VluH+FZ8u2kzzP7jeccdTKNjFc
 q6x7uLkv238qH4vSW5Ro4n/TJYVl4K0UOVK7TdhZhJ4HV88DKaAVpi7TSMmDjctxho03QbMFdHssnU
 6ucz3F1UBqMhBPfTTvzJli0Gbwp+RkU7pN4RBlKYDVCZs0BgBK1+ikourUJ5u4SiWxkgBYZ9VOBaqY
 d7+fRs07Zqi/EyRgDj4wIFj3h2UuUAWULqBqo1N0W5W8KO12D5tpD5Jgmi0/QevxVXxmm+5dlSu89A
 nx+o/PAXzLZb9jxI5aRMntBpSsJ17umoBlY8dtst9Z5YK+MLCL6qRRgBCfGyfHLyjt9YrrYR7JujMk
 n753RCyZ/lYtv+ubjyo0cqP84rNhuIQtOyyvIwixKTKuQuuOsKcb6BfG/8gUyS4AWaryiQzh0JSsWJ
 F/mMj5GEreNQ4LWT0+gF/xPUyuXMM7MwyP74tm07Jn9XZBDXc9QNmGWet+6w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Each GPU OPP requires a specific peak DDR bandwidth, let's add
those to each OPP and also the related interconnect path.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index e7774d32fb6d2288748ecec00bf525b2b3c40fbb..955f58b2cb4e4ca3fd33f1555e36a15cfc82d642 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -14,6 +14,7 @@
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8550-rpmh.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -2114,6 +2115,10 @@ gpu: gpu@3d00000 {
 			qcom,gmu = <&gmu>;
 			#cooling-cells = <2>;
 
+			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "gfx-mem";
+
 			status = "disabled";
 
 			zap-shader {
@@ -2127,41 +2132,49 @@ gpu_opp_table: opp-table {
 				opp-680000000 {
 					opp-hz = /bits/ 64 <680000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					opp-peak-kBps = <16500000>;
 				};
 
 				opp-615000000 {
 					opp-hz = /bits/ 64 <615000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
+					opp-peak-kBps = <16500000>;
 				};
 
 				opp-550000000 {
 					opp-hz = /bits/ 64 <550000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+					opp-peak-kBps = <12449218>;
 				};
 
 				opp-475000000 {
 					opp-hz = /bits/ 64 <475000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
+					opp-peak-kBps = <8171875>;
 				};
 
 				opp-401000000 {
 					opp-hz = /bits/ 64 <401000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
+					opp-peak-kBps = <6671875>;
 				};
 
 				opp-348000000 {
 					opp-hz = /bits/ 64 <348000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-295000000 {
 					opp-hz = /bits/ 64 <295000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-220000000 {
 					opp-hz = /bits/ 64 <220000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
+					opp-peak-kBps = <6074218>;
 				};
 			};
 		};

-- 
2.34.1


