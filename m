Return-Path: <devicetree+bounces-213682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A733B4638B
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 21:24:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04B3F5A3EDD
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 19:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE3EF27F732;
	Fri,  5 Sep 2025 19:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O+Ws9TLp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D218427E066
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 19:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757100247; cv=none; b=EZbIShOrqHQ2soofwrLCRPU+yZy6MuPDkrnRJounHZThNw8Ju8kaaCMi0zg5PPbrA6CtrnMkIy/3oGE6WV8Bbogbf4md6ofX4uQH+aglp4zItbIqNLh+hlrk+el8NGYPv8Vls4TJ+vfA9UmsV3q8S9Xj4YEebsjH/KW0nOKXl60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757100247; c=relaxed/simple;
	bh=vwlJlwSuEA3+xv3hie86BbCGA2n+iL1BzPZtu9DCd60=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=k9aKEgqtIjS5qQRHBvr7VmANZZ1Iq75xvzJ3AJaU6gLEQ9z1twhbC8pqBJS7J3q0Cs98u66BVSKZYuO9yW8clEJ8DgZbZVtpo3BECfNRouUlBxakrev/t/mL8CKeGfmj/LdzJSxBcF76HyHfNedF9oiVzW9wxQJ/+zLFYp/l7wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O+Ws9TLp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 585GSNmx023000
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 19:24:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	giCvLjFT5GDoAO6HtjJyfTWq2/Zq8vFL1GS0FUx2sro=; b=O+Ws9TLpPkFnItHW
	xnM0d8dtCRt7AyxFkK8Nj3dJbl0DmpgOGTt1SZKVkC7WIjqAzZqNgCiiDwxB/mfW
	wlm/A2JrSgoBw6qbNzwGuBBFoc2jz3Hvx9zfiTL9SX6DKeWviC2eT2GGU4mj0/DZ
	h4WSrItGf3JoMADxUYe+Kctb42WoHU3PjxNz83fDz+x5i8MBst5+UiQ3kc8e5wcp
	GHMqV9bpzZIzoAr+0D2wVyVeGgDCPX3w3PeTUwznHMijkq0mMec/ZaDF6OJuOo39
	/8Z6+antKdKRNNpErTL8mYhVmujKXP6nOw1i91YWGxhoNeQP35VMCHo3pfI4DAfW
	MuaHrw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0evgdg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 19:24:03 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24cceea7f71so5220475ad.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 12:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757100243; x=1757705043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=giCvLjFT5GDoAO6HtjJyfTWq2/Zq8vFL1GS0FUx2sro=;
        b=OknT/PUZe4WIabGZu3bP3w89R/yHw2mW0r5xO9SVGarXPb+1Dp998sdYUBPOicKpx8
         NDX21SFToV3bDqrZCjKQxm0nnr8AkfMCD3BMwVHRWbR1E16z3DV3E6qbogCRmq3k28EH
         euSYJ/KHuzPyxg0DJkdHKJUfF8x6CvAZUBj7B6NxxeErrRKUIw4v/R4Uz1OvT4ixt7aK
         KmlclQXoadjfJZJXIpvWZjh3W7la5AZ/gZrYVGp2DhB6DtO4H+w0EcrlJjMqh6a5RlK/
         9qKs7zzxwCOqrzqSNrdPgho8seoO3sB3Jw/1G+FqnsC9EDGfMPRtJ9ckVEDWjT4VCPtv
         /nCA==
X-Forwarded-Encrypted: i=1; AJvYcCUmr0uMNMZgZwVSMRrUpZspaMSRX68D9P3iHi2vCKjmmOF3Qw3y7pGSwaereZXOBZu0Kuw7tC/+Tmty@vger.kernel.org
X-Gm-Message-State: AOJu0YzMK7NpCQ9zyM5JrzkM9HG8DW9zTaLzWjoAiXSophlsKzO9k806
	AJm4JcAqVsUIQ2iePzNcd0TYS4QyDfzQLbPo1fC+MvsFcYSiipXQ8HDU3wvvnPby8VKYhWsSZj4
	MmBZZRat+g65Wr0kmWUiQE5qrjXGne74mqK3kXWFqe1djB58I+V/lig4dsN/Z3A7c
X-Gm-Gg: ASbGncs632d2dQtlHgwNHfrVEx3GHR3L5VnPrlybiFvXACCBNhBfne0XIncnFIGvAw1
	yyzbEUJ9jbbGKfg5kLEhUQQfBGu18lTbCb1A03RndLo9L36ZdpNpuAudn1Nwc+78U9xE07BBuJF
	kpCyKS4z/1DFXuV8aCbNKydHDFe4+gGWpv6SqNahrheFIUo1l9WqtpabYN7CDN18M2fR/YPe6xk
	XhdKBo8X88JV/TdCFw4MZhiHvJvi2Ty7L2vh/IpFKCutiWYfz1ezhj4PLnAvWtmmzCw2Kc1tyVU
	f2iqPT5SU4F5JmSFfkc/76wySJKnLNNmqsJFtRw05AoUr0IFZ6HhPUMu05GqjFnhmVtx3xQ=
X-Received: by 2002:a17:902:dac8:b0:24f:8286:9e5a with SMTP id d9443c01a7336-24f8286a133mr12452925ad.6.1757100242624;
        Fri, 05 Sep 2025 12:24:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrGK0KUwOz0vguFtk9tmG3lAZaedJotAtzUhn5THpGrmUmYzket+2R/C6FGF3TPBas+6GBAA==
X-Received: by 2002:a17:902:dac8:b0:24f:8286:9e5a with SMTP id d9443c01a7336-24f8286a133mr12452715ad.6.1757100241985;
        Fri, 05 Sep 2025 12:24:01 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24cc1a82a34sm52397055ad.151.2025.09.05.12.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 12:24:01 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
Subject: [PATCH v4 2/4] arm64: dts: qcom: qcs8300: Add Monaco EVK board
Date: Sat,  6 Sep 2025 00:53:48 +0530
Message-Id: <20250905192350.1223812-3-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
References: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: V6NliGajIUpwViIS8nwHemqynBRDb1vR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX72XIEtXncaj2
 gGuZ3KYEz4WH0PBrzXS4Fsh/TO/sfuJxBK6mFSFIgqzdG/9k1ur5s970NAy4sVg1jOLDpBkJtVF
 W7mKY4LG3/1kVODJB01Yz4h1A9CsykJhXA+fkd3DCi8K/TCay0yb+X78g4rk1KTvpIva29cnFzn
 ZSZIt5okBvcDPZHBNnYG4yaEKXkMJSQMsL2OjOqStxg3IVZK9Jm+POivluE1bCu14R4YJkrS+bu
 Pgxe6Jq9NzOJ8XCsfIHKCDUtURm9K7hq90AmIIgslO71DHPmFbDr68Bs9AY+w7Lqs7ENnj1NTa/
 lA4JGAX5fvHxKeaEgUdag0S/PC1ZXpgIDIKCDoZLK9n7w/1nZ1woSkUyFMptjiUiR2hwCLuOOcT
 k4y2V5r2
X-Proofpoint-ORIG-GUID: V6NliGajIUpwViIS8nwHemqynBRDb1vR
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68bb38d3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=vvvEJ_7xePoZwjTowxoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

Monaco EVK is a single board computer, based on the Qualcomm
QCS8300 SoC, with the following features :
  - Storage: 1 × 128 GB UFS, micro-SD card, EEPROMs for MACs,
    and eMMC.
  - Audio/Video, Camera & Display ports.
  - Connectivity: RJ45 2.5GbE, WLAN/Bluetooth, CAN/CAN-FD.
  - PCIe ports.
  - USB & UART ports.

On top of Monaco EVK board additional mezzanine boards can be
stacked in future.

Add support for the following components :
  - GPI (Generic Peripheral Interface) and QUPv3-0/1
    controllers to facilitate DMA and peripheral communication.
  - TCA9534 I/O expander via I2C to provide 8 additional GPIO
    lines for extended I/O functionality.
  - USB1 controller in device mode to support USB peripheral
    operations. USB OTG mode will be enabled for USB1 controller
    once the VBUS control based on ID pin is implemented in
    hd3ss3220.c.
  - Remoteproc subsystems for supported DSPs such as Audio DSP,
    Compute DSP and Generic DSP, along with their corresponding
    firmware.
  - Configure nvmem-layout on the I2C EEPROM to store data for Ethernet
    and other consumers.
  - QCA8081 2.5G Ethernet PHY on port-0 and expose the
    Ethernet MAC address via nvmem for network configuration.
    It depends on CONFIG_QCA808X_PHY to use QCA8081 PHY.
  - Support for the Iris video codec.

Written with inputs from :
Rakesh Kota <rakesh.kota@oss.qualcomm.com> - Regulators.
Nirmesh Kumar Singh <nirmesh.Singh@oss.qualcomm.com> - GPIO expander.
Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com> - GPI/QUP.
Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com> - Ethernet.
Monish Chunara <quic_mchunara@quicinc.com> - EEPROM.
Vikash Garodia <quic_vgarodia@quicinc.com> - Iris Video codec.
Swati Agarwal <swati.agarwal@oss.qualcomm.com> - USB.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile       |   1 +
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 449 ++++++++++++++++++++++++
 2 files changed, 450 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 0a7c308dec36..0e4e0e0b833b 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
new file mode 100644
index 000000000000..93e9e5322a39
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -0,0 +1,449 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+
+#include "qcs8300.dtsi"
+#include "qcs8300-pmics.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. Monaco EVK";
+	compatible = "qcom,monaco-evk", "qcom,qcs8300";
+
+	aliases {
+		ethernet0 = &ethernet0;
+		i2c1 = &i2c1;
+		serial0 = &uart7;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&apps_rsc {
+	regulators-0 {
+		compatible = "qcom,pmm8654au-rpmh-regulators";
+		qcom,pmic-id = "a";
+
+		vreg_l3a: ldo3 {
+			regulator-name = "vreg_l3a";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4a: ldo4 {
+			regulator-name = "vreg_l4a";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <912000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5a: ldo5 {
+			regulator-name = "vreg_l5a";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6a: ldo6 {
+			regulator-name = "vreg_l6a";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <912000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7a: ldo7 {
+			regulator-name = "vreg_l7a";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <912000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8a: ldo8 {
+			regulator-name = "vreg_l8a";
+			regulator-min-microvolt = <2504000>;
+			regulator-max-microvolt = <2960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9a: ldo9 {
+			regulator-name = "vreg_l9a";
+			regulator-min-microvolt = <2970000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-1 {
+		compatible = "qcom,pmm8654au-rpmh-regulators";
+		qcom,pmic-id = "c";
+
+		vreg_s5c: smps5 {
+			regulator-name = "vreg_s5c";
+			regulator-min-microvolt = <1104000>;
+			regulator-max-microvolt = <1104000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1c: ldo1 {
+			regulator-name = "vreg_l1c";
+			regulator-min-microvolt = <300000>;
+			regulator-max-microvolt = <512000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2c: ldo2 {
+			regulator-name = "vreg_l2c";
+			regulator-min-microvolt = <900000>;
+			regulator-max-microvolt = <904000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4c: ldo4 {
+			regulator-name = "vreg_l4c";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7c: ldo7 {
+			regulator-name = "vreg_l7c";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8c: ldo8 {
+			regulator-name = "vreg_l8c";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9c: ldo9 {
+			regulator-name = "vreg_l9c";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+};
+
+&ethernet0 {
+	phy-mode = "2500base-x";
+	phy-handle = <&hsgmii_phy0>;
+
+	pinctrl-0 = <&ethernet0_default>;
+	pinctrl-names = "default";
+
+	snps,mtl-rx-config = <&mtl_rx_setup>;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+	nvmem-cells = <&mac_addr0>;
+	nvmem-cell-names = "mac-address";
+
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		hsgmii_phy0: ethernet-phy@1c {
+			compatible = "ethernet-phy-id004d.d101";
+			reg = <0x1c>;
+			reset-gpios = <&tlmm 31 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <11000>;
+			reset-deassert-us = <70000>;
+		};
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <4>;
+		snps,rx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x0>;
+			snps,route-up;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,map-to-dma-channel = <0x1>;
+			snps,route-ptp;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x2>;
+			snps,route-avcp;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,map-to-dma-channel = <0x3>;
+			snps,priority = <0xc>;
+		};
+	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <4>;
+
+		queue0 {
+			snps,dcb-algorithm;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+		};
+
+		queue2 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+
+		queue3 {
+			snps,avb-algorithm;
+			snps,send_slope = <0x1000>;
+			snps,idle_slope = <0x1000>;
+			snps,high_credit = <0x3e800>;
+			snps,low_credit = <0xffc18000>;
+		};
+	};
+};
+
+&gpi_dma0 {
+	status = "okay";
+};
+
+&gpi_dma1 {
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-0 = <&qup_i2c1_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+
+	eeprom0: eeprom@50 {
+		compatible = "atmel,24c256";
+		reg = <0x50>;
+		pagesize = <64>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mac_addr0: mac-addr@0 {
+				reg = <0x0 0x6>;
+			};
+		};
+	};
+};
+
+&i2c15 {
+	pinctrl-0 = <&qup_i2c15_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+
+	expander0: gpio@38 {
+		compatible = "ti,tca9538";
+		reg = <0x38>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander1: gpio@39 {
+		compatible = "ti,tca9538";
+		reg = <0x39>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander2: gpio@3a {
+		compatible = "ti,tca9538";
+		reg = <0x3a>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander3: gpio@3b {
+		compatible = "ti,tca9538";
+		reg = <0x3b>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander4: gpio@3c {
+		compatible = "ti,tca9538";
+		reg = <0x3c>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander5: gpio@3d {
+		compatible = "ti,tca9538";
+		reg = <0x3d>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	expander6: gpio@3e {
+		compatible = "ti,tca9538";
+		reg = <0x3e>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
+
+&iris {
+	status = "okay";
+};
+
+&qupv3_id_0 {
+	status = "okay";
+};
+
+&qupv3_id_1 {
+	status = "okay";
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/qcs8300/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/qcs8300/cdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp {
+	firmware-name = "qcom/qcs8300/gpdsp0.mbn";
+
+	status = "okay";
+};
+
+&serdes0 {
+	phy-supply = <&vreg_l4a>;
+
+	status = "okay";
+};
+
+&tlmm {
+	ethernet0_default: ethernet0-default-state {
+		ethernet0_mdc: ethernet0-mdc-pins {
+			pins = "gpio5";
+			function = "emac0_mdc";
+			drive-strength = <16>;
+			bias-pull-up;
+		};
+
+		ethernet0_mdio: ethernet0-mdio-pins {
+			pins = "gpio6";
+			function = "emac0_mdio";
+			drive-strength = <16>;
+			bias-pull-up;
+		};
+	};
+
+	qup_i2c1_default: qup-i2c1-state {
+		pins = "gpio19", "gpio20";
+		function = "qup0_se1";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+	qup_i2c15_default: qup-i2c15-state {
+		pins = "gpio91", "gpio92";
+		function = "qup1_se7";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+};
+
+&uart7 {
+	status = "okay";
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
+	vcc-supply = <&vreg_l8a>;
+	vcc-max-microamp = <1100000>;
+	vccq-supply = <&vreg_l4c>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l7c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&vreg_l7a>;
+	vdda-pll-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
--
2.34.1


