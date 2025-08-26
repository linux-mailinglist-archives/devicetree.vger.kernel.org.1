Return-Path: <devicetree+bounces-209436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFADFB37228
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 20:22:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BF498E1536
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A81F2372881;
	Tue, 26 Aug 2025 18:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bDtwhsfl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E964F371EB9
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756232507; cv=none; b=YpwC7BcV2Tac3vQIzq/bv8/5u7Y3TIyOi+9drjJhCnY9w2a1DY2PwNN8iOMBPje9T4ZlfWfAVM5i92kyoX94lCIaEEG/P4o5UEvCYWjmwqi0lppIzafQDETSwfheZsXzDXiGFErjB86PJCtj6N5+OncjMncljlBtzMMqSKF2GII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756232507; c=relaxed/simple;
	bh=bIBcAYpVmFWgxOVMtIDqpSvu09YY+NiCzJTZkWhGL/U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nrFhX1hsD2261MZVLDNPHVzKsSogxDTOkSopPKRGs7WdRVLx0s+HYiw4Bu02Tj2vs+4bpFJUeAMueAY3yTBHC3PkBliBeR3FOk7eMbRoNMZNT4z4/1OydNU1KERv1OI2MEPPL2gnCgUV05ZHl0U4WINYaIpIXrYHr11AtvLNqIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bDtwhsfl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QDfBsM031557
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZqG1x0C2Vi/fvgd89OKAZucnUy94PXEwuDfboAV8Cbo=; b=bDtwhsflUNbP/o1x
	AcazB4a+GFs2pD7dD1h643kybLc7UWML5+gP/pqDzrZJkHT/NT39fg7Txeo4Gmrd
	5Y6NCTSYnmiN2/j08mr3GzApkHBH1X2C5RYcSEPka/QWfI+4wOzaBX+irOdKpI7T
	L8hSmKTBmlHaZeVS+fl+iU6mfh+eDj0NORRBziAkCj34ta5fK7AyiHNmuTqHSBpz
	PLuT8u+9aNDOOKZwL9dC/Uq6NYE4h8Yaf0rUoIJ98GM9q6w2lXn8ofOVXRJMpJum
	UGu9QRGpdCAAeIs6I9p+jLlVp9sB8rWFVyTbuAIDxVwsAeJbmBNYCRst4ggNLLNV
	xZCYQw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se16s065-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:45 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b47630f9aa7so4618164a12.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:21:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756232504; x=1756837304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqG1x0C2Vi/fvgd89OKAZucnUy94PXEwuDfboAV8Cbo=;
        b=LRS7snDHHj3kZRSMyUenkk6eGzs6rp/p+V9GDqRPUSShl+a8EwTNr5RIVPIn8e7F3O
         pcy2vI5GRozhbXYZzVhWmvmIODmIiEWJyCz2gxw+1yuarTd/SQcKQVo5GpR+5IrWHq/h
         r+wMj3CGHl+vwKY+UZSON+WAlHufm83vqd9RkPpRuHg4mU8FY8D9NxDhLgQTABQFkdPk
         Z55P7VB9bAbjdVueU2iKDgRrI+ntsXg1LZfmJNICbsPQSvZlapS4BEGeX6TJPh45qxKi
         h1M2/XMt+EJ1Lf31Td1vDUyBPLXpgoKA76lUu1bWNw/+Zl+whhqxtLjaFe7gxL962Qqq
         Pj9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVTgYIdmyH9eI9Fl1cj5vooyjtZKlpTwWS/kLR/Kd/eRk42w+yPFx7GsN544Ge8FmjQcEIZcBro7kFk@vger.kernel.org
X-Gm-Message-State: AOJu0YwIJYp/ENBTN5VVLA5KIb32oP+okZytv2j1F1o33kE00NH8M+s2
	+XWC73869Atd9oaS0CMsuKc9mp11foMPrk1Oosvv1nL6chAISdYmPIoXmac6zHjlyypzSdlGvex
	69m1kcnBUIKnFeslTEgiGJLvZikTWOfciuEZlxcJM/Y8U7Vsp9jWn5Rm5LyjN/D0b
X-Gm-Gg: ASbGncuvtczrpxT7vpWAz+WSROjJbt2lOiIthphDlpSOxJ2DWu+iDN9CIaQe89vkMVZ
	jVMteWvXRBTdN5J58Yh4YAu31QILUZGbKE0FPTi2DOZFjkrOWseRaGbQgkLKs42HBmH+Iezsd7j
	FNHdH1Djl67eql3ZXm+ozEVLjSnDjoY16D784bbylk3EL0WdunDnt0DbdSy53ZlkG6939LBDXxq
	nXe0WgpYNrjqwaZG7fKBAHfzCwIkF7A3ITY9Tj4VGyyEj2bLUgUTZRGSJT2iL5l7kcPQmlUq4xB
	6/DLcymleGCFzSCiueC1GQrlI5y/5acB2W+Y5xhO8l9muqFAWHpDV3VHW1/bQab1aFJu
X-Received: by 2002:a05:6a20:7495:b0:243:78a:826a with SMTP id adf61e73a8af0-24340dca336mr25779259637.48.1756232503999;
        Tue, 26 Aug 2025 11:21:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFi/T/3A+ZcqC2AyUm9So880Y60J/r0weCuRK5mB8bTebqwx94ASLUPJmyFLFQGaQpDcSY+eg==
X-Received: by 2002:a05:6a20:7495:b0:243:78a:826a with SMTP id adf61e73a8af0-24340dca336mr25779228637.48.1756232503505;
        Tue, 26 Aug 2025 11:21:43 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77048989fe6sm9881803b3a.51.2025.08.26.11.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 11:21:43 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 23:51:03 +0530
Subject: [PATCH 4/5] arm64: dts: qcom: lemans: Add gpr node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250826-lemans-evk-bu-v1-4-08016e0d3ce5@oss.qualcomm.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
In-Reply-To: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756232476; l=2037;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=40OWUv9iedJbCp6fZ7M8XF7kvnUUAqEsRqjGx3RvYOU=;
 b=y6s8OZMnYzKwwtVKaCt6Eoe6yyzw+1yqHwQFGnEHHe+s9/+8MtfFNQGbYa/ABeAkLkDe5ZYZp
 WUnLen66DySA+GDKrVSluY8ZYNI9Fzmrgkbx8xGWSauNgfqCD6xGISL
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: slCC0cUIBl2w-RmtUx5P8NIXQW1aj4Uc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfX9blHCFAch44k
 vE3IFBnHzgODwPhXUuIDTfyeHVeqdKPYhVRBMEiBtvXqc6EFP4LBa5TP65pmbsfT5vWTX0fb/RS
 7kgFmyxBMjsEXliROHdC+iwWxAa7FGTmVAx+vuurzFaVsnaTLZHSFWkImI/kUY13IjQOX/j9NKK
 f6ACslXF+aOKcGgJ3IYBQG/hwY49UkB122uiXowJmQQ+yYzAl+akgmPt3+IWvAG+VF0cPvVFYzN
 fU6e2N56JMGVkVs/WaKhEnkhu1x9hQ7+S+i7fvDcv8hczthF8MD8QDGzBksG+qKC3rEfWLXVi6t
 Z0D+N8RohWm5qacQBLHZ7Yjc9eV+1NsJwTuAAF2WfHjKsFzys+g1JAXsWo8R0qQSaBBt2F9x05X
 UXYF7srq
X-Proofpoint-ORIG-GUID: slCC0cUIBl2w-RmtUx5P8NIXQW1aj4Uc
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68adfb39 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=vHYnVJDjh8PKMNTngWAA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120

From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

Add GPR(Generic Pack router) node along with
APM(Audio Process Manager) and PRM(Proxy resource
Manager) audio services.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 40 ++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index a5a3cdba47f3..28f0976ab526 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
 / {
@@ -6679,6 +6680,45 @@ compute-cb@5 {
 						dma-coherent;
 					};
 				};
+
+				gpr {
+					compatible = "qcom,gpr";
+					qcom,glink-channels = "adsp_apps";
+					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+					qcom,intents = <512 20>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					q6apm: service@1 {
+						compatible = "qcom,q6apm";
+						reg = <GPR_APM_MODULE_IID>;
+						#sound-dai-cells = <0>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x3001 0x0>;
+						};
+					};
+
+					q6prm: service@2 {
+						compatible = "qcom,q6prm";
+						reg = <GPR_PRM_MODULE_IID>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6prmcc: clock-controller {
+							compatible = "qcom,q6prm-lpass-clocks";
+							#clock-cells = <2>;
+						};
+					};
+				};
 			};
 		};
 	};

-- 
2.51.0


