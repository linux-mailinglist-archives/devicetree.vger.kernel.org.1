Return-Path: <devicetree+bounces-225902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA58ABD2162
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:35:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0E533C29D9
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6BD2F9D89;
	Mon, 13 Oct 2025 08:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SDBV1CE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784CB2F90CC
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760344509; cv=none; b=dIPdcGcnPQHLUpD85eex593mxFAloENYw+mRpvYui0G16szsRFlf8CBmX8qPCZ09/YEGWzN9TzPGpq0brlwOgjClQ/cSpqfiQ2m1iAdV849vtK5CuPRWhQoma0xvfOfv8h1+BpvQ4tiCkSuXw2YrhxpEqb67bwCv1kosrquc2/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760344509; c=relaxed/simple;
	bh=Z4+oQgS3Jbl9cg4D0kgGb6/AOBj9sZjjizm/su2bu80=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aQwjV0xWdqEz8dFgKu0rIpKw92cCQMFMehlZ4YnlIsM+Q+ryne9/5gyaXHQ6V2pN1W9baJoFC71zxkTTO6J9JY7AZQjMqm9OL2xeEHuEQ84bopwJOG0YBI0/9LsVzQ0dfUbf8le/XFUTbiICcWkvuR/LoZgxAwhvYcftFQc5j30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SDBV1CE7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2n6g0017035
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:35:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UY4Hh6glklh6ZR+c8fzW6JMMCANxpzh2RiegBxLS/MQ=; b=SDBV1CE7A9mZ1ygo
	LVD1BbWDUKFIosn7lBq+FFqkQ4N9QBIka9Ztlw/Vydq158SGuXzTsk8OiMn1mO/Q
	78+YbSFQwX9T2xWG2qQCPtc7x9vrG/WjCtTkdgzF5PLWtPlmvG4xD0Cikbvyoivy
	SZIbI5P6JPg5W34h132SDQ1iM4+o5p3aEiqJWEaofib1TNelWo1TxDAicbvbXLRd
	WlHgVBiIcnuU3h62KaidIu7V2pRIFzJS41LejDFKH4gmB3k4yhC5HWrzQpa/AP60
	AwVOCAoqS75QzUPPWATyV3+oYS8H2vO7eSKfXoAziNoI+EdNnQ3HgWh36cNXNv6w
	Pd+XQA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdk3vms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:35:06 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-781253de15aso14303965b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760344505; x=1760949305;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UY4Hh6glklh6ZR+c8fzW6JMMCANxpzh2RiegBxLS/MQ=;
        b=eASmveoUhGGTZS0Y2OxJPkCvPlPldQlmaYCIVqzQ9X6DucOabdALrUFtyFTFYMv6JS
         6JgMvx+vxPSLXEZwhvSWX/CMSx8qv7KaqgLbVkNnGOQe7PeJj7BycdvxIq1NZ+oMrvf8
         kDyLod4eKgEGY1XTYdgvt+cSFrNnNCNWgyq6A9CXAC5JLsHPrnL+WQvBHBWLxfqZnBro
         5aW36TBzLtKO0SLiKnxPv/ln7O9BNa5UVKgdnL6lAYBk8Z5n2nt8ZkTo8MT+UdnmviR2
         shC/RvlJnpl2+6WQD33EVH5gMs+MGfs6+dMX6zDyZJHOHm7NN2ww84iZeL4SxfD0TCGX
         M3zQ==
X-Forwarded-Encrypted: i=1; AJvYcCU00j7u5iFQVTFy1w+aPVDlCq1/ojBgn8KHU5TSpM/pSedFKi/MembZ6WjWkEgD4CSia7s0GQBsRVDa@vger.kernel.org
X-Gm-Message-State: AOJu0YxQuDpw5pUcmgSVpbGz+7d2KwGH8PEPp9EDXwyCFa9kv1duWdOV
	WhRASw4L5d1zZgcBeMIk7XGjBGATXbA3TdX1b7RKEq9Bty8SWwBFWF2gQvF1lxY9+fK2hOSEXvV
	qmJuYaktImc9hWDkYCnK0RJ1nF0UFdxupY683RQi2UK7v0+1GkUIdHUg0g95zOIPmd0MBmWazFk
	o=
X-Gm-Gg: ASbGncuYdVEHFQgwNq68SV3YDaTo2aMLSuCBCBfMtZuPGkMn9LNXe3yl3p8IegcOVzb
	OKYYDKJslS3eUhq/xW427vXDTvLvuAuySNegz5M42M2I3XwtSgKzPbeHM3RUU/YeovAE8iVZRKa
	vrdqQA+qAc4kbFak8AW7MhQmJbfsjzqQCnvpSMVkBuE32i4XAwsCpqjdKj+L9KGN/DdVnAZsgXL
	eBWZy2SyHUG/zfgq3Crrw4uwmFkkk1irNFtzcLMnYxLxaNUj2q289Fxr5Wof7UOZkNRUlmXSz5h
	N+Ycn2yA8pb4U+q/YkJ+/578iLgysu7MtidU5MA/1jR8fMR72+9fWBcn7H5su9xvgRdyqZZ/Jr2
	bg5VB5342lh9SM6jD3Yx0YLoy0/Y=
X-Received: by 2002:a05:6a00:2d28:b0:78c:995b:4e9d with SMTP id d2e1a72fcca58-793858fb69amr23378792b3a.10.1760344504900;
        Mon, 13 Oct 2025 01:35:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh6IE+z6Ub8yJL9ZLSqcTG59UK+YvYS9gtt6RTA329tg9HSehVJOP/AHPsZrMLp0ZgesAV2A==
X-Received: by 2002:a05:6a00:2d28:b0:78c:995b:4e9d with SMTP id d2e1a72fcca58-793858fb69amr23378768b3a.10.1760344504459;
        Mon, 13 Oct 2025 01:35:04 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d09a87asm10773251b3a.46.2025.10.13.01.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 01:35:04 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 16:34:38 +0800
Subject: [PATCH v3 2/2] arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-enable-ctcu-for-qcs8300-v3-2-611e6e0d3085@oss.qualcomm.com>
References: <20251013-enable-ctcu-for-qcs8300-v3-0-611e6e0d3085@oss.qualcomm.com>
In-Reply-To: <20251013-enable-ctcu-for-qcs8300-v3-0-611e6e0d3085@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Jie Gan <quic_jiegan@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760344488; l=3935;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=Z4+oQgS3Jbl9cg4D0kgGb6/AOBj9sZjjizm/su2bu80=;
 b=+tHHXYONYDyeaQOL4Oq0D+PjKS9t/mdKnreAlUlLeIDMJ77IIj+8e3wWWK2/T3DxYKV/aR8nM
 KosnCPeugclDke6uOYU1reFxkMEaiBOnpFJ6anQoUVs0vc7wOkG0XdZ
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: pEMe3uP0vCNimBl-oIArycB-47XaD4vk
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68ecb9ba cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=xJyy5nzPNu-aANFJA0oA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: pEMe3uP0vCNimBl-oIArycB-47XaD4vk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX7xgEyi4/lyVl
 ADZP2MeCGbqrisBPAKUkkXyEaIYTr1YcPNl4yBnjRLRB3n3fGjFF9Med0xP3A3W1O68VikRzWez
 mTTeczqnPU8mLVxn2+NW0r8OUckxa2o/hSJLaMa2D4O8VKoaf6AxhQpcpveV0yi/k6f/OhX/K+3
 bemSxrsyTI2ydLdJCp/u6/zQtnGjLGCzBtqHoG0Fw+pTqjGbumHzMHiAxetRilclQ3TKHZPzrp5
 hLETsPyhfVbV1k2GeZEf95V5CYvcPBnJQBK4ve4rDFlKXrSn0gMWS/8e5Eczc9/FBR0VrrQJsHC
 v8vhVGuYQl0o9NltfJA8Sivbiptr4fdeZ2xMZx4Vd6658aFdajJq8CGk0uyi+s/26G6aMsfSZCv
 zmbnjl0Q+FTB6cBfZkXJ4NZYwyDVAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

Add CTCU and ETR nodes in DT to enable expected functionalities.

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300.dtsi | 153 ++++++++++++++++++++++++++++++++++
 1 file changed, 153 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index 8d78ccac411e..74ae32bfec93 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -2482,6 +2482,35 @@ lpass_ag_noc: interconnect@3c40000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		ctcu@4001000 {
+			compatible = "qcom,qcs8300-ctcu", "qcom,sa8775p-ctcu";
+			reg = <0x0 0x04001000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ctcu_in0: endpoint {
+						remote-endpoint = <&etr0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					ctcu_in1: endpoint {
+						remote-endpoint = <&etr1_out>;
+					};
+				};
+			};
+		};
+
 		stm@4002000 {
 			compatible = "arm,coresight-stm", "arm,primecell";
 			reg = <0x0 0x04002000 0x0 0x1000>,
@@ -2676,6 +2705,122 @@ qdss_funnel_out: endpoint {
 			};
 		};
 
+		replicator@4046000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x04046000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					qdss_rep_in: endpoint {
+						remote-endpoint = <&swao_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					qdss_rep_out0: endpoint {
+						remote-endpoint = <&etr_rep_in>;
+					};
+				};
+			};
+		};
+
+		tmc@4048000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x04048000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			iommus = <&apps_smmu 0x04c0 0x00>;
+
+			arm,scatter-gather;
+
+			in-ports {
+				port {
+					etr0_in: endpoint {
+						remote-endpoint = <&etr_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etr0_out: endpoint {
+						remote-endpoint = <&ctcu_in0>;
+					};
+				};
+			};
+		};
+
+		replicator@404e000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x0404e000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					etr_rep_in: endpoint {
+						remote-endpoint = <&qdss_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					etr_rep_out0: endpoint {
+						remote-endpoint = <&etr0_in>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					etr_rep_out1: endpoint {
+						remote-endpoint = <&etr1_in>;
+					};
+				};
+			};
+		};
+
+		tmc@404f000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x0404f000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			iommus = <&apps_smmu 0x04a0 0x40>;
+
+			arm,scatter-gather;
+			arm,buffer-size = <0x400000>;
+
+			in-ports {
+				port {
+					etr1_in: endpoint {
+						remote-endpoint = <&etr_rep_out1>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etr1_out: endpoint {
+						remote-endpoint = <&ctcu_in1>;
+					};
+				};
+			};
+		};
+
 		tpdm@4841000 {
 			compatible = "qcom,coresight-tpdm", "arm,primecell";
 			reg = <0x0 0x04841000 0x0 0x1000>;
@@ -3105,6 +3250,14 @@ out-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
+				port@0 {
+					reg = <0>;
+
+					swao_rep_out0: endpoint {
+						remote-endpoint = <&qdss_rep_in>;
+					};
+				};
+
 				port@1 {
 					reg = <1>;
 

-- 
2.34.1


