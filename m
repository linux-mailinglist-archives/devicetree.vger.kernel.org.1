Return-Path: <devicetree+bounces-3522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A20E7AF2AE
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:25:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 4C5A5B20A13
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F1E450CE;
	Tue, 26 Sep 2023 18:24:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C0D42BFA
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:24:58 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0501A5
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:55 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-533d6a8d6b6so7580352a12.2
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695752694; x=1696357494; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gcsTNpsjbN2SKqWT86OIi6rzpyQaQonBZGDEar8VbjY=;
        b=fzK/WDQr6gSfQrXmNn3vKUxX4OGgnfQ5Aac74bu5IC/6y29W15b6wJP85Qk+PCHB1i
         GwyuUItnpZFdqB30SGAr114DJPvr9SAOhyU1cuh1YLsD6kWshR4JYW7DC+0rz0fT/KxH
         3zC2S3Ul5sekWqQsdoynbnzBjMVJy/CZ0yxzJod9iJXEDSZV1qcUe5jRj6UzHe21PDhO
         dDKiMNLweduxjk/PxsSoWH386R0OJ+Nb2O/p9HeJOQc1aIBNGGrYk0eqZ8cmcKcCN0Ep
         tEjnP4CSf9riQjfu9/2i7Sc2d4CQgVLzuU0xRoAVTQhEE6/QHhC1mCeKpJT6PMd+zBUG
         3JLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695752694; x=1696357494;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gcsTNpsjbN2SKqWT86OIi6rzpyQaQonBZGDEar8VbjY=;
        b=I4UoBSFws46cLtYnF0e6QoV4jxTpqRl9L5wRr/JEN8iTb5ix4yan5kMytcsyf39Q1C
         RWobx0tHxJAKeXlvZStUenfoIqOLJe1CHES3IqHl1BLDCJDHSKgQ8o8WHHpAtnK5F2ic
         4rvgvNC/g+9Nu9LKL9A1X77WxjIiz2yA5nxct/l28oXaZZX6zgxHwvz/dtlBr9PxHhZ7
         nays+2lWRHZzysdAT5inHMJdLysPcL4TbIbxEXOQwJK6x5vX8AULjxa+3KZ0k0q8QOZt
         RHyoyAPhiNf/ISCsIPqNe+rPdWZt97DxTymPJ7Yr+s1/pTOveHO+C39eVs50pLlKD+ma
         oeVw==
X-Gm-Message-State: AOJu0YznsDjLz5FbLxAXToiA8feGlG+ZYoA802bn/4GWaKdx0MdED55r
	wth8WarSgJinG2rsNwqYPEpjug==
X-Google-Smtp-Source: AGHT+IHSDS5XqFLTJ3Fj4mnDdxfJXQcOrG9mYsIt1RG52uxZWsc1JdF5u15aBVAjCYJy3NW7NDbP+g==
X-Received: by 2002:aa7:da8b:0:b0:52a:66c0:1e9b with SMTP id q11-20020aa7da8b000000b0052a66c01e9bmr8454988eds.30.1695752694412;
        Tue, 26 Sep 2023 11:24:54 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402151300b0053090e2afafsm7020643edw.22.2023.09.26.11.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 11:24:54 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 26 Sep 2023 20:24:42 +0200
Subject: [PATCH 7/7] arm64: dts: qcom: sc7280: Add 0xac Adreno speed bin
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-topic-a643-v1-7-7af6937ac0a3@linaro.org>
References: <20230926-topic-a643-v1-0-7af6937ac0a3@linaro.org>
In-Reply-To: <20230926-topic-a643-v1-0-7af6937ac0a3@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695752677; l=2100;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=9BePAqziunVu9kZivYgvv/caBkDoTl2qS9g1hj02Wgg=;
 b=DftHVsKPD4gXQnOXwv6J08JDe4kPe9q61Uq+Yk6OGVwbAalLbxGFp7JSs/NLklUN8hzuG4ORl
 P20Q6ZH69KsAaETW8eBjDpCidhznk2dyYWm7+g8ddSZevjirhjhF8yS
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

A643 (A635 speedbin 0xac) tops out at 812 MHz. Fill in the
opp-supported-hw appropriately.

Note that fuseval 0xac is referred to as speedbin 1 downstream, but
that was already in use upstream, so 2 was chosen instead.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index edaca6c2cf8c..ccc2dd6c45de 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2626,14 +2626,14 @@ opp-315000000 {
 					opp-hz = /bits/ 64 <315000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
 					opp-peak-kBps = <1804000>;
-					opp-supported-hw = <0x03>;
+					opp-supported-hw = <0x07>;
 				};
 
 				opp-450000000 {
 					opp-hz = /bits/ 64 <450000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
 					opp-peak-kBps = <4068000>;
-					opp-supported-hw = <0x03>;
+					opp-supported-hw = <0x07>;
 				};
 
 				/* Only applicable for SKUs which has 550Mhz as Fmax */
@@ -2648,28 +2648,28 @@ opp-550000000-1 {
 					opp-hz = /bits/ 64 <550000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
 					opp-peak-kBps = <6832000>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x06>;
 				};
 
 				opp-608000000 {
 					opp-hz = /bits/ 64 <608000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L2>;
 					opp-peak-kBps = <8368000>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x06>;
 				};
 
 				opp-700000000 {
 					opp-hz = /bits/ 64 <700000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
 					opp-peak-kBps = <8532000>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x06>;
 				};
 
 				opp-812000000 {
 					opp-hz = /bits/ 64 <812000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
 					opp-peak-kBps = <8532000>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x06>;
 				};
 
 				opp-840000000 {

-- 
2.42.0


