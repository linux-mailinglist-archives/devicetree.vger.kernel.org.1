Return-Path: <devicetree+bounces-234483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B97CCC2DA5D
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 19:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55D213BE256
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 18:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DFB7286D60;
	Mon,  3 Nov 2025 18:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hYkFtK6/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QoiXP7rD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9203028CF42
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 18:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762194027; cv=none; b=hpLNT94MRLYdmKKMxcjo+N7WsuBPuTBXrapOn52k/et0DUIjA2TlKY+j/zZI1tqocYVnY5fbzfpAyTh/q8wQFo4DAcgl+Y3n8El72nKA0zfnq9Jw5qYlN+s2LBUC7QQqS2tcXmuHsznoDnsFFovFnG47OMPtu7UeBwaRUWrbBUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762194027; c=relaxed/simple;
	bh=rlRxbzyh8yyj6CJU18HLY7UiR6zS/35hHQYL0zGGwVo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jforYKCvkNvIO58tvxeSzhS6GrII4wPj2oUUuEbRMm0fNgpM12K8CNpTVUT+Tbgc0Fc8mh8xg0feWZUCRwiLNbef12KEKkeVOtx4xt51594svIQ0uCbozNlNIv7N49MGtSTuzlNexeLFjWOfDeo3oqcnDHJthV6HiLoW52pZkdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hYkFtK6/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QoiXP7rD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3H4QdN3616996
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 18:20:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6KePe1VaAb4
	Rb0Kny+upVC22Zpbyddm9VODeMGdiXKw=; b=hYkFtK6/NXYyoNw76imw4aHAbpz
	quRkgm1aakICLsXCvgAMgnmmDGqzqncQbSaOPzCSdvayjIiE9qxnMgR2TcEw6Fo9
	uTpVHRJwe08Ro4P2FWHuE7EjXrPnEDvaT4krKg/VR6SHPgnAmb+t5fqRjP3Twejd
	JVRuXazw0WShtdB66AdcdRObSkuTuQ53jSKt/v+jfM9FTu5giVufggy3uP8jeqyf
	mqt20sIEoC7aztZXKHD98Ps3sLeyuMN7HrG+3pItBSVp3yT+4MPmZaHE/Xw0dMda
	UGr/3BBAnVwF0lNRUzpeBguTy7zSIpUbq4uJD+/wLH1EwTGAuT1ut4ySMcQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fhr7eh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 18:20:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e892f776d0so235413461cf.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 10:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762194025; x=1762798825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6KePe1VaAb4Rb0Kny+upVC22Zpbyddm9VODeMGdiXKw=;
        b=QoiXP7rDKXz24ckCxNY1unWlrcite+49/LpgehyD2OrdlrQnK6Y3MipChN+3QNFOHc
         OALymGOnI5P7HD8mnXalDmyeOMNzmMk2jRXlHNOYVx6Cvdy4OAJt3bNxA1MEKRdE66c/
         9Tfr+Vt656pC0Og+q6jp5mko/TII5Qf79mOxEvR+Bjlm+D1WFqXSzDrn56bCMinRFVEK
         GBhHZFZNnP4Aha1kWhzpEuVOkPaujfnymlV10AsoceTIeRrSy7yGQuXxLKGAbIxVrzFZ
         5Vi4GPOSlAjWvWrI2CPeI++Eg4PVKg3ggObv001cYhTHybisGjieyUhP0lsLp5+bBLde
         p+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762194025; x=1762798825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6KePe1VaAb4Rb0Kny+upVC22Zpbyddm9VODeMGdiXKw=;
        b=b0RkhuXoipIwMpQsnuEDtL3ouyOdYZkTFQX/629IgXn3NeSXw9/QS8Zjcpqsjm/TWD
         krOTr/sfIX2Z0tptu9mJ/EmUW/YLLJzj2hPx/0gfbN3aG8ILsOuBi61+j5qQLC+jDheg
         fZ05K7Y6/ulNE4TtZAPaBtkyjt3kcm/f7Cz8IcocwcPNrZf5/JcxGk5PgAuxBeA0L5iZ
         sgBR1CFVM4BmPHl5Z2J9FN9wiz2yPcbFtOB+Y+wlYUdA6bKbVpRGMurx0Epz6NhLsUDE
         j+QIInOvQIcNVxXZIfMel0wR1IDiMBkNw/SMJoDHGYW9xutJJrc6VmxMEBsoJWYQQviD
         VjWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxCyw4iNfDpo/nPAfE3VSD3dz4VJzrjSOxJ3OFwoCYs1OMLlYVVh20HUNb9BlS1DCKnaJKASGPzIg0@vger.kernel.org
X-Gm-Message-State: AOJu0YxHMP0b2KR7cEd/yJkHpHjIcEDudwdxjw5TQHE/MQ9wmkee/bU8
	ka9c5zSyBzJG6Ac+2fNbhvRHJRwxm/9uJTmOIya2jDgWyja7h+dZfrWIzOOq8A3e8T9M8oNMHJi
	ZICevDS5dlObySkneGsU+7DqBItY8dkIPUs0TH3bv1tKN+OrmyVvTTV5zgdDdflG2
X-Gm-Gg: ASbGncv5oRoIylz66qyQCVSHHqVFee3AeTxuEHN+J5GvNBcJLFSsP4KoE8yo4EG6r/P
	4+NfrBXwBm2Uaez79dVpisRzLsxpBj2KqCifSviJxZc7LRaH3M5G7OYlU9GCWXnDK7kQ6DgZbiI
	Hiz8QiqQyDIX2r/HjnDdEPDOK7nbzFL9tK2qGb793ZOtIEHe1EeKmaATl2phbyRSBV5gBOEnYPh
	Kk4ZuhFfvufBISbWyGvH/3rI1fXMpbc63ivDWJLL+uSMxR7N0NvCoXE0TOE2hLpsW5LRmjXtNr0
	5YepFvLCeWRuaQucySfxwBEwjjmMDQjTHlJbJ+fSZ5u/Rqnf6rHTLV96AK5YSA08XVQRwecxY89
	v0Fs3HBL9PFhAD8+sP5JIWD9VL8YOXOvQE7yAULUEdslQNfgdpLefX89lzvtGUJxk7g==
X-Received: by 2002:a05:622a:4c11:b0:4e8:955b:ac04 with SMTP id d75a77b69052e-4ed30deff3emr164567441cf.22.1762194024742;
        Mon, 03 Nov 2025 10:20:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4oxMJtz50yM90yKKKIia6FO6BqNrcEfMAMT8ylD8wZpLbSlCFYUGYTPGoQtsz0TPiz1enWA==
X-Received: by 2002:a05:622a:4c11:b0:4e8:955b:ac04 with SMTP id d75a77b69052e-4ed30deff3emr164567091cf.22.1762194024267;
        Mon, 03 Nov 2025 10:20:24 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:8842:5746:daeb:a8f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c53ec2csm169096545e9.11.2025.11.03.10.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 10:20:23 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 5/5] arm64: dts: qcom: qrb2210-rb1: Add support for EDL reboot
Date: Mon,  3 Nov 2025 19:20:06 +0100
Message-Id: <20251103182006.1158383-6-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDE2NCBTYWx0ZWRfX6xe6JcI92Wn/
 tRKYvg0gQGy+wB6HLQX0EBsajOnYJqksZgiSR6mfHT4ZhNeXw8Sm0HzucAfvFo9ZE0Jc7eOzXSd
 sXr2krMM0SYGCax08dkkgNc5eudu6tyRdznnkw0MaJzflK6Yel4INSnB/SQDQd/n7oYa5LIG9yq
 lwbLDwPTbt3WEboPNZ+NGnJap7YCTnOHXKIVojALLuGAe5axttvYERM2Oqkr9fnREE3a1Hw3Tfv
 c2BAx5VtaFqM4CduNRnUfzVQ3vMozEmYN+OnJC7pMPDfQoRhTkPOTnmDSxtyjmmTB0qUsemv7Jn
 4eZ6Se4Mwdm82xC5hjwawt8Ds30wT5WhL/6FS+epVfg/z8QoE0fYlVsdGSbSlJ1yykwt5Ha+E7a
 N4X5EeoHMYnD9EzSYH7neTMu1WIaZw==
X-Proofpoint-ORIG-GUID: ukqF-XrFe9BGnd1VOxEgTjBT5hdrQswX
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=6908f269 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=gjCkitBQ8UzLeNF7HDgA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: ukqF-XrFe9BGnd1VOxEgTjBT5hdrQswX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030164

EDL reboot mode can be configured via qcom-scm, enabling the platform
to enter Emergency Download Mode for recovery purposes. Additionally,
we enable PMIC-driven warm reset as the RB1 platform's PSCI interface
lacks support for warm reset.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/pm4125.dtsi     | 2 +-
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm4125.dtsi b/arch/arm64/boot/dts/qcom/pm4125.dtsi
index cf8c822e80ce..5d84a3250481 100644
--- a/arch/arm64/boot/dts/qcom/pm4125.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm4125.dtsi
@@ -15,7 +15,7 @@ pmic@0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pon@800 {
+		pon: pon@800 {
 			compatible = "qcom,pm8916-pon";
 			reg = <0x800>;
 
diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index b2e0fc5501c1..70c6c929bbd3 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -322,6 +322,10 @@ &pm4125_vbus {
 	status = "okay";
 };
 
+&pon {
+	qcom,warm-reset;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -510,6 +514,11 @@ pm4125_l22: l22 {
 	};
 };
 
+&scm {
+	qcom,dload-mode = <&tcsr_regs 0x13000>;
+	mode-edl = <0x1>;
+};
+
 &sdhc_1 {
 	vmmc-supply = <&pm4125_l20>;
 	vqmmc-supply = <&pm4125_l14>;
-- 
2.34.1


