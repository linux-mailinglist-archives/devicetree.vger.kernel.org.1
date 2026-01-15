Return-Path: <devicetree+bounces-255528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 326F1D23E36
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0C7703080470
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE5D3612CC;
	Thu, 15 Jan 2026 10:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CJUfNhBx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jnVuBE+4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7241B3612F6
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472020; cv=none; b=AuTYP1IV7Hj9bhr8w5eK4FGdttIpTOYkf2v/s4iWNlrMumPkq/DlDKMMoiONFoKPJKEcq7rqqM8eKRutl6+c+KJnisAr3cfkeN7xOES9gUvaQHMRTeq+LpgtD3Jr+8hjtogGk+9lXDjFQqJJODKEkMUBijUhhGk0hXw7IPRyAG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472020; c=relaxed/simple;
	bh=EUwITNGph9Sz556YywpxKThBBpgFxFypVVqI/HuOP1I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CMutLMsQpZn3oMbcW7wKfQritHztjF6bnOqcMms4dA5kGuitL7jqjbirm8raOdcxGTjWPO5oOSSiAkyKBDYXgpdRHoXjl8emPp0k4tXcZRARFavVoXfCBYWtJmmp0G1sWuWXFhSoyGaRAt939YVy6bP2W4kSUPZEa2xGNlG/nmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CJUfNhBx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jnVuBE+4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fl6k1850927
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r+J+wnhjyG1N51NHWly4N6P+NOWErvlBDtOdGlcbqgU=; b=CJUfNhBxOo3pTxZ4
	3RO9aPIy1FWoIA4JcU/SRpJHHUjytf6O7B4S4+yYEoy2dQZzhO90ZraiU6+8t1Mc
	udl/2arYKyWRAnKczl6u1c4p88hus91WNjoIsH3levkx5WlVB/5L5cGajkf7nWML
	sLqJEZANkA1qQacK/4gecfSV9VFCP2O6mRBiqgjAcP0obJTIAPCjqumX7s86wHAJ
	HGEjrz2ButmdihkBA+ugqPoiY+KSTvN6qRyfhJmFcrUTc15CmH2MZL4i0tUi9sC/
	rgC1U+a1JQIkp7Z5d1OUoHptzl8HAdh9c3IgcgWbnJifq/0DmxWq+mAB2mbinWUF
	e1oqtQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bprej12j1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:13:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52f89b415so206311585a.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768472016; x=1769076816; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r+J+wnhjyG1N51NHWly4N6P+NOWErvlBDtOdGlcbqgU=;
        b=jnVuBE+45W8OTr7CR2K5wXPsdoJvPQEd0MeYbOvSy3BTWl7SgF72nsGdUpoov2KUCp
         OgLIWaA1MAtdg6Bic0Dad19CU4ycTa/KnNvcDou+yLZc+gN44TmV6wScfPPGE1tvslj4
         4ICz5jE8UZawjUzJdx67xKIcToKuIXChKyMVO2tTvm9wBoxNqtyJbII3nDNOg2Cx8Etz
         Os7gNppkPSUEaL/Lf38hCMLpHFx130jZWkUDvSxVQCIx6KchkU5/F20LAIC4/nCFKfjP
         U1zawHTpSkdNZonf+SsI3eGTQcFOrc198wCAeXXM3/wmEhof6SXoWtL4GkTv0fuJOWPx
         5gEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472016; x=1769076816;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r+J+wnhjyG1N51NHWly4N6P+NOWErvlBDtOdGlcbqgU=;
        b=Cvcf2T9cL5RLEkzz/O0CdmrJp1xyXZuuxoQzCMGfmsNuHfAAhG+fVq02yOi+QFIAvg
         LVlx4rcRfS32dgetUFN4og4icCVjkzWDPHz6tWGcO3yKzFHpKLykpro+07hrRAFNms4p
         3KMg8DMIvtd7+RSlQ76VQLnfucGRlaUtlAmJ+dQz4lqY81v0jlH8COaTV8ctkt5M+kiW
         HNRxSUa5XtqWaa4EkUp9xEMbQSR1DQe4bC5mFQICUREubcwXcyjQsShKFxrKMElE/ke3
         Ti5j6KUbcMIAOz48BDqqfojsSg0FC+xcemUwY6psBN5H1qtGtrswtsJiPsZ6317HmFxd
         kGAw==
X-Forwarded-Encrypted: i=1; AJvYcCVsDeUdwaNcxtJPR6MDOXvstW9VdgDtLPUzL7DQUdU2kY59DW9RONnagoKb++rCaT2jSZoIyYcErEa4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyhr5xh++Tv2/WhsBmZkx9q/Nhkc9NULoU9DjZnMyx1WyuTymuk
	AruX0CFJg280FcgVrCaTW7QFHdJRqZ3IE6oFcAWnfJYe6e36pUdA1EjyZ6W54lyJOZV/PkIrY7x
	1Im0XZlbQXd1/fcse3YPQKASYm9s+hWpqQJ49jRSt+W8DAbd0vmrnsImRf/a5Rhjf
X-Gm-Gg: AY/fxX4TbZn4z4j2+8p58ajwz3buOnsWc43kAYEGly1VxJt9Hxr22U5Vp0KTHdYbqOD
	kwzDc16EPw5yx6Gp9MOaZ01Et7/ZOT6/FzWdYWy3I4Hiw+xANOCHQPpNAp4+6qFQBpTQ5Dybj5A
	tOoWah9VlsJAJBzndxuAgo49fyCLwK4aHhcRTPUOYvVTJrvk4F33HE4ln7s+eFU1htEC2oWNnJ7
	HbUyMc7BrjBZZ/wFqV6FKfJjXPhOQ2hJXzAPFZLdWc9lgbNpLmp6SxxdrMk6V8W0tg+cPatxbcc
	G6H+dmdO5O8CQbAm1sFtVj8IoQ5Npk3t0PQXWGY+5hGW9qrNej9V1KkV3RTtss9eDofezmPxaod
	YFcjxMISs5VDsIvuAP+ezaFtrRvkywmgVLbWa+GSMeB7jlnuW2yOIko8GSeuC1MMyo+CQgh8KhR
	/W
X-Received: by 2002:a05:620a:2552:b0:8b2:e922:5297 with SMTP id af79cd13be357-8c52fb1ccdemr819225485a.21.1768472016109;
        Thu, 15 Jan 2026 02:13:36 -0800 (PST)
X-Received: by 2002:a05:620a:2552:b0:8b2:e922:5297 with SMTP id af79cd13be357-8c52fb1ccdemr819219585a.21.1768472015581;
        Thu, 15 Jan 2026 02:13:35 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890772340b9sm199959576d6.26.2026.01.15.02.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 02:13:34 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 18:12:40 +0800
Subject: [PATCH v3 4/5] arm64: dts: qcom: talos: Add camera MCLK pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-sm6150_evk-v3-4-81526dd15543@oss.qualcomm.com>
References: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
In-Reply-To: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768471975; l=1538;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=EUwITNGph9Sz556YywpxKThBBpgFxFypVVqI/HuOP1I=;
 b=0q1i37h0jVD3ntw9Vu3U70sABycxfu87F4li7lGcRJwkx/MEcqkj7wdamB2OCdQqakoNOQgsG
 V8ZIfTI3VktCPlJ3kOvcr4OtTPhZwG8rakNTebLe6U4d+JV39oMNoNU
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA3MyBTYWx0ZWRfX24tvAmp1EmzQ
 WSr36BQmvIvc2FhuJTkfksPAGRLJCeDoN9cDxg0au1UMtsbInRk/qLiKZLSWW41iUXo8ApxDZJd
 RQp76+t27DFCW1g3daeEf/IOCEsuCjHASb5N5N0Imbzs/d4IZSgsfZnRSNWZ3vQJFEwktu6ASGL
 8rHseuQ8y4iNRlrMMjizzC0M2kY0SYHSztwj2HGLmE+3Bvn91oiFT2GRGmehnwsVF8JPdqyc5Wh
 RgqgrEs0OdcM6IrUOiGIRqK1gqZapQNwcX89yCZd1rGwjIthWkMJqlQQzHNmVs1zUHEssrJDkSE
 TRFLLG5+YOtOEIudDmY4oP6MvoVOA6+2+CHbF41uj4z/MPlRsFqvoi0sdmzPivklNpg8W2AD5tx
 +hafIcG6kSli1WA56k2JnQ4UWsIuES+fzAmhMSztzyRenuYB59E8XVo7PXOm7dwVkxQUHl52Nal
 4UAD0JnoXtd9ArFTEUw==
X-Proofpoint-ORIG-GUID: RH2-e-qMWF7yreneFelqTa_4lAPUZLO2
X-Authority-Analysis: v=2.4 cv=Rc+dyltv c=1 sm=1 tr=0 ts=6968bdd2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=tfCBMw9KTM5U2-pTabYA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: RH2-e-qMWF7yreneFelqTa_4lAPUZLO2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150073

Define pinctrl definitions to enable camera master clocks on Talos.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 162bbe353b62342478885f22972a816f1b60d820..f77c7faa97561a0a95974de1a39cc4ba0e43f663 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1554,6 +1554,34 @@ tlmm: pinctrl@3100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cam0_default: cam0-default-state {
+				pins = "gpio28";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam1_default: cam1-default-state {
+				pins = "gpio29";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam2_default: cam2-default-state {
+				pins = "gpio30";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam3_default: cam3-default-state {
+				pins = "gpio31";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci_i2c0_default: cci-i2c0-default-state {
 				/* SDA, SCL */
 				pins = "gpio32", "gpio33";

-- 
2.34.1


