Return-Path: <devicetree+bounces-243833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADCDC9D968
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 03:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D63F73A741D
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 02:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C41021773F;
	Wed,  3 Dec 2025 02:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BEZ/f56A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dFH9z1j5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A24E5D8F0
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 02:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764729765; cv=none; b=HVsct45Ap6HICfIlWAuVUad4//egzH9feBzcIKvJJ7ONvvdLCgm26ItetOoNR6EzX95pYN8Bfbz6NS5rA4bMO2WrBYmVmsGjqHWTq7OL44RuVwlDGFRvrOQ6LGCvbOcnmchBxsDFqOLBV1OxYQjxT10Nm+wkoOXWoiefGYG7tJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764729765; c=relaxed/simple;
	bh=n2Cwd/TAJaHTUELcbZYC9HaOKmoXe7I3p/aesU+TT9g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=MM2V39R0Q+ux7HX2XBb5dvVnYEmyJfts5Fsdcz83qNGZa0ZEBXIxFeHYpVSnmu0pSM7yddeoOOSk8tB1zOZtr5dkgODTaLAMtL7xdTaqmsAX3H0RPrUmP+XLQlfmcBC/ZJTLBLYedq6YQV4Vb5RL9BWkZ/7gUbNsOslDBVbr/4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BEZ/f56A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dFH9z1j5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B2Lq7vD4013052
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 02:42:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6J0fOYrabni6kE9p26d/Ka
	LZBnkexG2p2ykADbHzGu4=; b=BEZ/f56Ap8yrR321vpJTcqp66/xt0JChccaaOO
	MPM6AtwrDiisVkRuhBRbolc16E/JhT4LSyQmbzu1IaPToM/huymt+12twG212PV1
	8FEof0xFPstUlUCKP9GbTogde8NWflBTdv/GvfGdHa8Re1mZEVtDlreOMqlvIJrP
	arujC6YGe0US6ZP+sj9ylfKJKYKaFKhlVu3IYgaQ2XJ5OKn4YXuURsredp8vUasU
	JmSpES2BW3naQk1aKXe65mHtpbTdFIK/duRwZkMoluqF2GCsiMU1ZeW8exub8N3h
	UkKNehbMGfqTG8dpohqRpKlXIlMmyd1io1EYeWD6/CnW6P3w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at8d9gnnq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 02:42:43 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297dfae179bso128526195ad.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 18:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764729763; x=1765334563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6J0fOYrabni6kE9p26d/KaLZBnkexG2p2ykADbHzGu4=;
        b=dFH9z1j5jKX6z/UeG7sDp0tT0RtVu0C2jRVFN5VdyIhpr8noUfAYDKMbuRAZSgQKp0
         Geum/e9ZemytvcN+8QS6g00gQDeS+c7QNRWM08Cy0ieNyuZi0Lc2myEW6SsJbeBszSzq
         8x+qBfkLBqPZ4p/rj3hJyH10fFG/Pm92dfgGQ2Pu0yA4C3AVyZuPFFaE8JlusVVbw8Ve
         s0vu0zf0V1GvaEdjDedCKl97ureBVSBGQeaKRxVQzTvqZwH/7a8TaZFbznZtwo+SYTuV
         9cqnI8/KW53b/CINJ3jgeSc6MdN31uun1yLeMv1TMMiPXqP5im2d+hzJVZQ8ndoTbwN/
         zrOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764729763; x=1765334563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6J0fOYrabni6kE9p26d/KaLZBnkexG2p2ykADbHzGu4=;
        b=Lw79JLWEDxMnDuED0YEQURsMsVSotI6AFqIRz1BBbyAwhq831SkfhBLQmu7w4raKPm
         I42Fy/EYb7U0vUqe2bPJ1Z02G6kgFM3LEuuuuvN/yYw/VrqOMB876jsoPsiPKQoh/nNv
         +LGCFjvAhor42OrznGj3aYAocioqrCbMY/SxhGaVIg1Tf2VVOqeN7Rfu0cDYByRSTflx
         bqzSSlXmGme6d3d7/swG/jnctFAUCRsklc8i+txBsanBf4P5m6mOTbEGtGljUKQDoeJP
         DSG0J/jp7iKbuUWd9VP21Nbg70zOfTM2Xe1cG8OL9BKMiQNPFmfo4JKTEnvkLBOkFLDs
         amXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWVkP7gAuHaVpQSwLoJdzK9Ho1bKe0pcj+zHtGJuDdy3XdzJ1MrESUFiqmwjzayZGHMNLDLR01xRJ4@vger.kernel.org
X-Gm-Message-State: AOJu0YzQaoSiF+D6kGPmRBXbug5gb8zfiZHV445pu2590pbiyY/AfBzU
	AeJ2unkuWxudpZeKkMvFhG6jFqi2ycKoFIVuR3J4SRk6Haahw/kCEGzVUaJDDo8xSzLBb6YlBa0
	sGJLkpESCZB1ittl02ROKrHy37CxfjOV7KOSUrv0llgnFEbvmX742JYwHVbRExV/X
X-Gm-Gg: ASbGncsdM31Rpul1ck8vjY1QSge/3BOfMIO6CxxhFG4u30bw193pTxcE+0+G5AUyBwx
	sjZM0qhCEP3eb8i+OhC54mNqa0UBdx/XlzMAxsnBuWuRnxW8LWHmg4CduO5Y4x0qvMXEK5yIZdR
	a57BSv68948gi2iDUptcl6VE6XPkd7dLHXj8Sr760Ia/BHeHepggHdmrQAtRC40F39uPUOJ6YDp
	6MRi7GRNsOcQmIZm+4tG37uYCHtBsanV9uUoRSz4fxeJPTwOmFUaA6oTFNgCZH9faHNqiAbPbEx
	QhMGkQWWYe2AYHeNmbOCHiC4XKxwiaabnoqrTbp8Q5zUg6ZoN/3Z34keGMAvtPeHdjPCO3HpzLH
	w4S2m7R1ZzFBDP2hh5d9lpCath9L7Kxc/cbmA3h9tWcE=
X-Received: by 2002:a17:903:1904:b0:295:82c6:dac0 with SMTP id d9443c01a7336-29d68413cd5mr8817125ad.36.1764729762745;
        Tue, 02 Dec 2025 18:42:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEY2SiS+QBF7QKtw/pEjHFIt8JIlc/HL+2O1mJPHSLQoLHa0h6vRC4Ppc/gWKaD7Ghq5IpSA==
X-Received: by 2002:a17:903:1904:b0:295:82c6:dac0 with SMTP id d9443c01a7336-29d68413cd5mr8816915ad.36.1764729762292;
        Tue, 02 Dec 2025 18:42:42 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb4af8bsm167055845ad.81.2025.12.02.18.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 18:42:41 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swati.agarwal@oss.qualcomm.com
Subject: [PATCH] arm64: dts: qcom: lemans-evk: Add host mode support for USB1 controller
Date: Wed,  3 Dec 2025 08:12:10 +0530
Message-Id: <20251203-swati-v1-1-250efcb4e6a7@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251128-swati-65461d354617
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764729121; l=3890; i=swati.agarwal@oss.qualcomm.com; s=20251128; h=from:subject:message-id; bh=n2Cwd/TAJaHTUELcbZYC9HaOKmoXe7I3p/aesU+TT9g=; b=6snyPJOSjzAamdMn3m+Whx9umo7OOBA92NNcDkTLOSvWMnGXPT/LcC/uIzYPidonijw7GzeAZ oyqidQKWb7GBM655cIyQNwjgnSdf/qlg3WYvWZOHeaRPt4SjMyPNuxV
X-Developer-Key: i=swati.agarwal@oss.qualcomm.com; a=ed25519; pk=CRv1JUBrT3lJEOqYA3Zf4ReTZUX1p56NJetptdDvO9w=
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDAxOSBTYWx0ZWRfX9Q9IV8zIpdLi
 HMLA7OPuaV7Zhno1RwiXzFExIG0rOImevmsWwprQDCnqgPk6eC6YYRnp0z0mY6LQgcbwmcSVSHm
 KU1zUM6qKldV12kwLEhMv0q5hOyB7AliuN1j9RsZk7KfL4sOyJMwuw+IyL0uF6AFxLmBnR7bSHN
 kp1IM0P7Ype+IBJDG9JDSrbmf34TaZynyoIayXBY6dBQNzwq8rSd6ChWXbt9OHWD6c8Zy8txQxt
 srcsQV8YM9xAGVkFKfQj3rqlZKkPWtEP0f2hWyNy21Vbfi4ovliel2rTylRZG2Ov0WEBAblx/JE
 4kKRNsDv6C5LR+3yiGhiro8HhlwWPsPJ7pE7doirdJVg+2v0/Xb671rp9+X6uFp2LYbZ7e6tVxk
 McQQprkj2taTiYqTCgGbIj2WyylfLw==
X-Authority-Analysis: v=2.4 cv=A7th/qWG c=1 sm=1 tr=0 ts=692fa3a3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=5NWFI8P5lWpHo6fsVrQA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: ImfVwYW5DWietON-PYxdJe5IUPX1Mxiy
X-Proofpoint-GUID: ImfVwYW5DWietON-PYxdJe5IUPX1Mxiy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030019

Enable Host mode support for USB1 controller on EVK Platform.

For secondary USB Typec port, there is a genesys USB HUB sitting in between
SOC and HD3SS3220 Type-C port controller and SS lines run from the SoC
through the hub to the Port controller. Mark the second USB controller as
host only capable.

Added HD3SS3220 Type-C port controller along with Type-c connector for
controlling vbus supply.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
This patch depends on:
https://lore.kernel.org/all/20251128102507.3206169-1-krishna.kurapati@oss.qualcomm.com/
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 102 ++++++++++++++++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 2536ebe36edbfd146e07d5698779767acff87ab4..07389593b3cd4728357255d47156c6861cbabb5e 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -67,6 +67,34 @@ usb0_con_ss_ep: endpoint {
 		};
 	};
 
+	connector-1 {
+		compatible = "usb-c-connector";
+		label = "USB1-Type-C";
+		data-role = "dual";
+		power-role = "dual";
+
+		vbus-supply = <&vbus_supply_regulator_1>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usb1_con_hs_ep: endpoint {
+				};
+			};
+			port@1 {
+				reg = <1>;
+
+				usb1_con_ss_ep: endpoint {
+					remote-endpoint = <&hd3ss3220_47_in_ep>;
+				};
+			};
+		};
+	};
+
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -140,6 +168,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
 		enable-active-high;
 	};
 
+	vbus_supply_regulator_1: vbus-supply-regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_supply_1";
+		gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		enable-active-high;
+	};
+
 	vmmc_sdc: regulator-vmmc-sdc {
 		compatible = "regulator-fixed";
 
@@ -527,6 +565,36 @@ hd3ss3220_out_ep: endpoint {
 			};
 		};
 	};
+
+	usb-typec@47 {
+		compatible = "ti,hd3ss3220";
+		reg = <0x47>;
+		interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
+		id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb1_id>, <&usb1_intr_state>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hd3ss3220_47_in_ep: endpoint {
+					remote-endpoint = <&usb1_con_ss_ep>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				hd3ss3220_47_out_ep: endpoint {
+				};
+			};
+		};
+	};
+
 };
 
 &i2c18 {
@@ -690,6 +758,14 @@ usb0_intr_state: usb0-intr-state {
 		bias-pull-up;
 		power-source = <0>;
 	};
+
+	usb1_intr_state: usb1-intr-state {
+		pins = "gpio6";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
 };
 
 &qup_i2c19_default {
@@ -849,6 +925,12 @@ usb_id: usb-id-state {
 		function = "gpio";
 		bias-pull-up;
 	};
+
+	usb1_id: usb1-id-state {
+		pins = "gpio51";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart10 {
@@ -903,6 +985,26 @@ &usb_0_qmpphy {
 	status = "okay";
 };
 
+&usb_1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };

---
base-commit: 9371fd3173173c0e128e869ab7101bd971a36b1e
change-id: 20251128-swati-65461d354617

Best regards,
-- 
Swati Agarwal <swati.agarwal@oss.qualcomm.com>


