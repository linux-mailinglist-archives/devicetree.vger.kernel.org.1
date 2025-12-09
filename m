Return-Path: <devicetree+bounces-245379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 49413CAFD68
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 12:59:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D14073009F77
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 11:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9272FD1D7;
	Tue,  9 Dec 2025 11:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mTk8s74I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Nh16MARp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07922D6E5B
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 11:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765281572; cv=none; b=c7BpToIemgVIXmeyJ1NqBxxkKa+159I8Svvz7YZnM5OWJ86CaNWUzUujfXFE6j661lgd5M6kaV92J0w/izquxiVyc/JMAUcGl7eUQPyKSSGVldI5a6tWjUo9F6Q8bFhS5gHd32+urvC20gUJW3tE6S8QMPTVWEHzYbcb3WaEtGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765281572; c=relaxed/simple;
	bh=zqcZh0ks9xBgoiWo1KxG1Wb2qYapGgk8e5A424YueNc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SqIuZdCv3hZ0hav4j84nVA2qlG7xFy4SIe2JxtDXoXYtk5wRitM5Av/fohazvt6wAKke3Li3ox6GTXUdHUMBZUS7T9NsLTeMt3viBNPN+2bnvwGvaQDudO38tAWT0R5jWDg2Wugk/atFlsvqHrAiIx3llIUAPf5wrXftAkqa9Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mTk8s74I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Nh16MARp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B99N6c22992282
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 11:59:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=1kNJZd8sDXgtxnpGisyMvoGTS6/Xl5fuNU8
	9fvaQrCk=; b=mTk8s74Iz+4Q5kS0/QrHvRzcVIV+NcmnOx1fCLa/KDXOeAb/IPc
	iCAnV9mnVFgngI0Iz3z5Aoe0Y3LM2p4udJaPSPuwYvm94qrtFUidMfWV4JCFfR7I
	LirRPuanC9biThCa65Xqbzifmi5p7Z0ziwZbP20f0pKVczoBazcZzbAKS4d0Yynk
	cH3Hg3TSYSTDhZMjeFEoDjby8eK5EoCkMHT0xqfI8lhxbKxVkC8t9QEV8nRJz7n3
	Xs8eCai1vy4XzkEx4uCt5U7R7QNqM49QN9IlwX7WyAjqaYPy/yJnv5DBEVEhsOZ1
	mIm8yKEV4M2En2pKDn2MsmnBeiCpiGv49xQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axgqr8h8v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 11:59:29 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so5782484a12.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 03:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765281569; x=1765886369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1kNJZd8sDXgtxnpGisyMvoGTS6/Xl5fuNU89fvaQrCk=;
        b=Nh16MARpAd8ndRE+ijJSXZss9gjXITSHfrpv8IJoR+ftzVzQv0DAcpjDSDEnNFi484
         EAZqsTOWZCCo6eRZ9DbJmtiMvUNoWGAYNyARbRRhRs7NdecuKD+7G2o3oPL1G2IHCN0n
         uLdZmcO4PfTItARgWSX9T+RNj43Ifj93G9rJKnGvT0Qmu5786TWQ0Wve7IZR8YuvIUit
         Xgp5g/pf6QnrRlrh+OUvxv0MTPttX0+HRTHtdEHWEXHTKTQpP8xEDJP2rTXV4FsppIj4
         fzdl2LvHHccal0OZM4xhkz13wEXJ5SPFq0t4beQZ7SzbgbZG4NbvvdkfoLGx8FIuJdp5
         thvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765281569; x=1765886369;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1kNJZd8sDXgtxnpGisyMvoGTS6/Xl5fuNU89fvaQrCk=;
        b=S9ZLm4dZ/K84SQfe3MAdTCxl0mS3yZgdN57woJ2Yn+bHUNeHXU+/aKoCZRFQ7tsSXf
         PiXNb3Lg51b3IUYyCFRS+YeR5HAmb7a1ET1Vnq/G7OzDTXcr62SxgLHxOXFUYRsGDaFP
         V6U6krqHdBhkPAQyo81/uhA8oETIYFiCBeJIlQARlfqhLgVocO9F0bAk1Dq6FdCJF5+D
         MV02btGd1Gfb+AzL1pRJqMKM0CKKM1pgZAJWNY6YGBqKsAiEbuhSOZhb0NVI3mnOmW7X
         vlf18CQ3hBKbG6KGq/6QHJ0c1E6r+hsgqnBLhj1qILSofMSuGpyJpnRcZfO1fCOhEj2w
         BeqA==
X-Forwarded-Encrypted: i=1; AJvYcCUmA5A24BzwGtY2Y6Mms3vDnZV7T4vXSnAIjyDYO8YdtEUoV2ZZUo3Q+4NT6MvSlmhinL7FFRRP8Zw+@vger.kernel.org
X-Gm-Message-State: AOJu0YzsHpyNlKvVJLLc/ptScx7ClROYHPh4/kILqRVZmRZ68HAg6cM6
	v7FlsexJ8jhXqKrZZk4hKLH2MDnzF2DbZ7SakDo61s7ZXFiKWJtxTLPlTyT8pjrnnJJ/hGbMYGy
	dubjAmboKxjNwd7Ym8tcFeAdr25x6uphDdCAkI3BUZ+RvFI3RH14lyFM0huJX+RGS
X-Gm-Gg: AY/fxX553wFUHgoPZZmb3FV20rGDWXARbRvPyuRn+pvBWk0+pn76aAKsJdnlrAdUmOU
	vlqotv8GFqIQBaGjthtHekn9kpB+7duEB86j+b0X/vNv4mW0o2upJhqW9ZWAjWH/YjVpAVXnV0F
	Y1OthOx+EmYgMQmoSSjHBcfAuJ9UVi0RuUFbcIoeYvvzCdv8Uqg4gX8+y4JbgKekRbFuIrzZaW7
	JACvZJMkbDheQ3Y4glOYDrbbI07OHtbVQTDMxDQNeMeRdN/KDmQ2wWx8eBZHeyNOECBiNvyP8PN
	UNZ/2RR/bDDo6GyxI+XdboqEt+x0Vym2uGsvqt95iEcXJxx865ZvhYBhJsQNRhUnRL4z0cOUiJw
	WZPifO/jeZT9HGqsbL/8HxKMc+skiL5a3kyMjzTwBUc2k3VtzwFfjVPpDX7DS/GSf
X-Received: by 2002:a05:7301:e8f:b0:2a4:3593:ddf1 with SMTP id 5a478bee46e88-2abc71f61c3mr7347898eec.30.1765281568735;
        Tue, 09 Dec 2025 03:59:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEf6Cyo1K1rc6iDn6XwOAegoNxdL9rmcjWCd2hNI18HVaoCbZZtHHYHApMCXcGtZV8hyiEp5w==
X-Received: by 2002:a05:7301:e8f:b0:2a4:3593:ddf1 with SMTP id 5a478bee46e88-2abc71f61c3mr7347874eec.30.1765281568165;
        Tue, 09 Dec 2025 03:59:28 -0800 (PST)
Received: from hu-yintang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba83d2a5fsm43540673eec.2.2025.12.09.03.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 03:59:27 -0800 (PST)
From: Yingying Tang <yingying.tang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingweiz@qti.qualcomm.com,
        yijiyang@qti.qualcomm.com
Cc: Yingying Tang <yingying.tang@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Add WLAN node for hamoa iot evk board
Date: Tue,  9 Dec 2025 19:59:24 +0800
Message-Id: <20251209115924.848165-1-yingying.tang@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: x0Yeh9YczDw_V5n2X-mi0f8mKV353dhT
X-Authority-Analysis: v=2.4 cv=UrBu9uwB c=1 sm=1 tr=0 ts=69380f21 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-Rq5O4WasTQjg5W5yTQA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: x0Yeh9YczDw_V5n2X-mi0f8mKV353dhT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDA4NSBTYWx0ZWRfX103PHd1+nGSR
 0PinP+ZozzpU+sDhJY8Cf/mCbWrjq+JXFVr7bYEFtiETtlFPl4Uc/6JkxjkJNaBgQgDtKdKIODq
 VQsrJALvzp8RaaXKU8qRf/pmEXpMbLqRTQGIQOXU7vaO76rTnRpCh6ty6IYOj70z1jxNkRx7WK2
 bumWy/4b7+IwnJ62u+xCDUkbGdk/IJPB34kqenhpBaigIH9Iw9PvlU1LyOVjK/O6o8HtVmAyZzS
 zZEug36F9Tj8YA8GzjNwwHWZQXiwzyO85CRbSGPeAOQorJ7LghqXp0tZBst/ltYRxA4jODOSXjV
 r7wA2FODaQ4Eqr6TVFW+trDG/nGK2zQG3kWXqUtb/w3QLLUgsa9MgWERRp00BccrzVsC95gbV8w
 ViXGbjCHWopKYNgV3naspB1aVgOkAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090085

WLAN card is connected to PCIe4 on hamoa iot evk board. Add WLAN node
to support power sequence for this WLAN card.

Signed-off-by: Yingying Tang <yingying.tang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 26 +++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..d66d337292ef 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -534,7 +534,7 @@ wcn7850-pmu {
 		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
 		wlan-enable-gpios = <&tlmm 117 GPIO_ACTIVE_HIGH>;
 
-		pinctrl-0 = <&wcn_bt_en>;
+		pinctrl-0 = <&wcn_bt_en>, <&wcn_wlan_en>;
 		pinctrl-names = "default";
 
 		regulators {
@@ -844,6 +844,23 @@ &mdss_dp3_phy {
 	status = "okay";
 };
 
+&pcie4_port0 {
+	wifi@0 {
+		compatible = "pci17cb,1107";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+	};
+};
+
 &pcie6a {
 	vddpe-3v3-supply = <&vreg_nvme>;
 };
@@ -1143,6 +1160,13 @@ wcn_bt_en: wcn-bt-en-state {
 		bias-disable;
 	};
 
+	wcn_wlan_en: wcn-wlan-en-state {
+		pins = "gpio117";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	wwan_sw_en: wwan-sw-en-state {
 		pins = "gpio221";
 		function = "gpio";
-- 
2.25.1


