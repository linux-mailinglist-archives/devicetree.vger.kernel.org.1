Return-Path: <devicetree+bounces-4511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 882B87B2E21
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:43:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3942C282D7B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:43:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E561D8BE7;
	Fri, 29 Sep 2023 08:43:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D92AEBE;
	Fri, 29 Sep 2023 08:43:01 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2691192;
	Fri, 29 Sep 2023 01:42:59 -0700 (PDT)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38T8ePCd020771;
	Fri, 29 Sep 2023 08:42:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=uSMLX75mWCZNaKWjpTPvmVN0X1WE4yDzVcF62/BNJ4Q=;
 b=IwDDx3NANBUvWYjZ9poDz5ulec1XKS8AOT368aVE+ccbfcI4TfFe1tvqyGBkkoP7rWOe
 +XWy2ia7PKZ8pLYkeFUVa/U7h/fusomXKoX2whDKcaohT3cCGPUgf/mvyNLTbv5DJqyL
 xmOHrU9Bsz3Yb7xu2lrBqdCnhZW56xHYRHVh7dEjTBW2VQjhM9q/x/gYY0/Ubs3rWV+p
 fZ2gVsHIBfIPtWMg6/i2hMTTJJdzFj/zil8h/5E/y1S1F6lqOziBBXO+pnWVm1Iln5BG
 +h7G6nZxsq/UZ+gxvPct6YKDDfswTcEp1SIA5NI0/dqzCItJ+UEU3Z8OjlH2vjeJpPpE lQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3td24uaw07-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 08:42:34 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38T8gXpJ026997
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 08:42:33 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Fri, 29 Sep 2023 01:42:23 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <geert+renesas@glider.be>,
        <arnd@arndb.de>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <u-kumar1@ti.com>, <peng.fan@nxp.com>,
        <quic_wcheng@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_kathirav@quicinc.com>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>
Subject: [PATCH 0/8] Enable USB3 for Qualcomm IPQ5332
Date: Fri, 29 Sep 2023 14:12:01 +0530
Message-ID: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
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
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: zCnb6Lekb27uVrJ1pV3Nm1Ks_1SeRTRe
X-Proofpoint-ORIG-GUID: zCnb6Lekb27uVrJ1pV3Nm1Ks_1SeRTRe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_07,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=15 clxscore=1011 malwarescore=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 spamscore=15
 priorityscore=1501 mlxscore=15 mlxlogscore=77 adultscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309290074
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Patch series adds Qualcomm 22ull Super-Speed USB UNIPHY driver
support present in Qualcomm IPQ5332 SoC which is required to
enable the USB3. This PHY is interfaced with SNPS DWC3 USB and
SNPS DWC PCIe. Either one of the interface can use it via the
mux selection present in the TCSR register. Current patch series
adds the support for UNIPHY with DWC3 USB.

Discards the first patch series as adding a new driver.
https://lore.kernel.org/all/20230829135818.2219438-1-quic_ipkumar@quicinc.com/


Praveenkumar I (8):
  dt-bindings: phy: qcom,uniphy-usb: Document qcom,uniphy-usb phy
  phy: qcom: Introduce Super-Speed USB UNIPHY driver
  arm64: dts: qcom: ipq5332: Add USB Super-Speed PHY node
  dt-bindings: usb: dwc3: Add clocks on Qualcomm IPQ5332
  arm64: dts: qcom: ipq5332: Add clocks for USB Super-Speed
  arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY in USB node
  arm64: dts: qcom: ipq5332: Enable USB Super-Speed PHY
  arm64: defconfig: Enable qcom USB UNIPHY driver

 .../bindings/phy/qcom,ipq5332-usb-uniphy.yaml |  83 +++++
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  20 +-
 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts   |   6 +
 arch/arm64/boot/dts/qcom/ipq5332.dtsi         |  40 ++-
 arch/arm64/configs/defconfig                  |   1 +
 drivers/phy/qualcomm/Kconfig                  |  11 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 drivers/phy/qualcomm/phy-qcom-uniphy-usb.c    | 322 ++++++++++++++++++
 8 files changed, 476 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-uniphy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-usb.c

-- 
2.34.1


