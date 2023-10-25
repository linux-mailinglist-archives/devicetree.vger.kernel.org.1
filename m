Return-Path: <devicetree+bounces-11948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5817D7213
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:07:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B8351C20D30
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446E42AB5C;
	Wed, 25 Oct 2023 17:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="klOn9/8/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BEE2AB2B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:07:20 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37238111;
	Wed, 25 Oct 2023 10:07:18 -0700 (PDT)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PDSXkl009831;
	Wed, 25 Oct 2023 17:07:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=y6zru/gFf12rbnP/RfQ70uN3GmCX7BIPiHJP067QT0o=;
 b=klOn9/8/pAI7tywctxwR/mObYwY7lRhQ4M017Y56OR5odBD+XZ3Ha6Hc9hkglXBwI4MT
 aQx62CCPeY9FSUGxspo3cfSVVuPkVC/mJLHvfv05PX3d8q7LeLH5UY0B2jGaIqEGEjuZ
 5/I5AG6MKco0g05XUtZSjpwCMRt4oNGjzkiC8aXcwAPoscLxKbwRN6vNt0+czfgDljkL
 OQF5ZiKIg7adqZ88Cwg8/xJkwfhMOqXw0AMbkyaDKPtVB+2C8Latk61no31Y20Xs+zfr
 U8xVt1gczqi8TwpCqEp8udzul0cT7w1ip9X241s0x4e/eOABSmD2GkTVm3RCgIW9Ep1c Uw== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3txpj5j0aw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 17:07:14 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39PH7D2Q017793
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 17:07:13 GMT
Received: from hu-mojha-hyd.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 10:07:10 -0700
From: Mukesh Ojha <quic_mojha@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Mukesh Ojha <quic_mojha@quicinc.com>
Subject: [PATCH v2 3/4] arm64: dts: qcom: sm8350: Add TCSR halt register space
Date: Wed, 25 Oct 2023 22:36:40 +0530
Message-ID: <1698253601-11957-3-git-send-email-quic_mojha@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1698253601-11957-1-git-send-email-quic_mojha@quicinc.com>
References: <1698253601-11957-1-git-send-email-quic_mojha@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: g-DG-ERKfBFgOODYtW0OP3H0-6issEkK
X-Proofpoint-GUID: g-DG-ERKfBFgOODYtW0OP3H0-6issEkK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_06,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 adultscore=0 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=810 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310250149

Enable download mode for sm8350 which can help collect
ramdump for this SoC.

Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
---
Changes in v2:
 - Improved commit text.

 arch/arm64/boot/dts/qcom/sm8350.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index b46236235b7f..0a0d47d7dab1 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -289,6 +289,7 @@
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-sm8350", "qcom,scm";
+			qcom,dload-mode = <&tcsr 0x13000>;
 			#reset-cells = <1>;
 		};
 	};
@@ -1818,6 +1819,11 @@
 			#hwlock-cells = <1>;
 		};
 
+		tcsr: syscon@1fc0000 {
+			compatible = "qcom,sm8350-tcsr", "syscon";
+			reg = <0x0 0x1fc0000 0x0 0x30000>;
+		};
+
 		lpass_tlmm: pinctrl@33c0000 {
 			compatible = "qcom,sm8350-lpass-lpi-pinctrl";
 			reg = <0 0x033c0000 0 0x20000>,
-- 
2.7.4


