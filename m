Return-Path: <devicetree+bounces-76907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE4990C7D6
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:54:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C05D41C22AD3
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E387A1CB32D;
	Tue, 18 Jun 2024 09:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="yR+oHpt9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2BE156F29;
	Tue, 18 Jun 2024 09:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718702465; cv=none; b=i+LVqq/CqlYnudTthBj3tJ50It8LsN4pJXG6d+LNf7O6GANM6JVQJW88loXpmaehSQdvETGUfATIo8MI8xHM+0vyMEieDaXN6988aw8/Ixsk5/LszOPAxfxlqPCGGwsgE0kKc8qlVilpRIQ2M/48I+/GTRDljIk7q8hTI8WAvTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718702465; c=relaxed/simple;
	bh=ODb0AS8Gid72yudRJyiMhX1jDUeji0O92Qk5KnJi5HU=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=JsQ7vD9VQck4eCAdqfiR3Fz6OHY8/ZB8goC+WfqQ9bkEEUeVAUlp1cdj8UIonwo1Lbpm5eCtyjO17c0b8GUe/GgunR7UDDCQuBW1qEDC3tOUguOLAT3kLelWWx2hgLSB/d88UpUYNSPk75bPjKVGOHqSLSbySbhPIqv5mV7GpuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=yR+oHpt9; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45I2vvDH006686;
	Tue, 18 Jun 2024 04:20:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=s1jbBiljYWIQU2h5+M2d0n4QhEp
	apypLQmJWq50+k+s=; b=yR+oHpt9pjtVUswxIlUbIAeE5RmM0K3GQKJCISTyoWB
	tpYveDUHw2lgI1UfMBujoRvIsffQLUIgHR0naMKjtkUx6UBgr5tjSnSy5dbUsFFS
	Xk1lf6gJLckPuEHykJv0om5N6M8EmVk5ULc04W1iqZC9zPWVaXrz+Ur1Vyr1QVvl
	4i6z5fpE37qr56kO7gRgqw/jS8zgLneXKo4ezowRGHA9tNAAYClNqwcPg2q41Wlc
	vTXbwKAhwNLCahJ7H2bw4cdSn4WES/E7nAdF8uESBHLaQCN9he7d3Glv2BdRR/Ia
	bkLw2gSPzAITf86ijXK10XsyY2PU6fOj8c6tsuKYxyA==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3ys4t32840-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Jun 2024 04:20:39 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 45I8KZ60049902
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 18 Jun 2024 04:20:35 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 18 Jun 2024 04:20:34 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 18 Jun 2024 04:20:34 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 18 Jun 2024 04:20:34 -0400
Received: from amiclaus-VirtualBox.ad.analog.com (AMICLAUS-L02.ad.analog.com [10.48.65.163])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 45I8KJEV004234;
	Tue, 18 Jun 2024 04:20:22 -0400
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
	<sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lars-Peter Clausen
	<lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        "Jonathan Cameron" <jic23@kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-iio@vger.kernel.org>
CC: Antoniu Miclaus <antoniu.miclaus@analog.com>,
        Conor Dooley
	<conor.dooley@microchip.com>
Subject: [PATCH v5 1/2] dt-bindings: iio: adf4350: add clk provider prop
Date: Tue, 18 Jun 2024 11:20:06 +0300
Message-ID: <20240618082012.4496-1-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: 2ekjhkomUuPqJkO0583p3I4WZH2cLugJ
X-Proofpoint-ORIG-GUID: 2ekjhkomUuPqJkO0583p3I4WZH2cLugJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-18_02,2024-06-17_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 malwarescore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1011 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2405170001
 definitions=main-2406180061

Add properties required for providing clock to other consumers.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/iio/frequency/adi,adf4350.yaml      | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,adf4350.yaml b/Documentation/devicetree/bindings/iio/frequency/adi,adf4350.yaml
index 43cbf27114c7..d1d1311332f8 100644
--- a/Documentation/devicetree/bindings/iio/frequency/adi,adf4350.yaml
+++ b/Documentation/devicetree/bindings/iio/frequency/adi,adf4350.yaml
@@ -28,6 +28,12 @@ properties:
   clock-names:
     const: clkin
 
+  '#clock-cells':
+    const: 0
+
+  clock-output-names:
+    maxItems: 1
+
   gpios:
     maxItems: 1
     description: Lock detect GPIO.
-- 
2.45.2


