Return-Path: <devicetree+bounces-4169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CE77B1762
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:32:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id ED4C21C20869
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D062341A2;
	Thu, 28 Sep 2023 09:32:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB1831A83
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 09:32:21 +0000 (UTC)
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D379C122;
	Thu, 28 Sep 2023 02:32:19 -0700 (PDT)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38S88Fsi027951;
	Thu, 28 Sep 2023 05:32:03 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3tck4q7973-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Sep 2023 05:32:03 -0400 (EDT)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 38S9W2OI057121
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 05:32:02 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 28 Sep 2023 05:32:01 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 28 Sep 2023 05:32:01 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Thu, 28 Sep 2023 05:32:01 -0400
Received: from ubuntu20.04.ad.analog.com (HYB-d0iOFy9ma8q.ad.analog.com [10.48.65.139])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 38S9Vjfa028736;
	Thu, 28 Sep 2023 05:31:48 -0400
From: Eliza Balas <eliza.balas@analog.com>
To: 
CC: Eliza Balas <eliza.balas@analog.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Derek Kiernan <derek.kiernan@amd.com>,
        Dragan Cvetic
	<dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH v2 0/2] Add support for ADI TDD Engine
Date: Thu, 28 Sep 2023 12:28:02 +0300
Message-ID: <20230928092804.22612-1-eliza.balas@analog.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: xZgqBPDDrrSLANtmYsTBwJBiRqmlcMXK
X-Proofpoint-ORIG-GUID: xZgqBPDDrrSLANtmYsTBwJBiRqmlcMXK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-28_07,2023-09-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 priorityscore=1501 clxscore=1011 lowpriorityscore=0 malwarescore=0
 spamscore=0 impostorscore=0 mlxlogscore=799 bulkscore=0 phishscore=0
 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2309280081
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

V1 -> V2:
 * remove label in examples in bindings file
 * add detailed description of the hardware in bindings file
 * remove adi_axi_tdd_clk_disable function
 * remove devm_add_action_or_reset, devm_clk_get, clk_prepare_enable
   and use instead devm_clk_get_enabled

Eliza Balas (2):
  dt-bindings: misc: adi,axi-tdd: Add device-tree binding for TDD engine
  drivers: misc: adi-axi-tdd: Add TDD engine

 .../sysfs-bus-platform-drivers-adi-axi-tdd    | 158 ++++
 .../devicetree/bindings/misc/adi,axi-tdd.yaml |  65 ++
 MAINTAINERS                                   |   9 +
 drivers/misc/Kconfig                          |  10 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/adi-axi-tdd.c                    | 780 ++++++++++++++++++
 6 files changed, 1023 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-platform-drivers-adi-axi-tdd
 create mode 100644 Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
 create mode 100644 drivers/misc/adi-axi-tdd.c

-- 
2.25.1


