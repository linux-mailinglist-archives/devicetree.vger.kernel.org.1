Return-Path: <devicetree+bounces-259468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ELtBNJRd2lQeAEAu9opvQ
	(envelope-from <devicetree+bounces-259468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:36:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F0687B21
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:36:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6420D3013854
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D431933033C;
	Mon, 26 Jan 2026 11:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="jm8AagyL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C102F0C46;
	Mon, 26 Jan 2026 11:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.156.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769427406; cv=none; b=JuyYBX9V+v56kRDItjMB9/9fKLNa08TcCidxnwfVgDlDTyyjmsd0vIwqLoy6IorqTEOeWxSjHgkXhqpHfUh/e7Ns/Tl+BOWc/oOq2ghqOsI8W+4i9zlrdnJcGwPtQnf7I0yKzsYQsySAHtfj9QqhVVdF3l6jRfDhdYw7CRszCuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769427406; c=relaxed/simple;
	bh=NjxotQDotgpATS2FQkEkM7t2pyDKeRlunmtHuap4QYo=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=tlx9ngUkZldCSPE88Pc1itOQxev5MGJ4GgluveKKA8HPJxyaCEzuVPI9HT3YLyg6K11geC50zcySQguk6iFzJJKMENf3WpiMTRx3ealpOx6U4bRMjxebe4IEZL0hIjH6qfMqe9aDcImBjJBzYS7ajWj/NBnUx2nFqyoxNNQfVGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=none smtp.helo=mx0b-0016f401.pphosted.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=jm8AagyL; arc=none smtp.client-ip=67.231.156.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.helo=mx0b-0016f401.pphosted.com
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PNor0q3115571;
	Mon, 26 Jan 2026 03:36:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pfpt0220; bh=twodAmuKMAnLvqwK076euf3
	Bx1BPot1FbClHnMLptnY=; b=jm8AagyLjUPDk4hpLCgoC4fpPnb18mjeJ1JGypH
	X+90hBRMxGef/BdJiRz0qWDd7FEdtG1nAs7fnGQfjKzCgBkrrcS15tqg9Vh8+Q0L
	WQ4rtKKFv0NycZePDrik7rmLs1zLXgHEByqFYMK6/cwr5S3XXYeyMXrWIjwRJ9Iy
	oAYUUzozHV3iksyzBeJTXBAI/GQtiPNsDFl/eKxq6E4th6uHOaNlmenguqgC9SqU
	gpi93ALy09d61q7/cPAWu0VuqNbOjP4QJ4WZZ8Bg2Vii6R0+mwxQCO4HsiFv/7PZ
	xtD3fICuSeEzRcBm7t0YY+l5xQvPhwXcbhnzuRqu6Y/R8Zg==
Received: from dc5-exch05.marvell.com ([199.233.59.128])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4bvxfjjn4j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Jan 2026 03:36:33 -0800 (PST)
Received: from DC5-EXCH05.marvell.com (10.69.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 26 Jan 2026 03:36:47 -0800
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH05.marvell.com
 (10.69.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Mon, 26 Jan 2026 03:36:47 -0800
Received: from c1illp-saixps-016.eng.marvell.com (c1illp-saixps-016.eng.marvell.com [10.205.40.247])
	by maili.marvell.com (Postfix) with ESMTP id 63A313F70FC;
	Mon, 26 Jan 2026 03:36:29 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>
Subject: [PATCH] arm64: dts: a7k: use phy handle
Date: Mon, 26 Jan 2026 13:36:27 +0200
Message-ID: <20260126113627.2769695-1-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: KElzNwhVBIw_gBEDdeBkGBR__HUolcXh
X-Proofpoint-ORIG-GUID: KElzNwhVBIw_gBEDdeBkGBR__HUolcXh
X-Authority-Analysis: v=2.4 cv=S9LUAYsP c=1 sm=1 tr=0 ts=697751c1 cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=M5GUcnROAAAA:8
 a=C3yJHqJ42tJUJIDyXKIA:9 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA5OSBTYWx0ZWRfX7uAECZxgN7I+
 f0viTjrIFTNvd3W3IaeN5/LiIBKJOe0TCLbOaXwWrgRMFZM2TFvFrdUqiZLFYT1/I8KTSrs8vFD
 klUVpIse5P7fzDwe0DZePTaOKjcuxprZENTuvbianeEXYIImNl/fAeOqZfDmlPp9fMxE8csut9C
 yo9mCWhgdNAeuDbmy179ZTGg2+5d9BdWlWj0llJlTjC4EpZuG13w9GxQXEZhzu6+orBzyLYeUFB
 pdfPhX/HkdRZn6vVT3XFdKqoNpNetX1XXhjITK2L/IKZPZ0od3JeKGQkUI3X+vxbXyaUl9IQu1R
 LsC9CaHlNdoB5PH7qXYKKoMP0JEvvL5NuccbDcU3Tg1QWiGFSD/B5u+qLfvriIqsloCaMK1QIwk
 dd4/GHQbOZvgnakaYEbVv5dhFfygzTn7qbrg9Cd4lHGGjPh+q9/cD2lHnSzmNNY5wcaNfuWUkWe
 sDIExFzkeAeImBspV5g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259468-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,lunn.ch,bootlin.com,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[marvell.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[enachman@marvell.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 79F0687B21
X-Rspamd-Action: no action

From: Elad Nachman <enachman@marvell.com>

Documentation/devicetree/bindings/net/ethernet-controller.yaml

  phy:
    : #/properties/phy-handle
    deprecated: true

New dts files should not be using deprecated properties.

What should be used is:

  phy-handle:
    : /schemas/types.yaml#/definitions/phandle
    description:
      Specifies a reference to a node representing a PHY device.

Suggested-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi b/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
index 2b5ec4a451e3..0cfcf5f6bde1 100644
--- a/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
@@ -70,7 +70,7 @@ &cp0_eth0 {
 
 &cp0_eth1 {
 	status = "okay";
-	phy = <&phy0>;
+	phy-handle = <&phy0>;
 	phy-mode = "rgmii-id";
 };
 
-- 
2.25.1


