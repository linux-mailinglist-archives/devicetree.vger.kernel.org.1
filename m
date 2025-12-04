Return-Path: <devicetree+bounces-244336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A49CA3D6E
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:37:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 104583119278
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:31:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E985B346789;
	Thu,  4 Dec 2025 13:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YbcK/3jZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b2Y7/AxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5067E33F369
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764854594; cv=none; b=Tp6YiteD+T3rYex6PIG+GMMdn9nQtcX/9QgmBbj++bvlVXchlYo7qVgY2loaaPfchcnE2IFDkhBjjomTav4uZsSGKogrwNYkMUWCM7k0FXk97KfPgt6yj+AqdUY4/ck6J8yC0AebiaSQrOqozcVIa9i+oklIvfpLUHUn7I2UMw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764854594; c=relaxed/simple;
	bh=dGw+HtkOmWI3uqUr6wrLYXX0D+45vSQclGhCuqKUsic=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X0kf3lwXpWXWn1vQXz0Ad7q1tk9qQevHF+lZ9rb5u4/ZA/pLPL+tprPMvwhFsKwAx9I7Kqqhr4n5MPH3GM1VUWJuFuPohJMbb8+uZVhzxs8qwO8RarI59aqhyVFqdwaXILRATRuUE52E3XTKYRdZdB1Duu9iuMqOhv0A6q3QcnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YbcK/3jZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b2Y7/AxN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AErpZ1130922
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:23:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l4XGWR0+KNvc3ed5ArMjwMlC+KzNK0mXGZ2jEfsyOiY=; b=YbcK/3jZRpAbITpn
	N95hbaYlcEOYxiyETZHzMcjZVe50HDrtdTTYdVVxLbX/gHUtcQ/C0BcH8scfAQnd
	afwK4BXsYPM/DriBXkuXLDXQMG8sfJGCy6n1AC1xr9DmGoPIeJDsGeijjL5IsUUA
	1c4ql/ojdZPbu0BOzHryfD86mzQimF4FQY66RkiJLQt7eFYJ43QzxolulYejJquT
	rfTcCGvV5u3aa3U5uWsUfwPyZ4EiAoqA7pjnRVpMdBkFLe2cY/m3zzW83lK1tElm
	w8v+0KV5ILkp5BxVqcRGM6HwPxasd9W+8ujElLB+sKOMdvxYdwPzPICRQquvCVX5
	uxRXjA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f01t87-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:23:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3437863d0easo1554263a91.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764854590; x=1765459390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l4XGWR0+KNvc3ed5ArMjwMlC+KzNK0mXGZ2jEfsyOiY=;
        b=b2Y7/AxNd42ShBmMAnqCiPVsyN3QW9T9N8G19dq/hFEFt0hR37UlxAmQvbnv3esN1J
         Qjt4QR6nN4USk7p6ofcKtUu0NR2VDYYIkkIwYBHxfEuxfLHEsLCQHTyA0Z9QKzAW+uiX
         gi6LeGb+JPy/MScq0G+J2bzx4bTqOY9NldCLc8eBBrFiNjrAunKI9wfUej5CRenekdu3
         Jt2GzrqiC70JMBbkR3bPBNXijd/xVK95MDPPVczCvItdGrXXMWjWVOH/L8ZI/E1+qI3n
         h22X7cgGZfB67ke3oMcntLjI87GWGR7FDZ62MYOxBAPLZD677N39aZKiy0/pSdHFMCwd
         hhhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764854590; x=1765459390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l4XGWR0+KNvc3ed5ArMjwMlC+KzNK0mXGZ2jEfsyOiY=;
        b=NKn+LuINfgpPRji+2xOALBR6yuGyaxr+lhtXVAltgcQKBMkSjkRzRqT6whQTTVXR4l
         77VwK5dsY+y7uDg3qfWIkpFasgoGkeHiwn2e3EP8qNwucFbRILSAfbrFkCKO+qLj7siO
         U1gAPljWX4d6jHh9bq18aIa6jWLVIYH4VIUarZBJueGRD1cHdBYIdP3hiWkDR5rbLMMI
         QT0IEV2qCIplfrpqH7dWfzcWAF3ic/aXdaOsgpKW6VyoROaQHhqwuou4nXlf7s3XZ8zg
         q7+Ky2Pfsr66uqVlDRgvsIliXSU78rf19jinmOGriGG5XtS8fISi0tjzZe7JqHte7okL
         P1Kg==
X-Forwarded-Encrypted: i=1; AJvYcCUSRjiAgMVqxABYOP8fXEn8czbJSeyOgTgtpbBegOfSKqo254T5+MOWgHUPBYSC4jeGAlZUG7ktfrje@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3uBbxr4Q5Wu2uqVOJLFV9PcRWgRSsmm19ayTypj7sdpg631Wa
	SP7eu0kc+pQL7B+VXGZsZ6MtH0XPzmFX6wzEJCtifv34GJSObxuO6cQcvD2r9yoZE3f94FpGzQE
	ccxIR+6A+Lbeyo4SOdT4W1HJcftIHe/wpqllpBpM1e0meI35YTRXj3Uae1vEYCibg
X-Gm-Gg: ASbGnct1d8ql1Tt8org5f+r/4fQWhaW3vW0IESTnpZ8JpOBue6Wm5/tikn63Hg+/WN3
	62dto/oySc08/p9aFGJ+74EDLqCN5RkclvRJ3qzy+tuAT5Q9KFvRQgj4gByQ0IezNrmGz59iiqO
	NBFtCcD3kX9VmVCm+dp60QELr8caV8jugV7sqxrsm0H0Idrz6EtAq+fMboC/R9HbbYZlgtYD/eO
	o7dRLV5PzDNYwrpG+uDDFx7dZcc8fLLdwGAy19TRzWJNs75aN8jEdKr7NUYoGWPoLgzFh9FC9eW
	zMb+8Ld5PdForIxa1hq5WMSR0DXnj8+IZX64EOPjZ1Ay/N0sN9Izfl1fFE2MOPuH8paHw/ecskJ
	r7wmLv6K79uHaUWzuOZq6I5SLL8Ll0AkI2w==
X-Received: by 2002:a17:90b:6c5:b0:349:1597:5938 with SMTP id 98e67ed59e1d1-349159759cbmr5564604a91.23.1764854590254;
        Thu, 04 Dec 2025 05:23:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKzX3dOZ2Hed+4VMOvlHYme2ZNasP8l1XGATI6EHYuBs9xYFVOc2YLttTn9Lh/jO8gK1QmSw==
X-Received: by 2002:a17:90b:6c5:b0:349:1597:5938 with SMTP id 98e67ed59e1d1-349159759cbmr5564563a91.23.1764854589700;
        Thu, 04 Dec 2025 05:23:09 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494f38a18csm1914740a91.1.2025.12.04.05.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 05:23:09 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 04 Dec 2025 18:52:00 +0530
Subject: [PATCH v4 8/8] arm64: dts: qcom: qcs615-ride: Enable Adreno 612
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-qcs615-spin-2-v4-8-f5a00c5b663f@oss.qualcomm.com>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
In-Reply-To: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764854530; l=1566;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=0wHTfSWxkpfoiE0HDndY5tE5UXZgiygEg/pFzVW0/Yo=;
 b=BT9DxCp3kv924ILRfxcKowJzBmBolBokUx75jKxcl5PUPI5A13T9PpRfwo13VB5Ouhk+XVvSd
 gegMdNlntBmAZUZ8Jh6VosyxPJd5d6yzxVmXY+6J7IZzJeGaejvpP3D
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: KRi_4k6zIQV5dt9XX3uz3EOfx967U9Hh
X-Proofpoint-ORIG-GUID: KRi_4k6zIQV5dt9XX3uz3EOfx967U9Hh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwOCBTYWx0ZWRfX/Gx35laQYXJ6
 fMPY9Ta1M2P9R3qhtwyBHPzDNDnCX/Zt7UB81KOz0Fh79hgiMWF/iPrKB4ltsaJ3ZP94euHqTVM
 wKabCBeLWojQvwlCqDcL9hOmd1klaDVPOhwISfLIACeh5OZVXp12mEK3m1XraWJpgJRGag4WCad
 OPK908TdS/mXobS2jOCNINX3XtY0CkadjvjU4fkhRMzoj0+G/2mciqEoR66oh5dL3w6wW3PxfZ9
 X4AloNl9nrY5t8EWZUu6x33eSTmRN4J2eyv+iVArhUCCcVc+juwbNgAdQS/SGZ0vn0ItoevhaFj
 wWfd11CBDyW60ouX1fQ5mIzs7nywGVH1H0EJhqvX5SR3rdwsj3SJJUFsocVim1PDK4DiVl8EjM/
 +Ss/49Z9Kr/wvW7vPf6jeJjiTxwntg==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=69318b40 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=zVnKP5-pAmSyy1jt-DsA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040108

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


