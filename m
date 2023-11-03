Return-Path: <devicetree+bounces-13812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 809397E086D
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 19:47:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFD2D1C21041
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 18:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7EC2D626;
	Fri,  3 Nov 2023 18:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="LMwxpbwJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E7C33E2
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 18:47:28 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D7FF134;
	Fri,  3 Nov 2023 11:47:24 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A3F9wGb028392;
	Fri, 3 Nov 2023 18:47:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=cF5YEz4i9Js3iyz/f8C8Ioy6iZqlfrg1PIuDaaiS7gw=;
 b=LMwxpbwJqbdq1UlVep5UHSoUN76ZnxRBkTJqkboQ3USnhAf9YGX4wD1eqF92s/b7JHOn
 E8DKAuV8Gdy6VfGrm4KxsVs9WpTXuQKaTmsQ0s1+rbJNZ9yBc4tBOzuHvc9L51DfHBCX
 Xj2Ty9yULfvPi7ypk+b498UuCpO1n8RAw2ZLRUCLjyeHJ/XL67xhDtqYh/30nyQa5AlG
 C06CF4XUevel1smWHhgvA2A7oE8bdKYJInYn32ISSST7/XItGBnY5tm9/X35jhDyAbTs
 1m4owKTJJswwaJFSyheyeso6jGDtslg3zUag0U9ijkUjChP5GfVXlbZjaZetQdEWZ6Gk /Q== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u4wmjhakf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Nov 2023 18:47:18 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A3IlHaV008789
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 3 Nov 2023 18:47:17 GMT
Received: from hu-kbajaj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Fri, 3 Nov 2023 11:47:13 -0700
From: Komal Bajaj <quic_kbajaj@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_nainmeht@quicinc.com>,
        Komal Bajaj
	<quic_kbajaj@quicinc.com>
Subject: [RFC PATCH 0/2] Add support for qcm6490 idp and rb3 board
Date: Sat, 4 Nov 2023 00:16:53 +0530
Message-ID: <20231103184655.23555-1-quic_kbajaj@quicinc.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: -pPPKMggYkMVIoiH9TiERNyDQ-2VRMNF
X-Proofpoint-GUID: -pPPKMggYkMVIoiH9TiERNyDQ-2VRMNF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-03_18,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 suspectscore=0 bulkscore=0 clxscore=1011 priorityscore=1501
 mlxlogscore=410 malwarescore=0 spamscore=0 adultscore=0 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311030157

The patch series is following from the discussion [1] and taking the
suggestion, it is introducing a common dtsi, qcm6490-iot-common.dtsi,
for IOT segment which would facilitate abstracting the memory map
required for IOT without impacting SC7280 and avoid code duplication
for the boards based on QCM6490. We would be posting the memory map
changes subsequently once we converge on the approach. The series also
introduces two boards for QCM6490, IDP and RB3.

[1] https://lore.kernel.org/linux-arm-msm/d97ebf74-ad03-86d6-b826-b57be209b9e2@quicinc.com/

Komal Bajaj (2):
  dt-bindings: arm: qcom: Add QCM6490 IDP and RB3 board
  arm64: dts: qcom: qcm6490: Add qcm6490 idp and rb3 board

 .../devicetree/bindings/arm/qcom.yaml         |   2 +
 arch/arm64/boot/dts/qcom/Makefile             |   2 +
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts      |  33 ++
 .../boot/dts/qcom/qcm6490-iot-common.dtsi     | 291 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcm6490-rb3.dts      |  26 ++
 5 files changed, 354 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qcm6490-idp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/qcm6490-iot-common.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/qcm6490-rb3.dts

--
2.42.0


