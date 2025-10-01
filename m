Return-Path: <devicetree+bounces-222922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 623E1BAF6D3
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2D7E1925CA5
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78678276030;
	Wed,  1 Oct 2025 07:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NoJtlIu2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BE1275872
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759304065; cv=none; b=NmZZp6Slft+yG/J5WckQL4DWaaiuyYpkCKaIUTMle5Aj+s5LWK+6KP9ziHMTMmd1T+jWGh2NC0P4mmd9jbB69HpEijtUfJmjerDtNBiOVwp46j+4hp541DfUdnpKFLPNV+FnxY7Xi2x+1+A7tR0wfrkMsBIeuD+TUC6svYpgVf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759304065; c=relaxed/simple;
	bh=Rf4H9TynzVt1Lyq4dqEiXIdj3OavGVbmXN2dPpfuLM8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=PId1Q+niNcLegYSgS5NG17rVr1xq7wOTJt3vt/aqSxKt1s9PttvRCueMQy7//J0JxBZ6eIQWHLUF8MoZJNwvpQ4H+kxZ0LfXocKHlDtKX9dW85t2ZWSPIPLDM3sP9ZXPfQLRYxoZueqkeGhpaCBiqS/EkGpVbCVGgYecRSd81ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NoJtlIu2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UKpXBr027376
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 07:34:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=NpLFZShKKc/dLH3/RKojdQgBbxZSezqyQ9PQZX4YslE=; b=No
	JtlIu2wo3OqBgbn6xPeBznl3D2DVkXG6q0ylu1eu3nsZsprqayIkbLDco4aO6GjH
	j25ordIWWrcN5J/dpz5q/UpIYpWybp943rGkl/Gg6D8Y3ErhXIqz4Vhg3BCOFjLs
	FzV3rg/1f5TyXuv0JRARVLP2IGp71p/uuLMLvEKjcpI0n00yNH7c+2kRuRj/H0I7
	iLJfV7qHOBkGvGi936qklEwpAUcOqoFNJ1SbG8saKzPbz8kvsJPXcFhEwWHJuzRm
	Wfm/Yi7khtLLN0hiynpU+zzs65+J1poYBtqBvXjV+4Fn5wB3w9ShzQHgdcQcnTYn
	DtZfS39PfVGtrajjUHMQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851kqde-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:34:23 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befc5bso6576286a91.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:34:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759304062; x=1759908862;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NpLFZShKKc/dLH3/RKojdQgBbxZSezqyQ9PQZX4YslE=;
        b=LuS5DEfPtjLwdpj+OqoT5R5fbtrk824L7XTv4OdAdxBf7dEbUDh6P3y5VP79dYr8o7
         p+wFUay8XJp3fsgYXRwSxKoaGK4eVDk1KxGEz0jHvpzBu89BA4xPyyk0okdal2zvrLBG
         c59M2rCLbCvEUAEduQyogUzc9wrqDFtCcnnOhOdfswmUA6MpF/0qMPxBG9dCndHozmo4
         NUfKKcBdj1xzP19TfBRA/8RcWIe+X1s3WuzBbuj3AlGh1D5azl1HHn8QId7AcQY+8K22
         zVjg81g3EbsI1HVsPQlkslgAPiP6LPrPAO5wdvra1WEEqXhwLqwe5qMpXt00q32fZcqB
         9wgw==
X-Forwarded-Encrypted: i=1; AJvYcCUzX+BbYvrm9RDJWwx54QajZ4eiWhwE5EPHkrlgUAUJm0oqpqFokCtvfPpZOWoH7GHzo+iMMnBm+Yve@vger.kernel.org
X-Gm-Message-State: AOJu0YzlMEQbWkEJ2K+ac60/EqninuhHa4a2BqVpeWcAYtzBfVI1PXgi
	JnNpketgTphmQTBYs5XpJZ85DiQU/1iG/MRoUKex7clw0B81tTKJ7lVgKCPZIj7Yaqs5Zxx+xK2
	BC4QKaDaPJNQ3U759iSjoblPYGQKfcSoC3mAD0fVAGCtsa33hWBD8/XuTziYYBa2N
X-Gm-Gg: ASbGncsLP4/86M+qiWpAylRAsQekf5aWGz6IYz48CNXzvShtrkxK50W67U875Wh5bCe
	AtvkkzC3mctahPIII55+ldWGyjespMuI250zuQbwcRhZh8W8Ch2JwE5fz+/Lk013Z6D2TdtUiBx
	y6n32RqdBWinbIBq6FD4+Tu4bOTVBYpAZthpNt2H+hBSIe4VqrNk525nBGKlokKiDmIoCohCsdm
	7UhYW6yZKrmyp1Q1wSr0hMiE6SkIxIT+hjokxyUZewJUc5eHoypL0QzbZkGktMX54WqBbS8n6Q/
	Ycm+C5Lmt0nUqOO3xcR3ozWLmlZLT9IMl/lPss36Y7PKdVe8sZLxtumahkNpa9ZwSzgdEegh09z
	4xSc=
X-Received: by 2002:a17:90b:3144:b0:338:3e6f:2d63 with SMTP id 98e67ed59e1d1-339a6e28360mr2595356a91.6.1759304061930;
        Wed, 01 Oct 2025 00:34:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqhp5ZByqLJXN1nj/rJ75hI6VUocIQro//1ocqCgiiNl1aa2w2QssR4jg2Lxv5jlWUE0nPlw==
X-Received: by 2002:a17:90b:3144:b0:338:3e6f:2d63 with SMTP id 98e67ed59e1d1-339a6e28360mr2595329a91.6.1759304061400;
        Wed, 01 Oct 2025 00:34:21 -0700 (PDT)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a6effe77sm1642127a91.17.2025.10.01.00.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 00:34:20 -0700 (PDT)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH v2 3/3] arm64: dts: qcom: sa8775p: Add reg and clocks for QoS configuration
Date: Wed,  1 Oct 2025 13:03:44 +0530
Message-Id: <20251001073344.6599-4-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251001073344.6599-1-odelu.kukatla@oss.qualcomm.com>
References: <20251001073344.6599-1-odelu.kukatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dcd97f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=BfUXBPTVPglUz1mEt9YA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfXynWEjadsaCSS
 fgXGQ6aL/3vPjC+fedxzTxcWDZdpkpEt/gaZpPw/s9O9V6BgtmIZaG88MrzhwzCiLNW/SpSd9sd
 8DLJdeA6L3ryr/+FEjZCv+kaYs/L7ZHFix6sYnH2niLew+ir88ArBrmw/2vTIXRSFkDHqGDbT6x
 DI9LWfS6HNaoNwy60YfhQnJOUJo6DzjCofjl7Bc1up+8mtG4GY6vLZJ2Gla5JVfUxJbqM9nx4Lg
 THb1NQwcf5xa5fqcSVzhwZYfIiweRIHz07trHxP6x7yExZ9VqKXSj4a5FHVJgBpcbththxQWGt5
 XXVnoKGIgByOXO4I+MqoR+HPzqcIC9w8hacYl7noX/QdeynyfRj0KkVvMQZfSaDZah5G4EUziQT
 J0CbM5SQ6dhKBDhHKtrYH6RwoX4BCg==
X-Proofpoint-ORIG-GUID: wczCU9JH7e6h9MFDzqTJv0Mlt22MTVWy
X-Proofpoint-GUID: wczCU9JH7e6h9MFDzqTJv0Mlt22MTVWy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add register addresses and clocks which need to be enabled for
configuring QoS on sa8775p SoC.

Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 163 +++++++++++++++------------
 1 file changed, 91 insertions(+), 72 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index cf685cb186ed..3a02a515af0d 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -518,90 +518,18 @@
 		};
 	};
 
-	aggre1_noc: interconnect-aggre1-noc {
-		compatible = "qcom,sa8775p-aggre1-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	aggre2_noc: interconnect-aggre2-noc {
-		compatible = "qcom,sa8775p-aggre2-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
 	clk_virt: interconnect-clk-virt {
 		compatible = "qcom,sa8775p-clk-virt";
 		#interconnect-cells = <2>;
 		qcom,bcm-voters = <&apps_bcm_voter>;
 	};
 
-	config_noc: interconnect-config-noc {
-		compatible = "qcom,sa8775p-config-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	dc_noc: interconnect-dc-noc {
-		compatible = "qcom,sa8775p-dc-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	gem_noc: interconnect-gem-noc {
-		compatible = "qcom,sa8775p-gem-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	gpdsp_anoc: interconnect-gpdsp-anoc {
-		compatible = "qcom,sa8775p-gpdsp-anoc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	lpass_ag_noc: interconnect-lpass-ag-noc {
-		compatible = "qcom,sa8775p-lpass-ag-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
 	mc_virt: interconnect-mc-virt {
 		compatible = "qcom,sa8775p-mc-virt";
 		#interconnect-cells = <2>;
 		qcom,bcm-voters = <&apps_bcm_voter>;
 	};
 
-	mmss_noc: interconnect-mmss-noc {
-		compatible = "qcom,sa8775p-mmss-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	nspa_noc: interconnect-nspa-noc {
-		compatible = "qcom,sa8775p-nspa-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	nspb_noc: interconnect-nspb-noc {
-		compatible = "qcom,sa8775p-nspb-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	pcie_anoc: interconnect-pcie-anoc {
-		compatible = "qcom,sa8775p-pcie-anoc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
-	system_noc: interconnect-system-noc {
-		compatible = "qcom,sa8775p-system-noc";
-		#interconnect-cells = <2>;
-		qcom,bcm-voters = <&apps_bcm_voter>;
-	};
-
 	/* Will be updated by the bootloader. */
 	memory@80000000 {
 		device_type = "memory";
@@ -2689,6 +2617,62 @@
 			reg = <0 0x010d2000 0 0x1000>;
 		};
 
+		config_noc: interconnect@14c0000 {
+			compatible = "qcom,sa8775p-config-noc";
+			reg = <0x0 0x014c0000 0x0 0x13080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		system_noc: interconnect@1680000 {
+			compatible = "qcom,sa8775p-system-noc";
+			reg = <0x0 0x01680000 0x0 0x15080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		aggre1_noc: interconnect@16c0000 {
+			compatible = "qcom,sa8775p-aggre1-noc";
+			reg = <0x0 0x016c0000 0x0 0x18080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+			clocks = <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_QUPV3_AXI_CLK>,
+				 <&gcc GCC_AGGRE_USB2_PRIM_AXI_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_AGGRE_USB3_SEC_AXI_CLK>;
+		};
+
+		aggre2_noc: interconnect@1700000 {
+			compatible = "qcom,sa8775p-aggre2-noc";
+			reg = <0x0 0x01700000 0x0 0x1b080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+			clocks = <&gcc GCC_AGGRE_UFS_CARD_AXI_CLK>,
+				 <&rpmhcc RPMH_IPA_CLK>;
+		};
+
+		pcie_anoc: interconnect@1760000 {
+			compatible = "qcom,sa8775p-pcie-anoc";
+			reg = <0x0 0x01760000 0x0 0xc080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		gpdsp_anoc: interconnect@1780000 {
+			compatible = "qcom,sa8775p-gpdsp-anoc";
+			reg = <0x0 0x01780000 0x0 0xe080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		mmss_noc: interconnect@17a0000 {
+			compatible = "qcom,sa8775p-mmss-noc";
+			reg = <0x0 0x017a0000 0x0 0x40000>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
 		ufs_mem_hc: ufshc@1d84000 {
 			compatible = "qcom,sa8775p-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0x0 0x01d84000 0x0 0x3000>;
@@ -2769,6 +2753,13 @@
 				 <&apps_smmu 0x481 0x00>;
 		};
 
+		lpass_ag_noc: interconnect@3c40000 {
+			compatible = "qcom,sa8775p-lpass-ag-noc";
+			reg = <0x0 0x03c40000 0x0 0x17200>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
 		ctcu@4001000 {
 			compatible = "qcom,sa8775p-ctcu";
 			reg = <0x0 0x04001000 0x0 0x1000>;
@@ -3925,6 +3916,20 @@
 			status = "disabled";
 		};
 
+		dc_noc: interconnect@90e0000 {
+			compatible = "qcom,sa8775p-dc-noc";
+			reg = <0x0 0x090e0000 0x0 0x5080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		gem_noc: interconnect@9100000 {
+			compatible = "qcom,sa8775p-gem-noc";
+			reg = <0x0 0x09100000 0x0 0xf6080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
 		usb_0: usb@a600000 {
 			compatible = "qcom,sa8775p-dwc3", "qcom,snps-dwc3";
 			reg = <0 0x0a600000 0 0xfc100>;
@@ -6875,6 +6880,13 @@
 			status = "disabled";
 		};
 
+		nspa_noc: interconnect@260c0000 {
+			compatible = "qcom,sa8775p-nspa-noc";
+			reg = <0x0 0x260c0000 0x0 0x16080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
 		remoteproc_cdsp0: remoteproc@26300000 {
 			compatible = "qcom,sa8775p-cdsp0-pas";
 			reg = <0x0 0x26300000 0x0 0x10000>;
@@ -7007,6 +7019,13 @@
 			};
 		};
 
+		nspb_noc: interconnect@2a0c0000 {
+			compatible = "qcom,sa8775p-nspb-noc";
+			reg = <0x0 0x2a0c0000 0x0 0x16080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
 		remoteproc_cdsp1: remoteproc@2a300000 {
 			compatible = "qcom,sa8775p-cdsp1-pas";
 			reg = <0x0 0x2A300000 0x0 0x10000>;
-- 
2.17.1


