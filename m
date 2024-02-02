Return-Path: <devicetree+bounces-38092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D948476F7
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 19:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3264928CC8F
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 18:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1742014AD35;
	Fri,  2 Feb 2024 18:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="GbG7rRtv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF5A1474C5;
	Fri,  2 Feb 2024 18:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706896949; cv=none; b=hEVxxvZ+dkGgV7ynq9gxKPlnZQq6PL/KaTJZWXWLTGT6RNWryarjrifvu6SBebtUdVUB4co0wckLMT07ynxQGig8zM0BcTXqp6DFSYmgqHGV/yhW/IpicsHXjcmr4lbwz+rZMTTsE7T0LqW2YUxWokvUMfeMmLeQXo+Dp1TRLDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706896949; c=relaxed/simple;
	bh=y7lpDjfOkYM/TYzZWWyIVQRr/x01xn/vXcteYQd2eRI=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=aZl0Sd/etknU5ucNx8pyVBM9egwwaDutlCL3EsVAhUcwSWST32IxOEdLTeaB5cRYbSZiitgPkdDMBXVag7+lcDUpwPzK6fiu4mKCg+zysnN/AqQikHJ8leFdQtl11tQAmICj56EVm3XDK5D/Is78Nz2jjHWjedb6blHaZMJOs6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=GbG7rRtv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 412FPhD5023312;
	Fri, 2 Feb 2024 18:02:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=qcppdkim1; bh=xcnGW/b
	+w4aCFTRWED73s4K1KF1N7ziOoNfWkNnwjcg=; b=GbG7rRtvcxGusn7O4A5OKSP
	VWOCVxK6LzuBYuaKR3hikjZ99B/KqLoQWhu4DxkIkYRsfVSkeApmyXe/B7HBEDhP
	2MyEFeYROx+mFQfUYOa2AC3YNDG4FFKqMgUDOnOZ4e8L47vk26u7z+1xslV42HHh
	FmSJSEWYrM7jInSNOlwYLu5oLAKqmG2ToPbmBj5aDmtqWpQKemOaR2LdMPmxCp4D
	zJ889yRJkOZFPUjOUwoXJTv8vFf1CaL0XMlorujQHSzCd9jmObW5m9PJDQuo916S
	BRhBAMuy+JSN+HuujBOhlTCr3PjpRL4ZyYsJB2Y43n4zbaBPnsVz195kJqG8aqw=
	=
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3w0ptvj22b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 02 Feb 2024 18:02:07 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 412I26wi023672
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 2 Feb 2024 18:02:06 GMT
Received: from jhugo-lnx.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 2 Feb 2024 10:02:05 -0800
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
To: <lee@kernel.org>, <daniel.thompson@linaro.org>, <jingoohan1@gmail.com>,
        <pavel@ucw.cz>, <robh@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andersson@kernel.org>,
        <quic_kgunda@quicinc.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-leds@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Jeffrey Hugo <quic_jhugo@quicinc.com>
Subject: [PATCH] dt-bindings: backlight: qcom-wled: Fix bouncing email addresses
Date: Fri, 2 Feb 2024 11:01:51 -0700
Message-ID: <20240202180151.4116329-1-quic_jhugo@quicinc.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 8rnF4oM42Cw5Wl43Caxj4EGi3Wyj7TZn
X-Proofpoint-ORIG-GUID: 8rnF4oM42Cw5Wl43Caxj4EGi3Wyj7TZn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-02_11,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=855 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402020130

Bjorn is no longer at Linaro.  Update his email address to @kernel to
match the .mailmap entry.

The servers for @codeaurora are long retired and messages sent there
will bounce.  Update Kiran's email address to match the .mailmap entry.

This will help anyone that is looking to reach out about this binding
and is not using .mailmap to pre-process their message.

Signed-off-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
---
 .../devicetree/bindings/leds/backlight/qcom-wled.yaml         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml b/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
index 5f1849bdabba..a8490781011d 100644
--- a/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
+++ b/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
@@ -7,8 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm Technologies, Inc. WLED driver
 
 maintainers:
-  - Bjorn Andersson <bjorn.andersson@linaro.org>
-  - Kiran Gunda <kgunda@codeaurora.org>
+  - Bjorn Andersson <andersson@kernel.org>
+  - Kiran Gunda <quic_kgunda@quicinc.com>
 
 description: |
   WLED (White Light Emitting Diode) driver is used for controlling display
-- 
2.34.1


