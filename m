Return-Path: <devicetree+bounces-192908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADACAF8837
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:43:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07F046E153B
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 06:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFDB426280C;
	Fri,  4 Jul 2025 06:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h26nSnF3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F522620D1
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 06:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751611420; cv=none; b=MKLDlSualBJdny6UIgbWdDHh7CbbVBXbbwylvMOsh3F/0zMfop7+E36x7cHSJb4HMr5mpVrop6jkqjaDvNj9/ASv2XGQ5AY4cAXWXev3XUjSpaCNIjImGe1zJ7SdQFL4UiJ+iBakaijavDrj8QtpVjw0YBXWD+jCF4qW+JTe7kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751611420; c=relaxed/simple;
	bh=zsNDOxtssyyXKwrA/Xqhu6xlTQfQcZiumpCvpHLeiVE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Af4Mu1peD2KmTmri1DMTIAcfVZxaOkhfvvgJacyqcmtcuCbpp+np0XklElZIBvvLzfI0NtyBsriECPdFlMkHtxNh33CwV5x/FqrudJPju0tCImbc7bxuCLjL0Nj4I47MEZv4bZXEdA0XUPOlmvnpawZDublDrtyqgyiYKqWFF/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h26nSnF3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5640uigK022671
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 06:43:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K9lCHtaEWJJtL5rVllaD+CR/7jxFq0pVmlc9VCIqSOw=; b=h26nSnF3Q3g+IacY
	uNOEDguBAwPTCxknylnB1foU5LxLV5TFZtyXFurVQf+FGQv1K5LnHRHCGQF0WQGy
	o9FU9CgnsBubUhCDxxyTlKFU2DMRySQnr9Ax7ii0FJtIvMZnsN9eRIBNhuoyt1U7
	lKiWvkt/yIa7WuDhlrJe4Buo0uRGdyoXJGKR6LYsfdRF7svQMv/lcbYryheIDuQ3
	S52sooHPFY5oyRncCVHGugJ/AwTyLFBfqjVMHkz6+6Y+JQONB1amPKmcHVGUIYUh
	fI5cKm2m/XTPCBg7wM9JNP8gnj7SIYBlRmAmNTvgUD07Xh9XAtNeY4aHm4rn0ekA
	GV2SOQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47mhxn9es6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 06:43:37 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311e7337f26so606318a91.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 23:43:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751611417; x=1752216217;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K9lCHtaEWJJtL5rVllaD+CR/7jxFq0pVmlc9VCIqSOw=;
        b=YZYyXeRTjgZzIi5vQik2ueCiDYeXKODnhcF7r48AUzrH3xfE3I3wb7jrfrJ+LqpkGS
         BqgfhYqzuIJOURfii9f+thXxplPTSLbMEmFZYeFnVSvz+8LTj+XMfeQCeN1bJ4F6t9ws
         WfcRmwTf3pkRqzsbly0qQvkX8vDAGmNYHQobMe1Xz6aejsCafD1xy0beE81SiwUpSfe0
         GBRmYnLwEnnLpFLTUXX887E0fAliBiujcvob1hmcpJRN+CkVYhQHOiTRvYDRKS3mLXKW
         c/5bapCSCkX2E/VN38A569AUmCDOkDQRLbq76XxsWE5hGrs6uHOy/oSRaX7NBfhJEal2
         +SPA==
X-Forwarded-Encrypted: i=1; AJvYcCXH6k+1P7dehQBKc469iiUPE8oq3quWoiADuhO3tHoeqHwu0JL372aosS0DzpOWdygYj3Ir5j3ufyKY@vger.kernel.org
X-Gm-Message-State: AOJu0YzUI7sSNJ6TyDRM7Gt8WiWNe5hmWfST1J0Xxk1G1fwDdRhBACuJ
	oqwQtRo6Fjx8560WWGL2nq99XkWX2ePzxk+H7pAKQ/oI6AGqm6Rub/zEd1pWZwPHhI7GiHKJE1i
	+abdx7JrZT1snvTmpuWn65TefosHNiczUMVC9/avogtmnY5AJ0A7inneQtD1rZvJK
X-Gm-Gg: ASbGncuLZ7gUObY3vaPPwQ9CYv7lHi06jmZBSS/a2eXwYkkHh5bB2dFqjntP0VPii84
	ib+i9iJVl8dQSs1yCvwrsndtub3XEI1OXnNqKf8ybGHgq+HubTVarWWnx6W+E+t9Tj1tsjfSEUk
	VFOYP0TtzoamdPqYzA3YwP1xmmIMXw+3XvkSFviBKpe55VIRWKIAGe8VR3qm1gs+r6EbgWCrlPO
	H/p862gb39kkQBFdhZNEgar+8/ZuSW1aozCRtjIUlDCVgLCLzFRa89N5EHWBGUCwBedhWGXBoqr
	bo1VZ+8Hvvo7XjUUzMngU61l81aCM5E3qba5SNKZ9eIxlVl1K24BVx2QTlfDAbQkB9h3x1qE/QK
	jYGhr0I25TQ==
X-Received: by 2002:a17:90b:4cd1:b0:311:e8cc:425d with SMTP id 98e67ed59e1d1-31aac44b73cmr2387057a91.10.1751611416604;
        Thu, 03 Jul 2025 23:43:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoc11QV9ma5uxW2FB279y2pYSq3X2bkAUDt9BdmUrudJX4cC2ZYBnxo2xgq0gjyejcuVPGDA==
X-Received: by 2002:a17:90b:4cd1:b0:311:e8cc:425d with SMTP id 98e67ed59e1d1-31aac44b73cmr2387014a91.10.1751611416179;
        Thu, 03 Jul 2025 23:43:36 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae3e24asm1260338a91.5.2025.07.03.23.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 23:43:35 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Date: Fri, 04 Jul 2025 14:43:20 +0800
Subject: [PATCH v3 1/2] arm64: dts: qcom: qcs615: add a PCIe port for WLAN
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250704-615-v3-1-6c384e0470f2@oss.qualcomm.com>
References: <20250704-615-v3-0-6c384e0470f2@oss.qualcomm.com>
In-Reply-To: <20250704-615-v3-0-6c384e0470f2@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751611410; l=943;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=zsNDOxtssyyXKwrA/Xqhu6xlTQfQcZiumpCvpHLeiVE=;
 b=qO3rspRRylitl1mLHaDZFgCCQWera3gUWAdzx6UMBGz71sNr1+/vkEah8eeHdcOmoCc1ihVNK
 cUsNJlcDjapCcWCQikvTbOrGqdSd84Hmpp8SLjVcJtFl0W5NjwA7hXN
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA1MCBTYWx0ZWRfX6v47rkky8oJV
 5FLOQr7p09zMpQh2xvFDEvC8ASkf6ngX62Z8V/YUnMxqgf6yigXRLMJjNYYRbA6pcZJSTBrZ8ZD
 0hH9oefTdlXrxPU6CfEsmaPrmRfoj1UEYrkG79L4NJs+AjndRtBBtCaMg4PC/pDgWss0SIr1ngI
 I2Vcul9l7u8Jns+8uVNWYnB8nScGD8lju6m25vmTIX1PavBvgHynUdSf3a+GHAouZ/R1nHOR4MQ
 9HPPzDl5KWak4PlkgbeljjJxIFZW/+Xjc62Q/+jXhKYz2cPTD+v3xnZGQIDQKb5QNMRzqYqKEeN
 f1bqV+rv15lkxaYWBfXtzWms6yV9FTwUUP7BzCPl1S29T1uCDGwQXDvYTCVFWXD+TuQqVg5qXup
 Yrx7pZltTJ1wYvAjfpUDSkHY3SMyMWgtkeno0aZQSzkYjvDPNgjz+K7HUBFDk+DkXgsWnU1k
X-Authority-Analysis: v=2.4 cv=EbvIQOmC c=1 sm=1 tr=0 ts=68677819 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=dI-8CA4c5Xf8_vBnWYsA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: JrOy7WEqkEY5YiT_xBFgBJzcnSVOEi3P
X-Proofpoint-GUID: JrOy7WEqkEY5YiT_xBFgBJzcnSVOEi3P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_02,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=943 lowpriorityscore=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507040050

Add an original PCIe port for WLAN. This port will be referenced and
supplemented by specific WLAN devices.

Signed-off-by: Yu Zhang (Yuriy) <yu.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index f4b51cca17de5518aad4332330340a59edfdc7ec..b4fbed517cde18e088096d182fe6b482363e403d 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -1173,6 +1173,15 @@ opp-5000000 {
 					opp-peak-kBps = <500000 1>;
 				};
 			};
+
+			pcie_port0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+				bus-range = <0x01 0xff>;
+			};
 		};
 
 		pcie_phy: phy@1c0e000 {

-- 
2.34.1


