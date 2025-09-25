Return-Path: <devicetree+bounces-221263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9C6B9E282
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 760434A6866
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FEA427815E;
	Thu, 25 Sep 2025 08:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IKktIhKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BE02727F0
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758790759; cv=none; b=iUWKiTKqb4t2cdg5e94St15yTg6XM0RNW61mz2xhdQlu4tPDerl0VUzow2X0f3vj41VXg88lHxulBxVegy7rRMRtgGpGhgd9sVHolYoV2FnQCpI9UeB4lhZ6uGPzz7Cs6vYXd4Ovsj3gLfnDlTJgVTcM49WMv0bUxc50Y2lxOrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758790759; c=relaxed/simple;
	bh=JOrSz1HXlLFxPLLjWD6d1WYeOcWMe6xb1W47kc5uGIg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=U7aUyT72A//zXOm0GnZS/3/THbPwd/zTVJZbVfNpUrMPgewBgnWNyQzBRnrOor0T6DObJfO2tyZkykHXrSoIz1+a4GFoh/I8EfqZDGGBkR9aY1KHD6yjwg8qRpZNzDZXpfDjBbPZNRjreA5JfvTbRZ6d7uhJAxi7sgM697e7knM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IKktIhKo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4aJPs027521
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:59:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=qxnTysuC/hW7nodKqTqYaF
	znb9Od7XFr//MNjinRq9Q=; b=IKktIhKoKRWbGt1MLqt15J6mEXIqj1NMcW8OXA
	H8RHZD655ZRSNJ28nud2tdEeTyj0sly416amZxpMJH3IoBl2Q79WykvjB/jLTYDX
	QiNaH+7wmn3eNfVcW0hdEoRDzposfa7W5UJDbi9pQB085c9sN98vzqJKs+kkPbPp
	/Sn6fOJQ1P6cB23UJ78vsHOgWZ4nUaTqJR8yco4QxFTJdm0infqnlWcEDf7SxG30
	p3eW2ReZTuUlol27FZhDrMnXWE+sLnxWaHUKRAcv7T5PW2aFJG1f8K86j0qWZGkL
	KGOdl6Ljk0qiLXrjWS5SgFLd7lUoFNofM7f3EJfzIJW+wiTw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup0p79-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:59:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77f3aa0f770so1265438b3a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:59:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758790756; x=1759395556;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxnTysuC/hW7nodKqTqYaFznb9Od7XFr//MNjinRq9Q=;
        b=FxWogbb+MeqL9e/57Gpmw+cR1K7Fv8eNzPUTbxWECDVIbakmnZRzx68Y2AmxQl++AW
         JYJ8fIOjOKwfEKi7L+FsDHWvU/Eo12i7Qb+DwAf70GnvYKTLm0w6c/K4/mM/Qnp0VzX0
         7qsyFGRHsev9iuU/NOcjNy3yL/xEuVMO7JmGVOaSf1UWUFifw/t+6QmbXu0B26KwzRok
         RrXZNuXvfWb6qvMKD3u33dtuBa865sDr9HQQYWJm3EiEAp6JjD9CgkKlXqEdiVhcBSjB
         QKQbAp8uAopmMuSd5o1OAdNDGkRUNI+dTFezycfmGw/F1bv6v9KLelx4T8gH5OJXBbpa
         vOhQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+EDel1ezskrLVyiq5r00AqqP8ylm9uEx8bI6dyMMEc2Xe0uq1JJ77k2wHZ0wY5Qb0Jtct3+YCXsFt@vger.kernel.org
X-Gm-Message-State: AOJu0YzzhqR0b6jGKku6Apdei21yWiRYovWLPCaAtZn8RngKu1XZVYLO
	aWSmZaD2wuCMbq8HRrTiRqH84GqRMqiRve7Jr2hafZw5OdoHbFd0w8OYiVmcvC9qkrDJ+EQ6eFl
	S/+SCdyj8YxdCAVSGK8Y2YD6O4Qw6oNKzqPTqrKG5Z/zZfRbDnTBl349Zzn58Tkpz
X-Gm-Gg: ASbGnctzz+/DwNjeFIPcNiJq7Sd9w/VK9JM0567RLlT4GFsdUJMdYGBwZpimEQVE0C7
	bryu+CcLWKIcvVZ23ep7c7BaBuoQWT+LU+/8v1OZWHhTdicOrKlxWmlOEzMce5lrtHCdvd8+J2q
	Jy0+B1SAokZ2dz93i+XpcGVzWmv/KgRGglYmfeFBME5RASuw4TnfByHvllMAhDFcktD5Pr3jxrq
	edhorhEO/ZPM8QrnhxW1uHBDB/cPYJLx8PVYWHoNvac7Aa1ZyZXQj/Jwng90k8Q/D4ADS/zcEKy
	nJoxd9yVWakZlVRiSXxIIDOK1m03oNL0nrjM71BczxBO8wuk7HLCIQW8nMWfDK/Qoqg=
X-Received: by 2002:a05:6a21:33aa:b0:2bf:67b3:800 with SMTP id adf61e73a8af0-2e7d53bc59amr3396173637.31.1758790755867;
        Thu, 25 Sep 2025 01:59:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0eJpD3qKeqYsWPXAHQB1UW+NDDK3QrRB3k0/4VNWzqwbZS0V3YIAgTG/cxv3dJIGeHCv/XQ==
X-Received: by 2002:a05:6a21:33aa:b0:2bf:67b3:800 with SMTP id adf61e73a8af0-2e7d53bc59amr3396146637.31.1758790755416;
        Thu, 25 Sep 2025 01:59:15 -0700 (PDT)
Received: from hu-mahap-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238f3c9sm1322921b3a.20.2025.09.25.01.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 01:59:15 -0700 (PDT)
From: Mahadevan <mahadevan.p@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:28:07 +0530
Subject: [PATCH] arm64: dts: qcom: lemans: add DT changes to enable MDSS1
 and DPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-lemans_dual-v1-1-9c371803198d@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAB4E1WgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDSyNj3ZzU3MS84viU0sQc3WQD48QU02QLk0QLEyWgjoKi1LTMCrBp0bG
 1tQApZpnMXQAAAA==
X-Change-ID: 20250923-lemans_dual-c03ad5c84a84
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Mahadevan <mahadevan.p@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758790752; l=3504;
 i=mahadevan.p@oss.qualcomm.com; s=20250923; h=from:subject:message-id;
 bh=JOrSz1HXlLFxPLLjWD6d1WYeOcWMe6xb1W47kc5uGIg=;
 b=ymlU+PIWyqgK6BPCqwMHjRqN2GYLxfrxICND61XV5t33J7keND4J1z4zHP7TKHzLiLGjcIR+z
 mwvphlPzY1oBbAqjUzwLxGbUNG93mv26VpT4SxQ+NOYfwZ6SdJaqghr
X-Developer-Key: i=mahadevan.p@oss.qualcomm.com; a=ed25519;
 pk=wed9wuAek0VbCYfkANx7ujIG4VY0XfCYrffFKPN2p0Y=
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d50464 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6WOxDTRmUopsFHP9N0oA:9
 a=YUZtwmTVGX311DRz:21 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX+0vxIlUBx2Zl
 uMcqqhWql3zuydgZZ9uJlz9XudFyfmFl9Nf+ehq3BJ+X48Xz/x0VkgqvDhpByl4GZjOO684MxYl
 10PKEZnsK8TOv+g0aMErFtucWzjZQfwqJ5vF1pC5C5SRAfpp+MMMn9OarWwU/Q604sIEbVOQ59z
 xIQZvSbYDCln59Kc44lBvpsxWmU4Hfh+6I0e0hRONFjhChAVSDsgI+MFJ4+ZvcBp0mZukWKwSBF
 Vy235FanxtYIN756FJaytEUg6wf5I+x/ZceaqS5dVvNGoJP0+EwN3dCMNfZ8rBhX2XDMhbhI2pm
 MCeyUNRZsi2+r8smvLk7tFv5kt4OiToVufgt/R2rcwuQDJ2GGL5KDI2VLhodaQrS99k2euZjjr6
 /ACU2nLj
X-Proofpoint-GUID: LXZIZkG-Yi-VE_yNydCH35OaP9OMmxEq
X-Proofpoint-ORIG-GUID: LXZIZkG-Yi-VE_yNydCH35OaP9OMmxEq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1011 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

Add devicetree changes to enable second Mobile Display
Subsystem (MDSS1) and its Display Processing Unit(DPU) for
Qualcomm LEMANS platform.

Signed-off-by: Mahadevan <mahadevan.p@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 88 ++++++++++++++++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 48f753002fc459a3e9fac0c0e98cbec6013fea0f..45c11c050d3f8853701fd20cf647aef5c6a9a8c9 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -6751,6 +6751,94 @@ compute-cb@3 {
 			};
 		};
 
+		mdss1: display-subsystem@22000000 {
+			compatible = "qcom,sa8775p-mdss";
+			reg = <0x0 0x22000000 0x0 0x1000>;
+			reg-names = "mdss";
+
+			/* same path used twice */
+			interconnects = <&mmss_noc MASTER_MDP_CORE1_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_MDP_CORE1_1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "mdp1-mem",
+					     "cpu-cfg";
+
+			resets = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_BCR>;
+
+			power-domains = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_GDSC>;
+
+			clocks = <&dispcc1 MDSS_DISP_CC_MDSS_AHB_CLK>,
+				 <&gcc GCC_DISP1_HF_AXI_CLK>,
+				 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_CLK>;
+
+			interrupts = <GIC_SPI 865 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+
+			iommus = <&apps_smmu 0x1800 0x402>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			mdss1_mdp: display-controller@22001000 {
+				compatible = "qcom,sa8775p-dpu";
+				reg = <0x0 0x22001000 0x0 0x8f000>,
+				      <0x0 0x220b0000 0x0 0x3000>;
+				reg-names = "mdp", "vbif";
+
+				clocks = <&gcc GCC_DISP1_HF_AXI_CLK>,
+					 <&dispcc1 MDSS_DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
+					 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc1 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "nrt_bus",
+					      "iface",
+					      "lut",
+					      "core",
+					      "vsync";
+
+				assigned-clocks = <&dispcc1 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
+				assigned-clock-rates = <19200000>;
+
+				operating-points-v2 = <&mdss1_mdp_opp_table>;
+				power-domains = <&rpmhpd SA8775P_MMCX>;
+
+				interrupt-parent = <&mdss1>;
+				interrupts = <0>;
+
+				mdss1_mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-375000000 {
+						opp-hz = /bits/ 64 <375000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-500000000 {
+						opp-hz = /bits/ 64 <500000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+
+					opp-575000000 {
+						opp-hz = /bits/ 64 <575000000>;
+						required-opps = <&rpmhpd_opp_turbo>;
+					};
+
+					opp-650000000 {
+						opp-hz = /bits/ 64 <650000000>;
+						required-opps = <&rpmhpd_opp_turbo_l1>;
+					};
+				};
+			};
+		};
+
 		dispcc1: clock-controller@22100000 {
 			compatible = "qcom,sa8775p-dispcc1";
 			reg = <0x0 0x22100000 0x0 0x20000>;

---
base-commit: 846bd2225ec3cfa8be046655e02b9457ed41973e
change-id: 20250923-lemans_dual-c03ad5c84a84

Best regards,
-- 
Mahadevan <mahadevan.p@oss.qualcomm.com>


