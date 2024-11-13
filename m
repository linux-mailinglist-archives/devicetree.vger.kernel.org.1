Return-Path: <devicetree+bounces-121586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 823939C77CB
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 16:51:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12B5F1F218AD
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 15:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 821962036EE;
	Wed, 13 Nov 2024 15:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="krrqwdTw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87625201249
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 15:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731512930; cv=none; b=uUSoHtJcGi51rsIcozREhs1p4RsHxVUQLIquiSfOiwLO0XX5LyPJeGlREi6mwoAJaSvNqZSh40Y5W42KWW8pxO/32AOOK09g47lhX/f/bO16sTLgO7sm22+A2HsrWycGjMOj5Eb01oYNLHG8byVDof8VWcqULODk5jsfKGIiqx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731512930; c=relaxed/simple;
	bh=kMBG33vo/TOc40mVibFxMI9MiLmVj3cBO8HFx/GtxHk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iLvBhFdrw6GcM8EKHPDHlO8ST9BIASePyOo7DQ/ee1sBvhyzbzaLE3KpJTCxHXLNLkYGhMFJISItplmCrdUyizJ7Wrs1eP9A3I6cu0IuhOw/5KGeyjmD4vrw1pl5RsDKRzIQuXycixy16jpjRuwQEqGmjGh1EQzA+y+A6Df2ABk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=krrqwdTw; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-431ac30d379so61380755e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 07:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731512927; x=1732117727; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gHpOD3kUgP0NZgNkpxEn7+M6CVhgca5HnhadSgnc1wM=;
        b=krrqwdTwK7MTvud4uIozlFugp0hg5wtQyfl6rXT0LfqlkHM3kDDXTWERcE+OtMy5SG
         hcCqv2gwbACqpTjAU3Ug1duQCUOhiqulEHiOuiYdqf+AydcXky4s/asd21+GP9kj9m/z
         iveyv5EMJMTVwg+I2zLT3nV0Vo2T7JKoxRC/jwebZNlt2o9FjDoEUuQy3h5FWQSVkdy0
         LvybMm92KNpJALisDezZ2IqSLvVA4hl4KWjffyJAC7FWs/Nyj3bgbE21sLvVFTg2RC6F
         lNEAsK+Ydu14tQMx0z0DLTRb4StlW5/JvJHOnDVihAmrmRcFOwKVfdSOmE9YsPFGzHA2
         q6Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731512927; x=1732117727;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gHpOD3kUgP0NZgNkpxEn7+M6CVhgca5HnhadSgnc1wM=;
        b=YY8oKE0he4DEjZSQvGUliCZyef7Sf3yu5WG9ZX+WgtwFoJGMK4hzXrZWuLEVdn7eVz
         zxBokV7E4ttqYvfCdcHMrxXM/S+7fJ62aVYVVsVcudJi6rvrCbUfyyqKv549z99T/Pr/
         EVHCTPskvgdqOvAUS9pb8xe9eVDyQAQGdt5ZcsXHbAJPz3qd+jSNoQfhRviWO3/TWd45
         l5glpp6HGknk7aAMgORLGx2tEP27ZM7nmqMoLXkFT8IhW9mNjkzFBG+kR4EmaY5fi80t
         cyV18kQ0nwlnN2cvEKcOzpGpvuNZVppYQVCZode+rMNgtlO+9qsScdshfG+0wuhmoDcb
         0eZA==
X-Forwarded-Encrypted: i=1; AJvYcCVXa9wHhHoRvhV55S3DQ0xF2jV6U+ATrPsX6hMljajNah3ksaI99w1PRw3UxlYUjzJeZ+/B2TOOqNqv@vger.kernel.org
X-Gm-Message-State: AOJu0YwCkCYsWw7cuQrtQ+3piK9Mc38vKF3tOdBoaX8RUuBOVdc6B/zw
	TSEcVLzdBHaA4vi3mKLDFz0fSOo89yQ+RYzXxsEuRT2rT78EW4QAhx3xjvhWaIQ=
X-Google-Smtp-Source: AGHT+IH0RYYWLohZyGNIvU/YBRIN2CzLxqCAV/9/sRwAKqUUGNiysEqIfwjl60S1mV3GEi+WrLOXFg==
X-Received: by 2002:a05:600d:5:b0:431:b42a:2978 with SMTP id 5b1f17b1804b1-432b75002d1mr182824155e9.9.1731512926878;
        Wed, 13 Nov 2024 07:48:46 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54f772asm28445345e9.18.2024.11.13.07.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 07:48:46 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 13 Nov 2024 16:48:34 +0100
Subject: [PATCH RFC 8/8] arm64: qcom: dts: sm8650: add interconnect and
 opp-peak-kBps for GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-topic-sm8x50-gpu-bw-vote-v1-8-3b8d39737a9b@linaro.org>
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
In-Reply-To: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2636;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=kMBG33vo/TOc40mVibFxMI9MiLmVj3cBO8HFx/GtxHk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnNMpTcwoQUrggwwkSabiH780z4dLQruvKpbpj5wzd
 0mOSAUaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZzTKUwAKCRB33NvayMhJ0X1cEA
 DGx+C8XLcffS07rX1a8GXBneILAAMZxTwADCFG8e6JtNnZJzswZECobDf5cWxYmi/C8Ij3dTMUoxi7
 syAUirUd2CoEZktqnJb+IIrk5Nc5CVZgXadx9sOF4hhiugjGRx2pLAX7FdNgnmGv3OCB2V+xBnuqe0
 edTVHyWGTgJNKU5NfaVtSn97nUP/yxiIEe5TQrPMusBP+Ie51VLWSWi8k8SMPAxqdl+W9GQCc7IWD+
 p1FCczczdWc4unE6ESpnun7+8g4BW4BS3ljwI89F+RGflAbZGmC6637h3eDaWwWTuxUAcqKrrx9udh
 giHoGNA1gtQOgl1XdRCxtUuqI7UfraelG7A7W5MG4+q1pcrq1Q3Vf2ZClYB0RNmjRXCndvJnlqreIc
 qz5YdSE70DEOswjgK5ARYKB3qwAlbH4fd/WXjTdvRAevhrD4jTDRHgNewt4HB55tXMzX4NhusIPN59
 3kytBZETZKY4s8bEMwqX9wbtqcJAfpo9zXeUbLPJhc86YcTB1nRVvOJhBqIYraHR3874gLux8rh+X/
 t0Oy9Dl4fFkrljtnQLwsPXKBgHbsUVUreMVldOqRouxm9BiHZS9fd3v6IPMeRzVVZNpZuKb5NrM3tC
 ef+s5JR48ONwzDM4frKGp4/QvFJACLv631/+MUQzN+7/rnZ51AIXn68bUbcw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Each GPU OPP requires a specific peak DDR bandwidth, let's add
those to each OPP and also the related interconnect path.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 01ac3769ffa62ffb83c5c51878e2823e1982eb67..331c5140c16bf013190d6da136c0920009d2646b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2636,6 +2636,9 @@ gpu: gpu@3d00000 {
 			qcom,gmu = <&gmu>;
 			#cooling-cells = <2>;
 
+			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "gfx-mem";
+
 			status = "disabled";
 
 			zap-shader {
@@ -2649,56 +2652,67 @@ gpu_opp_table: opp-table {
 				opp-231000000 {
 					opp-hz = /bits/ 64 <231000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
+					opp-peak-kBps = <2136718>;
 				};
 
 				opp-310000000 {
 					opp-hz = /bits/ 64 <310000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-366000000 {
 					opp-hz = /bits/ 64 <366000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-422000000 {
 					opp-hz = /bits/ 64 <422000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
+					opp-peak-kBps = <8171875>;
 				};
 
 				opp-500000000 {
 					opp-hz = /bits/ 64 <500000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
+					opp-peak-kBps = <8171875>;
 				};
 
 				opp-578000000 {
 					opp-hz = /bits/ 64 <578000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+					opp-peak-kBps = <12449218>;
 				};
 
 				opp-629000000 {
 					opp-hz = /bits/ 64 <629000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
+					opp-peak-kBps = <12449218>;
 				};
 
 				opp-680000000 {
 					opp-hz = /bits/ 64 <680000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					opp-peak-kBps = <16500000>;
 				};
 
 				opp-720000000 {
 					opp-hz = /bits/ 64 <720000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L2>;
+					opp-peak-kBps = <16500000>;
 				};
 
 				opp-770000000 {
 					opp-hz = /bits/ 64 <770000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
+					opp-peak-kBps = <16500000>;
 				};
 
 				opp-834000000 {
 					opp-hz = /bits/ 64 <834000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
+					opp-peak-kBps = <16500000>;
 				};
 			};
 		};

-- 
2.34.1


