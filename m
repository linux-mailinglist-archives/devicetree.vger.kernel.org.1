Return-Path: <devicetree+bounces-248048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D82E8CCE56A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 04:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8EE3E3087F77
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 03:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D1F2C0262;
	Fri, 19 Dec 2025 03:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UYz5L10w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ao3/XbuU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FBF2BEFE5
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766113845; cv=none; b=kJ5371sCzCOTIBTBwabCC5bDcaoXnfZf26967cOYqB5RhazavGFQNEwnQafvX9oSCUOaGxUOUL6vQLeFruznovh/1KJ1F66MfxwaTf8CagUhiBgt04sYLQUKURifdcrpCRqZcHHZ9pHiMExh1nioElsKAaUiZGgL6HtnyCqWJjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766113845; c=relaxed/simple;
	bh=7J3OfhpcMN3usj6e7yy655o5alMRg7BXWR5YG2graDc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=O5SXdlawSeMZcvfCVWI47Ugnj5yypk2u4i+XdAvtFiEw0ldOx7Qj/8ERfGoyDntKZ6PH1FlmwR2Hk2ytcRkM6M78OS/KuOiyoeD/L5n0GR6vJnFD3+vW7oGVYMvDvO4kIqJY1dIrdXhNlzKyHdmtMqBORf5YUvmikn6N5QIFLiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UYz5L10w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ao3/XbuU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ2OqEc3714750
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=wPr4qx5kQw9
	KkCJZZxqCC1xV7L+Od/j0J2QhUJPv6Pg=; b=UYz5L10wRkdprNIQQO0FRvb5e7p
	6ameCu1wwqkOqFhq0cVEuvhc/BmdsK0ma97TFUGUxKaXSFw4bYp0MkO5fBPuzpSO
	uCP4kKmufSzAW2YrXnCBPQVpryXmb2xdc3Yfvn+d1Itla76a6ky4hXUabzOm/xaQ
	/v37xB0D84tuiD26lCFFZKF//OPPGygCSZtttRupSpXWNSr5yimT6KjTyM5dp7kb
	urXw26f2tlUlty6KN2dcEFx5E4TjWxOCR/kuPxF0lFLBWTvKm46A0o3pQCkR0WPt
	Rx4PYPFNNBYUp+h9zfYUSu8TPwHa0TgLtln3f+S09rh47K2JsDIKIGgzRpg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r29h0pm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:42 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34a9bb41009so1879607a91.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766113842; x=1766718642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wPr4qx5kQw9KkCJZZxqCC1xV7L+Od/j0J2QhUJPv6Pg=;
        b=ao3/XbuUblplbSuBDKnWPBWbnU8VztT1pLaMNNL2hhJUlX9WR4p+5EjP7iy/h9Pqle
         Xxr+IeUPQJof4DmAM+FhAMzxC01SfC+wvEmg0xVnXRyZST5e4qriu6c7HYgeqjP0ptAb
         1ptiK5Xrp2YSOfw5fSYF84U3Xv7ENcmmLeX23rhCO1NErRypmIKN3nFOZcaPknGAi7Vj
         fv/TYEpdYh3htJfuze2rIcgiCTmU/6KkhAHNrTtr9elbVBVk7Xjq3oHWomd5EXp0djYR
         lau+dwdMaxQc76Fu32uI1J3h5TGY45gsxf1kmmQ67Mgslwc25NC9JPyifgqe2a8R9Web
         uC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766113842; x=1766718642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wPr4qx5kQw9KkCJZZxqCC1xV7L+Od/j0J2QhUJPv6Pg=;
        b=oO46ORapgH6BJY9F2LHBECEDKhUmJfhw2/WiQJ/mf3rrKCxRHxGZgsKKE8odyb8GHX
         uydbG4H1bqP3St+fO7CqFe4SzJbpDztqjTgnwFw4Ikwhro37/0pNQFwDQU45L0LjWcMR
         FXUHD9XNJSIrFg10Kx85t62vrVdfRjGy40d0GUgSypU39qhY/kJcRojWvkIyJ0pzQ8Yw
         FeZgEyGXPtid4dGaEoX99EORDvXUHcNV3c7Je7ANu0VwluPsjkmI8HSfDOOBA7IUUhGL
         vL1LDbHDIQC+MJdYEC/iOmBLqTyaDQPBMOEghCJJwNhXFv8joheQ6aJTXqmQzQHEQg5w
         gDNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUeZlVNp2290dC/WkkBzNM7eLBtKCLnnIS43F83z+V6uoIzt5VXHsJ/gkpphMbLhCjOK5UsKxNtfdy@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk0d4dxsgXd3f8uL9YcYeYz69YvGTzlxmi9xca2cziPS/lMsDC
	Rn1iu6pJSUyBX1HShgM54ijuzw1sHCS9Xdl3cyD+ut3bwGT3VFWEBp8HWybB75os5eJlgDyJIZ9
	J2heVXIzhWZADc96YQuTpOOqDgIH6eKPsBVE0GymgSslrTDEdm9QelVlwxZcrR28+
X-Gm-Gg: AY/fxX7Cuk8exIDQBTKQas7CbsXJsO5Kn/AgVpFQgI14Lbj/PPeUO4IEROJz7P5WYnd
	uI6d/LDYv4q3/nNdznx0BAtnUu/3R19BHKkyEzAll1ca07vjg9O8nzidsVK06lpDmQyR/qlo/t3
	xstqEIYqvw9/Ud17LYJio6ywaz/Fn5NFKmZJJ0Y3qDaP4iSYv9xZaYh5V7XYSWHBteTUEyEU830
	JMSTzChTVaCzwIsGblJ7RrsCsj5NvD58IeCSupqudiazePdHVmxr0Bpw7SAwjtMW1iYDMAWgaRF
	T8Htvkwxxwq/0GH7yi+GChC5bKnaY+EvkyJaeS4nmSVAASBrGTqGgAIJesdlnzh91I4+AM9g+A6
	MzlCE9zlf5KlAPk9OL8WwooY2LWe+ltcfqzP+xTrpYiaknZNA3TWtDA2nC3g8mMHdoXVotASCQk
	HosTSJ5TWYbNDCZdGNW9i5tZJ/Kb5r8m9W6a+/oLo=
X-Received: by 2002:a17:90b:2251:b0:349:8184:af8b with SMTP id 98e67ed59e1d1-34e9211e56fmr1462863a91.7.1766113841772;
        Thu, 18 Dec 2025 19:10:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE1ohyKu0wlrhZJyWuykWwQf29pdipu7v8R1vo40NiI/WSDwod2UcQfPHldQJMm5dcl8h3eXg==
X-Received: by 2002:a17:90b:2251:b0:349:8184:af8b with SMTP id 98e67ed59e1d1-34e9211e56fmr1462836a91.7.1766113841309;
        Thu, 18 Dec 2025 19:10:41 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d656casm3737867a91.7.2025.12.18.19.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 19:10:40 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        George Moussalem <george.moussalem@outlook.com>
Subject: [PATCH v8 5/6] arm64: dts: qcom: ipq5332: add nodes to bring up q6
Date: Fri, 19 Dec 2025 08:40:09 +0530
Message-Id: <20251219031010.2919875-6-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=P6c3RyAu c=1 sm=1 tr=0 ts=6944c232 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8 a=wvtPTOKNElVcqRjrzWMA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: J6n-UlfInaoeKPxlxTirb8r3oTrhUywH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDAyNSBTYWx0ZWRfX7KpWWvN+M+6D
 6zvB7PDlg6d+1CiGJSphMfGV6EHhoEZDqlPnRGMsLw2ZgaaQdG8WJk7pfEYj0YWB1pUjyAtE4bL
 VkyAIM9x79OsiPd9kHyisdm2Q/B+hMHHyN6vVF77XZeKkb/z9aoU2aKAuMyK9lHbwRgUSbwiWFL
 Ygsa2t4I82PwG9bNarI9s+yDQJdttQfaZAqgYIl7TUXIkDbPLgRiKyBlscdab4jObo2FlcZBbiP
 0sL8jl0LzY8TqoBRWR34jaK/DqkAwqDsEqdfvboS1q36loWqafBYX2V8JxJ83aI7ATjPTS7QF1f
 N0tvspKSAOM7Rs8ui9NrbxgUmLRLNN1ES4eDJhDej/0E+EdC/tGqRLiKNcjMuFqDzOmiOsIlZoS
 KJSaLt3Ol+Y4TO73YtRjYlWMgGCNl5vnOOJEQTZUD7KqbAp+dp1702h8B6/QTx0kQPHng5dF2To
 KAw2yV/8U7LJCsBIHPQ==
X-Proofpoint-GUID: J6n-UlfInaoeKPxlxTirb8r3oTrhUywH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190025

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

Enable nodes required for q6 remoteproc bring up.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 64 ++++++++++++++++++++++++++-
 1 file changed, 63 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 45fc512a3bab..c31b6906355e 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -2,7 +2,7 @@
 /*
  * IPQ5332 device tree source
  *
- * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2022-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #include <dt-bindings/clock/qcom,apss-ipq.h>
@@ -146,6 +146,35 @@ smem@4a800000 {
 
 			hwlocks = <&tcsr_mutex 3>;
 		};
+
+		q6_region: wcss@4a900000 {
+			reg = <0x0 0x4a900000 0x0 0x2b00000>;
+			no-map;
+		};
+	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 418 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 9>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		smp2p_wcss_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_wcss_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	soc@0 {
@@ -586,6 +615,39 @@ frame@b128000 {
 			};
 		};
 
+		q6v5_wcss: remoteproc@d100000 {
+			compatible = "qcom,ipq5332-wcss-sec-pil";
+			reg = <0x0d100000 0x10000>;
+			firmware-name = "ath12k/IPQ5332/hw1.0/q6_fw0.mbn";
+			interrupts-extended = <&intc GIC_SPI 421 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_wcss_in 0 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 1 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 2 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 3 IRQ_TYPE_NONE>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			clocks = <&gcc GCC_IM_SLEEP_CLK>;
+			clock-names = "sleep";
+
+			qcom,smem-states = <&smp2p_wcss_out 1>,
+					   <&smp2p_wcss_out 0>;
+			qcom,smem-state-names = "stop",
+						"shutdown";
+
+			memory-region = <&q6_region>;
+
+			glink-edge {
+				interrupts = <GIC_SPI 417 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
+
 		pcie1: pcie@18000000 {
 			compatible = "qcom,pcie-ipq5332", "qcom,pcie-ipq9574";
 			reg = <0x18000000 0xf1c>,
-- 
2.34.1


