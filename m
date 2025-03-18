Return-Path: <devicetree+bounces-158574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A24A674EC
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:24:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46D427A8097
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B9C20D506;
	Tue, 18 Mar 2025 13:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="biZm2DRw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B4920E6E2
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742304141; cv=none; b=ZsByVj+nMI8uAwRZ0MKRVpSXpdAAl3rF3wHJWrnWgxKjkQlPjFPZif1cQLIRpslUwkkEdUifhcLdMcXBGGNuVti4jABew1S0y3LpmZMoAMKcA0Ad+K9nJQII02X9n22IfnKLfhZIfG+jF1WCiC4B1mkk0IgWqORhl3mlqS8+PcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742304141; c=relaxed/simple;
	bh=Y4wWGavz3TsyLPGK0obVOVx1Sc2cyC4hcnHKKbsXewI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=POOaZcFIxaa+tKLdBUXfTqSqdRyv6l8+BnUNIPjaOor0vruO1mVlWsqepttq68gDiBcmT75RZk34eYckBWMU8NQyMCS9V35qFxORUdfwzuZNCbkw5xhwWhZCt5u5OvgfrVuKYSyktv5NbIXGamowInjHTkuGHK1OGeuhCxcxMlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=biZm2DRw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAxbLa019837
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3kdZV2TPugUFxEY+ozHAQLVsYVfHOOuUGLJ1vgAe5Sw=; b=biZm2DRwvTYjirdx
	h/fRua5eN15ykI0LDncElTrdqqDeCoVEcI8NbrBaFxNeHdGoLS9zIaHl1wxDMs0V
	EB9tByQI8DsrvadKMBzc/qxqpX1fzLwb6XqsxEOyfNleZ7RtcOHl6P3B86CrGyPl
	dkw5SQzX1vLnMYFrPiYh6J1xvMDeh+nt91Ziwlo/atHQPZlUQTaiaeX5malKfWCT
	lYOH0xozZLOCopA8f7kTBxpODTsprg5Cpr9FosdHCO0mzmytgRnX84pJ3EEfbg3K
	Tv3qbDSxy9xFhtu5NoMvPgxLcC+rrhcuTEf8YWRm3F6mescQtjNJNazIxbRNadBy
	r+DvzQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbhxgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47693206d3bso149618121cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 06:22:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742304133; x=1742908933;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3kdZV2TPugUFxEY+ozHAQLVsYVfHOOuUGLJ1vgAe5Sw=;
        b=sOvyZ8c0CkLx9e8vydwIBq1t/X0xp8i1CtseUIqY8lSCVQKQaxmCHu7gBVyM9UC2o1
         C+nU8duXjMwrac6GJzvob0HHE47iYm8HCVYhtCMYEfn32VV8+iooqtX1emGrZZAz1jpl
         hws0JIe2SuxTMRE74TueMYbQNEZV8aNCFrKNRZlnbRwtl2NyOc8U0lGynnGRv9XACmYn
         Zzy3/yoLXM8KFHux8ddBGM19fGNoZajw9xWYYp2CPBCBV2mgKSiekgli699Muijh/Rf8
         onrHxZo8nkRPcz1ybWeTyPH1MgdItDyy5V0McP0lSiulOcpeuC0ToBjBRDNGDEHV6roC
         ZzMA==
X-Forwarded-Encrypted: i=1; AJvYcCXnThHRSyu4fWXRe6mgkYCk0ZrC36STDVPialt1KhS2F7LK9Ch8kKs9fg3JG2eDEYpydf1m2obGKnz4@vger.kernel.org
X-Gm-Message-State: AOJu0YzGluyf8UZ5ZSSHYE8O7Xte23ZJCGhxGPGhVXjASE/M24Vl3WTt
	fRmDpHfUuno4iq7M41tyPr4341ma27Qvb2MH6Lw9ujQOHrfIfIf8IIQMqw/X35B0DcjoUw7CvcM
	SL3NAo9x8rGJvfEASKjvKyS2JuAKXR9OAFafhVwpdwaspAIOw4vY6QbqXlx75
X-Gm-Gg: ASbGncu/WmVg0rihcFLJhOgFHnJy93OjfMdv02L8Z10z8KI6tmx/3lpNu4m5FG7h//8
	902CK5Xw4oJY/hPolwEu6CE4UHHyWrj+04FpAlt57oNtjGYrnDbwBHu0M6qa8GR4ZIInTQqqezC
	1LQz8W1X4xBsJfGSH5m5JNOBhdobdM1KdBvFipaKeFNtQluBz93UERJa86lEt+A07PwVsTQAsfP
	JIkDa+s4LH2JjR7zT7TB+uHGOs6n3nInKdBpKZBsRDPqN8Kk5kapIVY5adjPLB81KDvo+H0gtSX
	ZTxQb4vcKtH7pTvAgmEj8Aqk+8XgSuqTAZQSors02ChPkilXFzsQrc8atQNZPYnQ7LTZ1Vb9nvK
	cM72Xg7SL7P99+UMahGv0kpNrvnkv
X-Received: by 2002:a05:622a:1aa5:b0:476:8ee8:d89f with SMTP id d75a77b69052e-476c8129e99mr183009901cf.7.1742304133664;
        Tue, 18 Mar 2025 06:22:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcRqgTJbzz9P1nmWW4VMYSspiil7SA5Epyk18KgOQDwdyZVrQlwdqOqvzTOWq27UBldAbYCg==
X-Received: by 2002:a05:622a:1aa5:b0:476:8ee8:d89f with SMTP id d75a77b69052e-476c8129e99mr183009551cf.7.1742304133338;
        Tue, 18 Mar 2025 06:22:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a79c4sm1664831e87.226.2025.03.18.06.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:22:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:22:00 +0200
Subject: [PATCH v2 07/10] ARM: dts: qcom: apq8064 merge hw splinlock into
 corresponding syscon device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-fix-nexus-4-v2-7-bcedd1406790@oss.qualcomm.com>
References: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
In-Reply-To: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1393;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Y4wWGavz3TsyLPGK0obVOVx1Sc2cyC4hcnHKKbsXewI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2XN1+FeFr2UQjmCcN5vnsKVjIXGHOtibWee8f
 7eIGjLCoKWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9lzdQAKCRCLPIo+Aiko
 1XLzB/4/X3revfWf8/Vsu7jTH6yXa75UYaPHV82DaJLosrJLm3Zd1rPbSqMqC63rWw7qUp8DUq2
 hvv9cABybL+1YAln9EJdTxLrTCdwIpu8EwvoHHzGP1jxxg6MXjFcI3XBniK0i/tXAs/sK9iDqam
 DEHCBL5uHfagJe98Q1ng3CtOWpSfN+o2BWsKzKhBPN73M5IacEyC1+kHZvvbhsJt5gTqfu++CIu
 6Mtbc72+8UcNOYMhhx4xwL5+pTvLosuEzxQIDDL/Fm7S5AR0zOcWQlW2x2WJOXpzXF+32R7UYLW
 zKxl/TAZdRbTa5ytQgZ17GVVnoCBbhvdVHtEgwo+fZrxIzN6
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67d97386 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=rbKIQ1AqokDPPu1yVMsA:9 a=QEXdDO2ut3YA:10 a=yUn1A8egHeAugXtLOssV:22
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 7EsPSb58kX2iEqbbEeTr_aTvfcYr-BLU
X-Proofpoint-GUID: 7EsPSb58kX2iEqbbEeTr_aTvfcYr-BLU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=633
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180099

Follow up the expected way of describing the SFPB hwspinlock and merge
hwspinlock node into corresponding syscon node, fixing several dt-schema
warnings.

Fixes: 24a9baf933dc ("ARM: dts: qcom: apq8064: Add hwmutex and SMEM nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index ba99e794dcd2236f65f2f3d8c49213cfdaee5f6e..41f8dcde20819b3134c38dcb3e45b9e5cc24920f 100644
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
-			reg = <0x01200000 0x8000>;
+		sfpb_mutex: hwmutex@1200600 {
+			compatible = "qcom,sfpb-mutex";
+			reg = <0x01200600 0x100>;
+			#hwlock-cells = <1>;
 		};
 
 		intc: interrupt-controller@2000000 {

-- 
2.39.5


