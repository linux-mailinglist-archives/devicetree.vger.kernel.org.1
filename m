Return-Path: <devicetree+bounces-12757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD037DB663
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:47:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E6CF1C2085C
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DD9CDDBC;
	Mon, 30 Oct 2023 09:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="fcuDq4jt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1380A20EC;
	Mon, 30 Oct 2023 09:47:44 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6266B3;
	Mon, 30 Oct 2023 02:47:43 -0700 (PDT)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39U9F9Mr031836;
	Mon, 30 Oct 2023 09:47:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding : to : cc; s=qcppdkim1;
 bh=aDLuPNmwH3qDsJ5tX0K+aUJmJTHPeIZoarRXhkJcGLM=;
 b=fcuDq4jtIA4WZUDx9Xb1zWFo5nmz93aqLhdty6PxCKPCVpnW/14gnJv/51/Zqc2TDU9w
 iRTcuoMidvfLoSLbhISlheZ9nTYSEJIT831YqlIUoVBkni/mpnmHG4n5mt2lj1eCmjTd
 LoPdwDavW1Vn4N5pAwiw7h1gOXEOweMDWytIWt5rTTzVN21PF82W7kfttlTWRRj99AFg
 UyByPBMedZEummW2zHC03b7DBVQRkZ5gfdCxWDmzfpJ2dKvyYTuJGFLaMEEYgB7EGhVq
 eO7bTDyz+YdDFME0BZpEhkraaTItb75/iTQGb71kc9TUtfc8oybo+yCVoHElu0R5ekX5 9Q== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u0u2qkank-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 09:47:31 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39U9lTOM006327
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 09:47:29 GMT
Received: from hu-kathirav-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 30 Oct 2023 02:47:24 -0700
From: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Subject: [PATCH 0/8] Add NSS clock controller support for IPQ5332
Date: Mon, 30 Oct 2023 15:17:15 +0530
Message-ID: <20231030-ipq5332-nsscc-v1-0-6162a2c65f0a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKN7P2UC/x3MQQqAIBBA0avIrBPUyUVdJVqITTUbMwciEO+et
 HyL/ysIFSaBWVUo9LDwlTrsoCCeIR2keesGZxxag0Zzvj2i00kkRh0oxImsRzN66E0utPP7/5a
 1tQ9Y0EenXwAAAA==
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette
	<mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Catalin Marinas
	<catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        "Kathiravan
 Thirumoorthy" <quic_kathirav@quicinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698659244; l=1910;
 i=quic_kathirav@quicinc.com; s=20230906; h=from:subject:message-id;
 bh=i7HQID1yleIY4kaaaihCohVzkhgNE60JyznG8qgF+qI=;
 b=bIZzwg28QrD9cib5cZVLQyWnG1PgX9EULd3REkbp3oU2G9kZY0NOjxSOW/cXOK1EjmZnVayim
 BJrFU6OaJr4C5qkMPzEkMsqy2VXViqvrkV0RBFJnQLoEwhEtah2vqjq
X-Developer-Key: i=quic_kathirav@quicinc.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 7TvSXoqjlaa0_yEg0GnkNJstyIpUaaHa
X-Proofpoint-GUID: 7TvSXoqjlaa0_yEg0GnkNJstyIpUaaHa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_08,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 clxscore=1011 malwarescore=0 suspectscore=0 mlxlogscore=838
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310300074

Add bindings, driver and devicetree node for networking sub system clock
controller on IPQ5332. Some of the nssnoc clocks present in GCC driver is
enabled by default and its RCG is configured by bootloaders, so drop
those clocks from GCC driver.

The NSS clock controller driver depends on the below patchset which adds
support for multiple configurations for same frequency.
https://lore.kernel.org/linux-arm-msm/20230531222654.25475-1-ansuelsmth@gmail.com/

Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
---
Kathiravan Thirumoorthy (8):
      clk: qcom: ipq5332: drop the few nssnoc clocks
      dt-bindings: clock: ipq5332: drop the few nss clocks definition
      dt-bindings: clock: ipq5332: add definition for GPLL0_OUT_AUX clock
      clk: qcom: ipq5332: add gpll0_out_aux clock
      dt-bindings: clock: add IPQ5332 NSSCC clock and reset definitions
      clk: qcom: add NSS clock Controller driver for IPQ5332
      arm64: dts: qcom: ipq5332: add support for the NSSCC
      arm64: defconfig: build NSS Clock Controller driver for IPQ5332

 .../bindings/clock/qcom,ipq5332-nsscc.yaml         |   60 ++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi              |   28 +
 arch/arm64/configs/defconfig                       |    1 +
 drivers/clk/qcom/Kconfig                           |    7 +
 drivers/clk/qcom/Makefile                          |    1 +
 drivers/clk/qcom/gcc-ipq5332.c                     |   71 +-
 drivers/clk/qcom/nsscc-ipq5332.c                   | 1035 ++++++++++++++++++++
 include/dt-bindings/clock/qcom,ipq5332-gcc.h       |    4 +-
 include/dt-bindings/clock/qcom,ipq5332-nsscc.h     |   86 ++
 9 files changed, 1233 insertions(+), 60 deletions(-)
---
base-commit: c503e3eec382ac708ee7adf874add37b77c5d312
change-id: 20231030-ipq5332-nsscc-aeac9e153045

Best regards,
-- 
Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>


