Return-Path: <devicetree+bounces-3519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1517AF29F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 1720A1F24B3C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8138450C9;
	Tue, 26 Sep 2023 18:24:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B76E42BFA
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:24:52 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F7DD139
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:50 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5041cc983f9so15335573e87.3
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695752688; x=1696357488; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hv259dlxpBQTllwsNOUgVjMH2doZt+8ko67T2DfMJJY=;
        b=Mg0irCEXsuqsYZW+3vR9Hpq0O3Dx7ThkfnDxkbR8CdtuHkM/uQB4llkPZgx5B7A/4P
         PEL/mIvtJGzYrWXv3sSffo2aqrs0JWwh+EHf4eNZ3GdOPE4nhFe5AVSFLGT41rYMaTPB
         q8esbkj+D2rYz9VWcZ6ovSyiXbFAMOt8ieyH4+6HWVgk/KrD5AHVgT3zdn1GXKF0qO1g
         r9sO4kRWYgGSlOclHeTutFGIDGwwNj4DdZR28I8TIlzBpXusPn9/dTPJlxQcs7pxqkat
         dzYYdr26I9Nj7KXyWpi2+OD/7hN55CKl6ngMDb8Cl/FsosCJ9wr1w9Ws7XvDuSlXV8//
         YD+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695752688; x=1696357488;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hv259dlxpBQTllwsNOUgVjMH2doZt+8ko67T2DfMJJY=;
        b=Bdsoi0PBpPuXkUH8jHH6tTrtk8SF/dG4IFt3IDxSAzfbjI4RqFGSYdimuIIs1Zqsq4
         GzLo6v9zBYhHpiMv/vxhY12YQaqh1mLZxIWq0RYoNER+lcB6TLbz0vyTVcfK1ck+h3rb
         n1iMdtXLotSpCw+tz8vViFOUvhevAVGjHkkFvlfZqLTLdoUExkSSXnXrjc8KF1I5sd9v
         XkBRh2r2PVMDiJMsvQBqkSD31Aw8Xl6S2KyQ3dnyKkG1XOh9NeZJ3z14Q5CTMfiRZTxp
         +hZWvH1H2FB7kI1/xBX1CaUrAMg1TWEhr7Ac0+/77fiZYbBxDwXonb5sfloYe2rdISzr
         fPeQ==
X-Gm-Message-State: AOJu0Yy4j/VPZjMZWlGIiyMVPORVTMckU9RtjhfQ+2WfngUhhCtN0ZKK
	DuyFZFanDTnWmEZk8K15+WQh9A==
X-Google-Smtp-Source: AGHT+IE9ZA2Nur1n92NY0RcBoLiL+/hKUSUFtLkVB3x4JPU/I5ukFpS3TU2XD2rmTj/1KM/Es0EFmw==
X-Received: by 2002:ac2:5990:0:b0:4fe:7e7f:1328 with SMTP id w16-20020ac25990000000b004fe7e7f1328mr8327434lfn.16.1695752688279;
        Tue, 26 Sep 2023 11:24:48 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402151300b0053090e2afafsm7020643edw.22.2023.09.26.11.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 11:24:48 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 26 Sep 2023 20:24:39 +0200
Subject: [PATCH 4/7] arm64: dts: qcom: sc7280: Add ZAP shader support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-topic-a643-v1-4-7af6937ac0a3@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695752677; l=1716;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=KPLzI8JFAgOM8lipaf6IRavq4f0Qs8pGOQ9Xz036QH0=;
 b=PDlPugMO+iF59ClerI17jCYJbl64YHQKAQ2PSltxjIudAdlihLWSc6nsLkhRsORmNGP+5xoQK
 f6Hn3X2fOEGDA22Z+Akv8Movy+kal6fJjl/lAjkYrwFQELNg6ZJ4gyA
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Non-Chrome SC7280-family platforms ship a ZAP shader with the Adreno GPU.
Describe that and make sure it doesn't interfere with Chrome devices.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |  2 ++
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 10 ++++++++++
 2 files changed, 12 insertions(+)

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
index 66f1eb83cca7..c38ddf267ef5 100644
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
@@ -2608,6 +2613,11 @@ gpu: gpu@3d00000 {
 			nvmem-cells = <&gpu_speed_bin>;
 			nvmem-cell-names = "speed_bin";
 
+			gpu_zap_shader: zap-shader {
+				memory-region = <&gpu_zap_mem>;
+				firmware-name = "qcom/a660_zap.mdt";
+			};
+
 			gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.42.0


