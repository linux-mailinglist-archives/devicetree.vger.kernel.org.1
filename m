Return-Path: <devicetree+bounces-260016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMsGCFXgeGkGtwEAu9opvQ
	(envelope-from <devicetree+bounces-260016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:57:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7EE973BF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:57:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD623303B7D9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AEFD35D5F5;
	Tue, 27 Jan 2026 15:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DfpdHJil";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y3Bl4A+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5E835D617
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529358; cv=none; b=tacdjGc9uMbOsqwr+TQw/XaZ+8xojG5pU/w7y5R/5QywabsHWXBlMj3y+ROIe6LqdZzb42nh3yhZ2S/DjmPDBM3Htqj7SkkyucURFdAKYI8N9sGc56i5VJPjTsEq6wO2oFUQEqCp/QFQSseWDNaxtT8etzIsXDKIqxE/HqidkIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529358; c=relaxed/simple;
	bh=1StnUsfEBYbAe6zvMNROb4Ll81Kf7NNz3srAQfRogwQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=osGkd2UF/OJGIN5q77JJMHowNpB6r5nbtWYaJti/LoMyrS2jEMUFmo7INaMy9X9OmrAnTK8y/AFAUEcJvvTt7niMSLJFqyEloc6vzYBMgg7M9xo9QHDkxHE1V6TAv7dTIy9DWpGPDE99Z4XtkX22eV5mkdVttGYU5GtBqtzNW9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DfpdHJil; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y3Bl4A+N; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RDJ9q7658432
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6WQNpNa8lt/
	gGv3nvJ/kB4/qhhWbKQl2Il/47oBIg+k=; b=DfpdHJil+x7xCw5BEH2OrjJXRpk
	AxQO7oj5zPYRUDfgN3nwlul4jW46zp63UN/Mh1BoyloIt/20QYwYxfWKvXPQ/rh4
	fEXOfFPfnpMt5dti0BiiHkpDzwYGdIMHxuS6FFn6MO+41CkmDuuClww89ZeVQH6C
	CN42Kys+B74ESFp7WVSCMIrMqJR8HxIpodogRGSzrqEwfeB8jr6TJo5DEGC8ePct
	lTtTTodH1bak07FGVptwoRjC30XUoHqTSOlyELa6oLkNFpXrHSBduEjGwGNkeBQu
	ROQKG4sq6zSQ17/m+Tj6YT67ZEBPRmjBC/hMlzcq756GDsNabhimJ4DIInA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxryn9pk0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:55:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c48a76e75so5203801a91.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769529355; x=1770134155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6WQNpNa8lt/gGv3nvJ/kB4/qhhWbKQl2Il/47oBIg+k=;
        b=Y3Bl4A+NjeP1qA4cCX0DNzOy2i0NwQ49PnnhVAeO6PQP96R8wK8U9jivHR+VYNMXg4
         g7UcbeSaUrf3j9FTcenhs1awWzcK+hc18SNhAX1oyhfqRUyaUoYpJvIbmB004VpEs82a
         8fMfU5GLMyRyjCXV7CjuC7ilzIGsLU3hUr2hbKeLS/xD3AVjJjx2eJccFRLG7b1yeiZa
         2blnXkwhiqQNM+W6rVL+kedxzeATvOfuBj4xQJVMKJSaN85Gy9bXQGNLALAvUzSBRoYH
         e1vlgYsBkPT46nN4gAc727sTwti4NjwKX5hUO9OxQ+hAuUxGipSYNIdLfnxDJ+qPpobk
         D8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769529355; x=1770134155;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6WQNpNa8lt/gGv3nvJ/kB4/qhhWbKQl2Il/47oBIg+k=;
        b=NdgxFkegYEZAe6xLrxw4myw7iNqsHPXhcpLyqKm3TuNP1FdEJVlsh3YDumSiXyAJd0
         RKslvNf8MrnPnV44oP9TRZUZTzEwr1g94yshL6KB8m7iNPaI++Lwsph5bbaJ150/gosy
         freDPWm/i7UcrGRiuzva1qro9ipS/xwOJMXGYPforq4zW+0uRYpVT6VHVzfvxLKokoFl
         CPP8mLqvfxQ1WvTmqBJZRsu3R3bP4x4L85Mu9aH1HED0ezgCqgfp30uiElZMCrg6lNhZ
         E3Kv1QdWlzvz4x59V7Vbt0Azgb5wiQYNQELvoxPsGlyS+rnvzkzSCAZULhFOfY5dkMpw
         qk3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU16m0W18WY4O0NT4lQbUPRKKz2erzgnzq8k4zDbX0WIgw1xtESvD41TV3qDRqobmCDM9NFHohF4HpJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu+OkHfxPSOlwqb6e3PF/WrvXVQ8Lu9s9x7Ccgcg9HDtfM8WT1
	bDDvtxxcfa2AktyhLOeP7WzHCY/4Eeb46SGEzjwrcLD/8eAWev/dJRM6zBt/ShmWzxnE5y3rvUj
	YH6A0sw6Cds8CRDoiGmVawjK2+prqsNDNJyeYeraelOIni/Q6ccVBWskMum8k4//s
X-Gm-Gg: AZuq6aJkJ5Y/2naxilbxNuxeKpqatVv7LMQeNKi8AQLmlyE7dhIBt3apDlTRRahBdlY
	xRiidMJpOo1qmz46MNMgJlX4AjVjgx2IeeTCjCAXfnbJBo2bvQFfvy6X4yALljlrbuTpXz4wPKE
	rEE1s9y3C3b5THrO23zl2K02MEL8uSIyN9LkslEKs4n7wTKy2wXixtiSARowjK6ghURZE14sRzI
	f/p9PrtqiCws99aSbiZblNdqA2FmBjPhZKu3863AqCqpb3DHNO5zxaaaaR1y8M4mcI6BIfolcEs
	0Gxp81SKcDJB7XXU9Oj0IVMUts3aYoj3LFAjnZ1ulAItvjMmC3ljBW5Kdp2C9fgXmptkjqqYOD8
	Nmrza8/qftMLpLxbrixrcKRehvozEOghhE9fx+UR7ZX2HRPU=
X-Received: by 2002:a17:90b:1c09:b0:352:ec7b:3cc2 with SMTP id 98e67ed59e1d1-353febc19d3mr1964610a91.0.1769529355395;
        Tue, 27 Jan 2026 07:55:55 -0800 (PST)
X-Received: by 2002:a17:90b:1c09:b0:352:ec7b:3cc2 with SMTP id 98e67ed59e1d1-353febc19d3mr1964588a91.0.1769529354759;
        Tue, 27 Jan 2026 07:55:54 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536aed7802sm6131475a91.0.2026.01.27.07.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:55:54 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: talos: Flatten usb controller nodes
Date: Tue, 27 Jan 2026 21:25:37 +0530
Message-Id: <20260127155537.4088709-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260127155537.4088709-1-krishna.kurapati@oss.qualcomm.com>
References: <20260127155537.4088709-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: z-dUZ-9PAKTZVpZV1-jyuHtDuoR0gB29
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMCBTYWx0ZWRfXyDHP0yHX8P8w
 ZBJIPQIrGYMgR6+qPyTurR1okce3+fGvVEa8W4teAMPeE945ReZ5hSUNXXcuwE4hTUxWYs7wHtg
 fOR12yHgGVTH/8nNBCAN2bQTx7UtVpH+QbYceQBsEPOx9MLOJ9fDxcPUezQqltmKdL8KZ3crL3/
 qaXKcDeLmKgi1WalEDQcvRoUxUrDueRODgBesdh1mMbAplZUIqtIvmCY0hp6oC50R7fZP/SR9WB
 0vPfxD2fnOwq/Fs8VjF7JfFZiZNhXKddi0C6x2O5iC9tVnjHn/OoWD7UFmF7kmj9pxcisColEc1
 UQJga91EmRVjitfi+zlVlckQLqIQeWLnyVyepcgrVrNKIUq2lpQ0FASae9sPFrlvZI+XHfc9VYm
 pGpXOxVVbN5QAynzq47JZX5mkxGhTyOnogOoWMzYzT1DFUlJOLbrFpVvdOJKT6s/zA6BpuWMKvl
 wHegkrBhZ6D0/7ieofw==
X-Proofpoint-GUID: z-dUZ-9PAKTZVpZV1-jyuHtDuoR0gB29
X-Authority-Analysis: v=2.4 cv=FsEIPmrq c=1 sm=1 tr=0 ts=6978e00c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0uSEg_KuEgkda8-bNJ4A:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260016-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,a8f8800:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,88e8000:email,c263000:email,a600000:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8C7EE973BF
X-Rspamd-Action: no action

Flatten usb controller nodes and update to using latest bindings
and flattened driver approach.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 12 +--
 arch/arm64/boot/dts/qcom/talos.dtsi      | 93 ++++++++++--------------
 2 files changed, 42 insertions(+), 63 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 5a24c19c415e..4f5dca49e15a 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -655,11 +655,9 @@ &usb_qmpphy_2 {
 };
 
 &usb_1 {
-	status = "okay";
-};
-
-&usb_1_dwc3 {
 	dr_mode = "peripheral";
+
+	status = "okay";
 };
 
 &usb_hsphy_2 {
@@ -671,11 +669,9 @@ &usb_hsphy_2 {
 };
 
 &usb_2 {
-	status = "okay";
-};
-
-&usb_2_dwc3 {
 	dr_mode = "host";
+
+	status = "okay";
 };
 
 &ufs_mem_hc {
diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 315dbf3d9bed..5e004967ae83 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -4486,9 +4486,9 @@ usb_qmpphy_2: phy@88e8000 {
 			status = "disabled";
 		};
 
-		usb_1: usb@a6f8800 {
-			compatible = "qcom,qcs615-dwc3", "qcom,dwc3";
-			reg = <0x0 0x0a6f8800 0x0 0x400>;
+		usb_1: usb@a600000 {
+			compatible = "qcom,qcs615-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a600000 0x0 0xfc100>;
 
 			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
 				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
@@ -4507,54 +4507,46 @@ usb_1: usb@a6f8800 {
 					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <200000000>;
 
-			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH 0>,
+			interrupts-extended = <&intc GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH 0>,
+					      <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&pdc 9 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 8 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 6 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "pwr_event",
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
 					  "hs_phy_irq",
 					  "dp_hs_phy_irq",
 					  "dm_hs_phy_irq",
 					  "ss_phy_irq";
 
+			iommus = <&apps_smmu 0x140 0x0>;
+
+			phys = <&usb_1_hsphy>, <&usb_qmpphy>;
+			phy-names = "usb2-phy", "usb3-phy";
+
 			power-domains = <&gcc USB30_PRIM_GDSC>;
 			required-opps = <&rpmhpd_opp_nom>;
 
 			resets = <&gcc GCC_USB30_PRIM_BCR>;
 
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_u3_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+			snps,has-lpm-erratum;
+			snps,hird-threshold = /bits/ 8 <0x10>;
+			snps,usb3_lpm_capable;
 
 			wakeup-source;
 
 			status = "disabled";
-
-			usb_1_dwc3: usb@a600000 {
-				compatible = "snps,dwc3";
-				reg = <0x0 0x0a600000 0x0 0xcd00>;
-
-				iommus = <&apps_smmu 0x140 0x0>;
-				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH 0>;
-
-				phys = <&usb_1_hsphy>, <&usb_qmpphy>;
-				phy-names = "usb2-phy", "usb3-phy";
-
-				snps,dis-u1-entry-quirk;
-				snps,dis-u2-entry-quirk;
-				snps,dis_u2_susphy_quirk;
-				snps,dis_u3_susphy_quirk;
-				snps,dis_enblslpm_quirk;
-				snps,has-lpm-erratum;
-				snps,hird-threshold = /bits/ 8 <0x10>;
-				snps,usb3_lpm_capable;
-			};
 		};
 
-		usb_2: usb@a8f8800 {
-			compatible = "qcom,qcs615-dwc3", "qcom,dwc3";
-			reg = <0x0 0x0a8f8800 0x0 0x400>;
+		usb_2: usb@a800000 {
+			compatible = "qcom,qcs615-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a800000 0x0 0xfc100>;
 
 			clocks = <&gcc GCC_CFG_NOC_USB2_SEC_AXI_CLK>,
 				 <&gcc GCC_USB20_SEC_MASTER_CLK>,
@@ -4573,15 +4565,22 @@ usb_2: usb@a8f8800 {
 					  <&gcc GCC_USB20_SEC_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <200000000>;
 
-			interrupts-extended = <&intc GIC_SPI 663 IRQ_TYPE_LEVEL_HIGH 0>,
+			interrupts-extended = <&intc GIC_SPI 664 IRQ_TYPE_LEVEL_HIGH 0>,
+					      <&intc GIC_SPI 663 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&intc GIC_SPI 662 IRQ_TYPE_LEVEL_HIGH 0>,
 					      <&pdc 11 IRQ_TYPE_EDGE_BOTH>,
 					      <&pdc 10 IRQ_TYPE_EDGE_BOTH>;
-			interrupt-names = "pwr_event",
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
 					  "hs_phy_irq",
 					  "dp_hs_phy_irq",
 					  "dm_hs_phy_irq";
 
+			iommus = <&apps_smmu 0xe0 0x0>;
+
+			phys = <&usb_hsphy_2>;
+			phy-names = "usb2-phy";
+
 			power-domains = <&gcc USB20_SEC_GDSC>;
 			required-opps = <&rpmhpd_opp_nom>;
 
@@ -4589,32 +4588,16 @@ usb_2: usb@a8f8800 {
 
 			qcom,select-utmi-as-pipe-clk;
 
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_u3_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+			snps,has-lpm-erratum;
+			snps,hird-threshold = /bits/ 8 <0x10>;
 
+			maximum-speed = "high-speed";
 			wakeup-source;
 
 			status = "disabled";
-
-			usb_2_dwc3: usb@a800000 {
-				compatible = "snps,dwc3";
-				reg = <0x0 0x0a800000 0x0 0xcd00>;
-
-				iommus = <&apps_smmu 0xe0 0x0>;
-				interrupts = <GIC_SPI 664 IRQ_TYPE_LEVEL_HIGH 0>;
-
-				phys = <&usb_hsphy_2>;
-				phy-names = "usb2-phy";
-
-				snps,dis_u2_susphy_quirk;
-				snps,dis_u3_susphy_quirk;
-				snps,dis_enblslpm_quirk;
-				snps,has-lpm-erratum;
-				snps,hird-threshold = /bits/ 8 <0x10>;
-
-				maximum-speed = "high-speed";
-			};
 		};
 
 		tsens0: thermal-sensor@c263000 {
-- 
2.34.1


