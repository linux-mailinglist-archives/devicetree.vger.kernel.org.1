Return-Path: <devicetree+bounces-230228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A82C4C00BFA
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:32:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDF1A3AFA03
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B67C30EF7D;
	Thu, 23 Oct 2025 11:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bi8D4zGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B3F30E0F0
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761218990; cv=none; b=M+WZrt8Q3Ppsacra+oMnaEJGPriNO0esXyYoPtUK0gplMHeMLMVfq+ejL6WKbATrVladyNckKHm0fxWgtQhMC/BJ3LU1sXHOP6klb5XaMpooccghbPqPrFftRmSg8t3ulXaKK8rxM/o1hlqMdP7Q/VvznKC4lV+xYCROTo0LHtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761218990; c=relaxed/simple;
	bh=PAltBAsIq1aC8Ll4WARAbUKEgytDMvDlximclKmHu8I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EYQc0ZlnWQg5+68NmUPQZBj1e+YucfdG+2b86lW6NnsSYHOa6k1MZpTzu54B/kYd0iPz3QcBzbv0XYNNVTFpxXvqFdvhNvaQHkBlZbDP29tE41cJVnhDSEFXVyPH5cN3mt4GU0AbF+tfl1aZWRoGhZBZbGdQF3zXda2iviuAUJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bi8D4zGn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7aVRE027073
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=24rSamGepFz
	DSZ1Cho4Jlk11+RwSCiIWbyoT2pF6KQs=; b=Bi8D4zGn5ip19fLDopOrHkPIOBW
	8PQzCrrE8zLRFMtQPT0+lh3DiugiQWQLqJVmWfTtfa7iv4HpCdoC9nHbW3c5EdAu
	dZLQijU+Yi9dEPpA2OHb4aiwJxHTVYjwiKVnDBv58Sn30o0x8tUvlQZa3v/BPkgc
	UgqEdLrxT5pbUBiDRxEVyNRYRZqPNYhXEaCZ0ElAegqguz7IBUeM36qoi0UWmyh4
	YOpmZVNBB1YakU4Skk8/gHuJA1rnYMY1AlyW/dmy+z24BppqWTcih6dYMyE7c8II
	z5f/smGL2D43x5cQ8JED8MMO2yzCl/kMA4cUgEauEOledn/wyV4LbRJ/6yA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y5x8ja1m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-269b2d8af0cso1556895ad.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:29:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761218985; x=1761823785;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=24rSamGepFzDSZ1Cho4Jlk11+RwSCiIWbyoT2pF6KQs=;
        b=iYuDhM/SJOlQ6iVgylMbOi7CzkocLqM2h+R+S69loZL0gvP3TbFe4eciWZncw6EO+b
         GRAzf6DSAgbqkGy6HZ9SOdZ9j/DiBqyHhbFmPYU+in2k770ZQzgM2/OPjpMI9F7qV2+/
         NN0khjOIwenTgIHiUs6t5D1bTZTK88QWqqOOtUaN9ZbAUualQ5TTa76WjNt0SGaLIwph
         zxWYyH0gwKulrbkbnvEUAHc44RJaTdUMEjGX/PRnk/Ot0JxM4gm20Ruoflx/tyc79jfP
         RiksfDe7rrp9iuxaVzQnR1FKQxlED6aj764Wpy0WwbJ/SP+wFWaV+z4ZK4Jy+UMijaZ/
         9QKA==
X-Forwarded-Encrypted: i=1; AJvYcCXiqofKemv5+Q3Y5M7zbKaprZT5QPi4zzU9okGJJ70N6JSrfiIQ5BgscIdEjckNBp7bStx+pYqdNybd@vger.kernel.org
X-Gm-Message-State: AOJu0YxJYS2gYuCO/e6+wuzdHbY4OzhDlJeq3ASSECv1Oy30nWTuM9NS
	eBy1pCEl5umO/IZa9LYOGBBSy2h7nQSjNGi+imy5jPQMc8yoAc80lrniE3u9dzfMC6pX8NcTex4
	MP9MEA9Jh6CfJmyVRxjAHJoKp7BWuby+VaPV6PG5RQDpjF73nKXl3Gi81gB0vSRRyQzpQDLA=
X-Gm-Gg: ASbGnct7/5u/x4L3Cp2/hMOD5aDcqGARLtJ+IjANfUBP5rTE5EDbtOljh/bN66/kVwQ
	A5kXwLu4ZqWymtYrcnw7Jw0+RqyMZTtlfq8H/a0ky+RMsjyuMsik1CTGDYk65P32KqOp2NARon8
	REV7DXhT7/096lrRlX6/uh33cR0FSO7XZhyhX6sivAjHbpGrhXqNBkCgaSAwUjZ8y612scp1ywk
	W0SwBl24PxFrFsnE/fWPWb5FRWvL1QcNAyiOuZW860OARL6EC5ycFA1hbjLNo7fuSQnvuKQpmtA
	jcCwofknF4IvlA/oKR6N6okCoNsO6POKmd3p9j6NSsKuK9nBEcbIyKUaqmFb9IvbwNg5trs+79c
	HzPiuyQO0cQS4Oynk7u30gC63dXBhYA==
X-Received: by 2002:a17:903:2bcc:b0:269:85aa:3776 with SMTP id d9443c01a7336-292d3feca86mr66027335ad.11.1761218985448;
        Thu, 23 Oct 2025 04:29:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8WryTUVK9uIGvfA8bBiYDlVUzKkwiJHvUyKvzEQh0yxPMRvKLMdCz3fmuq9JzQW1dIcYc+g==
X-Received: by 2002:a17:903:2bcc:b0:269:85aa:3776 with SMTP id d9443c01a7336-292d3feca86mr66027105ad.11.1761218984963;
        Thu, 23 Oct 2025 04:29:44 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm20438815ad.97.2025.10.23.04.29.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:29:44 -0700 (PDT)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V2 2/4] arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
Date: Thu, 23 Oct 2025 16:59:22 +0530
Message-Id: <20251023112924.1073811-3-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
References: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 5HnZE2huI4YC-J4lf3gXw3xsR0-K9at7
X-Proofpoint-GUID: 5HnZE2huI4YC-J4lf3gXw3xsR0-K9at7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2NCBTYWx0ZWRfXylbofD7th8YS
 UfhjU5skbpOzWKzwIvEcIEoftXq8aFe0s0/gq23vfrpLRKdzw9qADz/Z3DxaekTFAX2ISdfzYdp
 jgPsk7FOIPHNUZZEz1RgImZHdBlcMUEk4rcWYMjO2LQTZjYiyz0PEeb9em/86TK59Yqbz1xDcvC
 t6YFFYNhHOgHBD7R/ndrVH7FWELE1I+N+6cHsjOPLirjiPVhWBzwIu5v9nmI578SZZPoh6SCxcO
 6Vz9CyYWnjW8VT8JVsT12BD4LZVXNo/vgmMRJNGcdpMp3qJlgarMTb7LCJqFOQq/u8W9MsbSqNl
 jJPV/IEgpBXTVYaTQgxKilgFxJ5n8TpDbzQu+6JwcSH1T4J8cNpoeuEwJlCoYvzWuUaKwY1GF47
 k76qrl9vp+DFXWZ/rtUI76TmMRG2JA==
X-Authority-Analysis: v=2.4 cv=UOTQ3Sfy c=1 sm=1 tr=0 ts=68fa11ab cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=AsSGxY1rZHGoL8xKvT8A:9 a=pcaSXIDp9BJpxWmU:21 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220164

Add SD Card host controller for sm8750 soc.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 68 ++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index a82d9867c7cb..1070dc5ea196 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2060,6 +2060,60 @@ ice: crypto@1d88000 {
 			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
 		};
 
+		sdhc_2: mmc@8804000 {
+			compatible = "qcom,sm8750-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0 0x08804000 0 0x1000>;
+
+			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq",
+					  "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+				 <&gcc GCC_SDCC2_APPS_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "xo";
+
+			interconnects = <&aggre2_noc MASTER_SDCC_2 QCOM_ICC_TAG_ALWAYS
+					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					&config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "sdhc-ddr",
+					     "cpu-sdhc";
+
+			power-domains = <&rpmhpd RPMHPD_CX>;
+			operating-points-v2 = <&sdhc2_opp_table>;
+
+			qcom,dll-config = <0x0007442c>;
+			qcom,ddr-config = <0x80040868>;
+
+			iommus = <&apps_smmu 0x540 0x0>;
+			dma-coherent;
+
+			bus-width = <4>;
+			max-sd-hs-hz = <37500000>;
+
+			resets = <&gcc GCC_SDCC2_BCR>;
+
+			status = "disabled";
+
+			sdhc2_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-202000000 {
+					opp-hz = /bits/ 64 <202000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+			};
+		};
+
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;
@@ -3121,6 +3175,13 @@ data-pins {
 					drive-strength = <2>;
 					bias-pull-up;
 				};
+
+				card-detect-pins {
+					pins = "gpio55";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
 			};
 
 			sdc2_default: sdc2-default-state {
@@ -3141,6 +3202,13 @@ data-pins {
 					drive-strength = <10>;
 					bias-pull-up;
 				};
+
+				card-detect-pins {
+					pins = "gpio55";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
 			};
 		};
 
-- 
2.34.1


