Return-Path: <devicetree+bounces-248047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D00C4CCE53A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 04:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 450673011319
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 03:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9DB02BDC03;
	Fri, 19 Dec 2025 03:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XS9UdRMk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W7unrF0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D985273D84
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766113840; cv=none; b=JmYyNEuIwUmYhBkMTPWU5Un0sKEV/GknOQ/ZnJ+2fTT6bYSEVZ6Zp/ySdGq7enxnnesJbt7jnLL0cd1IkKWAtGuzlNN0Xg2mf8m4I/I0OJ0GIkEiDfH+MSiTJjXd0SZQNPJLvLqB5EB+9kkNhrZSwL/N1TOcKUuhpxc9kyVLenY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766113840; c=relaxed/simple;
	bh=blcX1nouYNXC6ol/gZDD5PA42jcTWn6mTJAJP1lU+68=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YXtYAVs6sJXrTTcUblm9hyf2tbiVOhp11mIKEGLncT+bqR/SJPZGq4hzHSIlaHfsgwKZs1/u85gMzZojoX/zEiWJNo1VKjnxP3rAYvSZbHMvLgbpQKRHZ6kas0CXpVSUVZUdcCQba/1sJrVXgrqJ7l/mp4PcEPJKuEw6Umiu1/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XS9UdRMk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W7unrF0Y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ2Nv4Z3655238
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JegHHkHOmY4
	/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=; b=XS9UdRMkax9gRv77X7CYJ6P1iMP
	WRx0DJWWq8aF8xHscn30bhYBlq2VYNX7JlXzH+wttHDUBc/4v+sAPR7wwxDG5iBJ
	/l4ul3+N6lDbVs+oWMhVShVv9exKZLm8hyReMaNNVMkxuY2Gb3EZXuWaBcLKeckr
	snz+SDqu36i2tIj/cq96tthzW8GH1DM29aIdzFRFdieygHJByL2hGe+WeZv4CHRS
	zPXZxx5+oQhkrHULkqkKMpuwbatkv0ThC/lCbFvrmLsIe9qn1kAu51mW4xkEeBiC
	jqY8PQasX15JvPaqlDeT8zgiZGQ9uhAE0o4MtR0kdpXmXGX57ERIb/BDZnQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c111b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:38 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34ab459c051so3667655a91.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766113838; x=1766718638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JegHHkHOmY4/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=;
        b=W7unrF0Yn/4QgCXffpa/vNEeMbteQVkB+Ujoh+rBXvKBfIH+sXXTOKK1NjXxahmSaN
         MaG9YL8c1hpBLq5ZYUcNYZfQbU/SXI6QcGSms4RjBOSRbW2v39oLch/phGsw1YfHh1NW
         1fIQkoC1jMmGOw+IheZ42Rs91A1o5jMPIUa+lW0AbxP3xO4MsVBtLLpfucmteIGnonhi
         JVpbUm3R3j2gL6MT3xE9payyenyVOLifDYK+YlSM7mYR6xO09Xp1ygtNPdzh0RnVN7Xe
         EO2usY67MO6Pu15ZCCJe1mzF7Fb2ustmPGxkoB2lBXAtpimwKIZ2mHbU3dBDoSTNmbql
         lQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766113838; x=1766718638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JegHHkHOmY4/gMghUonjYHVmA1DHiOImuLkaeQyWjyA=;
        b=AqDhgrZ4yNwNTR1W5SacsvmQ1xtbpi8aYiY8ZWBBcdC8IzwVBIAqyM1j+9VOxHaVEl
         ZTMp8iQ0A77jKpaMY1q07k6sbcdSwe6yDc9chgE5n0+XgY6wskM9/QfQXWQY4f9eUDjF
         0QtaSa5RD9Mj7EAUJh0xv3Wz4eFvq4chQOvMKHm0UENu2y/sB2q2gHsk2mBvuqEB86MD
         J/qwqdB5ZeOdmIS8HZxO2NtehcxMe/Lhmd7sHKfUguopHectNys9/pdStkpiMzKTl64j
         Tsge++sMiZZepaYc9nc/TIlsl/s9XhWGIew7e+k/ktHSxWIcvMI6lVlJROwLTIhrM1ZJ
         1COw==
X-Forwarded-Encrypted: i=1; AJvYcCWn2HiGDsDTxfCnS8MmtVf2Q5VUcbOhYpJwkql6J7UE5ijyonjPuZ2NKeMkMQrJmBjXSXV1Qv82hjTn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1wTZ9KxJASbEk6ExTwOzae0S9JKJO9N4wJXvqfNJwZEeohVpN
	+5ZQbshAI/OJnJjlfF0fGPYo+/Lr3hl6cxnGyAT1Lh3xi3H658kAs+46Kxwat5K8QlJJ7Jr+MDs
	w4YJGT0bIGAuDcwRkySdAn1V8SCOz9iWIOLBF9heKvDAeV5vtJq8ePIABUnEMJDFf
X-Gm-Gg: AY/fxX5YEL7Mh+4GOvV5OciK1wuYtcfgg8paVpjfU4prKzcEHOmFsUzZASkls1BBvyx
	eVSgl1b+S5tjVbeZ0RaT7q9iDOouwtHL1sLrmyhYHCiSatVGH//VzmgQMV2cbVGlwdWHnzsgoMf
	aaVXYwcy4f5Bhnwr4J9kW8qLXDmr6X1wBVgbgHVbN0vdnSFnZekH0gVdH1jR3F54B5R654jsM78
	kGTVMMDapXdbq063n8/6XZl3b6W4N36LdqsFvum4ee20EXT5O+LQ933Sxu0hdSsvEQzj/w+hjCg
	obxSqUM7SAj9mtBKRw9kKytTrOGAy5zXaNz0dpmvJP+P5jQQzJcoHqtkU6xKnJ2krsIjtmRAzr3
	L/sDyiC8+8v2yhv+VVqQ2+V1ViMA2Kjxw9SR5NT3xd6lZR26lm8I+DbrJFeAJx0pjmShS49OAsr
	7Vxv/1HhGiEf9eeqxA1NtCMfLgR/l07I/jyAtEWy8=
X-Received: by 2002:a17:90b:3d0d:b0:32e:38b0:15f4 with SMTP id 98e67ed59e1d1-34e9212f34cmr1468799a91.7.1766113837729;
        Thu, 18 Dec 2025 19:10:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjoO7rmj5mTwZVDn+RLFWw3ODRMf1ImDvCZ7pNDu2ZSpIPdZitTV6bPAc9UBCjfuvIlOSvWQ==
X-Received: by 2002:a17:90b:3d0d:b0:32e:38b0:15f4 with SMTP id 98e67ed59e1d1-34e9212f34cmr1468776a91.7.1766113837333;
        Thu, 18 Dec 2025 19:10:37 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d656casm3737867a91.7.2025.12.18.19.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 19:10:36 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: George Moussalem <george.moussalem@outlook.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v8 4/6] arm64: dts: qcom: ipq5018: add nodes to bring up q6
Date: Fri, 19 Dec 2025 08:40:08 +0530
Message-Id: <20251219031010.2919875-5-varadarajan.narayanan@oss.qualcomm.com>
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
X-Proofpoint-GUID: z1XeKeDkyhbVv9IfLA6Y9RBRXyjcQNy3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDAyNSBTYWx0ZWRfX787G+KUCGCuZ
 UqDjoi6XPLzZd9w2fsODhpTvj0coWB/TF2T7w9wj8QCTHNfkStNHqddEa/xndcnhT5RW4WG3Bah
 YDIKRmXgh6mZzjSZGJJet2pcza3L/WEhyf4ZO4opf0aIpd5V4IiQ0u4GwfW3FfgI9NWYcMkKZiu
 8Rv2l7XkFbbL6NElpLy1Fo654JlyRoSZnk408cm2SZ4Ii8G7q3vKM5YTLL9A2RuXNG7OoZoVhwO
 XSv9g1SJ1E2BuqMUbJXLN/+u20ZhZnuS5TW/Uy76BH6HUnDxW4hXUZbLDxCxjlfuX0+GB/4Ug6L
 eKwrMFb0yYu7WhcbagwJHSPCr49haKY8IyubKy0SPAwjbwhKHu4IFHyNpKwD9kcgm0griMQGLWn
 tqtjwZNcve5UIOyTqj+ySrpYllzVRwn0/9yBYnsRht6qgG3pN+wksx5LaFVHbVIYqKsObZTE8D/
 LDSbSoqD0sYfQJ6SOQw==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=6944c22e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=etOpb5xliKOozrl2HNYA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: z1XeKeDkyhbVv9IfLA6Y9RBRXyjcQNy3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190025

From: George Moussalem <george.moussalem@outlook.com>

Enable nodes required for q6 remoteproc bring up.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
[ Change 'qcom,smem-state-names' order to resolve dt-bindings-check error ]
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v8: Swap the order of the items in 'qcom,smem-state-names" to resolve dt-bindings-check error
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 64 +++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index f024b3cba33f..d077f0ed9e46 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -158,6 +158,35 @@ tz_region: tz@4ac00000 {
 			reg = <0x0 0x4ac00000 0x0 0x200000>;
 			no-map;
 		};
+
+		q6_region: wcss@4b000000 {
+			no-map;
+			reg = <0x0 0x4b000000 0x0 0x1b00000>;
+		};
+	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 177 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 9>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		wcss_smp2p_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		wcss_smp2p_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	soc: soc@0 {
@@ -717,6 +746,41 @@ frame@b128000 {
 			};
 		};
 
+		q6v5_wcss: remoteproc@cd00000 {
+			compatible = "qcom,ipq5018-wcss-sec-pil";
+			reg = <0x0cd00000 0x10000>;
+			firmware-name = "ath11k/IPQ5018/hw1.0/q6_fw.mbn";
+			interrupts-extended = <&intc GIC_SPI 291 IRQ_TYPE_EDGE_RISING>,
+					      <&wcss_smp2p_in 0 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 1 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 2 IRQ_TYPE_NONE>,
+					      <&wcss_smp2p_in 3 IRQ_TYPE_NONE>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			clocks = <&gcc GCC_SLEEP_CLK_SRC>,
+				 <&gcc GCC_SYS_NOC_WCSS_AHB_CLK>;
+			clock-names = "sleep",
+				      "interconnect";
+
+			qcom,smem-states = <&wcss_smp2p_out 1>,
+					   <&wcss_smp2p_out 0>;
+			qcom,smem-state-names = "stop",
+						"shutdown";
+
+			memory-region = <&q6_region>;
+
+			glink-edge {
+				interrupts = <GIC_SPI 179 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
+
 		pcie1: pcie@80000000 {
 			compatible = "qcom,pcie-ipq5018";
 			reg = <0x80000000 0xf1d>,
-- 
2.34.1


