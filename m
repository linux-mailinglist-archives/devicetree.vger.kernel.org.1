Return-Path: <devicetree+bounces-251445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E5ACF2FB6
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 11:30:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DAE23080297
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 10:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C46F315D42;
	Mon,  5 Jan 2026 10:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FMP8SNg6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P7Hz3RDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADFC315D51
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 10:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767608736; cv=none; b=CAs4Wcw1hTIxkRcCEUQUVhaidBCERayemcdYn24fA0PA/2Ml2QHNtZMQVCYxA4IpEYH+1yBOj2lxfbVdN+t4DyT26TAWKrslHuGRrGSpkXOVZtugcgedthZrRSITHrMwQIYfZYneSSayRaYwyj/sLG4wULPRdoRbOHEBvZZjipw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767608736; c=relaxed/simple;
	bh=YOl5IJYif0jvNCP8fDY4Aqzn0EQDbtyZnbogarZf4kI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=p2yAbxjizv2SKMWO+HfjEJYoOj7rZp2xG6b2yviZ3+9urtl11amaaz/X8rYdtefgxOgSYRj6Tv8aqFZrC3i/Mp8RLvjynWKjIEgTTeyb0tP+L6EGbeM9C6l57bgPGxn9LkBMALYvIwXF39MJoPSFIK7j6WD/Ahyk/jUyI4plq60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FMP8SNg6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P7Hz3RDI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6059t8pn091186
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 10:25:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Wzf72Er3Ym6fe9r1fKm0ko
	zgdGdwUYBIgbsgNNSDvzM=; b=FMP8SNg6pOIE6Vv4Ig/SgdzrO0Eqwpy1SDYJE7
	H3oBzduDW2DqtMThkXFjmswQ+h3qGvFB/nuBn6YvMxM/wtgbrAPadCZCstTmq/DC
	InQrE5/3WKu4dx76g1BGpkwhxKUgaJk9eyBENd7ROBfTzs+KPvrIl/vg/hp13qic
	RQxvAWBG2Dx3YJsU9ZBJGl//a4nE36fLE0M6mGApLbHnHCpv6BDS7QMLswFHUmJP
	DPY/yHQ5h58U0Y83Ql4d4gDLLE3aE1tECznuH3i2kjogGgOD8Ze7Y1s6JLqLxdC1
	NPDZye0RZmFdD0tA1mQn4/+99wgu79KNlSqIImKqR5/002ew==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg4v615ye-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 10:25:32 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6097ca315bso25810821a12.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 02:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767608731; x=1768213531; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wzf72Er3Ym6fe9r1fKm0kozgdGdwUYBIgbsgNNSDvzM=;
        b=P7Hz3RDIrnt2zLNMMJXXgLTJ5d+++tINZXi/c4Li/z5hCm8kqrt6ahVrHTxg37f+I0
         2ZodwFEnj8r/8qZczJtjPzifv1rI3a6FE3SyyXo2fWR8USOuMxHHchzGI1aysjOMxmV0
         U0DBa9cyIRIag2NzmVlipxbdOOfsH/VZpjCCFVkDDXot8rJXBlb0VnwvkG0YWPPlk7RQ
         q5FpxtbMEdRdGA/JDSBxuYXPbhARlFHwE9Xfy8WuElsYQvr7VNna6QQNHC2BQObb7azJ
         EFalNjqDUb0Dg/0UC81pfEpvqumGL1KXI38jg/OS9IBOrdGkSuSXGr2dAX9aHZLA1Hct
         TQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767608731; x=1768213531;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wzf72Er3Ym6fe9r1fKm0kozgdGdwUYBIgbsgNNSDvzM=;
        b=i3OhdRBojIReztS6lNvEJ5+1tzpapvfeMQ9sEpnRDLwcJysDhHDgGrSX/zhhEn14/G
         d0QIyYof+CeUwNeB6TzSac6Xb/TM53jHI/c/gQd/Il6gXZUDKSw++seuf4jOLRb1gepx
         vR3jsX7yppxj9FnUGIZ2r8f/MA3GL9PV9Nk0O2cb2aYGJUrsjZbSK5NFb5/1HgarDJd+
         b7jfjAhea6xhmnQpGToyWjQeXEOiDImHdtqaDTE0MbhxZDCQ+PRRB9wpHKM0lRYiBxyG
         dqgkJ5T6Wku98pBAjiWTlh7C/nFeKfmU0PKBYwHBxK5gVYBqihcAMaeFpzuoJSP1/Hi3
         fHsA==
X-Forwarded-Encrypted: i=1; AJvYcCXHpKSqWo7zNDE3nHScFZjpwz3fQHGefAFZHHa52Hjw93toDNzvrPasdimBqMYzH2h13jomCTGmscfa@vger.kernel.org
X-Gm-Message-State: AOJu0YwcvjNVumVryk99XSWTivRQ+DmPL1Q/fmj/wHtCSxwMdWwtYNWh
	1pOU1d9n5u5tmXw3BLqPJnwV7oaDBXZO+Q+hxhINQghAhPkRkg0S+tPcI+HdLX30yeLZgapwNsR
	1FUqS4l2P9PbzimKV61BPBBsTOCuWH4/SRxT6RE9pGhKmXlsZcxa8oOyhNQmMrzAC
X-Gm-Gg: AY/fxX4vNBeCbA8+LKY7LLgR4VbK5IgKqIJgGO4uo+JN2wiwR2iEpp+OIh5r+ZBcSJb
	dnGeOET87cgdgjSL4yIiVM3mA+bGrAH6PKNKRI/THTF0ZqYUG6KBkabuSEm+4wfbM5J3uTs2DO5
	Kt/SC2rzURUe0VPZhdizVLHph2PNi5MMh1mTPx044U0RNThUZtru764N5STuagh85arYkYRsGts
	f1AqSqRsv7LHNBLtLXadmzs/+br2VJ6+5hbNqHMCyGyzSXqhRXl6LtZCz7+tT1ouD75KH49fHw0
	Dm2UR0vRW+33TwqV4XpB2jLaN/DcOB4UJTtzgsIbgkF3f/3H90/mFeIwxFSxLqcXhrz+16QzIrb
	Q1nUcKAXEsHKxX3+A2oDK4KV0jz387XUDO7LXeVkMY97C
X-Received: by 2002:a05:6a20:a10d:b0:364:14f3:cad7 with SMTP id adf61e73a8af0-376a7af6809mr48307041637.19.1767608731360;
        Mon, 05 Jan 2026 02:25:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWMH1B8BqxuLXxx7sfpI/ZdylfSnF5QPPR9s6BLjVwKvN+41DpHQHQhBn6z2qtNUdDSjO4EQ==
X-Received: by 2002:a05:6a20:a10d:b0:364:14f3:cad7 with SMTP id adf61e73a8af0-376a7af6809mr48307021637.19.1767608730868;
        Mon, 05 Jan 2026 02:25:30 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c530f72sm41078233a12.29.2026.01.05.02.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 02:25:30 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 15:55:24 +0530
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Add TC9563 PCIe switch
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-tc9563-v1-1-642fd1fe7893@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJORW2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQwNT3ZJkS1MzY10Ds8REI0MjUwujNHMloOKCotS0zAqwQdGxtbUAWQH
 iyVgAAAA=
X-Change-ID: 20260105-tc9563-06aa212582f7
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mani@kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767608727; l=5228;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=YOl5IJYif0jvNCP8fDY4Aqzn0EQDbtyZnbogarZf4kI=;
 b=jDzOU1ujNQQogVzykwiJWd9jJnfq71QWMu8YojranLCkVZ+dWhVIIuHSyU0oW+i+j8caMFgoq
 d+RlgSvGGvmDOItNoIHF5MhgxRIY+qbXq9awYv0FZ7vPGFZ31OpKHks
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDA5MSBTYWx0ZWRfXwGa4gr8Nw4as
 2aVyLCSWi1gnHhQ+7mzFCwwEVsjb4ZhuGjIyrHhTeukuqjcHnBuCXOwm82dR9vM042zh6Deu51T
 Zo3UAeNo1e7B3DrkVv0PTZTgVLqe7ZK6/HskbzaZijKS3KSs+8ZcgqUGZCeNWzNbTHbCVxGMYAb
 tEkD6/wi6Fd9sMgH9zB9wCC725X+ja1KYGKREqZeVfpWjF4UzE38/0/wF05yg0tOLPe0fJw8gCE
 Bw8gO7HyBMKX9YSY4I2lko7tssi+gKmyJ+5lXvjqQMo4CNoon3bmuE0mUI2J78iQxHXSNF0uBTV
 VdJz2OsLxZYOf9RjsSSFsipIxVUfkpAK1GxlB+comOt9wFaeVS5lsriS0vfHc0J3hyDM+CAVVzX
 k6bqwH0i06JQ7soCnRowYCv0S0O/ZryQ3cYJcMdGPK0UDjRMZq3me6TryX0ohM5kXizjz9QOMsz
 NOzr1P24Sw/pY8nVsGg==
X-Proofpoint-ORIG-GUID: tGxGJoFfCoXO9pgB_yAMsMXC55s7q8eg
X-Authority-Analysis: v=2.4 cv=c4ymgB9l c=1 sm=1 tr=0 ts=695b919c cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=KPzQoFQv1uIig_LGOWsA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: tGxGJoFfCoXO9pgB_yAMsMXC55s7q8eg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050091

Add a node for the TC9563 PCIe switch, which has three downstream ports.
Two embedded Ethernet devices are present on one of the downstream ports.
As all these ports are present in the node represent the downstream
ports and embedded endpoints.

Power to the TC9563 is supplied through two LDO regulators, controlled by
two GPIOs, which are added as fixed regulators. Configure the TC9563
through I2C.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
The driver & dtbining changes are merged here https://lore.kernel.org/all/20251118184525.GA2583175@bhelgaas/
Sending dtsi patch after rebaseing & fixing a typo(Konrad).
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi         |   2 +-
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 128 +++++++++++++++++++++++++++
 2 files changed, 129 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index c2ccbb67f800cb9927627f991e3d97174cc73c64..076069f14495632fe881090819adb7c6a4e6cbbc 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -2424,7 +2424,7 @@ pcie1: pcie@1c08000 {
 
 			status = "disabled";
 
-			pcie@0 {
+			pcie1_port0: pcie@0 {
 				device_type = "pci";
 				reg = <0x0 0x0 0x0 0x0 0x0>;
 				bus-range = <0x01 0xff>;
diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index f29a352b0288e9ef554ecfff59820ba39bf2cdb1..e3d2f01881ae05f17796f9c97f10b53cea50daff 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -262,6 +262,30 @@ active-config0 {
 		};
 	};
 
+	vdd_ntn_0p9: regulator-vdd-ntn-0p9 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_NTN_0P9";
+		gpio = <&pm8350c_gpios 2 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <899400>;
+		regulator-max-microvolt = <899400>;
+		enable-active-high;
+		pinctrl-0 = <&ntn_0p9_en>;
+		pinctrl-names = "default";
+		regulator-enable-ramp-delay = <4300>;
+	};
+
+	vdd_ntn_1p8: regulator-vdd-ntn-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_NTN_1P8";
+		gpio = <&pm8350c_gpios 3 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		pinctrl-0 = <&ntn_1p8_en>;
+		pinctrl-names = "default";
+		regulator-enable-ramp-delay = <10000>;
+	};
+
 	wcn6750-pmu {
 		compatible = "qcom,wcn6750-pmu";
 		pinctrl-0 = <&bt_en>;
@@ -803,6 +827,78 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&pcie1_port0 {
+	pcie@0,0 {
+		compatible = "pci1179,0623";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		device_type = "pci";
+		ranges;
+		bus-range = <0x2 0xff>;
+
+		vddc-supply = <&vdd_ntn_0p9>;
+		vdd18-supply = <&vdd_ntn_1p8>;
+		vdd09-supply = <&vdd_ntn_0p9>;
+		vddio1-supply = <&vdd_ntn_1p8>;
+		vddio2-supply = <&vdd_ntn_1p8>;
+		vddio18-supply = <&vdd_ntn_1p8>;
+
+		i2c-parent = <&i2c0 0x77>;
+
+		resx-gpios = <&pm8350c_gpios 1 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&tc9563_resx_n>;
+		pinctrl-names = "default";
+
+		pcie@1,0 {
+			reg = <0x20800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x3 0xff>;
+		};
+
+		pcie@2,0 {
+			reg = <0x21000 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x4 0xff>;
+		};
+
+		pcie@3,0 {
+			reg = <0x21800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges;
+			bus-range = <0x5 0xff>;
+
+			pci@0,0 {
+				reg = <0x50000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pci@0,1 {
+				reg = <0x50100 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+		};
+	};
+};
+
 &pm7325_gpios {
 	kypd_vol_up_n: kypd-vol-up-n-state {
 		pins = "gpio6";
@@ -1081,6 +1177,38 @@ right_spkr: speaker@0,2 {
 	};
 };
 
+&pm8350c_gpios {
+	ntn_0p9_en: ntn-0p9-en-state {
+		pins = "gpio2";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+
+	ntn_1p8_en: ntn-1p8-en-state {
+		pins = "gpio3";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+
+	tc9563_resx_n: tc9563-resx-state {
+		pins = "gpio1";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+};
+
 &tlmm {
 	gpio-reserved-ranges = <32 2>, /* ADSP */
 			       <48 4>; /* NFC */

---
base-commit: 3609fa95fb0f2c1b099e69e56634edb8fc03f87c
change-id: 20260105-tc9563-06aa212582f7

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


