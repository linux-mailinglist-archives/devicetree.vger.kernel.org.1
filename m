Return-Path: <devicetree+bounces-227044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B341EBDE16F
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3A87634A923
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B3A31CA57;
	Wed, 15 Oct 2025 10:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DjAZRudR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7538331CA48
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525574; cv=none; b=nDefMNt/4QrLYQoXqNAagsO6/nWRmxK2bEhNoaG1QMf2bqIcXfJbnhViBc03lcu88grmkSI2auvzhimpH24SCfHpQATIQXf6vBLrAxElfCXd3JoHL6fnfNU11PPOxrHQ8WxX5fZNdrGfPNYbBlc1+e5NOfceznwe/YwmucO4PbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525574; c=relaxed/simple;
	bh=Z57KOB9v07tyf67GGhWybCGCn3jlFYAJ0YHv/BzThyg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fNldL4AU7bnKGzuDqAxDn+Da0lnP4fdghlMGgEnq/4gtd8ltIDZjG8KINYXNPfSGnAU1CVu9WsiQMgymccUCVC/1/gAr7Fv5P+CySleKwlFxHbJFk5pujvlXr66LdE+VS00e7I3SscADRjlJ1DC6Qo69rS0r3xv7zOZxE7dJOw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DjAZRudR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FATbCu024771
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:52:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+B4kDtQUTGp
	VB7yyKrf8cwzmgvz1UyvN6sxfACa3DWo=; b=DjAZRudRfz9ZHC9lDnWWQUgzhUF
	/NGSj770jQj6/C5bvf19XCkiS5F/MFemeakS5+++iuGAP7WGsCEZj8ik/RPd/+yM
	RmqE5HU5HmQM02zjA1/u24TQdAu/nQPB9ppennO07AULejsJPdZWTL0Db0YWemK/
	EGNsEw7zWzeuabHWEWwOnAFa7y4B965d5H2EkmjrOWhtKIQj51qbZQ5Sfm5WeHNu
	DLGwh7NVWYflcmIEWauGSJDv/wuCJOHo6AUYfeIi1qRqGVkO2MKu2+aYUfyErF5m
	XVdrzYoHyefNSatN8NwyzVsYvpVbh76NSYdtaZKyU/iv6Ne2bZuur5loOKw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0v3kq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:52:51 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29076e11974so21909265ad.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:52:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760525571; x=1761130371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+B4kDtQUTGpVB7yyKrf8cwzmgvz1UyvN6sxfACa3DWo=;
        b=fGjBnxwNbeLfVCoP29PgnfjPTKN1nxLfiZ3M2u6aPa4QeIxkFTpXJiKhUeAMJzvPeG
         yeFBDo3DF100pi6c9OKLDCqhZkWclaHc+gGz3IWGaWmZZYBkCEr8KmrtTiYHSEJYoOfl
         dtrQWiN5mm8yJFPcLpd0eDU2UWjy5/XsHFkISqs+ziIpZPjRulBa9LFYC6JU3cHCDHhh
         p1htLW5nmq0w1I0iW40Tl4xYG7M+lbgU8i/QOf06Od4R+dCYr8CJHmYfSxbdwO75kNII
         jhdu5TrV1ufyv6J1xjnphGAjv6Qxg12rfZKoPOLVfdZlkCUxi+x+XVYJUQGbX4MNU6Fm
         XPhw==
X-Forwarded-Encrypted: i=1; AJvYcCV7S78lhZQmSX5X1WhtmH/fL0/o+LwxobsTBgX6vkJBQCefAiUmSwwqZmelWkWLzSq8UX1wIAGSWW59@vger.kernel.org
X-Gm-Message-State: AOJu0YwwZ8ZCfMu50hbYCx/jhrJVySTGHg3nFyqFNJkpY3YUrg4/3cau
	F/XqaerTRXNgKpGJtjqkGhFwE8sKMdi3HUlYmvszA9A/WHuZjpD5DQYHdkr2xLt4MFaQ8H20bnA
	Cd+h2WK8ZVj0V+Lj+iZBCC35abJ1RHxGtRV1YGOkE3NoHuzTREttEwE2QYJbPh+5s
X-Gm-Gg: ASbGncuN/84DYDymGToZzXd3/AqXv/BXdUb8pkw/QZx/5reBt1GQUH7B++Nf4XVNStG
	l8aWuiHqXBn1Qc/Yks081qE9qMgF1WDHk0W65AkssSJW2Z2UKrvW51H0fEKFNEFln8DHomr6CK2
	nVoT4/ZLgV2HwhcQn4Jg0tEReDJfAQS3kXB371LZxh2staSBOaz/hlmyUsTkDtUxS10rSATrU71
	40HfQfazQoIkBHC+v8ffvK2FdcRfdTIt+xAdMhxEJnzo2VZP++HppIwnwxwXjftRfMFs/5ZjWwh
	rghoPWDqyi9xJH/ObUKYUViK+RRG2mkoGel7XLphpLQmrJkaM4fgkqCajCZCOz1dwR18x8WcLGp
	iHg==
X-Received: by 2002:a17:902:fc4d:b0:269:82a5:f9e9 with SMTP id d9443c01a7336-290272c0729mr359928095ad.29.1760525570620;
        Wed, 15 Oct 2025 03:52:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAL49nIZ0DFxVSPXrbRzyokYm6KZnds4ACzmtHvgVr5wMS2b48aVakH+lR6BKp7MfQPL0YEg==
X-Received: by 2002:a17:902:fc4d:b0:269:82a5:f9e9 with SMTP id d9443c01a7336-290272c0729mr359927785ad.29.1760525570140;
        Wed, 15 Oct 2025 03:52:50 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e20f8csm193698385ad.49.2025.10.15.03.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:52:49 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Arnd Bergmann <arnd@arndb.de>, Nishanth Menon <nm@ti.com>,
        Eric Biggers <ebiggers@kernel.org>, nfraprado@collabora.com,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Wesley Cheng <quic_wcheng@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v7 1/4] arm64: dts: qcom: sm8750: Add USB support to SM8750 SoCs
Date: Wed, 15 Oct 2025 16:22:28 +0530
Message-Id: <20251015105231.2819727-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
References: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXzBR5/pav3etw
 dEEXJyJZF1CqAcXuxQCwIEsrxuX3dWk6vNnh4sgPkz6raAQF0kq1m5Sd2xxCLC9Tdo5ETrvQngK
 98ee+QX95LB/3av1pIRTPsKPIkOb3vwBsJW+nxVjR8TSpdnPPiNsO/OtYVpLb9HYgN3bQm6L9nm
 KBUPxEThUr9iZRIAFnsxf8Q+qgeAZXOwU9LYObE0LNBkwmJji9OY7DpJ/riykjvWVk/SB3WDSmm
 6SRPJycd7gEyHDsATOvWTGRZIlHLsQDjR268PDCXWQuvmyQdNYV/i4nY0EwlKoXvCZQU3fv7IR/
 9/oCqKC7/RLbJf3z+JVdp61AtyGYiSVMdHFuOby/w==
X-Proofpoint-GUID: avCMvxw2JnnjjlnlpDrRuHMF-lsLPAqX
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ef7d03 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=n1SQX4eW7R_9Zp26JX0A:9 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: avCMvxw2JnnjjlnlpDrRuHMF-lsLPAqX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

From: Wesley Cheng <quic_wcheng@quicinc.com>

Add the base USB devicetree definitions for SM8750 platforms.  The overall
chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
(rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
transition to using the M31 eUSB2 PHY compared to previous SoCs.

Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 164 +++++++++++++++++++++++++++
 1 file changed, 164 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index a82d9867c7cb..450fe5b7f03e 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,gpr.h>
@@ -2581,6 +2582,169 @@ data-pins {
 			};
 		};
 
+		usb_1_hsphy: phy@88e3000 {
+			compatible = "qcom,sm8750-m31-eusb2-phy";
+			reg = <0x0 0x88e3000 0x0 0x29c>;
+
+			clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_dp_qmpphy: phy@88e8000 {
+			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
+			reg = <0x0 0x088e8000 0x0 0x4000>;
+
+			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+				 <&tcsrcc TCSR_USB3_CLKREF_EN>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
+			reset-names = "phy",
+				      "common";
+
+			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_dp_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_dp_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_dp_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
+		usb_1: usb@a6f8800 {
+			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
+			reg = <0x0 0x0a6f8800 0x0 0x400>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
+				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi";
+
+			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  "hs_phy_irq",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			resets = <&gcc GCC_USB30_PRIM_BCR>;
+
+			interconnects = <&aggre1_noc MASTER_USB3_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_USB3_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "usb-ddr", "apps-usb";
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			usb_1_dwc3: usb@a600000 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x0a600000 0x0 0xe000>;
+
+				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+
+				iommus = <&apps_smmu 0x40 0x0>;
+
+				phys = <&usb_1_hsphy>, <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
+				phy-names = "usb2-phy", "usb3-phy";
+
+				snps,hird-threshold = /bits/ 8 <0x0>;
+				snps,usb2-gadget-lpm-disable;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_enblslpm_quirk;
+				snps,dis-u1-entry-quirk;
+				snps,dis-u2-entry-quirk;
+				snps,is-utmi-l1-suspend;
+				snps,usb3_lpm_capable;
+				snps,usb2-lpm-disable;
+				snps,has-lpm-erratum;
+				tx-fifo-resize;
+
+				dma-coherent;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss: endpoint {
+							remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
+						};
+					};
+				};
+			};
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;
-- 
2.34.1


