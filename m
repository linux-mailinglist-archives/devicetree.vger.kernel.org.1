Return-Path: <devicetree+bounces-195564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D68B020C3
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 17:44:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 536FE16D856
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 15:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 419132ED15A;
	Fri, 11 Jul 2025 15:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PEzoyv8+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8595E2ED174
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 15:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752248643; cv=none; b=NumnnfnU0E5YG6z9ySgDuaEeuqqthNM9ejJhtd1OJxtkKNeAVFoJOm81RXQi9K49nHjdILREWXePeXGbHqO7j5x5AZ+Pevii4fL6kwEpLc5VTvoQqkJlrz6P2WLm6HQQeqEcjqIV7cnRzX2kA8nTTye2gKMs4dqPH2sFeOjSAYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752248643; c=relaxed/simple;
	bh=PEXn5nInKyDmUxIss2FQVUYDJOTahK9n1p8TmcddTHk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DZ62pDDKXKVrStHjCtWgrQh1BmlWums44EIdV/xi+aXrKeOjawERAb2sSdIakD4FJ3K/LKTkWODTNBbMb4rTLGWLd/JMKAo3tF+8DMurRIYL5iK7iRZ/MYNgeMbuiotvN2NDO7hoJhKvelW9539KzQ8UKj9P7zf13AvDYmyl9I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PEzoyv8+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BALjuu008497
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 15:43:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=emkhpJE6YHBFUt3US4D3Nq
	wBsCFQqng0EqAEghIvVSo=; b=PEzoyv8+/AyhqRsWIydZoJ7P6gbZIOuGVfD0Kg
	1eQWdztX+zzooJLf7cJhmIbZrxIZtX4KN9p2ZCKlv0SGDhihd/fMhIfKaDjvVAGs
	6bJW5E3VOt6EL58wIicvLPkGTXv2BxBIH/M2Rp4M4n7okberNW6OuvPEdbdexeTh
	TrhDTIbg0TdmdGh5SsATGRscngDXLTrD5YG5FkoyfQJ7pyl/C5G55euytaDrqSQz
	zpKfYJWKXaMfiKQKOD4ZLJPgnPtaH2PuMZhFd2WdXgd6nqlZt4LW9zY/lr0koMt5
	A9pNc1Cxk8QYnjXiORwUX0q12/vTVy8o92i3aTbGbQjy6tkA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smcg92ya-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 15:43:59 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-748cf01de06so3446449b3a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 08:43:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752248638; x=1752853438;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=emkhpJE6YHBFUt3US4D3NqwBsCFQqng0EqAEghIvVSo=;
        b=vvOxVRnLqBC40oEjgKLNiTSqoVHhJ9hkpW0eqC6vpyztd5sNvBBivrFbeqGk/q6EOY
         q4bl8yqDdvhlVmb/7K5JoOYoT/fl5WZ3LoFDoopiVik6P0YqOSIPcBKpSz6L2b/7Jw19
         uHOJfhh1uENT2gGFeBf6BH9hvh6I0QYINiQcudETX3SZZ9WAF9IHnn+aTuNBTphk4oQQ
         9c+TyUkh8kX+H41Jc7IwRzOryJS6Ib8JIZLjM57DxY6oc54JlRStCiPa3NDNJdsYNIVL
         rkQJQXkjkRJwLpTl8TcvLfdSTBcTtVnXyEAT0g9/SMKOAQWETZV6OmLHsKvMolclM8qI
         bgoA==
X-Forwarded-Encrypted: i=1; AJvYcCXyiwS+UFl3/XRd0Q0DSobg1GpNVim6iy+lDqDMmwym73GRc5BtzZ1TXf2qrCcbHsJqxntRHRAB3J61@vger.kernel.org
X-Gm-Message-State: AOJu0YzUVJE9B8XUq9R9c9IP4nVW2ZIb5KmkupBl6e0rLaFDhpEmt8/d
	K5xPxlW5S74nUkS7iWO3kL8ptKnzljfjN1SOHcT9XgAQ5WfkE8krrZppOnJ9PaVAkmbrnt7DvML
	5At66RjkwZq4hv47jMeKBDa3yoVq1AY0xpFbM0SXY+uOlQPZ+ZiyA6k9KuZ4U5cGS
X-Gm-Gg: ASbGncuhvXu8Ju99n5Qn+Xx/KRxV5/nsmg0+LpKAR1PFr05GGxF9x4eO4KCTOLoE+NS
	6RWVNgd2gj6sFbDmn/jpUkr2ZiPXJzJhGshXmo1AAURNU4GHp+dCyvRcFlyS96qEe+h/RU+wXje
	mSjTMLWBt2sR0yDFc+lBDmj8eOs7a0Auq2I24kkrLV+DQi/5JU8yLkAkX8Vz7Az9ZMsfWtV8+zz
	fcsJZmH1nHepvVgVfD9C6XwnVeYWRP0Nh9NJS488nuVrb4ewybvVMvbFYdjMgP8FPRwvL22AH6L
	zpz+gUeJo5zXmXIW8X32aanT3Zv49T/mXVqL3ozaXZhTwZLyjiAWoLSy5BgLCL3FZczjrjIrzY5
	l
X-Received: by 2002:a05:6a20:9c99:b0:20b:a75e:fa32 with SMTP id adf61e73a8af0-2311fa06643mr7190499637.40.1752248638337;
        Fri, 11 Jul 2025 08:43:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZFA8pi0ySFhkHZI7IhUQan0B4zMZWd3ZAl91cAZ5DjbvXrfYe+D7WAOQzynEuRM2o1cvnnQ==
X-Received: by 2002:a05:6a20:9c99:b0:20b:a75e:fa32 with SMTP id adf61e73a8af0-2311fa06643mr7190463637.40.1752248637941;
        Fri, 11 Jul 2025 08:43:57 -0700 (PDT)
Received: from hu-vvalluru-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe52c4fasm5447532a12.5.2025.07.11.08.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 08:43:57 -0700 (PDT)
From: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 21:13:47 +0530
Subject: [PATCH] arm64: dts: qcom: qcs9075-iq-9075-evk: Enable Display Port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250711-enable-iq9-dp-v1-1-6d381e105473@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIADIxcWgC/yWM2wqDMBAFf0X2uRE3NUpESv+jSEmTbbtQoya9g
 fjvTfXtzIGZGSIFpghNNkOgN0cefALcZWDvxt9IsEsMspCqqBEFeXN5pHfSwo3COGe1rVErqyE
 5Y6Arf9feqds40PRK2ed2Qk8xmjXbZO1arVCiUuW+zrGstFQCRTLs+WMi9/743+xtbof+AN2y/
 AC3q9GnswAAAA==
X-Change-ID: 20250711-enable-iq9-dp-addc9c7195c9
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shashank Maurya <quic_ssmaurya@quicinc.com>,
        Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752248634; l=2394;
 i=venkata.valluru@oss.qualcomm.com; s=20250711; h=from:subject:message-id;
 bh=xNxTHWh4Dha0pCFM09zKxyHkpUC/Tls6RXg/hqBBInY=;
 b=ZEkKX8apqTvSjExfh440dF1QD0AuQ9hoQlqJD6LyDyiKZJYu35ezAvnQdBniM2Wt/xudp05lK
 nw1OJv1Xrb7B2DdsqEZROce0TH0vIzjISszlbrMUPGH1LwW5kRPWa6i
X-Developer-Key: i=venkata.valluru@oss.qualcomm.com; a=ed25519;
 pk=f/CAPG1ZGl5SP8S1GuC97WMhUEV87h0JheHkNMt1nhM=
X-Authority-Analysis: v=2.4 cv=P7o6hjAu c=1 sm=1 tr=0 ts=6871313f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=SV12H1ROeRvGGX9EcCkA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: aH10ty5qrpTjqca9P0pT2wvrCrLu6tvq
X-Proofpoint-GUID: aH10ty5qrpTjqca9P0pT2wvrCrLu6tvq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDExMyBTYWx0ZWRfX6QKX1aquwSyr
 nLHoZnXRyYJnO0EAi2aHgKJRWHfQGB/765SIx2+2gnLyEy6ajB8zMHHPRaizc09Nel7MO+XaGm4
 2OLz5miLI0EpNx/KIW654XFK/Im/b6Hr5YxUugDq1/n0wnHHTWVy2eu5AmZ42P5vUaUA4CMgTGh
 saWarbYteFg1FZ+cB3TsyL2mUXNDwCeEJg089XxEWTABwVfMXwsYBO3LtHmFkl1j3YmxNpngcG4
 tnchbMXRQhNnZB+nBFOElJfvKIx6hCgWY+XU5ldgSL/cBFw5Yuf8O+wNl/FyBMWzQQctrNwuZ9k
 MsZ8ExAxxAWS742iSiem8TZoJoKGkTH5efKW6IGU6t4RscYhGojhvqcFMBICTOlCqAQhg+9mRBr
 mwOxzd0rEJSPajYHN9XXY7kny+RyNkRDwNFts5HgauOs/1VviNzolQsu9/WbFq64eUorLJUD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0 mlxscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1011
 adultscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110113

From: Shashank Maurya <quic_ssmaurya@quicinc.com>

Enable DPTX0 and DPTX1 along with their corresponding PHYs for
qcs9075-iq-9075-evk platform.

Signed-off-by: Shashank Maurya <quic_ssmaurya@quicinc.com>
Signed-off-by: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts | 52 ++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
index ab161180d1d5a670a68c0903e85f24a91faa2b71..110e08db3ad82e3aa88aa4c4ed4b2beb607385ad 100644
--- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
+++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
@@ -252,6 +252,44 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&mdss0 {
+	status = "okay";
+};
+
+&mdss0_dp0 {
+	status = "okay";
+	pinctrl-0 = <&dp0_hot_plug_det>;
+	pinctrl-names = "default";
+};
+
+&mdss0_dp0_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+};
+
+&mdss0_dp0_phy {
+	status = "okay";
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l4a>;
+};
+
+&mdss0_dp1 {
+	status = "okay";
+	pinctrl-0 = <&dp1_hot_plug_det>;
+	pinctrl-names = "default";
+};
+
+&mdss0_dp1_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+};
+
+&mdss0_dp1_phy {
+	status = "okay";
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l4a>;
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
@@ -260,6 +298,20 @@ &sleep_clk {
 	clock-frequency = <32768>;
 };
 
+&tlmm {
+	dp0_hot_plug_det: dp0-hot-plug-det-state {
+		pins = "gpio101";
+		function = "edp0_hot";
+		bias-disable;
+	};
+
+	dp1_hot_plug_det: dp1-hot-plug-det-state {
+		pins = "gpio102";
+		function = "edp1_hot";
+		bias-disable;
+	};
+};
+
 &uart10 {
 	compatible = "qcom,geni-debug-uart";
 	pinctrl-0 = <&qup_uart10_default>;

---
base-commit: 7f3a635117b377cb90b67757cb46de12ce8aa24e
change-id: 20250711-enable-iq9-dp-addc9c7195c9
prerequisite-message-id: <20250612155437.146925-1-quic_wasimn@quicinc.com>
prerequisite-patch-id: 22eee78c5507c3105e0c74d1128b3db803879d7a
prerequisite-patch-id: cf52fc82e606ab87458339f71596ca31253e91ee
prerequisite-patch-id: 3617ce3b1790bc5b8e50dca6c3ae482759dcc684

Best regards,
-- 
Prahlad Valluru <venkata.valluru@oss.qualcomm.com>


