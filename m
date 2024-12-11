Return-Path: <devicetree+bounces-129664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5149EC757
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:31:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1A302816CA
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAE251F0E3D;
	Wed, 11 Dec 2024 08:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KZjBz81q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC2E1DC9A9
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733905811; cv=none; b=fODFCnhI1KdupkuzmFgf2NveuigfPR5g0m/5+iNmAR3ze06CKfEQhWUCvijhdS887djr6WoIshv2e08mOI96ujG3x4FMuVT5g03vF9tHYGLPwgwvsRYVjef8RdT0PwX+D3ldMdW4oJQ0UJl7Epd2nin2FAUmhftteGLzFo2eVb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733905811; c=relaxed/simple;
	bh=mRmcybJomrA8DtYq9fiyqS6rR7q297sl5lRf/i/VlGk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q4mK76kB5lR63TVGdR6EmcR6mER8He4dWEfwbXQIoMaYxwdSuF58RraZY27MSUeuf/7Y3kHboQ+QPpy6IFALdCyO0B3R0hDkEaIWcUZccvuMv+0BYWVGtlhAvQLlGNkxVO05I2l3ZgQ79yhg/gvzeEm15h5dbp/Y3nQEzvPSLqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KZjBz81q; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385e06af753so2824412f8f.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733905808; x=1734510608; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B4/tn0+NaXoZvCxd7DO6dwQt1/7UILyIFVNQSPfY62g=;
        b=KZjBz81qSRGscxaLNsENWG7Ltli9uAOo6mf7ux/64spu0JZKi36HixORf06kqPtakp
         KUWStfMZMCeSlNrj2/1HxGgkXPs6Twcz2UWEMwW16kJJ78n7Qdpvnoeb3qvT/JtHehJ7
         QspBoW3MBM3Mr+6l1e8A6HA0nOGHU1Aa9SSBakPXYotPTDoB3b7cb3ocbSEKpOTflT4A
         5TnhpsInBaI60sS7QHo3CrtzLfg+lnVLrm6tKgr31ZaJEgUmjoI4Uu0BOdDzRyCJIPHE
         jt9LrB0mVQRq5aEpf0DscPZ59X66YzxZWEhspZb3bm5Mh1iQ33eACOhu7ELT/bezSHGO
         HoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733905808; x=1734510608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4/tn0+NaXoZvCxd7DO6dwQt1/7UILyIFVNQSPfY62g=;
        b=fPSTSdqcCHLTuZivBj+tGAu0ERgnAJY8GJfWDql5L7uPvkDJJWHCimgZyIEDeIbVPS
         gwd15wd419vnSRYAv3LeoYfosp/l7uz7sapNMJRcR6QQ0tG45F014GkYTEsH7vYJv5DS
         dZs8Y20YobBaCulUlNPC9vQA5N3SXGclXAV92dHteol+AosMgAkzkNv2HrB3657Zpvp/
         WREXD4oCRmGAgbCT6eGKLRwwOBaE9I4jkApoPwqOxV9evEt6Hmfh0Z577enRqpOXOSp5
         hQC3DoVoEqpwaFrCMTuQWfbotPPHK1cpQZZgzYg6yIt5wrpDJ9zixZepPJ7gsHjuj3xU
         zdZg==
X-Forwarded-Encrypted: i=1; AJvYcCWFYR1dC85w/TGLiX37HgHrOcyakmdnBeYpIxmNOUdeMtUzFdZg9ypccPcXP/6QAfkoKjVqaheNDIuT@vger.kernel.org
X-Gm-Message-State: AOJu0YyZkloIgPuR1HDuutZ41TCLdhErkNhTqAF3oPmr3AOkTSVT0X6I
	UCfmw/yVEv3z582vsn1Cp+tSca1rFIZaMp8UBM8AxAHzemkeBdrELVUoS4bmAFk=
X-Gm-Gg: ASbGnctIKY1djQDfj3cqZB+9btQ4z6FzBd1P2RgnlkMH8AJ05gF0zo3Tcb8FEgFgtyb
	JhljmA7oy79U20xJ51zHu2Udjedb0eE3erR4gVV8oq5xvBLjr+YE8xcRn1MRaJNt97QRueGFA0g
	lpEWh2JG+OLzlEwUnEZIRruHLdcgMMTbfKjfdLVeua0S8hJOznBM4XV9nigjQAmOzT9trXtgbaR
	9qZkDywHvEuO5wq5REubW0H6Aci26zpvx881TQr+Ylc/Yqelr50k0Q1VMa7ddzhnKyb1Daj2GA=
X-Google-Smtp-Source: AGHT+IFH/NzXNJbgRyEoKdsrxfAQKdSlTl8if4/S8TBRBKiFSopNd9WK8zDKR4VFHgwJ90urpCjVjA==
X-Received: by 2002:a05:6000:1a8b:b0:382:30a5:c38e with SMTP id ffacd0b85a97d-3864cea3ea9mr1488908f8f.31.1733905807963;
        Wed, 11 Dec 2024 00:30:07 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a3e38sm735687f8f.23.2024.12.11.00.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:30:07 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Dec 2024 09:29:57 +0100
Subject: [PATCH v5 7/7] arm64: qcom: dts: sm8650: add interconnect and
 opp-peak-kBps for GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-topic-sm8x50-gpu-bw-vote-v5-7-6112f9f785ec@linaro.org>
References: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
In-Reply-To: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2681;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=mRmcybJomrA8DtYq9fiyqS6rR7q297sl5lRf/i/VlGk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWU2FIURdxNJLLaES0fnJrqYO+HzNf4JEpRojHmTZ
 gBojavyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lNhQAKCRB33NvayMhJ0ZWEEA
 CaXmuD++16A4jWWDPTEnOk6gHg/IoOGcwhhh5hSIk7V1mQdjU/g5+hVTcDxpB7epXvCSHEei5zO7l8
 j151YYqlSesFX58NbskoPn4b5RnO5oTgQojQ+s1fSk+4sy5ma7p7eavT3ScwnkZmmePM9CZcFYixFv
 maLVtAqSC9HX1UbotSMFXkl49O4YNS3NmD691m3yaqz584LXPApnDnsL7vk9cYucv+wb+cRt32i8aV
 zkDut4H7bGNPxieMKeSPddgeGrPI2lbeOyF1KEMo9HXRqqNH7W9bryUOcKOyNnU1fIjvWX+WEJ2Pa3
 GMjrFD66Z6NYSthpEO6yhvWhBliW9g26Md2JO8QwIG2V4hEKS/afML23yoQM8MezF3johQgLBQ4WFP
 JuVUVb70eptjRYCC4NMk4Hpe1+sI00FhEtRTv8sLCcS9bqfw5R1fuO/edkzlhIqckvoZEviiJBReJ5
 z+OEs9GqX1Gk4p20epT7VQJuL74ywqCBm18WqgMuUnuVR8Zvwbhjc+0mHJR8RJZ8AtUuK7TzPDkzcu
 PFt1AFR4vtuZW3ap+J76jHpTBf0Ufg8jEP9US4gjrRMNKm/lxk++tJzD/d2pkZnpGFLu8RdGGzjxdV
 3Sm0R2CkIrPFb2c0Z8e1L++R/uV3E1BDLcUL54gh3YTqROKG3BiLEK+2ijSw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Each GPU OPP requires a specific peak DDR bandwidth, let's add
those to each OPP and also the related interconnect path.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 25e47505adcb790d09f1d2726386438487255824..c76c0038c35ab048c88be9870b14c3a0b24b4183 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2636,6 +2636,10 @@ gpu: gpu@3d00000 {
 			qcom,gmu = <&gmu>;
 			#cooling-cells = <2>;
 
+			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "gfx-mem";
+
 			status = "disabled";
 
 			zap-shader {
@@ -2649,56 +2653,67 @@ gpu_opp_table: opp-table {
 				opp-231000000 {
 					opp-hz = /bits/ 64 <231000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
+					opp-peak-kBps = <2136718>;
 				};
 
 				opp-310000000 {
 					opp-hz = /bits/ 64 <310000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					opp-peak-kBps = <2136718>;
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
+					opp-peak-kBps = <8171875>;
 				};
 
 				opp-629000000 {
 					opp-hz = /bits/ 64 <629000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
+					opp-peak-kBps = <10687500>;
 				};
 
 				opp-680000000 {
 					opp-hz = /bits/ 64 <680000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					opp-peak-kBps = <12449218>;
 				};
 
 				opp-720000000 {
 					opp-hz = /bits/ 64 <720000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L2>;
+					opp-peak-kBps = <12449218>;
 				};
 
 				opp-770000000 {
 					opp-hz = /bits/ 64 <770000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
+					opp-peak-kBps = <12449218>;
 				};
 
 				opp-834000000 {
 					opp-hz = /bits/ 64 <834000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
+					opp-peak-kBps = <14398437>;
 				};
 			};
 		};

-- 
2.34.1


