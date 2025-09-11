Return-Path: <devicetree+bounces-215852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D46FB52D6C
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEC33A8029A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E75E12EAB70;
	Thu, 11 Sep 2025 09:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UqcB+gBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B05E2EA75D
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757583464; cv=none; b=XiDe1LmnqcCOqnk+xxI5YLqw3T7asX9SbMTiJ3lohnqaY8oVT/1RWA/QlwpxGc7oy/VOeU0ecjmBhYUvsOr+CKBmBLdxJP5zJX6GyQb4FGGliTJmhARmg8DiJUAZ0QnVDnXfihH8BOIUJa4YJU4H9JHlb1YFDCzwwyn/rajQfWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757583464; c=relaxed/simple;
	bh=L+PwKAgWtbu8sGdlpwaIwc/cd28U0PqRE0W3q0+fCYg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PQ+tbOFqTq6CF7Haxe8PnbSh+UlwmdNM4WfRIFtKDgTo9PW/vaZMhKBn774QEDMXG5r+I8vnKbVLkExDGSvlwbKmW2w+yTLRPK+nMrKJ9YT38VVj4Sav53WrTpNhxMh31TUgEcle5zHif0UBOn/bvhkr+UklW4G4zvneaZat3RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UqcB+gBe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B8VTOg002817
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w3UHXqdgFCGeqIB9S1HebNikF2UsfUnlUORJJ/kjR8w=; b=UqcB+gBeJWzGfWEp
	2xoLMKNsvtDEBHy5j0vC9yjv1TxcrgdSsqH281dQe5dTInW1Cp5EzyxAenbUIs52
	8zjKMspG2m650NJARK8kovTnmrnupT4huzn2dDc6aPFEHtplck6XT2ctL12iGZ/g
	gHcdeEAcENoDW/FsVHSD37rk3FT0p00stNjI+mWLo83AkIcjxIFg2lkwok9OOEyW
	Y680QfIb/SF9J2QTPZFkTuPFAjHn/PzrsXp7BaQVLYRzaGRCif9iXSUHbu3cYPOf
	MwiCJORpl+A3ZbH5wf32OZ5iWR4I8i49J13U3vgpB0NZptWA8ooB0AA1ji4N+8y6
	27VsXA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493tyxr708-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:42 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b521995d498so452704a12.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 02:37:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757583461; x=1758188261;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w3UHXqdgFCGeqIB9S1HebNikF2UsfUnlUORJJ/kjR8w=;
        b=jfLx7lv7kZabkRgwjX0HS3O0lmtKSdDy2rrkCuLicKpLPh0gXhMdm9At9cSMDSW5gS
         C14JepimoyPed/68vgDBtNXtFt24uNICAr/xsCaO9PW6AAwRmxScCsukDY9fAUQ1+jPm
         zXhuE4D7ZnESfWkNrycvk9P1YC37SE9T67+qtMsFN8Kc0bgPJl8k2bT0t8Gy4qVLXeMV
         OoSDYo75J4/5rgVzysPXyskcgMTpQHqiRFk72HTixQTrLNlmeTHgUFrUKig+jmZMfexg
         cglZxasMkaDi3u827g8m+p1C82Zckh92dWUnR6cVeJZ3K8gc2jHle5Ig2yWMOJePUc2r
         rpSg==
X-Forwarded-Encrypted: i=1; AJvYcCXvT+UYyd6bcZLQh8FNPolxFpFQwhX8r37KCkM1HtHYuUhcPQm2gBFXVIpZN54Tjpy9Zi7NhJ74B8IC@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd9tVFmtUqWAlU7G2nHsNlzuCrSxg6LMbXOZCx0oS6olwFGbLl
	dtM00ZNQyWlMhM3WL9XEar12oMplCoHDixUtJY8s0GCkp1/YRMqFymC+/ZnQ92v00yNc1ZdvCu0
	bdUvX03V3ofHDLMVIKodet3OLEdiF9AIBrLfiiFi9NUZAdUxYt8GbnTmMS0GzBwiC
X-Gm-Gg: ASbGncs7Z5Gdc5a4MWI4fokRVnDNTSNyExr6Yvnfkj/K54oXBg2blAyaRJmgOpIF5AL
	uldMW/ZLeW5eeC0NlzYCf8DcnBQ96c1RI3d3S+1ZhlAjzDKLo0Ba/zJ3uSYTn1O68tWU+MR6G5J
	ocErP1NHP6S/6s+AxXAOVM+SU/GzcsGwfxXXw57EvZrx8CfS9uZWF9D1PUzBBhKV0eC0jcaR3TT
	cwPK7uzOwnXGS71AMDafAHgQaCJLVmk7LXIoe9CNwtrsdN/5yAnkQsqvh+LARnZi6NjiWWH7k96
	bsPFflVSNDBKzmVM3x+sHGqUlI9i6dze7+rP3LOWjBBUUyAa4V2Nq3VGFFUIrYeJ/BxmkvX7Z0E
	tSeSqhYk0WTCm0Jtp53HvZcAV2rM=
X-Received: by 2002:a05:6a20:7fa5:b0:243:f797:fdf9 with SMTP id adf61e73a8af0-25344415f91mr24187337637.47.1757583460694;
        Thu, 11 Sep 2025 02:37:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEu9YOZsZOuJnUdWvgFgmY4PYUBMxZZD9lcxoU+0WLLvtqymvqPqUK59rKHJULHd4TVHHP4NA==
X-Received: by 2002:a05:6a20:7fa5:b0:243:f797:fdf9 with SMTP id adf61e73a8af0-25344415f91mr24187289637.47.1757583459997;
        Thu, 11 Sep 2025 02:37:39 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7760793b730sm1512930b3a.15.2025.09.11.02.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 02:37:39 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 17:36:58 +0800
Subject: [PATCH v2 3/3] arm64: dts: qcom: lemans: enable static TPDM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-add_static_tpdm_support-v2-3-608559d36f74@oss.qualcomm.com>
References: <20250911-add_static_tpdm_support-v2-0-608559d36f74@oss.qualcomm.com>
In-Reply-To: <20250911-add_static_tpdm_support-v2-0-608559d36f74@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Tao Zhang <tao.zhang@oss.qualcomm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757583439; l=3216;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=L+PwKAgWtbu8sGdlpwaIwc/cd28U0PqRE0W3q0+fCYg=;
 b=JcA0QLGXWHd2kmediDYKM6VhiPirq95RmC0532BBjaR7LcUdf+hREFHNt+hWn626tRjkb4ZK6
 EItpJudDx5sDOWxLvv/Nf806J0SaxvcxjE58x9KfA2eIAviJyDz3W1l
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: 2QiWK71wCJ56uGcQ2HfJCyk_QOAtbdLj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA3NCBTYWx0ZWRfXxI4NTfYlZTCp
 aAIjzFWScfLGwSHFeJgjzYGOwLj402DGRefAIUyJ/J7vfCflS2xhdOjUBirr1weKC8Kx2FlHZM9
 ujp4ckpv0Z5UTatswBQqBZkq+6RwiV+T0J1gZ0eHQewscUmRLU9OpVx1BpATS/ITzoo8bJYnd9U
 /rv2cPAR0/qi5vSocBKmUQF2TT8y52V+uuXrCuHnPHE8tr4Sa5Zfz/OKajBwgmI0YkjA4N/m4oy
 616IH5vNx4RcQaweMkPJNY7iMqiJFsMAS8JZrtxqh43uZp1NJ8YEF9h1dbx31H4OZEA2LRF9cM2
 H8GvkO3swbbdiOQn8J5pciE8cpLMrHmasPLCKXYdXpLW6WjGWf3FLorKvzlUGxreDudPCa73Eqd
 9U3yPqiX
X-Authority-Analysis: v=2.4 cv=VZn3PEp9 c=1 sm=1 tr=0 ts=68c29866 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_1kJojZ1I3LL_-Zbm_IA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: 2QiWK71wCJ56uGcQ2HfJCyk_QOAtbdLj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110074

Enable static TPDM device for lemans.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 105 +++++++++++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index fd6eb6fbe29a..c3de6e295af9 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2960,6 +2960,14 @@ funnel1_in4: endpoint {
 						<&apss_funnel1_out>;
 					};
 				};
+
+				port@5 {
+					reg = <5>;
+
+					funnel1_in5: endpoint {
+						remote-endpoint = <&dlct0_funnel_out>;
+					};
+				};
 			};
 		};
 
@@ -3117,6 +3125,60 @@ etr1_out: endpoint {
 			};
 		};
 
+		tpda@4ad3000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x4ad3000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@10 {
+					reg = <16>;
+					dlct0_tpda_in16: endpoint {
+						remote-endpoint = <&turing0_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					dlct0_tpda_out: endpoint {
+						remote-endpoint =
+						<&dlct0_funnel_in0>;
+					};
+				};
+			};
+
+		};
+
+		funnel@4ad4000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x4ad4000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					dlct0_funnel_in0: endpoint {
+						remote-endpoint = <&dlct0_tpda_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					dlct0_funnel_out: endpoint {
+						remote-endpoint = <&funnel1_in5>;
+					};
+				};
+			};
+		};
+
 		funnel@4b04000 {
 			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x0 0x4b04000 0x0 0x1000>;
@@ -3389,6 +3451,35 @@ aoss_cti: cti@4b13000 {
 			clock-names = "apb_pclk";
 		};
 
+		funnel@4b83000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x4b83000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1 {
+					reg = <1>;
+
+					turing0_funnel_in1: endpoint {
+						remote-endpoint = <&turing_llm_tpdm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					turing0_funnel_out: endpoint {
+						remote-endpoint = <&dlct0_tpda_in16>;
+					};
+				};
+			};
+		};
+
 		etm@6040000 {
 			compatible = "arm,primecell";
 			reg = <0x0 0x6040000 0x0 0x1000>;
@@ -7703,6 +7794,20 @@ arch_timer: timer {
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
+	turing-llm-tpdm {
+		compatible = "qcom,coresight-static-tpdm";
+
+		qcom,cmb-element-bits = <32>;
+
+		out-ports {
+			port {
+				turing_llm_tpdm_out: endpoint {
+					remote-endpoint = <&turing0_funnel_in1>;
+				};
+			};
+		};
+	};
+
 	pcie0: pcie@1c00000 {
 		compatible = "qcom,pcie-sa8775p";
 		reg = <0x0 0x01c00000 0x0 0x3000>,

-- 
2.34.1


