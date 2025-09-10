Return-Path: <devicetree+bounces-215324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E273B51211
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE9931C81472
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95E10311C31;
	Wed, 10 Sep 2025 09:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N/8wN+Ag"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35A331329F
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757494991; cv=none; b=u0Ajjmd8D0S6G+cPPI9YC7ytV7MRdYIiax/+kL9mIQxH4soOCsjjhh85gz0ZiqsNXqFEtCW59M9JHrlvNA/jYXytkyLfu3mQVlWrBDwtGd7qFXcgkaNiRSqKKObYgh/HDzv6KVTJikd0FBkYkGgnJrK19lrUWzJYhDAF4fgv7wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757494991; c=relaxed/simple;
	bh=cdjypD0GQ90BYFaF0mM79sUabNOmmrylx+82LPmHlbQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ro0PgAtJRki5QhNtiKLucSYSqZSNjPshhTHJXSPWkGlAE+ow3FxeORmPVoD1u6IoD2qYBZan+ZXWrt6TAo+dCJjcy+ORx1r0e476XFA9QFhTqAtwDHJuvE8WkWipu5IenCYVX/VgO4wwLYo4YfKZV8mtRgFoMJFU1tj7FdD8duk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N/8wN+Ag; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58A7ci18017964
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bBjRZ4BA1fnNosNt1HhSCCjSq1RjNLTHOzKBYD39Oqs=; b=N/8wN+Ag8MzP+ue1
	tdYkPp5XW4And8438l/UZRf8+SDp7smUdJfh3SJQdGWavmFeroJxpPNr8J5Ztl+L
	I6S0jywWp5ZI+pUnnKZH8TM2HlV+mwfGh4QH7PogoYeSzdqqkJWaoCVlwkHO2xVS
	gbvuiigV7lLFZ3x7j7RNRxBosSlwR2jMp3fsv9vNZj3JM63ir7TSXk+x5TfjuqX/
	G3Z4PiSAcQGpCMuPAXxAqEa8hgQe9YNR5yWqzjEUdEaCkObAj2fpbFOoDKvMPIKq
	91689QeIBSO27KRFmFPH8olFqesgsHT2je7QWYSWi/Sk+6iWtUWzkOcVie8N9Sy4
	pepqCw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9jbc81-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:08 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2445805d386so83295025ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757494987; x=1758099787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bBjRZ4BA1fnNosNt1HhSCCjSq1RjNLTHOzKBYD39Oqs=;
        b=qWUoysjIwmR5CtCfvfYe2sO28McRj4BK92R5i7IElg2kfY2ilSFcS4D9pnCsjW6aLF
         Z3YgoCUy+gN4EbvTTKpH9bgf/wfnaM+f46RRu5y8JBpsm4UQI46lxD+KwOQVgF2Ir01g
         yCnOV8OZK1H9bdodLCMLa7ivAcXXB49JYF2TNmqpIncWSLyMS1lkOZwNmVi7igSDK1es
         ThVMnnS6YIlFyKlUfB5S5FCjyiPmH043Ehu497lb6NCu17cd4xnzDl9wO3wFPmWAiC4d
         H8nr0M9tetz2LLn86OBFQJKtpNemSomhwwD/wPTfyn1aWJQQaxj/KCPQTALbZEt3QxcW
         T3oQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmCgqRLrRtNSuzRrV+eSvBfdJCd0I2hMgDvydidDlo3BTdP5N2VgBwnr7TnmLbgJxHBAuoAs+eccRn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz43iOVD+PzXZKXVWxNbNaG9eouLPrRc3TrYtbkiN2RxCx+2fXf
	t6kb4Ok2ZycMbsdZmJL193PPMHb1J84uvCasLdNnz5sx/W1uJzyhVDO3hPR5S6fxCb8c9+8j3HE
	hCVziqHXDdF9neIj0vQ+G5VjKUzQTQm3MHQDNuA3H+IKFuesh1Gh1OgU31qj948J4
X-Gm-Gg: ASbGncviFvmi11SXq+NOKJmrqntpuWh81ASuYJ61j4ghYjsaJfS7mKLPJ7ZrJL8C4ta
	N6rUOyEcnezKfY0mvXNwYWUmgAa65osWDECGP2wMTmHJZIK0yfiRwZwBJco0hrz6+ery7LbDoXX
	95RJjgrJIzCGk/bN00D33oVYqa8UUu8V6hW3vTPDT9ftv1kRufMLtqX/XSD18rGhN57E1E9F/JG
	ZMY1NoB7PO8+UoPCU+lg8ZhmRWT1odDMYQTljoZ5FBgSqvFxPBNVUqv6DtJiKUKAZLjhF9gn1ve
	PG3IjqhjXTseBO9VMqbJbYNVmdoe0NaZTso+ZOpLtyT5eNK45ygrrb99/W2j/aXxovGpsVMuZBB
	lawcSw+XnCBOm/Rb0SVQWyfT0n/nYnoAEFA==
X-Received: by 2002:a17:903:3d06:b0:246:9e32:e83a with SMTP id d9443c01a7336-25174c1d145mr186318575ad.47.1757494986937;
        Wed, 10 Sep 2025 02:03:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtdchrKI9eiNyMpIN3Q4+JIjYTsadT8/Vlk99S+Goudc9T3vGe4DnozzmY6zySEDEZUrknqg==
X-Received: by 2002:a17:903:3d06:b0:246:9e32:e83a with SMTP id d9443c01a7336-25174c1d145mr186318265ad.47.1757494986487;
        Wed, 10 Sep 2025 02:03:06 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25a27c029ccsm21089155ad.41.2025.09.10.02.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 02:03:06 -0700 (PDT)
From: YijieYang <yijie.yang@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 17:02:10 +0800
Subject: [PATCH v11 2/4] arm64: dts: qcom: x1e80100: add video node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-hamoa_initial-v11-2-38ed7f2015f7@oss.qualcomm.com>
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
In-Reply-To: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Wangao Wang <quic_wangaow@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757494975; l=3021;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=sQQeMMHQQyZ+jOLzJfuQdFmPZbcfAe1LjwQ0p3k3Wr8=;
 b=LO90ADqRlRBqzjkvNrIHvspLPTQZ97aU+cfcsNuHrt6sepy5sfi4A9l2oIfHluXaf819BOcQK
 tLNLPBzmfmOC80118/3xYqhyZ+YpaYRexKCl6onuXvUJhcMxTOXIpJ4
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfXzVNemErjv0Tf
 ZT/QlRermdAkoucMDAryhIdcJIeO6HHjYQOsLL3F8UqphxTafrfk6SrVt0reYa+zMRMWAf+gDvr
 8Qp6dQ9fefeD3vPoNXKsxEO5MjYD/2R2p+wxwOowF8bMSYDHmaxKv0gaEj8/HxeN9fbnXsv0gWe
 G0HY0TJj7gBJfEA0GwvfU81LkFdtCN6HC/ZSdLu/q300KfVIFskblyT9wBJUfjCAfhSb6UmpEKN
 G4SMDAj2QtvAR0R1k8pr8r0mmNB0yYMzZuC/KXheiFVnOOKD94bTuWh1/bXE9oJKHK9hW+jpBfr
 E64qLumoq0WLrrL5JQPtCFR83cDAOKDIGQhivQcNp0FdaOwHzJDcpx6fBH8x0PBETkolIy16axu
 FM+ebzyL
X-Proofpoint-ORIG-GUID: LHboP-R8G7CAsyApKQIYiVMTvlSUJxgy
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68c13ecc cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=tEm64AmstYfONosBKmoA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: LHboP-R8G7CAsyApKQIYiVMTvlSUJxgy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022

From: Wangao Wang <quic_wangaow@quicinc.com>

Add the IRIS video-codec node on X1E80100 platform to support video
functionality.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wangao Wang <quic_wangaow@quicinc.com>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 82 ++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 737c5dbd1c80..4a450738b695 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5186,6 +5186,88 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		iris: video-codec@aa00000 {
+			compatible = "qcom,x1e80100-iris", "qcom,sm8550-iris";
+
+			reg = <0x0 0x0aa00000 0x0 0xf0000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
+					<&videocc VIDEO_CC_MVS0_GDSC>,
+					<&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mxc",
+					     "mmcx";
+			operating-points-v2 = <&iris_opp_table>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			memory-region = <&video_mem>;
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+			reset-names = "bus";
+
+			iommus = <&apps_smmu 0x1940 0x0>,
+				 <&apps_smmu 0x1947 0x0>;
+			dma-coherent;
+
+			status = "disabled";
+
+			iris_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-192000000 {
+					opp-hz = /bits/ 64 <192000000>;
+					required-opps = <&rpmhpd_opp_low_svs_d1>,
+							<&rpmhpd_opp_low_svs_d1>;
+				};
+
+				opp-240000000 {
+					opp-hz = /bits/ 64 <240000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-338000000 {
+					opp-hz = /bits/ 64 <338000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
+				};
+
+				opp-366000000 {
+					opp-hz = /bits/ 64 <366000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-444000000 {
+					opp-hz = /bits/ 64 <444000000>;
+					required-opps = <&rpmhpd_opp_nom>,
+							<&rpmhpd_opp_nom>;
+				};
+
+				opp-481000000 {
+					opp-hz = /bits/ 64 <481000000>;
+					required-opps = <&rpmhpd_opp_turbo>,
+							<&rpmhpd_opp_turbo>;
+				};
+			};
+		};
+
 		videocc: clock-controller@aaf0000 {
 			compatible = "qcom,x1e80100-videocc";
 			reg = <0 0x0aaf0000 0 0x10000>;

-- 
2.34.1


