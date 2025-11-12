Return-Path: <devicetree+bounces-237417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE9AC50E29
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E5A694F43A2
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 07:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A332BCF46;
	Wed, 12 Nov 2025 07:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gh6T6VOI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i+bF9K3x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D0A299A84
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762931576; cv=none; b=DrmE+JzaVqEPlHbiPetq2vVHJqdiUEF0bQpmiZU+qb8waCFvjFyvp7K8lv/6prH6Qrn09na1odeShcfRpPP1mMZKAzH4MwADGP/SSXrnHLK1zQdPeZfVnhwuoEPn3bPhgflRn6hpBJT2oGKVQlGuXDBiuu+zvDPJDCcmJFMHI0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762931576; c=relaxed/simple;
	bh=6+jV71wGL1wBtsjG/nZuYIXE5SSOPVZMaiiUrvH3ZE0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iJ/ycxTMJYtuiswTUJrecq9xP9gairYAt4DaG4Pusj0s0fbtWunKUSx3vRWycPk5fy0DhwCbLMivibzwpSzcP8peykJcujuz9f0JOr7BYt99mYvuAIShzIwjp1TO6mTHC7GNhxviLv9K5I10EDDsA4HHAZJDUeHcqtYuehJa6T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gh6T6VOI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i+bF9K3x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC1iEYd4076957
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DKnzoLzTMmN
	A97V4zeF5ajfzMEJrp7kRrJtSmJdHD2U=; b=gh6T6VOIJYihAF6UODi0NKwQEFO
	KpYF/3N9tR4AYGQOfQ/1tqB16CZQYUNTqsqB6Z8wzERiqnKCuK0lxCIbsEXME0tR
	tK3StRBivc9mU5JtQKzTfWhEp1DD1H2DsTbLeCFnNrAr4Qyf3DYOrSOieHI1E0aF
	hxPEjCZJ22x+5o1pg+tafBxocZ4sh++0dog5H6eEV7vAK5DY1Y3mnDbyF1DyaJlC
	DIbQEemDo8aXbg3iGU0NIvDLSAVYJyazVwfdb5MeASu9r81n7cACoE0zw4p4PV1l
	e+AShulJQNJcgfpbeHrKZj+MEltyybj+oZBKFL3iKI3QQoJ58Ujfl3tJ9vw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acguagsyh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:12:50 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7af914bf0ffso183214b3a.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 23:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762931569; x=1763536369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DKnzoLzTMmNA97V4zeF5ajfzMEJrp7kRrJtSmJdHD2U=;
        b=i+bF9K3x2P+2AN0zGSXjh4/p9guRuQfTOGrxodO5F8SpGWqG4yrzjt/vp5c3Rv2Tcn
         TytPYKfxBiXJXMQErGMF5wpy06tFNMXRqFfxMwHT+TlZi6WGoyqGWjFbEOlRvp9KwgqO
         srIB+/b0u7fGuHMTQJS9NOr9EI0JvWcp0CHwthPHuF4yRqAprAyw2XY1i0Pg7ZTETxda
         zp3gilozCVLscmNKYlAxvfOy2ecKctxYfm/1QiBQQK2kR9L/v2s0Xk58Ip68zWa/PkbH
         sY4UvGbaA6TIqScotOFlbzbNTM8fO2p2faTeMCJR1mgzzcX97lo5iJaLLy/yAdG/ReJc
         upnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762931569; x=1763536369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DKnzoLzTMmNA97V4zeF5ajfzMEJrp7kRrJtSmJdHD2U=;
        b=NptVx7DzGgXBHOPypuj+o8qBm5iNwnMmKQIHKE84xpAMiA8zgmfKVdpkBWXifHP7Av
         IYJynYdnYW/A1oHcfx7wXrGk0ev4kYbCGN1NXFm0OPqKuff1kEJu1s4kqEKMxyYS7AoC
         UqtDQ/eUU0fpeVFwieButZmLXzNsNkV669pPVeyBLT9s4w8BZs98H3xx1JBnIw21WIc8
         OVnbK+XyvsMkpyaPbXaVaQIa7bL3anKrZPSEUSihv8ijSfiEid/EwLqswu/4EpE1GK3V
         pFMCOF/YChNKHeqvx0gV270hnVTydCWb1yQN31f+wDurXYdmyRnYDzZONX0hWy2Q5zkD
         2Q4A==
X-Forwarded-Encrypted: i=1; AJvYcCWH6XM3gpii30+rochQO6jlw/XcaO1ToA8ffCmpWR8RTJzcZm5D75AliDV15qvEhCXia7BnbTKWepN0@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhbi83MgwbmIF4V4AD23qkJefJEWGSd2Syh7ZEhy+uKPTYgI4Y
	SvhF4AjLePOl+HkK6daWJdMP4dCZgDQFdyWofDQTcREU7q7Y9Hqw+h83EeG0US7iq6OOtBHXOin
	GgVerOi8jHB1CfFnq+1f4Rd4e+R4EvPwHWyxQ6UXERJuyRDa4JhdCPbXV3QYctgY=
X-Gm-Gg: ASbGncvCc72KB1yIP0SbhLkDqkGNXx/xSjdREr0b0nNv06rTnitqlZotV/SNChUPRgQ
	keVKCS7TUw6OhhqreSqP+xS3ZJgvUkIkWYKBFmNOgYpGNKqucdN5RKiiKtBhC39MOeufMHNiCm9
	RsmZKbK4ZUFGqH/YtYJucfxDpT6+iEE96RfCWDURotdV4RFOHuPVA0V+A8q3081hhfVj1hdq21w
	VtK04AJ/ov4RFi6u7V5SrdFm7BPMPtitRvZCBxwKqRWuxvmbBKQuZk2XQ4Wy4zAq2Ycgc3D0IHd
	gXSHFGMcVFniU7dsjx0AGbxH4Mz+2miyRNksnM9UK/tNeSuGq4PCIdvi4iJ6mVOrKwkYTGoAr3u
	UIAfv9yz6Z6wY/xRkmx4UJz7vdzX7jw==
X-Received: by 2002:a05:6a00:1491:b0:7aa:e4b6:b30b with SMTP id d2e1a72fcca58-7b79fa430demr1292395b3a.0.1762931569159;
        Tue, 11 Nov 2025 23:12:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFY+zyejqTbTSe5Xl2V9iUiJ4naYNAjMmnf3X3oAmBKtfAOBL3sWC+noWqs9Fc42Lm9nRtF6g==
X-Received: by 2002:a05:6a00:1491:b0:7aa:e4b6:b30b with SMTP id d2e1a72fcca58-7b79fa430demr1292377b3a.0.1762931568698;
        Tue, 11 Nov 2025 23:12:48 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c9632e22sm17949037b3a.8.2025.11.11.23.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 23:12:48 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V5 1/3] arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
Date: Wed, 12 Nov 2025 12:42:32 +0530
Message-Id: <20251112071234.2570251-2-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
References: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: tfxsdcXAWsO3eNpFz5TUpvBRv7DpgfpX
X-Authority-Analysis: v=2.4 cv=ao2/yCZV c=1 sm=1 tr=0 ts=69143372 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZtXvRwAlPpC7nlbJvkEA:9 a=PufZQI4-Y2q8xG1b:21
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: tfxsdcXAWsO3eNpFz5TUpvBRv7DpgfpX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA1NiBTYWx0ZWRfX90DgWOGwQDg8
 eLmge3bSggLJNi5Z4c7XM9aDAfKGqVucmvEIUs/4ykPDXbMQfqgOn4dcSRKxYNcma6EPVecJnTa
 A5BI0xi98XTBi9js4fOH74TJa2wxJtZhHjjtRIhs0Bp/7LhE7af07+smaAW3wpYkqbwDzIaJ8Lp
 2zBxr36605+b7hbK5Um6WQHqnYIpPVZR51K7L7eyHxfVdl2ByJwwTvXJ7z+wsSA5yfApf1btFFe
 ye8BTf8SyYjX+6I/hwc7eo54/S8q1pFWca97dyYjqvsWMMRXteLZ65nzPzq1w6QF6RxpA1hoGvc
 ut01TUjf5Qu5Jdq55QZi8Jplu2h1GYp+ylDqVIYuKkHfnYeMRxafPFDk+8YeTJc9CzGTZj/6qeY
 ueQMNG4FanpRfH9lAeX6uacUvfRfMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_02,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120056

Add SD Card host controller for sm8750 soc.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 54 ++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3f0b57f428bb..ba8c010226e1 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2582,6 +2582,60 @@ data-pins {
 			};
 		};
 
+		sdhc_2: mmc@8804000 {
+			compatible = "qcom,sm8750-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0x0 0x08804000 0x0 0x1000>;
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
 		usb_hsphy: phy@88e3000 {
 			compatible = "qcom,sm8750-m31-eusb2-phy";
 			reg = <0x0 0x88e3000 0x0 0x29c>;
-- 
2.34.1


