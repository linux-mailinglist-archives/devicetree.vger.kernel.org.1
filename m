Return-Path: <devicetree+bounces-184149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D96C6AD31A9
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FA6B1731A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 09:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10C5D28C863;
	Tue, 10 Jun 2025 09:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DOuY4gDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9574B28A41F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749547103; cv=none; b=HAv2NQ6kbLXWMv/bALj4aabOH8JnsfcT/LWnE/B7e3lGcYn80QAFnoceIyJaoWqUBBCbtohPtL+I6BfUq388Q3sJa34yvSXHcrLlbIWGQHnJc2PJiEA9YontpOfMvKd+oxzmO3uZwWzKcTaxUeys6+37GiJMBZ2rOyhKPFJyg94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749547103; c=relaxed/simple;
	bh=HUhoHi1MWPtGdUaOc881gyCv+iH4y9tcRtKU1bwDqHA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iT6ITlpjpXjomZkI8mzxf/E/fkwKWKxNI8zmT0h2iGFCrjR0VK/fX6F/d1NElXX08NglBWhA2bhHij4gSqyGSs7oLZwCfX3Iw8nOvSK6H3RLRSOqkpomlgshLzqdVRTO++CGsWgBrRYc0vci8AVLVkI6TNI67Yj46aChlbY6mdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DOuY4gDv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A6eMmA021159
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:18:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=7cC6/7ZRu9K
	NwaHrJD1RpFcJHBebpSHvwonwylon4MM=; b=DOuY4gDv8vmNF6+V98GKe15Hpte
	O8BQrCd+Uf+drJ8PzbkkcQBgg3DvOXg+AZCc8Or4FjMkuSv71ltA2i+XDj3kIvmO
	sRZyud0C3dIMZ+BnjAZXDQvloLKfhQL95j57V+YgjWG2yOGe6SgxrLndsyKh7/me
	SSM0eGLozpS5xAFqpGr5eTNk2cHBv0aiHqzMnBLUuDEE7OQKFQd7pnfP/R2yTS2w
	uesZmecsrB+DaSCaSWG1NObPmdE7mlQ0V/IMiJAzP4j7nUmlFRUwo7fbj46g8v4X
	zHOnwPZP6WbDfzQ7AG4bQ4msaDJYmextEhj7XgU53tPzVgo4SdXvY8W/KSA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476fmn8e64-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:18:20 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b2fb347b3e4so886034a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 02:18:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749547100; x=1750151900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cC6/7ZRu9KNwaHrJD1RpFcJHBebpSHvwonwylon4MM=;
        b=O4Wo4c0tmpoSX4gbiXVCES4KOsv7HOL2IAbLqbI5r2znQU55HcTrWEMhcISAKjQKSk
         wzysNeQODsq+EGYAvXr5o1ybl5q9OXq6JZDHAghjNF2NjulDX9/1a8MCCe66IJkE2mj1
         rnAYmeguSOaCK3KVjdhgKz9Zbilla52JDHWQVoU3Z1ayMM95jkLlGVG6IiyRnnwxizZ+
         w0UxDSyJqCwDHHd+q2ZW1y0VnkVVPb2k7gI3IVWJLfZ964g683O0mGH9YXRRNTJtVLbc
         gDDYKPjLvwLm29I/ToR9RoJ9lj7S+j8G/ucdD5HXSpyCO2nmxSfOCPrChHJUrLCNKSH/
         Vdyw==
X-Forwarded-Encrypted: i=1; AJvYcCW0AqBt6uTX9sP4eSCcYeLKCqOvG79t6felHF2ZbGzmt8wW6I72nWjHEMfY0cDqzeJHYOevAO5V9jOT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2hV8FnOfXj9Pl0kayKnsZsNMWosUshY5EdNl+/B6eNvDwdtXH
	gfIQa+MZU/zLNMomHwrl/so8ZfrK2XWgpa+rGdNgurr8Iq5m2s4yF00ja9Rc6xWTumDKmv0rxcU
	11kxFPf4oV2Uaypa8FzReSVzjgpPtDfdid3yvveKzoJNG53QCcknqGWsFmrSJjwDO
X-Gm-Gg: ASbGncuhfbQGHNAWR9JwPgrGeKBkm7ZpnYQJfLmbnyWllY/vzova9Khl1kixVGyaxnX
	+QoC5jzCzv7UtYR6l0HToYrEHGB9AT54KP/A5Mqv5Lq6NrLEzKzxhhlxJ1XK2lN5/ol4n3vZ7lu
	qcJTyF8TEyf6fNeAVGh//7k+F9FdUJnkk2hYNUZpE6JIz1KBVca3Cilk0+IkBZ6jCy7c+k/x9Wu
	TWKMdiuv8OQrDCPYH3MnJDE9sA4M/wJAGbpy1fjUyfkwXlLHii3MnNBmhIxvQTUxFcq5wPjRjfK
	jM2rp94JH7tB+dn2en/bokyd8Vdrb9PAWoJV08aFLAmBkTOGDP2vZODPdZRj
X-Received: by 2002:a17:903:1b45:b0:234:c2e7:a103 with SMTP id d9443c01a7336-23601d82e8bmr240817975ad.33.1749547099783;
        Tue, 10 Jun 2025 02:18:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtD01ys/IAJLoEmeaCTfMoHAoprVb/k5dZuU12KwjLOp6GW+Z8kpx3SnIZJJP7azlyc6ucSQ==
X-Received: by 2002:a17:903:1b45:b0:234:c2e7:a103 with SMTP id d9443c01a7336-23601d82e8bmr240817685ad.33.1749547099394;
        Tue, 10 Jun 2025 02:18:19 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603d14206sm66951195ad.34.2025.06.10.02.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 02:18:19 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 2/2] arm64: dts: qcom: sm8450-qrd: Flatten usb controller node
Date: Tue, 10 Jun 2025 14:48:05 +0530
Message-Id: <20250610091805.2997546-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250610091805.2997546-1-krishna.kurapati@oss.qualcomm.com>
References: <20250610091805.2997546-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: F-SPvhNX5ei8Bp7tgC_aAQmQrV7M8XKn
X-Proofpoint-GUID: F-SPvhNX5ei8Bp7tgC_aAQmQrV7M8XKn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA3MCBTYWx0ZWRfXxmrm79BZBZe3
 TgkWtr98Yw3myennwe0jiHhI+V18TT1ScFkqbY0sH9QlubHjiyDdDhwLt5hI05CQgvKVn1jheb0
 Ify8GXk69HplYnylsRxS4Dnvad+c9bYgTt+Awk0XORrwy94AE2345TntKMrvtfWRc1CVTtwn1fm
 d6OFMoZWAeYKXXuu2YGCe8YAI071oQnZJdp3oMrl/0mEvsAf+QrJfojC4CCTwyAIjX7rJ4ngN5+
 4wafEwBtOk3lX7KJmuzzkeG3S+uLR+vyaxq5j8Qqwl/WNHA0pL5EtpfKMTjqlD9CUfrttFr8U2c
 uv7HJGkEa2AMqYtdtaTVUhYd4tiMkYoQ0a27Zs8vEIuLigYUxr5qhqB34uYy/0kmzv2dIhRbhYU
 LoVBcWOFBOhK2k+PbmTsXJdf1l4PvzueMgXZQ8AQuMF2i52/KIm7UOCHAOppXK+UCOOBxt4z
X-Authority-Analysis: v=2.4 cv=K8wiHzWI c=1 sm=1 tr=0 ts=6847f85c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=gStOZqofneW8nAW_eEwA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_03,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 mlxlogscore=754 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100070

Flatten usb controller node and update to using latest bindings
and flattened driver approach.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 60 +++++++++++++++++++++++--
 1 file changed, 57 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 0580408485eb..bd6cb895b65b 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -500,19 +500,73 @@ &ufs_mem_phy {
 	vdda-pll-supply = <&vreg_l6b_1p2>;
 };
 
+/delete-node/ &usb_1_dwc3;
+
 &usb_1 {
-	status = "okay";
-};
+	compatible = "qcom,sm8450-dwc3", "qcom,snps-dwc3";
+	reg = <0x0 0x0a600000 0x0 0x10000>;
+
+	/delete-property/ ranges;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	interrupts-extended = <&intc GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
+			      <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+			      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+			      <&pdc 14 IRQ_TYPE_LEVEL_HIGH>,
+			      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
+			      <&pdc 17 IRQ_TYPE_EDGE_BOTH>;
+	interrupt-names = "dwc_usb3",
+			  "pwr_event",
+			  "hs_phy_irq",
+			  "dp_hs_phy_irq",
+			  "dm_hs_phy_irq",
+			  "ss_phy_irq";
+
+	iommus = <&apps_smmu 0x0 0x0>;
+
+	maximum-speed = "super-speed-plus";
+
+	phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
+	phy-names = "usb2-phy", "usb3-phy";
+
+	snps,dis_u2_susphy_quirk;
+	snps,dis_enblslpm_quirk;
+	snps,dis-u1-entry-quirk;
+	snps,dis-u2-entry-quirk;
 
-&usb_1_dwc3 {
 	dr_mode = "otg";
 	usb-role-switch;
+	wakeup-source;
+
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			usb_1_dwc3_hs: endpoint {
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			usb_1_dwc3_ss: endpoint {
+			};
+		};
+	};
 };
 
 &usb_1_dwc3_hs {
 	remote-endpoint = <&pmic_glink_hs_in>;
 };
 
+&usb_1_dwc3_ss {
+	remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
+};
+
 &usb_1_hsphy {
 	status = "okay";
 
-- 
2.34.1


