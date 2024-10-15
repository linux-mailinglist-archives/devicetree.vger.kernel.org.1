Return-Path: <devicetree+bounces-111383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CED699E8B1
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 14:08:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2537B22FE2
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 12:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B01991EF0BA;
	Tue, 15 Oct 2024 12:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="n9abmTqR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF021E6339;
	Tue, 15 Oct 2024 12:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728994105; cv=none; b=HAHP1FkjrDa20UBNi9eLtN5K2WO73ntD2xFwP9Ia8k8nC1VMHx/D0uHhjxFquKZO5GSPUByBKzhLb+yF+W9y0XhqnpFjg7vP3rhJ9tsLORplKkA1jL8s22w/9TI02CCCyzEabRlN10HEoSL/tffWfST5Jo8o7Lur3t3ipKMfBg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728994105; c=relaxed/simple;
	bh=Mi7GP4jSbdCnXMDarurINP3O08gFDwlMkIy2JUMz6iY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Pj2KbaLtwaQlWlrQ05lGPDwrxAmiteubSAdIwgFVDY+ZKDdQb/xd0C1ZygHe3/UbijzTfYCxKF1KXK6DhmeQheHz8SjD2mD+1cC0mkCqx7LSJXN7nX7Zw88Fm8TnI3OihQo/ulH2PhrGZiywTZ8Izpl2vjeMxlH6qwDKsqTmzuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=n9abmTqR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49F85HPv030714;
	Tue, 15 Oct 2024 12:08:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uV1QMerX2E3bCzJ5ReeeBm9c
	ZKO+uAJ0gF+pFA4KQZ8=; b=n9abmTqRZX9WhUZrPeQatHK7m5JcRVfwb5NzUX/V
	Rw0wqZnkG6CZfumqvMCHGtxWQHPiwjattHVvf8se2mPy9mgql8JIi2DtGMkhgYKQ
	NPPhCCCGK4kXQm9t5/m87/2SxxIsZj+9l/O2f2AkSsvOYha2j2H3Ys6xmA1CG5II
	kTcdHDwXZClw6Hpn8VMC9W//+QDWTzA8SG7uswhDf+F4PilJTSc1ujYIMd5IJ2NG
	dxjsPXsBntgCW5chcAOm1ZgdVAWepf3XCQVoikfjLCKSghfehzpN3tyLkCfo0YDA
	VIwLvXWX/ozA3WkQbEg1He/kJam7UPUn893I5FjozYrYIw==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 429mjy0kqq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2024 12:08:17 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49FC8GTV026942
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2024 12:08:16 GMT
Received: from hu-jseerapu-hyd.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 15 Oct 2024 05:08:10 -0700
From: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bjorn
 Andersson" <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Andi Shyti <andi.shyti@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
CC: <cros-qcom-dts-watchers@chromium.org>, <linux-arm-msm@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <linaro-mm-sig@lists.linaro.org>, <quic_msavaliy@quicinc.com>,
        <quic_vtanuku@quicinc.com>
Subject: [PATCH v1 1/5] dt-bindings: dmaengine: qcom: gpi: Add additional arg to dma-cell property
Date: Tue, 15 Oct 2024 17:37:46 +0530
Message-ID: <20241015120750.21217-2-quic_jseerapu@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241015120750.21217-1-quic_jseerapu@quicinc.com>
References: <20241015120750.21217-1-quic_jseerapu@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: EKxx1K3wr0jgmfX0Zx7xxh6X_XklAu7h
X-Proofpoint-ORIG-GUID: EKxx1K3wr0jgmfX0Zx7xxh6X_XklAu7h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 mlxscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410150083

When high performance with multiple i2c messages in a single transfer
is required, employ Block Event Interrupt (BEI) to trigger interrupts
after specific messages transfer and the last message transfer,
thereby reducing interrupts.

For each i2c message transfer, a series of Transfer Request Elements(TREs)
must be programmed, including config tre for frequency configuration,
go tre for holding i2c address and dma tre for holding dma buffer address,
length as per the hardware programming guide. For transfer using BEI,
multiple I2C messages may necessitate the preparation of config, go,
and tx DMA TREs. However, a channel TRE size of 64 is often insufficient,
potentially leading to failures due to inadequate memory space.

Add additional argument to dma-cell property for channel TRE size.
With this, adjust the channel TRE size via the device tree.
The default size is 64, but clients can modify this value based on
their specific requirements.

Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
---
 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
index 4df4e61895d2..002495921643 100644
--- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
@@ -54,14 +54,16 @@ properties:
     maxItems: 13
 
   "#dma-cells":
-    const: 3
+    minItems: 3
+    maxItems: 4
     description: >
       DMA clients must use the format described in dma.txt, giving a phandle
-      to the DMA controller plus the following 3 integer cells:
+      to the DMA controller plus the following 4 integer cells:
       - channel: if set to 0xffffffff, any available channel will be allocated
         for the client. Otherwise, the exact channel specified will be used.
       - seid: serial id of the client as defined in the SoC documentation.
       - client: type of the client as defined in dt-bindings/dma/qcom-gpi.h
+      - channel-tre-size: size of the channel TRE (transfer ring element)
 
   iommus:
     maxItems: 1
-- 
2.17.1


