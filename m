Return-Path: <devicetree+bounces-18374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 971EC7F63ED
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:29:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8CCF1C20B53
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 16:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E22AA3FB17;
	Thu, 23 Nov 2023 16:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A93910CF;
	Thu, 23 Nov 2023 08:29:46 -0800 (PST)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3ANFk7a3030777;
	Thu, 23 Nov 2023 11:29:32 -0500
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3uhxk5tg30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Nov 2023 11:29:31 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 3ANGTUwf045614
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Nov 2023 11:29:30 -0500
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 23 Nov 2023 11:29:29 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 23 Nov 2023 11:29:29 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Thu, 23 Nov 2023 11:29:29 -0500
Received: from work.ad.analog.com (HYB-hERzalRezfV.ad.analog.com [10.65.205.129])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 3ANGTEJK019364;
	Thu, 23 Nov 2023 11:29:17 -0500
From: Marcelo Schmitt <marcelo.schmitt@analog.com>
To: <beniamin.bia@analog.com>, <paul.cercueil@analog.com>,
        <Michael.Hennerich@analog.com>, <lars@metafoo.de>, <jic23@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <marcelo.schmitt1@gmail.com>
CC: <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/7] Add support for AD7091R-2/-4/-8
Date: Thu, 23 Nov 2023 13:29:12 -0300
Message-ID: <cover.1700751907.git.marcelo.schmitt1@gmail.com>
X-Mailer: git-send-email 2.30.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: er7PkQiZ7KzDAh-QEj3JkAQIeXeO2wxd
X-Proofpoint-ORIG-GUID: er7PkQiZ7KzDAh-QEj3JkAQIeXeO2wxd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-23_12,2023-11-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0 mlxlogscore=999
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311060001
 definitions=main-2311230120

From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>

This series adds support for AD7091R-2/-4/-8 ADCs which can do single shot
or sequenced readings. Threshold events are also supported.
Overall, AD7091R-2/-4/-8 are very similar to AD7091R-5 except they use SPI interface.

This has been tested with raspberrypi and eval board on kernel 6.1 from ADI fork.
Link: https://wiki.analog.com/resources/tools-software/linux-drivers/iio-adc/ad7091r8

I ran get_maintainers on driver files but completely forgot to run it on the
yaml doc, my bad.
I made the changes requested so far.
For v2, I also ran dt_binding_check on iio testing branch to check out for any
additional dt-schema issues. None reported.
Didn't see any other warn after running Sparse, Smatch, and Coccicheck.
I get a warn from checkpatch about IIO_DMA_MINALIGN which I don't know how to fix :(

Change log v1 -> v2:
- Added device tree related To/Cc recipients.
- Removed extra print of error code
- $ref: "adc.yaml" -> $ref: adc.yaml
- Fixed defined but not used build warn
- Moved dt documentation of required properties to after patternProperties.
- Removed incorrect return before regmap_update_bits().

Marcelo Schmitt (7):
  iio: adc: ad7091r-base: Set alert config and drvdata
  MAINTAINERS: Add MAINTAINERS entry for AD7091R
  iio: adc: ad7091r: Move defines to header file
  iio: adc: ad7091r: Alloc IIO device before generic probe
  dt-bindings: iio: Add binding documentation for AD7091R-8
  iio: adc: Add support for AD7091R-8
  iio: adc: ad7091r-base: Add debugfs reg access

 .../bindings/iio/adc/adi,ad7091r8.yaml        | 101 +++++++
 MAINTAINERS                                   |  12 +
 drivers/iio/adc/Kconfig                       |  16 ++
 drivers/iio/adc/Makefile                      |   4 +-
 drivers/iio/adc/ad7091r-base.c                | 114 +++++---
 drivers/iio/adc/ad7091r-base.h                |  64 ++++-
 drivers/iio/adc/ad7091r5.c                    |  55 ++--
 drivers/iio/adc/ad7091r8.c                    | 270 ++++++++++++++++++
 8 files changed, 549 insertions(+), 87 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7091r8.yaml
 create mode 100644 drivers/iio/adc/ad7091r8.c

-- 
2.42.0


