Return-Path: <devicetree+bounces-3363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C09987AE8AF
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:12:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 54F192816F3
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D1CD12B74;
	Tue, 26 Sep 2023 09:12:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D6E1849
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 09:12:29 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B94FDE;
	Tue, 26 Sep 2023 02:12:28 -0700 (PDT)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38Q7LIUX014019;
	Tue, 26 Sep 2023 09:12:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=gvCQTCR/NydbDHGjQ2qfSwSTxf+YX72vUpmHW0UtVCw=;
 b=GJbTJzJIl6SOwPcSLVqYNnSvKUmRamoaFsy9RPFlz4XBRQQv3LIcnflQPmS+NSQ0vZkA
 98TBNE/FZKDhBqYdcsBFebkjbpWX9bm3vgeky9JM9/6EHhWGolBF68WxpKkp7Ge46BlQ
 mBDHhjmck4aqvhQai1DebGCMa2PTUiJjcV40GnKy4pXLexnFEosOEClkc3/UCLaWPOwQ
 nEbALog9EotvojAd1CCK6fgfdBQyJJZckhGZYhWHM5aLxt5I1j/0PGBYZYBZd9+88z+u
 ZQO6v8To7pemDclgn1V6sX5YyqwGN6yXamleGxVqwXVdwXUr0naVuK8AOxaIycWMa8Ua ng== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tbexghh0f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Sep 2023 09:12:22 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38Q9CLGF024877
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Sep 2023 09:12:21 GMT
Received: from hu-priyjain-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 26 Sep 2023 02:12:13 -0700
From: Priyansh Jain <quic_priyjain@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J . Wysocki"
	<rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui
	<rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-pm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_manafm@quicinc.com>, <quic_priyjain@quicinc.com>,
        <kernel@quicinc.com>
Subject: [PATCH v3 0/2] Enable tsens and thermal for sa8775p SoC
Date: Tue, 26 Sep 2023 14:41:54 +0530
Message-ID: <20230926091154.25463-1-quic_priyjain@quicinc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: hpniWQ_d2Pjm8wAYW9rLdALcs9u2XZhn
X-Proofpoint-GUID: hpniWQ_d2Pjm8wAYW9rLdALcs9u2XZhn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-26_07,2023-09-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 spamscore=0 suspectscore=0 impostorscore=0 mlxlogscore=793
 adultscore=0 clxscore=1015 bulkscore=0 mlxscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309260080
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Adding compatible string in TSENS dt-bindings, device node
for TSENS controller and Thermal zone support

Changes since v3:
- Correct the unit address of tsens node
- Updated tsens nodes in sorted order by address
- Moved thermal zones outside /soc node

Changes since v2:
- Indentation mistakes are resolved
- Updated offset of tsens srot region in reg property
- Updated tsens reg property cells properly


Priyansh Jain (2):
  dt-bindings: thermal: tsens: Add sa8775p compatible
  arm64: dts: qcom: Enable tsens and thermal for sa8775p SoC

 .../bindings/thermal/qcom-tsens.yaml          |    1 +
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 1096 +++++++++++++++++
 2 files changed, 1097 insertions(+)

-- 
2.17.1


