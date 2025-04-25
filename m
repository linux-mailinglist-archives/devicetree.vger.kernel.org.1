Return-Path: <devicetree+bounces-171028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AC8A9D0B7
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:46:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB5437B56C8
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 18:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D80221ADA6;
	Fri, 25 Apr 2025 18:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZrGyRSr5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE2C219A95
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745606736; cv=none; b=gj1Gx7NGdenaiFwQfXhRkHBbM3wM+z/kfCmv4SVJlZWjvFWGo7esGB5kQsISQZ2DPCjJJDsdHgpQCh5TqYCu6qHNTliOzakU7knPpeqKynaEUecrOHXuF7yKJEftxumxM2E08i2Uv+fKQIj363c1j0L88xXKZIXUjflkQzmaoWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745606736; c=relaxed/simple;
	bh=NLvBWaP6miKEKIvfuImkI2x5DMkgnU/KiaqwT5Iec2M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rKV0chYs48brHVZy1YjDAarPoUMGFFcikouy5tQhI3WWx8+9GpC+Xn+9n251nO0iLjUJ/5bnEpR7BxfRA6ii5LBHyIEqzjfVdvrn1H0J8uI2AOf03IDlyAiy5F/8/dZ7QbaJWFEc13w9Y2BZmGUMObM5mQ8p5IQ++flV7M1YfHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZrGyRSr5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJrp4004655
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:45:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JeUsfS/iF6jFVFsCwjfx5hVDX7vk1goNehrk1oCE8nc=; b=ZrGyRSr5ARUe4adw
	qTzFt7taN2S5+4ND0mQeeCN6EQrCx+LMkCfYILe2AYfwKgQ+7oyPbAkVYC8bspb1
	kUGWQAb5ZAqjkQHiY8EoKmXvokVc9cHdnBJb6YUoD905k6AnPBYq67GEuyB8bTcR
	jZSMMk5flTaspTd0W4Rih4IjixgXW+X8qH3EhWYhNYmNPYkSGg8cRTsjOnt1NvMd
	+2P6XuCW7ifQL5q4Jb4D8L5VEodEKBCN7KfKenJFjQyPVnGUSzFrKqPyxURygS7A
	OybUdMmiX7gIdTyvtPAtwaQiyoDyDRK91Tm0nEO9Emwvw0vGAcAIeZs3mdORw4Rk
	+uRkQw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0a1m0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:45:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c0a3ff7e81so451944685a.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:45:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745606731; x=1746211531;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JeUsfS/iF6jFVFsCwjfx5hVDX7vk1goNehrk1oCE8nc=;
        b=VX+j6rwzivhcjXrJL55SRnBtMogR97s9eL7c8vh09bAIJb8p5wGuSWbhq9klHHREoT
         LiiSAS3uepa/VddffqtZTzBjm4oEjuIVGADIqHGygAp23DhoakzXrQCqe72cfB4obOs9
         BIMv/SHZ3m6XLPqNaFvtyVsQTq7a/W/sA5d2bnzj4tAA616PrRufko1fz+jWkRaBsd/H
         xYDnT5WNIpW+RfpK/nOxF0aT/mJmt1Uoljc7+KzjPRzkxSWxr29+QN3FywkhmtN0Fq3K
         jynl4W7XvEMUIkqgLKKgLMVoCkdoLK+B3nrK6EE05aJDbOXlHZH6H2GLrfORDm/WrD+N
         In9g==
X-Forwarded-Encrypted: i=1; AJvYcCVYLSm+IsBB+fRyyvVMVUnhpTOxiEtlHnC95Mm5gM5fxj2cl3OufPWFBXPDvcY6YVKSMQ77DPCGLShf@vger.kernel.org
X-Gm-Message-State: AOJu0YztaUihnuna4NLeQrok5gdIXxOe7mSpb0oMOgm/9z53JrwvA7JB
	9OgfSWnyYg546Bh9ytaKkcyXqiD+OpyN9bf3xaNTVaS1bp39QdYxHRZLUJw1RKAgGXsS74XLI0r
	Fs9t939BMvnrRCD6gm8uKoi7G7QEyPrb0reLStwCx5mOAOKW9qHA6ora9OkE5
X-Gm-Gg: ASbGncvm/YTtXrEiA2ZiTXI2h6O3F6X4+nR3ayTzN9jUlsGf5tt54Oeog9dXi2xY9Vw
	y8SiyMwOzw3qwjoH/mePSb5Tyfn01MMBM593NBzis8IJJvjPf1iBi3lvjLi2WUx6AI92wGnyQ23
	V+yABUj4MISPj5wShcfDp6+zQI+yDqOt6uCTid129pIuK1vE9oHRelVunwQzU3I/5rIWwt6Uete
	2276u5gvQ03ipWKAIaF6/FfiypNNH975Vt17L9mNa/+SIhW7NzB+cLDPi6EpYYhomZGcWiTkIMB
	dH6wLR13lFIXxAhZBaEvdm8TggU84hVV6EAQUaWLjj27r9UszlIxP1PTmCRFM+hh3cc5jqmmjgD
	954bPR7ht8h1gSbfLThCh/SS8
X-Received: by 2002:a05:620a:4551:b0:7c5:dcaa:d799 with SMTP id af79cd13be357-7c9607a962fmr439518685a.39.1745606731091;
        Fri, 25 Apr 2025 11:45:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrmLvrDO9QMKCNEVys18DFYwMliBl4UQ+7szFFzUYHGiAGThoioetkEOIIEtNMw1HBFCmY0g==
X-Received: by 2002:a05:620a:4551:b0:7c5:dcaa:d799 with SMTP id af79cd13be357-7c9607a962fmr439515985a.39.1745606730749;
        Fri, 25 Apr 2025 11:45:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb8979sm688984e87.257.2025.04.25.11.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 11:45:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 21:45:23 +0300
Subject: [PATCH v5 2/2] arm64: dts: qcom: qrb2210-rb1: add Bluetooth
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-rb1-bt-v5-2-154b35435b4d@oss.qualcomm.com>
References: <20250425-rb1-bt-v5-0-154b35435b4d@oss.qualcomm.com>
In-Reply-To: <20250425-rb1-bt-v5-0-154b35435b4d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3227;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=6jZu0llZt2ksqY8VjqhehSjofML6pFZOsGwjGgW0Y8o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC9hEl29MYW+Go/Qm/AFk7PIgABLnm27R7pIdX
 H3XAtvXBv+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAvYRAAKCRCLPIo+Aiko
 1Z5bB/42D1IkPhr6hS5n23n/SCGU9xq6b/jB0FEyg03qT6RSlCcI2J0IJulIkgLy2+GS2emLO4w
 8Wti7Kvp+pNjWNmHvK5pA3qCHzbVf9lwoAtEwISOgqc/jhhwYwgzq5qJ+DY41KA0BUT+gdqrniW
 fNpF4b1BMqFlyGVAPivcYF5bpNxlKvbIDxQoz+6K/yfrpnUyJPF7FQ+33geRwjC/QpXB3iuJVCU
 qRXAw27B2w8UUMHQzWeJqBV/xZUDz3jRB9/a7EDjsJjFVZLsyWHoqkryU6rnYyejE5DE83vtmqo
 DdJzZufmsZKrSo8Sz3u89orF3NPTfvA++Xq4YXQo2Jy3yGE+
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzMyBTYWx0ZWRfX1MN8UChiUxzu g25KzgYP/fZ14R8eChKorLmhbUE8X09dCN5Ds8DYz+olAzgagtG2vZVcy/lxZd3UaMcXq9n0INN mQkArXsK9OV0WOX4OJMlARBfaEsSBBqb3+sl7FEAi8cAKAsjJXS+R2jUJYxwapCXqNzmOATjEN8
 QAx7to+HB7MwPXK2FJq1mJdIZ8hrekfeG3ezD0gpF/y79bQ9C7qY7nsBYcdGuLgvfY56IGfF5Lo vxd5BRWDRnnFONPnTratsvkiK82ghHvnvvwqpzxKE8O8OerXb8ZSIB7AJFi4xVqyvrLdeleTkV9 nkCX2R+wrGj2nQ/n2RJ8sgvS4oxINQLlmmN/U3kHqRVnBVV0ErGDK8lC/J/T5CtE0YGczwiFu0e
 aD0Ywd41PmxwlIOhZb6Dhoyi1z/lK4BnoerJacpU32vKiaKNp2RgYqzvBFpUBynacKIqW+RL
X-Proofpoint-GUID: oWC4hcj4jvpG4mhf78i1NqXTKEslTmw3
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=680bd84b cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=oEaHH5ybzdHFOArP-YQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: oWC4hcj4jvpG4mhf78i1NqXTKEslTmw3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250133

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Add support for the onboard WCN3950 BT/WiFi chip. Corresponding firmware
has been merged to linux-firmware and should be available in the next
release.

Bluetooth: hci0: setting up wcn399x
Bluetooth: hci0: QCA Product ID   :0x0000000f
Bluetooth: hci0: QCA SOC Version  :0x40070120
Bluetooth: hci0: QCA ROM Version  :0x00000102
Bluetooth: hci0: QCA Patch Version:0x00000001
Bluetooth: hci0: QCA controller version 0x01200102
Bluetooth: hci0: QCA Downloading qca/cmbtfw12.tlv
Bluetooth: hci0: QCA Downloading qca/cmnv12.bin
Bluetooth: hci0: QCA setup on UART is completed

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 83 ++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index bef1fa782f1260e95e347abd52989d2da490af98..b2e0fc5501c1eefc7e037b2efd939126b483b226 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -15,6 +15,7 @@ / {
 
 	aliases {
 		serial0 = &uart4;
+		serial1 = &uart3;
 		sdhc1 = &sdhc_1;
 		sdhc2 = &sdhc_2;
 	};
@@ -549,6 +550,66 @@ can@0 {
 };
 
 &tlmm {
+	uart3_default: uart3-default-state {
+		cts-pins {
+			pins = "gpio8";
+			function = "qup3";
+			drive-strength = <2>;
+			bias-bus-hold;
+		};
+
+		rts-pins {
+			pins = "gpio9";
+			function = "qup3";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		tx-pins {
+			pins = "gpio10";
+			function = "qup3";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		rx-pins {
+			pins = "gpio11";
+			function = "qup3";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	uart3_sleep: uart3-sleep-state {
+		cts-pins {
+			pins = "gpio8";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-bus-hold;
+		};
+
+		rts-pins {
+			pins = "gpio9";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		tx-pins {
+			pins = "gpio10";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		rx-pins {
+			pins = "gpio11";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
 	lt9611_rst_pin: lt9611-rst-state {
 		pins = "gpio41";
 		function = "gpio";
@@ -584,6 +645,28 @@ key_volp_n: key-volp-n-state {
 	};
 };
 
+&uart3 {
+	/delete-property/ interrupts;
+	interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
+			      <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;
+	pinctrl-0 = <&uart3_default>;
+	pinctrl-1 = <&uart3_sleep>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn3950-bt";
+
+		vddio-supply = <&pm4125_l15>;
+		vddxo-supply = <&pm4125_l13>;
+		vddrf-supply = <&pm4125_l10>;
+		vddch0-supply = <&pm4125_l22>;
+		enable-gpios = <&tlmm 87 GPIO_ACTIVE_HIGH>;
+		max-speed = <3200000>;
+	};
+};
+
 /* UART connected to the Micro-USB port via a FTDI chip */
 &uart4 {
 	compatible = "qcom,geni-debug-uart";

-- 
2.39.5


