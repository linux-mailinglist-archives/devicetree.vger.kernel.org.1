Return-Path: <devicetree+bounces-248246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2CECD04F2
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9702302B103
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B9CA3246FA;
	Fri, 19 Dec 2025 14:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="zFmFGw+c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21511302140;
	Fri, 19 Dec 2025 14:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766154884; cv=none; b=GS1fTHbLgc7CP7fCQs3UARknVzaP5XM73nn2jQKHvpS4LOWeLo8YcmY749m9bgJtEbuQmfmSDds8oiOJCKf9HWmqci/i0wKP8b5vjbizACm3s5k0n9xtQIRUk4csXyvWqy9P+ZVyTAwfLBFtOvOPDnNypY0PVK1+S6hZ1kk+HyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766154884; c=relaxed/simple;
	bh=evCk9SwLhHYZ+eAMfAnz4M0s5SMg1vz2XJQwm8l76O8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ja2i64Vcr/zbnahTUO8177KtgDC+LeTSpItNtsg6WDnyEZOCyQVO9y+YJ43r+4Q1EOAd7a6hpa3A1hkxACb5p4T+Y8NapgwSrFJVPBNIADCjuYZuRyI+lbWR2Yt0kjUZVaX8qgicUBqyvVxyHpc/oFyVzuPUc7d8L4vAwHxz/3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=zFmFGw+c; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJENlpb2393779;
	Fri, 19 Dec 2025 09:34:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=gCluZKqJRDTzu7mWzkC9tSJv9/Q
	DY1Zj6Ckqp2fBPYc=; b=zFmFGw+cFywSSM7dQu8jjyz2Crv1rAhwB9490wm6RK1
	pBUPIGyIiD9BE2kIGgrtL+acw+Td6I+1dw7zNTUO+QvlPsHTkDCkofdMIA7YmDDG
	SpyaHwovfjdgVDf7MP+sUKZ8FhcIq+ksc+9m+BuDcf20Cvnz1xMZFnaUnW9b4AXv
	xZ1m1IkW7qMmR3B/6a0y4z0ND8H/Gu7Lp/KRu2JS77fsNGrV2LzQPbX8al3Wu4er
	G19V/XkVq/+bWGF0jOV1PvZOUxya3LXtHT92bsFmRqTS4da89Sj6TyeKXBpjksi2
	5iin+x3zIqxtwRrOrW+wyxMDbOFWlkVlmk7h7LPy4Vw==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4b4r3v4dsy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Dec 2025 09:34:20 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 5BJEYJw4045131
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 19 Dec 2025 09:34:19 -0500
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 19 Dec 2025 09:34:19 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 19 Dec 2025 09:34:19 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 19 Dec 2025 09:34:19 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 5BJEY0kI001327;
	Fri, 19 Dec 2025 09:34:03 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] mux: adg2404: add support for ADG2404 multiplexer
Date: Fri, 19 Dec 2025 16:31:43 +0200
Message-ID: <20251219143244.21674-1-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ADIRuleOP-NewSCL: Rule Triggered
X-Authority-Analysis: v=2.4 cv=LtafC3dc c=1 sm=1 tr=0 ts=6945626c cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=-XNLjAG7Quv88JbFbJ0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: zx3AtxYLBIrlpM4luzQp1WCy4gQBuRj2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfX5M0tcHKcrBjo
 WXJ/b9x8NLX3dguAf5PElhQp7ex33XM/Lne5LzAKU6lLNw81RbZna3XmwJwlde1t2/5bPZ9Qhwc
 22vNdzt/GTbZEjWJv0QpnCsNsk/NcDGfQzmz6wPoD+m06v5QTqhEKstqhQB9U0WKKE8wjl30/BD
 +PVMDwbqshBHEA/zLzoWw5exFnS2Du9b+QXEnId9rwXNaj6G4A49QM7SF76MZugZdEgDrOPe6gb
 w6bnS9Ma0+RW693JAF/TG4CorBeo0xm6uHa1DKsUPgDmJrN4GHhMOM3KnwM9Jyxf4VnCVfcjlhE
 dITs0/Fp9EkxlvINxt2KBVUxSgp/FA6POqKFf5VqcQoVQwQ7IStucSe68xM62cEc0hSBTZKVPIF
 hVUrvL6qzeuDOEbhW81XNceVeTQ9P5UZIH9DpmhSxcL84AOrdSrozfRuzOHZ3VEGfkjEVb1JLWt
 +YmNNAS7fYgSE9FP2dg==
X-Proofpoint-GUID: zx3AtxYLBIrlpM4luzQp1WCy4gQBuRj2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 clxscore=1011 spamscore=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190122

This series adds support for the Analog Devices ADG2404, a 4:1 analog
multiplexer with low 0.62Ω on-resistance.

The ADG2404 features:
- Low RON of 0.62Ω
- Flat RON across signal range (0.003Ω)
- Dual supply operation (±15V, ±5V)
- Single supply operation (+12V)
- Asymmetric supply support (+5V/-12V)
- 1.8V/3.3V/5V logic compatibility
- Break-before-make switching

Applications include automatic test equipment, data acquisition,
instrumentation, audio/video switching, and communication systems.

Antoniu Miclaus (2):
  dt-bindings: mux: adg2404: add support
  mux: adg2404: add driver support

 .../devicetree/bindings/mux/adi,adg2404.yaml  |  66 +++++++++
 drivers/mux/Kconfig                           |  12 ++
 drivers/mux/Makefile                          |   2 +
 drivers/mux/adg2404.c                         | 133 ++++++++++++++++++
 4 files changed, 213 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/adi,adg2404.yaml
 create mode 100644 drivers/mux/adg2404.c

-- 
2.43.0


