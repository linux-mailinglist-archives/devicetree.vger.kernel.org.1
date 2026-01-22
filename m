Return-Path: <devicetree+bounces-258570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJcmIFtmcml0kAAAu9opvQ
	(envelope-from <devicetree+bounces-258570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:03:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD956BE50
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D072D302EEFE
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B26F93A2AF8;
	Thu, 22 Jan 2026 17:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="QeQF2QNb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A893A1D01;
	Thu, 22 Jan 2026 17:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.156.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769101208; cv=none; b=P5icBozNgQtO7cGFaiidYys1JlVT+UDkY7+lAvzc978jfDoI9uhHh152PqVMjrRLIMGYD64klc0DzRNBxJ74SSnVw20wzy0pFVHrXusUX00br8o7dPXn6gUsRh2Z5ut1RLZHyWB3jjEJPdG8PIM2FMKe+ye6bt4fwyKdVaRHRQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769101208; c=relaxed/simple;
	bh=40Vp3DhHk+FNo8126nm5dYArBcqtNcV9SDWjD4DHdxs=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=r3KaTVTkFhzDGuCp+9sd+qZg1VixZXZiyCdZsX4Vuf7rCpkKnJD9Nz2Lr10hoBCsBG3Q6r4vRCxvj0HgtEL3g4uTFKSa/S1/fWISshYm4On4k5FnAy6Q9YHvpddmCbap94A+Vf0z2yKq3zQyjFI13X1n0C23Ipd3W+Dx7Ejb+hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=none smtp.helo=mx0b-0016f401.pphosted.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=QeQF2QNb; arc=none smtp.client-ip=67.231.156.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.helo=mx0b-0016f401.pphosted.com
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M6KVt22555581;
	Thu, 22 Jan 2026 08:59:38 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pfpt0220; bh=H
	haRQRfdOkOKfWpw2z/hZpnsml3nzVHPLzK+RTWqIp8=; b=QeQF2QNb9piQacuvY
	MVg404xqR3j9KPNwXYEZIiCAmWrVMV2xFZqbQ+GTYrNJrfTI/aSRcVpxQoHRwSRC
	r6Yxkh0nJsWaFYNERo8zG1OjLBwK9hWR5mhpk+yHgTTQ9KGSt3R9C4vWtlmdxwWF
	U/dLvZ1PoCAwOUTlEtY7LP9C5CYCoRaO36SyowadjXNHq/7ZhjZXikNMSc0PQR9S
	NUfp3AYlRl6gZ/r+4I7DwYrZY0e917NUqHoUUtGYsXjRPMW6utW/fOvvDFfQB7L+
	oF5KmMNCq1Ao4ZMee0pryTdx9lO7qy9eatyDFeLQzmmf2uRLl51yg5BmCm+soAwl
	Ri8RA==
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4btm3kmsr3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Jan 2026 08:59:38 -0800 (PST)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 Jan 2026 08:59:38 -0800
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Thu, 22 Jan 2026 08:59:38 -0800
Received: from c1illp-saixps-016.eng.marvell.com (c1illp-saixps-016.eng.marvell.com [10.205.40.247])
	by maili.marvell.com (Postfix) with ESMTP id 13D4B3F70F0;
	Thu, 22 Jan 2026 08:59:34 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>
Subject: [PATCH 1/3] dt-bindings: arm64: add Marvell 7k COMe boards
Date: Thu, 22 Jan 2026 18:59:21 +0200
Message-ID: <20260122165923.2316510-2-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260122165923.2316510-1-enachman@marvell.com>
References: <20260122165923.2316510-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: 9Hgz3EQcUCjnthbJYBOfHyPPAPsDkB-a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDEyNyBTYWx0ZWRfXxqAmVwacb0CK
 VuoTKQTWJy5t5J206Vvq56ivb2UO/7Log7iAXr74+iuSuJ4kyBqZF546yuERcw768s7fz7fntmR
 uo4UOpsPWJG0KT5mxwdhXSrjcWfDIzR2xSvAjLR9qW30dzJZgAIdjSxgmSj684AAKxO7WIU3yoP
 fbxhbwMX8g4V62LB98OYD6lt0v+v+pMmNHgCxb2F7gXAwU/oKwE8LrajWmqstsSju3uxj3Lp4Ul
 qlco65xjYrsH/C0yRMjaTYELv+KnyOgoETsTblGsjmgIKAojZmx3G+BJ9oBj5vplwOW61uJtyo6
 LvPO8Y8YcOrvrxMVwEvCxZguBIM4eCuy6hjbq+IpRNVn5U3+XzgDHCgVGwC3OpgyGdJ+XgyWL++
 +b1tVDvb8IDrK3Rk0IA3Y/8f4JgFr+l+aXnqS4lUoiUSQ+5CpumHsudXBzGFaptGTlbNDhDlJHd
 x6hH1q7jNK7qdgkkjew==
X-Authority-Analysis: v=2.4 cv=Mu1fKmae c=1 sm=1 tr=0 ts=6972577a cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=M5GUcnROAAAA:8
 a=AfZ9TtGXDw_Mse21jm4A:9 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-GUID: 9Hgz3EQcUCjnthbJYBOfHyPPAPsDkB-a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_03,2026-01-22_02,2025-10-01_01
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258570-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,lunn.ch,bootlin.com,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[marvell.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[enachman@marvell.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marvell.com:email,marvell.com:dkim,marvell.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 8CD956BE50
X-Rspamd-Action: no action

From: Elad Nachman <enachman@marvell.com>

Add dt bindings for:
Armada 7020 COM Express CPU module
Falcon DB-98CX85x0 COM Express type 7 Carrier board
Falcon DB-98CX85x0 COM Express type 7 Carrier board
with an Armada 7020 COM Express CPU module

Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 .../devicetree/bindings/arm/marvell/armada-7k-8k.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
index 4bc7454a5d3a..7e77310da626 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
@@ -21,6 +21,17 @@ properties:
           - const: marvell,armada-ap806-dual
           - const: marvell,armada-ap806
 
+      - description:
+          Falcon (DB-98CX85x0) Development board COM Express Carrier plus
+          Armada 7020 SoC COM Express CPU module
+        items:
+          - const: marvell,armada7020-falcon-carrier
+          - const: marvell,db-falcon-carrier
+          - const: marvell,armada7020-cpu-module
+          - const: marvell,armada7020
+          - const: marvell,armada-ap806-dual
+          - const: marvell,armada-ap806
+
       - description: Armada 7040 SoC
         items:
           - enum:
-- 
2.25.1


