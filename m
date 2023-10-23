Return-Path: <devicetree+bounces-10938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 289997D38E5
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:06:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 597801C20AC6
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F6D1B281;
	Mon, 23 Oct 2023 14:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A0A1B285
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:06:02 +0000 (UTC)
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA841CC;
	Mon, 23 Oct 2023 07:06:00 -0700 (PDT)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39NBfTnK018126;
	Mon, 23 Oct 2023 10:05:58 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3tvusf05fa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 10:05:58 -0400 (EDT)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 39NE5u2E015815
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 23 Oct 2023 10:05:56 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Mon, 23 Oct
 2023 10:05:55 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Mon, 23 Oct 2023 10:05:55 -0400
Received: from rbolboac.ad.analog.com ([10.48.65.174])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 39NE5djU030054;
	Mon, 23 Oct 2023 10:05:48 -0400
From: Ramona Gradinariu <ramona.gradinariu@analog.com>
To: <jic23@kernel.org>, <nuno.sa@analog.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: Ramona Gradinariu <ramona.gradinariu@analog.com>
Subject: [PATCH v2 3/3] dt-bindings: adis16460: Add 'spi-cs-inactive-delay-ns' property
Date: Mon, 23 Oct 2023 17:05:34 +0300
Message-ID: <20231023140534.704312-4-ramona.gradinariu@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023140534.704312-1-ramona.gradinariu@analog.com>
References: <20231023140534.704312-1-ramona.gradinariu@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: Tw5vtvQsXgYfnvAnGJR41xQO8eXoLcEY
X-Proofpoint-ORIG-GUID: Tw5vtvQsXgYfnvAnGJR41xQO8eXoLcEY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-23_12,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 mlxscore=0
 mlxlogscore=999 adultscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2310170000
 definitions=main-2310230123

The adis16460 device requires a stall time between SPI
transactions (during which the chip select is inactive),
with a minimum value equal to 16 microseconds.
This commit adds 'spi-cs-inactive-delay-ns' property, which should
indicate the stall time between consecutive SPI transactions.

Signed-off-by: Ramona Gradinariu <ramona.gradinariu@analog.com>
---
changes in v2:
 - added default value
 - updated description
 - updated commit message
 .../devicetree/bindings/iio/imu/adi,adis16460.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml b/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
index 4e43c80e5119..f10469b86ee0 100644
--- a/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
@@ -25,6 +25,12 @@ properties:

   spi-cpol: true

+  spi-cs-inactive-delay-ns:
+    minimum: 16000
+    default: 16000
+    description:
+      Indicates the stall time between consecutive SPI transactions.
+
   interrupts:
     maxItems: 1

--
2.34.1


