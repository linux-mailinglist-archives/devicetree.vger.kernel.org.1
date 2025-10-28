Return-Path: <devicetree+bounces-232365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB8EC16D8C
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:01:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44FD6406BD9
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C4C7354AE5;
	Tue, 28 Oct 2025 21:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jb4lnCP2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kAWff1uI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C113C351FB6
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761685216; cv=none; b=FfXQ+7ZbzBNGvYXrf6fMYW9XgGwCvZhvFwCiwiW2iWoBBxjk72x+9KATs5YGOgFZ11Uzl2180DGT5Vhc4nGU2ylg4hSokO+xzKTgyh5GbTaFJL/rBr43Z+05APqgjHfkk+G6lIwDOslrj79MOCyLCVozaSE5I0TAgr90amArd48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761685216; c=relaxed/simple;
	bh=EsmtIGGogp83Wk5re8Qo1ymE2FtIHHnW81gg07LjkxE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ndGC9QbA77UDA7LUaWCjYNtjcGjWqYYBVZEsmAa4rX7mRNh5w6VRu75Ulq15uQlek+Xtl/j3a8oAGmswVZ+5hZdJsqfLIcBIBcuGHlKXJihbRx4gaFoHeUUwLcI6bJFvXLQ5iVFZoAXCHXdapX++RyLZXqCKnZZsdQ3uHk4lEeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jb4lnCP2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kAWff1uI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJlR7a2552905
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VziEZZGKxOa0Rm1W6uu/3kIDvdp59RTq7ZhYSMj/7Y0=; b=jb4lnCP2QE+Dj1sk
	8w+zQB+pHI1fUeKzl4nAhMsGlHQ6qMSBQzkVzFK+sb5KRfqSVJ/w/esWQSBhhJUF
	loVt/ICWM8joT8KbgrAVzfO4ygUCuJ1+L77RfycRYNzCdHPd2ttc4feNmkxBQYlx
	Ks4rJBFBojTNKnXql3Ng6B28ol+TQ+aQe1Dc9M+erhCUS+99kDnSizA7vn7wbqz/
	v5mkQfqRanaZV0EB2X0nArtAlws/25iVAvD9QjJ4PpYxzJ/u+5UFiTWxfnjWw+Bs
	MBdaksDVuFDBnNVCKi58E4ErJcr7IdJuZ62NED0m4/PdFuuF1QD5fAcLyj4lxqnC
	E3aygw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a2g5b9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:12 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8a387d01bso289372041cf.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761685212; x=1762290012; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VziEZZGKxOa0Rm1W6uu/3kIDvdp59RTq7ZhYSMj/7Y0=;
        b=kAWff1uI8T6vdFIUQKYSrRnKuuV3z7ujrxezOcZ/lqt5MYBT+OomT6jIv3udJ3UJu/
         42QJogt6nrBX23OB+ZW88GnUaL+kW8WYYzsd8DmJvx0nMt0hQaadkc1JmLVu4AtneHPU
         hoHhkdpjvHG6EwQynoqeCcbNSa5iAbEY/hDO7wwb3gP3vc/bbyuQjfj1H3DYIc5lxXFn
         7DQa+I6umlvZguwPsrojynobgOApy+nKwG+lifVVT/Oqv2rlMV5Sm6D6PJfyvIo8d4dJ
         6BbXvHcKXuU8xUfptbP3uxumK4RlHpU1pfv5A0ixjR2THU187OyiTORlDeDKYVdieLU9
         2cXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761685212; x=1762290012;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VziEZZGKxOa0Rm1W6uu/3kIDvdp59RTq7ZhYSMj/7Y0=;
        b=M1m+FccQew37Ez7pcgI1w+TtXpDxqSaFYrhnLrruA036ignxmX1CXNGfma1isF9PpL
         7G1/1IQXAPAoM+sTECfMnVNDx32OmySvZ3iDei27/Gsl+/Pu+NU0HQLRLThC5gKsY7qn
         QJk19U9/SH73pC2/vAHgMQvWEgm7cRoXVnByVFcHCGFrNxT7uD/UMCmItIaYSLbEvIhC
         stqfpEu5RAwDFdG36ibZVOn/8KvK3jcBq84hgB7051xiC9O/egEAXLxCjZVYahOrcNxf
         53Yl0UnwdXyRRQ1pSUR4omfjI1IFJIlzUfZPDVzQ8Lv3+l+XmIr10jX16yKsb3OJphZG
         V7JA==
X-Forwarded-Encrypted: i=1; AJvYcCWFm03vUXtu3Ur5v0wpgdvKCR6CPi7mmzmkd7dYoptbgCA2b8KT3MqYnJ7m6hHn5Zmb6ZUF0wGVWaRJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyD2EMJRY0QMLM6Wgl0hsAJ29/6qs9rPA9kdYE828dGULKQrZDr
	I7iGwe1MsXhJS4Ul/QepOVFSJI9qUfKPa5I+S+shWl4Bdbx37xDiPqZjsfjTMIiRWbCIccA3Dn8
	GZ1sBy7BUChNCiZ5EUaw+BoTVq6YGflIuHMkCr634+CcNJmukZKyNY51IwJDbYUGV
X-Gm-Gg: ASbGncturlgKumUL5etJI8a5Cuis3qW3Oa0EsoDGZ7wBHfZfDhtK3i5lRBRGGFyOsDC
	RUODNsJwfVCPnm1pPtjtwp9UWZMWjqcHvCkqs1Uayj5l39c2jllX941YlGhETKhDpL4TtDimm4h
	9BGFfkxtDV4qrhGK5QAr2n6c6Jkd7YCfPWvT9GbdV2jT1I2UAj/y/2VGBCoowMRI0TU8fYOnmbM
	GZxVkvV0bcF9IQOxh0x3vrZ8tK1db2ED6kZz8lGoYO3qM3tKi1z+nqZ7cIyKKILV3YI5ux7mIcq
	UW5gFNptN9rarBiA/Jk5wky185KcQ4cHqlIzDr2/duYgHHswbIwsHYH4lKF4U25TUg4kVOhLOe4
	L3lCf/EgL0WNQZcYpA5fp0HdnMAQiIb5uKt0tbaEeiK5jkykx4MMVEhwsiIJ7YlqxvbJsN/4xj0
	UKAgoLE4lwcp57
X-Received: by 2002:a05:622a:145:b0:4e8:b559:7b90 with SMTP id d75a77b69052e-4ed15c2be04mr8766621cf.68.1761685211489;
        Tue, 28 Oct 2025 14:00:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHp4D699l/ScHj7pfWPbaPFKoz3mBy5SEBiI9F++8ubrl1KHnuXbAI3V3Z9L/DoSu4ZDbRHlQ==
X-Received: by 2002:a05:622a:145:b0:4e8:b559:7b90 with SMTP id d75a77b69052e-4ed15c2be04mr8765751cf.68.1761685210484;
        Tue, 28 Oct 2025 14:00:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f861f5sm3283594e87.107.2025.10.28.14.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 14:00:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 23:00:03 +0200
Subject: [PATCH 4/7] arm64: dts: qcom: sc8280xp: create common zap-shader
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-zap-shader-v1-4-7eccb823b986@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6085;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=EsmtIGGogp83Wk5re8Qo1ymE2FtIHHnW81gg07LjkxE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpAS7T+HSRF/+ghtiyTHIQaLfnd0SxBR4GSWkMp
 mM+P/YmLlOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaQEu0wAKCRCLPIo+Aiko
 1R6XB/9dAt3BGICXtu+OkJl+yIc4PbcgFV24nXy89BncoNanCMevExzEIR3UvR6SySBSije3zi/
 nuTbuPCN7FSHaLsrcFrnKLzMU7wy+osvL2gfgZ8nia40bjzGQW5+vmybQ5c5EgletwAPYyehtXg
 pQTxoNYbJ6N2HIguojwSL2t5CNSheSSN8Fk+HyuvyJUajX6ohTjNB9jm0Yml/9aCSqlC6vz1rPW
 MsSN3+b40z1xto6TvAgQQ9hBjIk7GqyIXe2d+pBgM4cnvoUJ1OGDgHYBPp/+0dHDGqGtSZdf6NX
 n+lxG2ReX1DrOIs2IzRmVJGUnVxWvhIthvYkkkaJ+sYoyoaf
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: ptEpjIzw7X4rWxQQqDY_7XNHSkYnd2r2
X-Proofpoint-ORIG-GUID: ptEpjIzw7X4rWxQQqDY_7XNHSkYnd2r2
X-Authority-Analysis: v=2.4 cv=PcvyRyhd c=1 sm=1 tr=0 ts=69012edc cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=B_G8A1FuJYmnm4XSS68A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE3NiBTYWx0ZWRfX3N0LLrhskn84
 7vb6Cp8gakf1efB98oJ5MYXpO061ClduabLuJUa1xK2O95zZKYng6zU+P18YP1U8sYY2aEunkgV
 EuyZGQfaNZklYDllMT42ybx8LknETSNOEI451RwpWMcjsvn/kzdJzKwN1yqMudqzzepW/1AD1h3
 IvyZQ1LYDX8vGGM1Zj4M5PzP4pB8KNbaOKtyITvMRdnfuhKx6mG1MLqr4TdaBd3bjUReXeVsbMf
 SkyrHnvKHOkt6qk/i+qwlAg3JQ7Nen8ChSARA4M8AM0GUqKLDLvhj/hKOneCmBRbgv+9y9Kbqgk
 Wk3CTs+ruvaeH6xdMphYK2WcouEKb1qbGuvdILWdR5liirThZ2UHbr2kqcYZZdpx9U2eo3itv7l
 JszByWqmmce+Vsbz6VLO5gOmUvZzMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510280176

In order to reduce duplication, mMove common GPU memory configuration
from individual board files to sc8280xp.dtsi.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8295p-adp.dts                   | 8 --------
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts                  | 6 ------
 arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts       | 6 ------
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ------
 arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts     | 6 ------
 arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts  | 6 ------
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi                     | 9 +++++++++
 7 files changed, 9 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
index 64e59299672cbf316b4eddb978e4583ff34c0299..524d44cbae740577e010f156308a715962db1a36 100644
--- a/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8295p-adp.dts
@@ -149,13 +149,6 @@ regulator-usb5-vbus {
 		enable-active-high;
 		regulator-always-on;
 	};
-
-	reserved-memory {
-		gpu_mem: gpu-mem@8bf00000 {
-			reg = <0 0x8bf00000 0 0x2000>;
-			no-map;
-		};
-	};
 };
 
 &apps_rsc {
@@ -347,7 +340,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sa8295p/a690_zap.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index 490e970c54a24203ab297dfabed7e21c2be244e9..858f71737d93fd8591ba42eb363748ac51699d63 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -225,11 +225,6 @@ vreg_wwan: regulator-wwan {
 	};
 
 	reserved-memory {
-		gpu_mem: gpu-mem@8bf00000 {
-			reg = <0 0x8bf00000 0 0x2000>;
-			no-map;
-		};
-
 		linux,cma {
 			compatible = "shared-dma-pool";
 			size = <0x0 0x8000000>;
@@ -511,7 +506,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sc8280xp/qcdxkmsuc8280.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts b/arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts
index 0374251d33291fc5804c9be0dc649ccea1c1c0e0..69d0d6c12e58653f8cb56cb7d383ad9d64699d18 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts
@@ -158,11 +158,6 @@ vreg_wlan: regulator-wlan {
 	};
 
 	reserved-memory {
-		gpu_mem: gpu-mem@8bf00000 {
-			reg = <0 0x8bf00000 0 0x2000>;
-			no-map;
-		};
-
 		linux,cma {
 			compatible = "shared-dma-pool";
 			size = <0x0 0x8000000>;
@@ -602,7 +597,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sc8280xp/HUAWEI/gaokun3/qcdxkmsuc8280.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index 637430719e6d7d3c0eeb4abf2b80eea1f8289530..87bb42d9cc327a1d1811f15605a369dc8760557d 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -283,11 +283,6 @@ vreg_wwan: regulator-wwan {
 	};
 
 	reserved-memory {
-		gpu_mem: gpu-mem@8bf00000 {
-			reg = <0 0x8bf00000 0 0x2000>;
-			no-map;
-		};
-
 		linux,cma {
 			compatible = "shared-dma-pool";
 			size = <0x0 0x8000000>;
@@ -724,7 +719,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sc8280xp/LENOVO/21BX/qcdxkmsuc8280.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts
index aeed3ef152eba0fff13f8fc150f32974bffbe8e8..ea50e370f69837ec9412efc17e2a41034b0736fd 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts
@@ -186,11 +186,6 @@ vreg_wwan: regulator-wwan {
 	};
 
 	reserved-memory {
-		gpu_mem: gpu-mem@8bf00000 {
-			reg = <0 0x8bf00000 0 0x2000>;
-			no-map;
-		};
-
 		linux,cma {
 			compatible = "shared-dma-pool";
 			size = <0x0 0x8000000>;
@@ -464,7 +459,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sc8280xp/MICROSOFT/SurfacePro9/qcdxkmsuc8280.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts
index a40dccd70dfda873fb963b71e39617a2025b86db..48b60f6186fc1d69178902f2cc3bee324144202c 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts
@@ -227,11 +227,6 @@ vreg_wwan: regulator-wwan {
 	};
 
 	reserved-memory {
-		gpu_mem: gpu-mem@8bf00000 {
-			reg = <0 0x8bf00000 0 0x2000>;
-			no-map;
-		};
-
 		linux,cma {
 			compatible = "shared-dma-pool";
 			size = <0x0 0x8000000>;
@@ -581,7 +576,6 @@ &gpu {
 	status = "okay";
 
 	zap-shader {
-		memory-region = <&gpu_mem>;
 		firmware-name = "qcom/sc8280xp/microsoft/blackrock/qcdxkmsuc8280.mbn";
 	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 7b89d3d422ea62012daeb423e457a20e84eeb0b5..b7044b9d656e4991e737f7008a7cf8f0619dd115 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -691,6 +691,11 @@ reserved-region@85b00000 {
 			no-map;
 		};
 
+		pil_gpu_mem: gpu-mem@8bf00000 {
+			reg = <0 0x8bf00000 0 0x2000>;
+			no-map;
+		};
+
 		pil_adsp_mem: adsp-region@86c00000 {
 			reg = <0 0x86c00000 0 0x2000000>;
 			no-map;
@@ -3366,6 +3371,10 @@ gpu: gpu@3d00000 {
 
 			status = "disabled";
 
+			zap-shader {
+				memory-region = <&pil_gpu_mem>;
+			};
+
 			gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.47.3


