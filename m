Return-Path: <devicetree+bounces-158318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7F7A65B4F
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 18:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27BF117F3D5
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 17:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2DE61E1E11;
	Mon, 17 Mar 2025 17:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J4Cqq/sa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105FA1DFD89
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742233505; cv=none; b=HclmCpWaAW7XOWhEYUl/1Vs25EgCf4mLKrBlasnASEMVZT/oMz+50EqOuC9ID/KGOv+BUWjoarLD3YpH0pS7MOt4CdGRYMx9JFRGjLuRk8GbHEhr25YIwXIVUAo48XI3LyxdvoIJv/VfsRkffC7Z6bcE9jjL7QZ47I5smxGqek4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742233505; c=relaxed/simple;
	bh=jexDBYn9BNqo5ubVBhdyniVFq50lVyAorid4LoYZ4a8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nKrcsvMnI6IhApT8h6cT4cTmosCXMSmzBMa4Y/ngsENAnQDijy2ULx5xwS5JjYr6yeXDV/bXu557f8ekapLg4N4KkLda6du5d2oQSo6BpXi9Hd2/m+HcYCnnzd/LHlW5COpkLSgswimIFPa5izvHMkcPWqgWTs+daiBk4x7+fTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J4Cqq/sa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HAgp0Z028412
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PZ4TVLTWNx/gGQLOA3+7bg0q2y6wNvK2yyuXjQgEGjk=; b=J4Cqq/saBNeR6xDU
	KdCrWM3ZHY8mdkcj8vR59Q2rf5RCerBW1LVUBGyUnw7p5x5hwGkiWW0Ft3ULr7+i
	ui7YSWnnOTNLdtFFkles5Wx936lVAAv3SFsjtB/ZUxr6xYWv3cs4UFu+udQVBJZO
	beYFqSey1eR3oJUhDVaLAMgko4kGN5UmuXl2t2Fh1T/TwrpJqyx/BQRciq8azisX
	VEtchdXjufztadLVxnngZIRxAYbLKpKzkVsVgjyqonsQMmG/torf1UhCsof+Jn1/
	w8FzLXig7wzvX6FiSreKYG19M7m89rhcZjjioFTj6fjcyz73JUPQ5wC2/91mhUJl
	L6gpTA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1tx5fc3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:02 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8feffbe08so128717526d6.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 10:45:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742233502; x=1742838302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PZ4TVLTWNx/gGQLOA3+7bg0q2y6wNvK2yyuXjQgEGjk=;
        b=Td2LZpATI1lW07UDhudPOQ6Ke+mnQfipusEZ3qGCdMkQ7a+aoEURp0JUd6+D325+XS
         PCF2d3kmjSKVLg/2BAMABAJ+o3AqyXQMcLbh8kmcC7TIDkTnbMftIj6AsnFX6Ql2vc6m
         Xd/Cz+hicr34dUOHsT8igU3tsOxSK83KLy5NkuBoT28kEmceDJyXWDuoruaWRbbNsp7v
         XXe9bXcOdCb3pYryj1CE4ytSO9TtUVL54UlIPoxALALT9jEMGZklEZaSDyP/WNlwECS2
         iEZ71guYQYmS/lz2x+Yi7qTZk5/YtC1xDKSQTJzK64WiLFOs8lC3m946/v1IeNxa5QIl
         jU9w==
X-Forwarded-Encrypted: i=1; AJvYcCVNrbHbeYvJQhjG1tactqXMHmFCnVBh3vkVq1oYE5zvsX8xXySwdvvyLA3c0Gxw3x+4N4+oGyz5nnU2@vger.kernel.org
X-Gm-Message-State: AOJu0YzuheT4we9AeKLN6MVLW1fem+SY2hw6FhgkcIW3Y6QwRv2dP+sy
	X8SIb57jdsvxhxFc1rP0QbC1OB8L9hN5LSRh/jtqiq6tZVdJdPk3jydIM5LFCceKrBYM9Xx0XwR
	3sfhNd5ciEKWOmc/J//mu9oKbLTutxcrupg2HAC/piVbFH8hW4YWCplFWNNkb
X-Gm-Gg: ASbGnct8IFuGc3+HtPz9zgUV4IVcaRWyvd9KqrEOuMghLxPlHLzeQ2fW1PSAwdCmqZ/
	2Mv1yGPYT3FEMJNAcI3ETbf9j9nGtYdhnIrEEFpE2CoJefLXlxQea2j7rbvHaEaI8YdVSRWtqGO
	e35dR/FgYdR/pUrdtc4Z08rU3WFiNUsBushikRSuH+cmF9TW+OqcI5a09FlwSuBiC193mECx7RG
	8TjjlBKTkQDPHMMdc21raCuIb64U6g+M0uNG4ueFTwbukvtnuBakL4VRMyAcZHEV8A+7WZKeDSe
	h+GP1fxrHzAyOgvjneqiZYu8BZ4JyTDI/Krd5ClFnLeZ9Tim3RxDTM98Df8A5YvHnLGMgpAgGAj
	/WnLjZQRxcULsz8GhPKNyJAiIY8KS
X-Received: by 2002:ad4:5f46:0:b0:6d4:238e:35b0 with SMTP id 6a1803df08f44-6eaea9fac05mr187988906d6.17.1742233502232;
        Mon, 17 Mar 2025 10:45:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbtkhZoh7ZKjpQve+rs4/e9Pgietbgyg5OyGK6q/QtHdKWWg1YEVRp+W9jdcYyAx96l9bmHw==
X-Received: by 2002:ad4:5f46:0:b0:6d4:238e:35b0 with SMTP id 6a1803df08f44-6eaea9fac05mr187988106d6.17.1742233501747;
        Mon, 17 Mar 2025 10:45:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0e9985sm16687121fa.29.2025.03.17.10.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 10:44:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 19:44:41 +0200
Subject: [PATCH 6/9] ARM: dts: qcom: apq8064 merge hw splinlock into
 corresponding syscon device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-fix-nexus-4-v1-6-655c52e2ad97@oss.qualcomm.com>
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1360;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=jexDBYn9BNqo5ubVBhdyniVFq50lVyAorid4LoYZ4a8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2F+HrvJahQkZGPwOjUg+kkUB7W4G48kd9aCWw
 r7W1ash9DeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9hfhwAKCRCLPIo+Aiko
 1RTFCACyTCsSbBBguAPI+l9LhhuDNYE3CZwWSivzYEB+8936g5PZxR2jhNUfSJYvtsA7/yTN3EN
 etytkcTaqPPy14Y3mJaIxfR1Grm1XTWQaIRWHOY6s1K1RiutiCO98ZTLqaLIerm89N7XZEehCSy
 OcXVKt64FJU0PZIABwDELDc8yJs8DNqZqBH98+8e9Aw0DBFnKMJVLwVehz+dcp20QkHJxtmD1UO
 TaBEK9puloembdOTAJ2jlWX4HTi07+l4KPJ1sPmVREy3IUSRwOpslwJggxzH9h7003j1ueEAvUw
 HBoBovqszxUPCunPJADDKteSoyLz9dbcuNk/Vfs3ozzeykV3
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=W/I4VQWk c=1 sm=1 tr=0 ts=67d85f9e cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=rbKIQ1AqokDPPu1yVMsA:9 a=QEXdDO2ut3YA:10 a=FZlSnJes_g73BORgF-R2:22
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: JfttaZ1xkXeaQkNv9PokB69MB60MC5xG
X-Proofpoint-ORIG-GUID: JfttaZ1xkXeaQkNv9PokB69MB60MC5xG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 impostorscore=0 adultscore=0 spamscore=0 mlxlogscore=524 mlxscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170128

Follow up the expected way of describing the SFPB hwspinlock and merge
hwspinlock node into corresponding syscon node, fixing several dt-schema
warnings.

Fixes: 24a9baf933dc ("ARM: dts: qcom: apq8064: Add hwmutex and SMEM nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index ba99e794dcd2236f65f2f3d8c49213cfdaee5f6e..3728875a5506397b36a4c0d6a5ad12c067bbdd8c 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -213,12 +213,6 @@ sleep_clk: sleep_clk {
 		};
 	};
 
-	sfpb_mutex: hwmutex {
-		compatible = "qcom,sfpb-mutex";
-		syscon = <&sfpb_wrapper_mutex 0x604 0x4>;
-		#hwlock-cells = <1>;
-	};
-
 	smem {
 		compatible = "qcom,smem";
 		memory-region = <&smem_region>;
@@ -305,9 +299,10 @@ tlmm_pinmux: pinctrl@800000 {
 			pinctrl-0 = <&ps_hold_default_state>;
 		};
 
-		sfpb_wrapper_mutex: syscon@1200000 {
-			compatible = "syscon";
+		sfpb_mutex: hwmutex@1200000 {
+			compatible = "qcom,sfpb-mutex";
 			reg = <0x01200000 0x8000>;
+			#hwlock-cells = <1>;
 		};
 
 		intc: interrupt-controller@2000000 {

-- 
2.39.5


