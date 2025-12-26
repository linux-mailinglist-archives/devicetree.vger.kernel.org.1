Return-Path: <devicetree+bounces-249779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C61F8CDEE9C
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 19:32:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D0089300AB0D
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 505732DEA68;
	Fri, 26 Dec 2025 18:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D8pc3kO8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EoC3+9sH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EFC2D060C
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766773860; cv=none; b=pzzuZ/L3aycwHl/PBaOvl4hjzNqR4OrWevXWcrYImVNCSGMpnYKM3mTvDINF6/GL9WdfMxthvVEDqCCnN8AAhxBfF7N3AppVoexi2E1zx0AlsM+p8OaGTP1Xhw3E4yoY9Fj0fgjNAQpfdXsnFo7AbOiqyzqk6n65b+QK5qvxOP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766773860; c=relaxed/simple;
	bh=dGw+HtkOmWI3uqUr6wrLYXX0D+45vSQclGhCuqKUsic=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cq7Gq3hiEnZsmUHQZA7gA5hbjKm0Elm+njy1ldj7kc3g4AlJXGemGizHVgIJOP7Iho38ULIC61PgE+NFeiWpjk/vCRtrSK/OIqGc8i75+I4irRLJWm3FzNlsUajrZw5t+CxJfxnd128B6pgSBeHHTMIvIXmkGgOz0x6iZ2fDaNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D8pc3kO8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EoC3+9sH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQ94cxn177329
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l4XGWR0+KNvc3ed5ArMjwMlC+KzNK0mXGZ2jEfsyOiY=; b=D8pc3kO8GCjjvm8/
	Qfq9GTjdv2cFMFM98PAyKmDBNqElyY3uyRSyWFdy6T3X2nIwgRvPJVYlglFFkis+
	Der36k3jGegfD8cJ7OgI5J+j+DhCmoSYGK2V/oEGXTEN2nBuxV13xr/pRY2CerWv
	vosC+Vlrr4rYq6LLayf4LJJiZvqQbG45X0l6wb8S57ie8j06JC4iGuIfhseplquj
	AT4qJUK9qzAqLODlIqDvJOvXyA+4/vtUG5H0p7rzFQSSdtyQKlqHgZC7Tqm7cWEH
	AC+sfsrJSzqIxTb8lfnxxnEy66m6X1+OniKWoTNhg1MUo4g33pZAcEadPtFKWL+o
	FdBzzg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b9qdk911p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:58 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34cc88eca7eso13443657a91.2
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 10:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766773857; x=1767378657; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l4XGWR0+KNvc3ed5ArMjwMlC+KzNK0mXGZ2jEfsyOiY=;
        b=EoC3+9sHxffygxg8jQlCiJsLVHJOiLbNpNg8coROGoBUeDMl9tsrMFgKWz9UKEdcsk
         PiUWX68ixcTKy/aM8HfNm2UeYsB0lRgw1Anyuus5B3KaJbJfj5Y9navvY752dtoNmFI2
         s+inX7iE98zoGW5kSuGvAXwfmTxFAdqpTRHwAZctBR0mnsGy51LMmFIcRABrFFQWfl2P
         nsF+XKVdq0F1QbsDwLSxo5XZfecQuyPUwvi0RRXW0T/dD5stmLgRPzldRCIwKHK8X6Jl
         FV04KeyNz+KqSLOUzGXSNKG2ifmmGdDjrtT/T68XL+gdCm1vJRTHuBnM+jUqpxGWbN2g
         v7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766773857; x=1767378657;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l4XGWR0+KNvc3ed5ArMjwMlC+KzNK0mXGZ2jEfsyOiY=;
        b=I7gbQ5FoqzckKxN4nODwTprm2Gaqf4b3nGXGCMXXtaShQzhhXbrxPWq6/kOUeZdny7
         tfsycBsZ1an8UiHW4dfSbH0iz7rjjPOwInvaLgZOYIu6tsFM+rlUhtcDAyHYVOM1lc9N
         nVifEYW3623/3uAxtSdTdYIArqf8kXiI/7PoQsQL4RNmdtFfJOhVtbpqhHrVUlr8jC51
         m4076Yvd0rCJYwyPyxplzUfXkv6SztEJI5YBV5PLoSNT5fbibXTSDscjEjco4PWU3Qke
         LyFYPYWgkiwhM121dDE2fk+NTgtljxUFAkW3sMcbq78jqXq6kgqihxvhILxBRUBSVyRK
         d0jw==
X-Forwarded-Encrypted: i=1; AJvYcCWqq4jmldQzLh1FzwLvETpJnDtpMCfXRMxcSvYd6O6Vy2465RWXJyldMJk4PmZn6XKjSLLMdWWIzVDf@vger.kernel.org
X-Gm-Message-State: AOJu0YwPOO7BtIf7qT7eSedfF4CKm4N0Rd0r5S4z5AfaP4tItmXPlU/R
	W4WKEtx1XXOr4BJwFIuis1re1tynfImFs3Wm52gKLCvrHSE3cmr4XrppvJ+TB7OlbIKTb6xORkc
	V3LQXreGwUgh1PcFPeDRbU5XVUeu2vMq3SvfQvKYSYHQjkvPJKjLb0U8rq/zrnH11
X-Gm-Gg: AY/fxX5jBHTR7022hU78etjDXDuNgjiPJXfuDYkMgtsEko1b55ugxoX89tncucM68jY
	+sf4aCpTmD2rCjBIV0mvecFGlOzBA4MxCcZ7l08t/XXzIFM0iBJILm7p+XdjwJ9zvsqMC7FGpzF
	NWwFq1SY3HSQfUpXz7s+50tNWTyZvv97bi2POukMdxrjrA2IN5jmK8xCi42jOINWMWe7GULZmbj
	eMyv5/rbpdmKfJeLd9yXLURRuAm9+AQvMq9faVb42yLx2su1mB2MtnYgJOJBYBTTzwTIE7kBwww
	11YuP0m13ek5l0I9150dWklwIpgRSUfwW6AlxJ0szsXLpZadRlQQrvdbE7kFBe5f0qj8jD0apRy
	dnWoB2k7z8INVW0AUK13RUm6e3eAYAZL9TQ==
X-Received: by 2002:a17:90b:134d:b0:34c:ab9b:76d6 with SMTP id 98e67ed59e1d1-34e921b9fb1mr19395508a91.25.1766773857554;
        Fri, 26 Dec 2025 10:30:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3cB0r3VF84oECQbOBHaUHDcFCfAqqe4vcXRfkQ8idCGmHLWTD3venrh6qLQpSG+LSK5JShQ==
X-Received: by 2002:a17:90b:134d:b0:34c:ab9b:76d6 with SMTP id 98e67ed59e1d1-34e921b9fb1mr19395472a91.25.1766773856989;
        Fri, 26 Dec 2025 10:30:56 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d65653sm23808883a91.5.2025.12.26.10.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 10:30:56 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 26 Dec 2025 23:59:41 +0530
Subject: [PATCH v5 8/8] arm64: dts: qcom: qcs615-ride: Enable Adreno 612
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251226-qcs615-spin-2-v5-8-354d86460ccb@oss.qualcomm.com>
References: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
In-Reply-To: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766773796; l=1566;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=0wHTfSWxkpfoiE0HDndY5tE5UXZgiygEg/pFzVW0/Yo=;
 b=7NYLN0NLICnqtnhMSXKEIZo1luiDJXgB6Id6mOqyxkwcLkGqEmCDvSzZ09RxWzPo91OdrMaLl
 eRg+kWNr+1CBK2CNmzfooccSkUtX3Uu6cA8v8tXeGTHNNi7yTPbMm8w
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDE3MyBTYWx0ZWRfXzwKGcpV6fRSs
 vKLHghTTcTGIB7gGoG1q26CU5XLYF8i2qnBRWE1tjEpAlcQkde5GtSO1up9S0JQkgEvSkPrwJCs
 V304sxCR8/A2i47ZOU48BL4To+MPec63H5yEgullYFixIPeSDAHkOX6jpt/tCsRaM5MgRO9nRXi
 qe1vLS0a1Ft9vP7XGEo6BHq+QRM1threVAUp2H8Rnz7bMcv8k2ELu5ZKIKWKbj3Q40V2ljlRHq0
 9DlIeWIz78Kyj/rjh+vUhHRogIDhsNhgrzI/MCFa0ZN7WxMg2dbk94W8kizF8BCDZCNolNazHIs
 pWsUqvGTXl6OWTggb75hLKYW8TqG2XLsOhjMnUZU4+7XnGfhuPPObBbjxSPi/+5UbDaPiFctcj6
 rd0Cw6CYomCnPR4LnhaWD0x/TbCPqwmNKGD4klD/KWUt+dDJs5Ir351DJFaPVolXMSvC6x07DxU
 3edMVwQdU6ZxkZ5IqTg==
X-Proofpoint-GUID: wPuZAc7dzN3fiAD2Jk6G8QN6Bmb_z_dy
X-Authority-Analysis: v=2.4 cv=br9BxUai c=1 sm=1 tr=0 ts=694ed462 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=zVnKP5-pAmSyy1jt-DsA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: wPuZAc7dzN3fiAD2Jk6G8QN6Bmb_z_dy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 adultscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260173

From: Jie Zhang <quic_jiezh@quicinc.com>

Enable GPU for qcs615-ride platform and provide path for zap
shader.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
 arch/arm64/boot/dts/qcom/talos.dtsi      | 2 +-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index be67eb173046f9e4ac58157f282c3af41e53d374..33e33aa54691d38f96e5c76596719691e2596eb5 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -358,6 +358,14 @@ vreg_l17a: ldo17 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs615/a612_zap.mbn";
+};
+
 &i2c2 {
 	clock-frequency = <400000>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 7c2866122f9a13b8572fd9e6fa9d336176765000..606f5e234e4a02caaa03f1084336e137768dba1f 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1902,7 +1902,7 @@ opp-435000000 {
 
 		gmu: gmu@506a000 {
 			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
-			reg = <0x0 0x0506a000 0x0 0x34000>;
+			reg = <0x0 0x0506d000 0x0 0x2c000>;
 
 			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
 				 <&gpucc GPU_CC_CXO_CLK>,

-- 
2.51.0


