Return-Path: <devicetree+bounces-9591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AEB7CD7FD
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:30:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B9D628127D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E66EC17998;
	Wed, 18 Oct 2023 09:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="lY6Ead4j"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC75F1773B
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 09:30:30 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C0A1B0;
	Wed, 18 Oct 2023 02:30:29 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39I7bqnP010211;
	Wed, 18 Oct 2023 09:30:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=0/z1aE8IPiETaIScHbyhLazcbnzCXnH1Qund8xpklbM=;
 b=lY6Ead4jU6HSMYIeXJxET7V7/mtPa4s1XbyNKa2WVk9k0FPhLrDFL/rTea6/mqLm1vY/
 oJc+NyGz+MncjAvoCthWd/vczVa+X1+pbv5DTn79InzMQXT6YVYzRRizYehL3OlPuj+/
 tXrEVm+aaIyPIRA4TftJUwMuQtuDGlXV3NnfaMyWkgUSiBD1F7F3ffM6HQjriNgaRLdO
 mFWQlMgk/yUQrbf91sS4DhAAqplA1K/qyi+PdAEBNAtxEuSTFdPhcwLVPRhMjzpd7TpM
 ykDUJYHqMiguaId0r/yCrEU51UAI5N5FIjgW+FGb71gMqkYrXCvE+cW2yt/R4Lg6QKyu ig== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tsb7xm767-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Oct 2023 09:30:23 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39I9UMgG031601
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Oct 2023 09:30:22 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 18 Oct 2023 02:30:16 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <rafael@kernel.org>, <viresh.kumar@linaro.org>, <ilia.lin@kernel.org>,
        <quic_kathirav@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <linux-pm@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v3 0/8] Enable cpufreq for IPQ5332 & IPQ9574
Date: Wed, 18 Oct 2023 14:59:13 +0530
Message-ID: <cover.1697600121.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4BxFETwDxKapZbod5a0Y2MS8kb2cueSI
X-Proofpoint-GUID: 4BxFETwDxKapZbod5a0Y2MS8kb2cueSI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-18_07,2023-10-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=873 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 mlxscore=0 phishscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310180079
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Depends On:
https://lore.kernel.org/lkml/20230913-gpll_cleanup-v2-6-c8ceb1a37680@quicinc.com/T/

This patch series aims to enable cpufreq for IPQ5332 and IPQ9574.
For IPQ5332, a minor enhancement to Stromer Plus ops and a safe
source switch is needed before cpu freq can be enabled.

These are also included in this series. Posting this as a single
series. Please let me know if this is not correct, will split in
the subsequent revisions.

Passed the following DT related validations
make W=1 ARCH=arm64 -j16 DT_CHECKER_FLAGS='-v -m' dt_binding_check DT_SCHEMA_FILES=qcom
make W=1 ARCH=arm64 -j16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom dtbs_check

For IPQ5332:
~~~~~~~~~~~
	* This patch series introduces stromer plus ops which
	  builds on stromer ops and implements a different
	  set_rate and determine_rate.

	  A different set_rate is needed since stromer plus PLLs
	  do not support dynamic frequency scaling. To switch
	  between frequencies, we have to shut down the PLL,
	  configure the L and ALPHA values and turn on again. So
	  introduce the separate set of ops for Stromer Plus PLL.

	* Update ipq_pll_stromer_plus to use clk_alpha_pll_stromer_plus_ops
	  instead of clk_alpha_pll_stromer_ops.

	* Set 'l' value to a value that is supported on all SKUs.

	* Provide safe source switch for a53pll

	* Include IPQ5332 in cpufreq nvmem framework

	* Add OPP details to device tree

For IPQ9574:
~~~~~~~~~~~
	* Include IPQ9574 in cpufreq nvmem framework

	* Add OPP details to device tree

Removed 2 patches from V1 as they have been merged
	* dt-bindings: cpufreq: qcom-cpufreq-nvmem: document IPQ5332
	* dt-bindings: cpufreq: qcom-cpufreq-nvmem: document IPQ9574

Varadarajan Narayanan (8):
  clk: qcom: clk-alpha-pll: introduce stromer plus ops
  clk: qcom: apss-ipq-pll: Use stromer plus ops for stromer plus pll
  clk: qcom: apss-ipq-pll: Fix 'l' value for ipq5332_pll_config
  clk: qcom: apss-ipq6018: ipq5332: add safe source switch for a53pll
  cpufreq: qti: Enable cpufreq for ipq53xx
  arm64: dts: qcom: ipq5332: populate the opp table based on the eFuse
  cpufreq: qti: Introduce cpufreq for ipq95xx
  arm64: dts: qcom: ipq9574: populate the opp table based on the eFuse

 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 19 ++++++++++--
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 21 ++++++++++++-
 drivers/clk/qcom/apss-ipq-pll.c       |  4 +--
 drivers/clk/qcom/apss-ipq6018.c       | 58 ++++++++++++++++++++++++++++++++++-
 drivers/clk/qcom/clk-alpha-pll.c      | 57 ++++++++++++++++++++++++++++++++++
 drivers/clk/qcom/clk-alpha-pll.h      |  1 +
 drivers/cpufreq/cpufreq-dt-platdev.c  |  2 ++
 drivers/cpufreq/qcom-cpufreq-nvmem.c  | 16 ++++++++++
 8 files changed, 171 insertions(+), 7 deletions(-)

-- 
2.7.4


