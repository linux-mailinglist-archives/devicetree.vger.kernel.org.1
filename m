Return-Path: <devicetree+bounces-12484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C317D9AC4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 753A41C2106E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5021E358BF;
	Fri, 27 Oct 2023 14:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9258C358AD
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:04:49 +0000 (UTC)
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729ADD6;
	Fri, 27 Oct 2023 07:04:48 -0700 (PDT)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39RB1GmZ028823;
	Fri, 27 Oct 2023 10:04:17 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3tyx01pa82-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Oct 2023 10:04:17 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 39RE4GKE052742
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 27 Oct 2023 10:04:16 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Fri, 27 Oct 2023 10:04:15 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Fri, 27 Oct 2023 10:04:15 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Fri, 27 Oct 2023 10:04:14 -0400
Received: from rbolboac.ad.analog.com ([10.48.65.174])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 39RE40hb022983;
	Fri, 27 Oct 2023 10:04:07 -0400
From: Ramona Gradinariu <ramona.gradinariu@analog.com>
To: <jic23@kernel.org>, <nuno.sa@analog.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: Ramona Gradinariu <ramona.gradinariu@analog.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: adis16475: Add 'spi-cs-inactive-delay-ns' property
Date: Fri, 27 Oct 2023 17:03:57 +0300
Message-ID: <20231027140358.328699-3-ramona.gradinariu@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231027140358.328699-1-ramona.gradinariu@analog.com>
References: <20231027140358.328699-1-ramona.gradinariu@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: kVJ37_Qe97q7G3ejgiVY6TT9HsmxqoUp
X-Proofpoint-GUID: kVJ37_Qe97q7G3ejgiVY6TT9HsmxqoUp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-27_12,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 adultscore=0 mlxscore=0 malwarescore=0 impostorscore=0
 clxscore=1011 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2310240000 definitions=main-2310270121

The devices supported by adis16475 driver require a stall period
between SPI transactions (during which the chip select is
inactive), with a minimum value equal to 16 microseconds, thus
adding 'spi-cs-inactive-delay-ns' property, which should indicate
the stall time between consecutive SPI transactions.
The specified minimum time may not be sufficient for all
configurations.

Signed-off-by: Ramona Gradinariu <ramona.gradinariu@analog.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
changes in v3:
 - removed description
 - updated commit message
 Documentation/devicetree/bindings/iio/imu/adi,adis16475.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/adi,adis16475.yaml b/Documentation/devicetree/bindings/iio/imu/adi,adis16475.yaml
index c73533c54588..9b7ad609f7db 100644
--- a/Documentation/devicetree/bindings/iio/imu/adi,adis16475.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/adi,adis16475.yaml
@@ -47,6 +47,10 @@ properties:
   spi-max-frequency:
     maximum: 2000000

+  spi-cs-inactive-delay-ns:
+    minimum: 16000
+    default: 16000
+
   interrupts:
     maxItems: 1

--
2.34.1


