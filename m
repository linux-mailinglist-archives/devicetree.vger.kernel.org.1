Return-Path: <devicetree+bounces-221167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C437DB9D9D2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A43F323720
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 189622EC54F;
	Thu, 25 Sep 2025 06:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EgReldz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5843E2E9EC8
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781782; cv=none; b=oJAW6Cv2V37YToD+7F8dHZ8fWhh/II15xNFf/6ownXKIa/2h2v0SdPx5oQx0knTqXl7RV0U+h5u9NYkRwZ+5kw2QiSpUmVMntwYuEUTarFPt/oT3Ylamc7rgjHj1bPBXF1/JNx3AwrSXYC0/2lwJFln8aK1aGPUf44oHWRtYcuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781782; c=relaxed/simple;
	bh=RDdBDErVPYkb7kQ40hn7vPiyirE4liN5DKCLZ9h9OKY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=csROPJwPW89OoTsMWkxrVlP5MsV3SrFRJeIYZvkpXIkGqAzDpWMtvdwWcERax17wTrEDq41cBbKLcS1gDQJmIqmuLZLs6YHCFqPww3zLbG5kT15TR8aCf5golcCJ3L+f8UI7OD6aC4am7uEdSbTcLgU99Xhqi+yOO2HepvQhCMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EgReldz6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0MOxH027760
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KPvdBTUqrNUETXTQBR3pTDVkd6wGbjn3B7OmL+KStu4=; b=EgReldz6efcWMask
	ym6ijDwS+Ja2+W+m9UBlsdcfQlxv3c91T/9AftNLKmI6eHuT8aAAQGI4rGk17inT
	C37YScNy0bwZUQkqxDZ9uq0y41scW6ei8YPEh9SnrmD42RLEfz0jijgTVanFug8/
	PuYTUkIWzTvHwmDeUTmGC/EAq7BS+4xBU52JUZDrcPUrDr93KvX/yD+5pYKWsc6j
	ieJO5amSXe6rAF5R7NIFP/DF+AKkGzGtV6JY5l7MUPyORqo3rWEuUHPE9NSa8E1h
	nf5JhjgRtdFQu1auPV7PQ9Qd4PRXYfS/PPvSY1tYZ7IG++y/Pt2ynXRdXlBSR0uf
	BAzafg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnyccy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:40 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77b73bddbdcso546876b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781779; x=1759386579;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KPvdBTUqrNUETXTQBR3pTDVkd6wGbjn3B7OmL+KStu4=;
        b=QsclTppaW8FCkdylBs+VrIUxCD0V8mcPtvS0XArf6EJ0uvCsgpRn1hTvzAVxwwNvnT
         0xjlJraJwXatiOO85WZD8YturmCPljn5wOMSjB1xgi1A0aOdVxAxsN6hVOhILQ/yiJ9h
         AkluIc7O07k7G20prGxiHMicX9lOYni22b7yFx5uqD9yMKJSvw/ntqfo4KBeXGYlMxyo
         WuTDgVuPNaJ407SNKtHWAyE6rCfxh0/uJjrhomkpwMuIIRdDk5OJeGAYVH0Ujl+s9gDx
         2Osj7u3gg3eykYS5IqqXxhQSSh8pdoSt0Q1M91HopG4pucwE7pz2iJusyyx54pPePcpb
         9Q5g==
X-Forwarded-Encrypted: i=1; AJvYcCXXuFpoelX0uBODL6rE/UmdiS5MpPzm9SdZRbsWCdL/qySBdbcVOV2w03JoeTASTNGUW+0+qxpl8Gig@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ9tUqGJ0nxPc5J+8m0RsO18NyNMTXOfAcgb3+n2wCpLxGnl0C
	Tu+HvtC3RNP6h0/eJcmMPw0A5/qRjLqOtljhxanatflpXkcEZBNFyUvBoD+ilbCziBEe0XNWtj/
	ybXxr9AVAJhzhQmLXL+/oMYp63OpTeIvuOYFD2vnbdDsUf1jLxdHcQuokLvlHuphQ
X-Gm-Gg: ASbGncuDdh0mwU9k2I/9pf8QV649utXLvZkC1vqkfuDGLzQhssl1AHKEABT/xZ/S3Gi
	A64yras4ckUVDkVfSgiAjjOCTqVWLS3uP5qAuaT5m6xcJUG3M7zXHlyPDWY387YcIjt87kWxMQY
	f+HkTNvrupzDP556iZOiFc6Dk7xudWtKuUmxKoBMlPykrxOAuFyDFaNUc56T8fsckVMHW3EgdIY
	TcdDWDd8pKeOZZul5ywy/vogfrtsNvXaYBcOrRPPSYQBQnJjV0ceL50mBrUpyYYUgbIdSRVIKTs
	a42+zkxvb36bHgWYso9Z1fMzvpPA8hv3WlwvQXymhE/7OvCnM0BnLHpS5lVdBKWEZ/Xa4QslNgk
	01Myl6Mdiae7fzCUSPu67aPgyUKlWtZB84bkRoPoZWTpoJstTPctJwGgwmXQF
X-Received: by 2002:a05:6a00:6ca3:b0:77f:1016:d47f with SMTP id d2e1a72fcca58-78100f3fbc6mr1594632b3a.8.1758781779060;
        Wed, 24 Sep 2025 23:29:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiJcVY8mgUCKJGRQ/chGcdmsCd6koRn194ynJqMHtAe0w2xw7zVi2y6zjFcHPP2JwBNE6LgQ==
X-Received: by 2002:a05:6a00:6ca3:b0:77f:1016:d47f with SMTP id d2e1a72fcca58-78100f3fbc6mr1594603b3a.8.1758781778616;
        Wed, 24 Sep 2025 23:29:38 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:38 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:19 +0530
Subject: [PATCH v2 13/24] arm64: dts: qcom: Update pmh0104 dtsi for Glymur
 CRD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-13-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d4e154 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Bl1eJC4Zh2N44W0__HIA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: XyCQ1KKE5Nssv2spwb_BeqaKgMYtmoRw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfXxyeiUd7Pc2DB
 zXlA5MisQBooyH01god2mJSY3qWaFIK6ydCjb5zS+KuG1CBEnUOwsSUQVAux8ojUSAvkUg+ZtFk
 rEaozggIHTOFcoP1t2tnZg0zeyUlTM219iWU69RrwdLiwwu/L9wtSlPyXetnb97uPioU+PC6gaG
 FKccVU+rEgJUnTZ2ZnG8h2cejE07eo5QAAe4+b8Lg1reRkY52vt3Ci0THXuozIx1zRhFQABqtIQ
 FVuYWaauIqxR56e3enAXLQz75njQL4SsRCMvcSbAVhvQA5mXjtIdZBT2tkFkhvJo5lDk/6yeQfc
 9exSLM4WVT4lrdM64RW974jWs7ZO/NH50fkH719eEiHc2F8LF1wixJ++eYYGah55HLRhWByNuJZ
 fKxYlukH
X-Proofpoint-GUID: XyCQ1KKE5Nssv2spwb_BeqaKgMYtmoRw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Update the pmh0104.dtsi to include multiple instances of PMH0104
DT nodes, one for each SID assigned to this PMIC on the spmi_bus0
and spmi_bus1 in Glymur CRD board.

Take care to avoid compilation issue with the existing nodes by
gaurding each PMH0104 nodes with `#ifdef` for its corresponding
SID macro. So that only the nodes which have the their SID macro
defined are the only ones picked for compilation.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/pmh0104.dtsi | 84 +++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmh0104.dtsi b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
index f5393fdebe957ea0caf4bbc16117374b4759bda3..d3ea7486d842ec813a79268fc1466e1513426d78 100644
--- a/arch/arm64/boot/dts/qcom/pmh0104.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
@@ -6,7 +6,63 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/spmi/spmi.h>
 
+&spmi_bus0 {
+#ifdef PMH0104_I_E0_SID
+	pmh0104_i_e0: pmic@PMH0104_I_E0_SID {
+		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
+		reg = <PMH0104_I_E0_SID SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		pmh0104_i_e0_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <PMH0104_I_E0_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmh0104_i_e0_gpios: gpio@8800 {
+			compatible = "qcom,pmh0104-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmh0104_i_e0_gpios 0 0 8>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+#endif
+
+#ifdef PMH0104_J_E0_SID
+	pmh0104_j_e0: pmic@PMH0104_J_E0_SID {
+		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
+		reg = <PMH0104_J_E0_SID SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmh0104_j_e0_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <PMH0104_J_E0_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmh0104_j_e0_gpios: gpio@8800 {
+			compatible = "qcom,pmh0104-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmh0104_j_e0_gpios 0 0 8>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+#endif
+};
+
 &spmi_bus1 {
+#ifdef PMH0104_J_E1_SID
 	pmh0104_j_e1: pmic@PMH0104_J_E1_SID {
 		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
 		reg = <PMH0104_J_E1_SID SPMI_USID>;
@@ -30,4 +86,32 @@ pmh0104_j_e1_gpios: gpio@8800 {
 			#interrupt-cells = <2>;
 		};
 	};
+#endif
+
+#ifdef PMH0104_L_E1_SID
+	pmh0104_l_e1: pmic@PMH0104_L_E1_SID {
+		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
+		reg = <PMH0104_L_E1_SID SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		pmh0104_l_e1_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <PMH0104_L_E1_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmh0104_l_e1_gpios: gpio@8800 {
+			compatible = "qcom,pmh0104-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmh0104_l_e1_gpios 0 0 8>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+#endif
 };

-- 
2.34.1


