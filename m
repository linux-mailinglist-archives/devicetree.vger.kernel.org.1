Return-Path: <devicetree+bounces-213683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25413B4638F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 21:24:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDAA5A43CC6
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 19:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43C7528136C;
	Fri,  5 Sep 2025 19:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PwJCAGjF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB23280A52
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 19:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757100250; cv=none; b=opsU5WViBhhDxY4ep59ITwa1snGvBFg1+7Tf7xIZQj7MHPEzrc41PNWTQvUVJAAd4OST4u34x5l6zuR4HcNjwvWwQ7wJHDYYUwDCgM/fUjnFje+WOLldRzMtm/nJCnfWYNKCH4dr8btgsY8w24YpJl6QDqiC/kvV9+ZL2DcBwOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757100250; c=relaxed/simple;
	bh=YqiZVY/P4h11n1YmoIH61y5tP5iX1W/rqinOGkDAsXc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Fj2zEVoxxSH3dc4jtN0wme5kfSKmtt+a7cmbunIyIe8Aet8ZC7Td/MPh3Cw0er5rjzt8U5n3Zi+4ZPsz/mguIHjcFm1g3JtxcMfcYRk7jUfGdj23FIAjGP9iQ26TP7R/QmnWSV6AWNlxC2/XQZblouP9HUGN7qICIvrsCMxEwgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PwJCAGjF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 585GVIjI031176
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 19:24:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=C6tu2IKK9J7
	3Tb0vlq0onDfqNFgl91nLHdqPT79aifw=; b=PwJCAGjFNduF+w1QfuOyuYr/b1Y
	+Hb56TzTTZkSOk93H8JGaYq3qIcxte1cLbEr/iGTl/SFcJd6Dkw6arQnGNfPmb6V
	YNEccW0ANW8jL7byK1AvAL4UcQIk2u9qzLG3U73u0p3d5k0OQ7Wdglo8A2u4X12R
	vEtXMGkaUiA7LIZia6TFBFSrvnP46wyNErCughL8Cw6jgjfR077UQjsPAZ1uhC6z
	MDyfhYQwrNiC1qdZN0pbsMQeV2Hr3K+mbsjt+tBcGOPVIHnaTPHOZYAdGUWVqL+Z
	U83XT4yY2YEmOlCeF88kKfmTK1yjugXNI78zsO7ZbrAD7Vae93UftgNbz3w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4903ev0j2x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 19:24:07 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-244582e9d17so8124435ad.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 12:24:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757100246; x=1757705046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C6tu2IKK9J73Tb0vlq0onDfqNFgl91nLHdqPT79aifw=;
        b=cN/Zqn313mEInxzWTDDsHAypR19pJyfae4eWn4mRHmMNkxnu8xUjGw/0x0ux1xL7XW
         OTvAOG+OuSQ7SQeF48tw5hGhbY5Y/PCCBN78GAg/8bRJ1X7fdld59CKEvj5MQUpfLSpS
         ebLKHaJF19BH7tQiMqT9NqaikF6Xjl2kibhCe92N5WG0I0gGlpFUfb2VyGDprIrwNi4w
         evTzZ9dZS2WPsv0FKNRCS/cDKeEDtMBrLA/6YiQzJp3uUnPj0k5ksoknPCuWe+56676e
         5vkocF6TDDgrcEASKaIFiuuuIoHuFEjwHfe3C3332AUz/g5VSsqGNJQyG0kYa90iVbu9
         ae+g==
X-Forwarded-Encrypted: i=1; AJvYcCX5zc6oFKdVZKvS6VgBOcPDhG1dzAklm8XLeLQparU2JPVT1rodcIiS+Wgn8rA0mii2ytghfimqUaI1@vger.kernel.org
X-Gm-Message-State: AOJu0YxNoHE8Ssezf/zkr+l6cEkwDcpcR/+F99sQKNESmMNgCDEiGGoB
	F9PqmuELEZYuTd2sl4iLram2u3m463hBKbB9X9B2GPmDQQZf2XamuDXcJhLGvHEVpezvedwq2zb
	SMV4BE0f7Axd8HU1o2tVCd0FLKuzWUGPCGJj9rz/ewq3lagHXLlmfOigZACvxzCLqa1PbG+gG
X-Gm-Gg: ASbGncstM5xTPr3lK++RLV9cPNnYingxvQDdWuYFO0edRJZjTx8i4zaojIp3NX3qufO
	YH9r5O79Ejllb+A2pgwWzYJvtkapbMsxo3NugMgCWiiRh/ID4dSl1ah/5DvtDpa4U5LdsxdvaHC
	FYFSWTa8Ehe9xKREmEqU179oh0rUNrYJYw6EIbjstP3IM08d6jVMk400Px3ukCPPYs9RjayYS7D
	f8d7319PnhCEDMY8qsiMZKQe9F68YJFT7wPUgd/IXXs5K05NMDmU9fX7Q7Irpjlp0/Frtm1bnR4
	R7xW1shf/UNl94A2MSdmfOuyIxL5tuu7FsEw1vOvDvHIUrjV49d9SCbdnsfWUipoYWdaTOQ=
X-Received: by 2002:a17:902:f685:b0:24c:cbcc:b7ae with SMTP id d9443c01a7336-24ccbccba1fmr47886175ad.6.1757100245877;
        Fri, 05 Sep 2025 12:24:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoJx0yV9ecXAM7dTdlqqlzkTwUnZuQQ157sQUdg4pT7k4YQPWllhK9a75O4rc4HuN8GCcwpw==
X-Received: by 2002:a17:902:f685:b0:24c:cbcc:b7ae with SMTP id d9443c01a7336-24ccbccba1fmr47885965ad.6.1757100245298;
        Fri, 05 Sep 2025 12:24:05 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24cc1a82a34sm52397055ad.151.2025.09.05.12.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 12:24:05 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
Subject: [PATCH v4 3/4] arm64: dts: qcom: qcs8300: Add gpr node
Date: Sat,  6 Sep 2025 00:53:49 +0530
Message-Id: <20250905192350.1223812-4-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
References: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA1MDE2MiBTYWx0ZWRfX0QCnh000oUcI
 X3GZyY1fcBTJS7CLYa82m6rPFsHZJkFo2bllYbsyquC0wFsH5p0Db5S70565mmMxoNzEkzlsmI9
 w9/le6GXbXtAplva137m5TH7ScBEVT2/CK7Ez3FdCNvhJQ9W/lEjntNZpxBqZZ+S8p/TXjLP2Rt
 W9ITaXq8xRZref8SEEi7nESlfsBJmZcDPqWtULASXOxwnxhapzjZ+KpCDibrWE9X0cSnQZlpgVc
 8FkN+UArnz/FpzbnQpVPnh8Q8gfyzJrU2x0UqjKmZZtqk126vzvrzIxNCLXNPo/NJ5Z5onlkcHl
 hJIePKeDQc+OCAll8UTP7dWhPefo1HtfQjSlWj1O4DZ/rBRgufLtv/MhUSFnryldU3Y1gMfSdNJ
 NrPLCCHU
X-Proofpoint-GUID: Du7botu_5Pd5yZaMbl2tfepyiQ81c9Hf
X-Proofpoint-ORIG-GUID: Du7botu_5Pd5yZaMbl2tfepyiQ81c9Hf
X-Authority-Analysis: v=2.4 cv=drbbC0g4 c=1 sm=1 tr=0 ts=68bb38d7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=YnLsFFvNRNnE3KoHtkEA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1011 impostorscore=0 malwarescore=0
 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509050162

From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

Add GPR(Generic Pack router) node along with
APM(Audio Process Manager) and PRM(Proxy resource
Manager) audio services.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300.dtsi | 40 +++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index 5edb137d1471..8ae843567ea4 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>

 / {
@@ -2427,6 +2428,45 @@ compute-cb@5 {
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
+							iommus = <&apps_smmu 0x2001 0x0>;
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

--
2.34.1


