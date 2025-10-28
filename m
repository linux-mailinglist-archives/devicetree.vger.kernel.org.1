Return-Path: <devicetree+bounces-232364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CD3C16D7D
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:00:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B24DE1A28ABD
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C658351FAE;
	Tue, 28 Oct 2025 21:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jFAnUJSh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ox6MNUtg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB467350D57
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761685213; cv=none; b=VU289JvcINIU5Sxn1PnA56dhk+T+ZtsJvlyGUvrA8Pb9u7n06IhJlQ9vd0GhcnTObEDPgappItKAjyCgaTwrQKzqfAhN4SXOH1OOyYraMfPgMOGMMyMB6Mj/SGySxdXK4xVluoQpI2qoPWPQ9AdNWmg1RYHnPWSoBq1p8Q9g1Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761685213; c=relaxed/simple;
	bh=CwYtSL3ydaPjZtAAIaViNMdmrzUpICYZyoSsjpUWKZk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CBfR1o6RhfimfaqIybfHx2ZesZjtBxzjIkJYpu8QCUUfFy1SjD2crCozj3taUwdGAtMMwhdsSJ34T8FXb6UGq/7L550pGbk7S3bDjcYYEVFL08QG2eywehnfmb9IDXcTLQerwHMubmOI0660gzKQ3V/ZYhGnb31EIxTjH12m1Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jFAnUJSh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ox6MNUtg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlexV2503485
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FKJZs4WeO9wG/g/LdylOAbfrDrIQHhIXPp1U//b927M=; b=jFAnUJShYJnGsEEa
	ZpgdiUuqUuGqIMOhyp6BgGWMzuh8CqG4qPdTE8qgSD9/2AzFtQfrJHcgp5TsjLFJ
	TwZ0BYLHnmZSqRhAXIdIFH1ua1uK/pUg44kSAtDMfPjiygGL8YhjpKCUzjv9kdJ5
	bRoihPK8MGvewxN4HAdJXMXbUaHv06zHEjdQGmIbJuLqtEscEVIwA/0YKXWovvBN
	wnMy9sfaPAuiWF5UUM5p4cnAgszwm/kJxGauuqodMaSCBNiewgIMjKJOjjA1eXCy
	FB0uCIEN1UMxdUurVme8DWDPbI17+QyAIIOi8PyU24HYB8QekPqTprnkxBF8OTx0
	1iTxHw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1g5cc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:10 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ecf2adbd3bso23070271cf.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761685210; x=1762290010; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FKJZs4WeO9wG/g/LdylOAbfrDrIQHhIXPp1U//b927M=;
        b=Ox6MNUtgrAnIvKLoBZey+24otVKem66hyuLLj+NHTaEjPnSok81SnlCvHfQpSIoDMP
         Chw019kXP8+U5vcpSYfVB8cEEtCw/5e1LtfitY8Ce520EDnqoiTtYd8WlYVCNv6ZuXC/
         5Kt9A/q/BXJnpGDhQMi4zhk/hG74F6xKMfqmM7NuYloFhomGC3zlG6zKEeQD9OHyw8tN
         g2KNp6aex20WGRXbGqxALen//lw28269WIl5Kl8EYGPNIzUgWRhiQ3TBLMPvFx9eeDoE
         LUr7S4a1ney5TfkDA8vkkS4AEuJ6N6UxRPpK7Dn2xKr2Bpe2OUfK7ghoaCsLtkHsNoZT
         OlpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761685210; x=1762290010;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FKJZs4WeO9wG/g/LdylOAbfrDrIQHhIXPp1U//b927M=;
        b=JZYR9ApRIH/yBR50FodN5O9SyWgN1TnQai8XZcEVzNoKX5WWYWkGajIoq8PiNAV/fD
         X5byPJgltBtgITlSJcEOKA5//aJNTUM3KG3uuzCiMMJWKzV1I9iyl6tCpANubZQQsruK
         rTL54K4O7dQ+01ma0by1bUCBQJ8oxiERiaM5yCxZ07fNXCP0RkMarp/VuWbMbD7I6Xl6
         nbSkTlVt/9h0TnzTJq1aNjqKxkBWfnqCDMQvHf6eiOUmS/PJ8j3HbbcoufRy17k1aln8
         JhIDl/IFDcWLuJp538O8b2kcH0qiTH+7YawZnvTtU3TV9n1+HfN/zLNVduO8j5U0Lgoo
         78mA==
X-Forwarded-Encrypted: i=1; AJvYcCVIAa3U7zVbha9LRjQ+ZmF+ULRVcs+GyBDOxXpuX5AmnpTT87kgoj1VOyaq89oZ5ELZeh+nQPqJ5/je@vger.kernel.org
X-Gm-Message-State: AOJu0YzuITKwnyocRaWTJFHf77RNdq1gpTbtg34omRKrbJuFKJ5uf8FR
	C8F83bzecGWjyFzhTUClQ8/XG+Ny2W2T7KC9/twssyDP9gbm2X9o8SxGFOIuk9r3SGC+waNCO3Y
	qjgoJEFGOwrr7RdKxONrgmx2jXamnf/9HzZn/8deiI3mfCiXSU8AemlLBCr6giPWj
X-Gm-Gg: ASbGncs8sP8c/u48PXqAYpcD+UuTS5h8BVIp0bvXn21LhHg8qqQKTR8++TXRmxSXEin
	Gpt6ZQ1znCkN0napaXIdUreHuavvzc/GSN5ZJ9bRT7pdYvzrY4WlEKDBfcQXjGvBgfoYTG+GK/K
	hBPB5CKUqTzBtvwmArk+H3W6HpdKt1bbdiwY7tFGXimk8zHz1qeZZ0AH4HB1D60uQYoW+2cXEHn
	qq2c3xNnfJW3XDx4B3ixzNzTfTiJuMTyo38qM4n0IRmGmks1jLU5c2UsB3/UxrB+/3mAXJcWzcD
	3WvPCh9uvhi7shCS/EBhHQkRSZuJ4mwyqxZBKUq0c/B2am9NlSvo/vq6MO77x5NmUO5lcg/Mbnb
	HFIb7zVZTODpHXyO43NggHuwlA1DvabNkOO4PX+E1RjkAclMFhjBoW7m96f1QX/KaTMTwuab31V
	iwVJNU8Py0cNWK
X-Received: by 2002:ac8:570b:0:b0:4e8:9920:be58 with SMTP id d75a77b69052e-4ed15a3c027mr8116021cf.0.1761685209867;
        Tue, 28 Oct 2025 14:00:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYsTaZ2jdJMiMfGuRq3YefyAWHJmT6QsE8Ud6CA7utk+BwEHqJQK55j+Vy7cSqUKHznLRDeg==
X-Received: by 2002:ac8:570b:0:b0:4e8:9920:be58 with SMTP id d75a77b69052e-4ed15a3c027mr8115591cf.0.1761685209384;
        Tue, 28 Oct 2025 14:00:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f861f5sm3283594e87.107.2025.10.28.14.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 14:00:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 23:00:02 +0200
Subject: [PATCH 3/7] arm64: dts: qcom: sc8180x: create common zap-shader
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-zap-shader-v1-3-7eccb823b986@oss.qualcomm.com>
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
In-Reply-To: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2644;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=CwYtSL3ydaPjZtAAIaViNMdmrzUpICYZyoSsjpUWKZk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpAS7T12d55mqeVo5ywuIYzsFgdFy3gAjM9XMyp
 yF8OjughTOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaQEu0wAKCRCLPIo+Aiko
 1eyKB/oDtn9PWtRtn06HR3BUcJVXCT7j1t/JPU0CXkfcW1A28McDCX+/LYtZ+MZUwG6BvQo0Rk2
 jKv4+78nJJ7CZxo+MtgKhDq/cGulzzRhAKfMa2FWFitCIIN8Hr6s9A2MnGaNT8jLHxVgnb+JU3/
 R3Oc2zmEsIM3CBKc/9ir/aeBHn3n1LLrkIHc2q5/J1r4oxPBIVTwJYEgkmcTGoDEcSSCwtCfaxo
 iEDV1GzF8STQvkZadiqLPjTqdziPn5EmtbIF2iLI3fAjBPXiI4qLDWkuXqkD68oTYwWkoGgw7Aj
 rvIOob9UirhmOGqbm+L/2lPfwFYvu+IoUeorw1ugqBDW+xBb
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=dbiNHHXe c=1 sm=1 tr=0 ts=69012eda cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IGUcv2A_Vedk0hkw8VMA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: B_W9pLzPX_18pOWwpD0c3PvaHoHN3MvP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE3NiBTYWx0ZWRfXzrJMtATQcNic
 4msFIOqfCSjiKeV2JtvUWvv22+eef16mla58/j3My5U7hHxzkknOrxUsnuw62osxUOSBkA1jl5c
 fl8YS2oAxG7bjBrP1o0bAYTTPj3VUs6r76R4k1+Ut9QcliZMOAErFnihrWo2XWR8PsRy/chBqFK
 /EBVh+2VMjKh7bG/0eBp1l3an7aOXw2K8ecQqb6WRc+pbMqtzzvnt2C3LjYGR/mT9sCR5zCdL7S
 3149BiBlAXVGhLoarbg8ddpCDSj3Hy8ZK0fSb7GIj9sw8lodsfETviPxJE0U/JH6EhapCg14xGq
 AdSgr5QPXa3NCU7WnB2NB7RYM4fvR+zMWbnj6k+AmH2qbGYElr73Ehw4HdeFWORzJ1SVcmRmumE
 ti62jq/jFxBieap3i6SZjeFaq/cv9A==
X-Proofpoint-GUID: B_W9pLzPX_18pOWwpD0c3PvaHoHN3MvP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510280176

In order to reduce duplication, move common GPU memory configuration
from individual board files to sc8180x.dtsi.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 6 ------
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts         | 3 ++-
 arch/arm64/boot/dts/qcom/sc8180x.dtsi               | 9 +++++++++
 3 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
index 08d0784d0cbb899b021198bd85e26f1a93861713..625a155a584ae4ca14c6f373ef21b773ea7311cb 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
@@ -151,11 +151,6 @@ adsp_mem: adsp-region@90800000 {
 			no-map;
 		};
 
-		gpu_mem: gpu-region@98715000 {
-			reg = <0x0 0x98715000 0x0 0x2000>;
-			no-map;
-		};
-
 		cdsp_mem: cdsp-region@98900000 {
 			reg = <0x0 0x98900000 0x0 0x1400000>;
 			no-map;
@@ -357,7 +352,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sc8180x/LENOVO/82AK/qcdxkmsuc8180.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
index 93de9fe918ebdadf239832db647b84ac9d5a33f6..069953dcad378448800d45e14931efe1fe1a69fc 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
@@ -14,6 +14,8 @@
 #include "sc8180x.dtsi"
 #include "sc8180x-pmics.dtsi"
 
+/delete-node/ &gpu_mem;
+
 / {
 	model = "Qualcomm SC8180x Primus";
 	compatible = "qcom,sc8180x-primus", "qcom,sc8180x";
@@ -444,7 +446,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sc8180x/qcdxkmsuc8180.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index e3143a4a41c948cf4ddbf4b137a1323366566fdc..42ab76d52ae21c39d5855e20e11f9cb2319f3afa 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -646,6 +646,11 @@ reserved@89b00000 {
 			no-map;
 		};
 
+		gpu_mem: memory@98715000 {
+			reg = <0x0 0x98715000 0x0 0x2000>;
+			no-map;
+		};
+
 		reserved@9d400000 {
 			reg = <0x0 0x9d400000 0x0 0x1000000>;
 			no-map;
@@ -2274,6 +2279,10 @@ gpu: gpu@2c00000 {
 
 			status = "disabled";
 
+			zap-shader {
+				memory-region = <&gpu_mem>;
+			};
+
 			gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.47.3


