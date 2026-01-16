Return-Path: <devicetree+bounces-256162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 83105D333BF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0898B3003874
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AB8133A9E1;
	Fri, 16 Jan 2026 15:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="1CRPcqIn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D14F33A9E0;
	Fri, 16 Jan 2026 15:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768577901; cv=none; b=mZj0sJ++kmWW5mRA6BcY6y4NnmuG6t2IQuSuHXrXq86sT4mPLhcV6NsiNwJoZq9Pz0KniTqD7rgjxWbRODOiewQn5dGvzU+hB+f8ratNhokcrqhXHUqYYrOafzSQaay1MR9lnGPfvXw7H3ndmfjIPlrNEuJdRTNH8wq82jIfJHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768577901; c=relaxed/simple;
	bh=vLb0UfzAIzWk7aERZgSQaBCkXyM+21CiUiu04IIEoxI=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=o+E0yuBxe7+nVxgC556qHO5NVLaWJWjtyNE4Ysmz92xp+cWNtkhMVxQal3p+uNvQIR9Ld8kCFV4SF536rCJNJyfdUb10qW5jlDPRUms6fu5aNN2WeITwjZHw12QlA3HZi3K+Y+H8tMy1KNh2t0wBv2dDU4MsvV70sx082owl9CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=1CRPcqIn; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0516787.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GF9O4d181550;
	Fri, 16 Jan 2026 10:38:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=iqNs5CQPTF5UQaGXowbThSdRBZ2
	CB+EJEtRyCBY0dek=; b=1CRPcqInjlJ+lCIuGsuGfTUaRP0806+oUFe119v+QSu
	gBzqfVLDcD53lV5g6vgQ51hejo3LIU+bO67IHdGmeVSqDtnIsDOBkNlCSsTIfgSZ
	Tk8TO1qED6wlOvaeXf+5K4XGfVkqCbuW4ohO2ka2YQOK0rln870QKSl5as/iXEGy
	BXwqhQCPXgedsYqOIOESxkFgfUsexL568Kn+RMi5deDldLeRSMbfy31z2EdHjgHW
	o9hHZmT2DCrm93fc1tZ0z4Eayb2X7YSKzYunibc2n+feSplwicuJMaQ+kdqiREWW
	CjKrc17seIeHRKbdo3t7Skb7OokdGkzuEW1b/2viQnA==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bqhs819t4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Jan 2026 10:38:01 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60GFc0c7048532
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 16 Jan 2026 10:38:00 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 16 Jan 2026 10:38:00 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 16 Jan 2026 10:38:00 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 16 Jan 2026 10:38:00 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.177])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60GFbnx4023155;
	Fri, 16 Jan 2026 10:37:52 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla
	<srini@kernel.org>,
        Linus Walleij <linusw@kernel.org>,
        Johan Hovold
	<johan+linaro@kernel.org>,
        David Lechner <dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 0/2] mux: gpio-mux: add enable GPIO support
Date: Fri, 16 Jan 2026 17:26:06 +0200
Message-ID: <20260116152621.75205-1-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExMSBTYWx0ZWRfX+qg1kSc/6jTC
 53edUlp+PGe7jRiP1X9zw8WTPucTpC+pGGO5MmRraFwX2e26O9/kmAOSL0mmgj3kTh5rU8H7CRE
 49TmYqOXgGP0S81dKxaqdcQKV97h+EFSEgVI+xBVtcUkK3ir6SfRuY39DrqD2dJ2DZr88IJecHH
 RvpkBxzuEfAYjsx/cQcoPxYAlozKvmvxxMzsn3uztdW0mV99TSibg7sj4D3ZURQrPsqoTotaMVn
 oaxGJ1YDZGZSijCgF2NtUU2anNemIipNeCudQYA6ZV1CXJH3TV/CsFFCnUCD9jKXPn8FtEWpHEp
 KbBhSj58YGR0Mea4kbGDO1Ktx2moErop8+hOkkXrVcB0tEoSs0YCbEE3IjP5q0s6H+IaOCVboUy
 ZSadSVfMVL3oIcxheJVGJ/A4/2QVya1tG5zlkfugCs5GTWwqGQbuPpRMIxcRTV6rMmh+mZ/MNWG
 ZQZw70icSbPHIdFw4Pg==
X-Proofpoint-GUID: qF53NTdNdcAIxfmOZHEs1RQIycgOxhoU
X-Authority-Analysis: v=2.4 cv=Y8n1cxeN c=1 sm=1 tr=0 ts=696a5b59 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=HapAHONEMoC6MvEP3oEA:9
X-Proofpoint-ORIG-GUID: qF53NTdNdcAIxfmOZHEs1RQIycgOxhoU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 clxscore=1011 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160111

This series adds optional enable GPIO support to the gpio-mux driver.
The enable GPIO allows the multiplexer to be disabled before changing
address lines and re-enabled after, preventing glitches that could
briefly activate unintended channels during transitions.

This feature is useful for devices like the Analog Devices ADG2404
(4:1 mux) that require enable control for glitch-free operation. The
binding documentation now includes ADG2404 as a supported device with
a dedicated example.

Changes in v4:
 * Remove device-specific compatible (adi,adg2404) per reviewer feedback
 * Use generic gpio-mux compatible for all GPIO-based muxes
 * Add ADG2404 to binding description for discoverability
 * Add dedicated ADG2404 example in binding
 * Update commit messages to reference ADG2404 as a use case

Antoniu Miclaus (2):
  dt-bindings: mux: gpio-mux: add enable-gpios support
  mux: gpio-mux: add support for enable GPIO

 .../devicetree/bindings/mux/gpio-mux.yaml     | 25 +++++++++++++++
 drivers/mux/gpio.c                            | 32 ++++++++++++++++++-
 2 files changed, 56 insertions(+), 1 deletion(-)

-- 
2.43.0


