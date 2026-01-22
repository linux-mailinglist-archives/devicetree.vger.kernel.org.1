Return-Path: <devicetree+bounces-258569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFtsCBdfcmnbjAAAu9opvQ
	(envelope-from <devicetree+bounces-258569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:32:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A57E6B592
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B4BA302DF62
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE873A2ADA;
	Thu, 22 Jan 2026 17:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="dppEzVWz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF29371070;
	Thu, 22 Jan 2026 16:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.156.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769101207; cv=none; b=l0wh5on+zkNnMO4Wg74Noo0haKudwpDJerSXJpjdJJx/FrKSbzmAl/V5ShX8TF0e/ki450lMzOQOYDBzlsOGrg+M2jm5uHsRt7cbz7323+uarL+p+hQRkpjB3IrZNPSX8o+0uFXPOu0zTWLxudYk0bVElinpBJgcW9rKzRCJmNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769101207; c=relaxed/simple;
	bh=HKFQenOggQWNiUkjWr4yDIbrvtKOwIQFY8QRedhmWA4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NXqS1DKwRjB1Mspf9qLsZ5PkaECxeDE81ERkJrFIQfXhHNfAEZ24ZgEZLy2F/2rF0CRcyUrgiwItWhQ6+odmKo3rVRi9HgyMjf2/Te+IDFGOFJDbTfU70vz2i9o+4cRViXxHHhwKVE8sHQUmzWtI2zeKBAk81pNWfuYtbr1wcoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=none smtp.helo=mx0b-0016f401.pphosted.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=dppEzVWz; arc=none smtp.client-ip=67.231.156.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.helo=mx0b-0016f401.pphosted.com
Received: from pps.filterd (m0431383.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M5vcGY1834527;
	Thu, 22 Jan 2026 08:59:45 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pfpt0220; bh=V
	7X9qqcrCgPVgF1/MP/gVVOjus2lAkCFoeo2ICUwtfE=; b=dppEzVWztSzuqDaw3
	umt6U2MvHz/yInW+i6pZCkIU+wjOE9c8LrSPa0bNjezR3oJYniLD47PZWIDTrZEc
	GsarFRRQIBD9sHiJM+Est4YO2qWvjZuTSpMfyzdZ99HVxe+jKWjceBeJsc8t42Mh
	2E34VLDHG3cT+CnU5o/ZEw7fLaGfM473agu7Cjxj1UzKG1Fo9jKaFGgUdPXzA8QC
	E0kWtsTzoFs9/Gq0aCL7locl/PpvhGH/sfDagn3BGqT3VZpVVVfDmRXu3nJXc01j
	KJvSd26UPdwRiKPDxN2jNKC538IvUHJxEp1Ik5J0bWvsf7NzzDThRmtwJQK/QHkT
	Z7WRQ==
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4btm3nmskj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Jan 2026 08:59:45 -0800 (PST)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 Jan 2026 08:59:44 -0800
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Thu, 22 Jan 2026 08:59:44 -0800
Received: from c1illp-saixps-016.eng.marvell.com (c1illp-saixps-016.eng.marvell.com [10.205.40.247])
	by maili.marvell.com (Postfix) with ESMTP id AB86C3F70AF;
	Thu, 22 Jan 2026 08:59:41 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>
Subject: [PATCH 3/3] MAINTAINERS: Add Falcon DB
Date: Thu, 22 Jan 2026 18:59:23 +0200
Message-ID: <20260122165923.2316510-4-enachman@marvell.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDEyNyBTYWx0ZWRfX65o0PGMI9HRW
 XCSEBVuvmHWO40xi8pz4LnGUoNWUNJ5bxmMszIqimL1DT0EgZU0KqpQie7gEtIuCEUgmUkm4vUx
 KMFlq6Ak0keMCktIs+Zjng1mr4Z+9lBGaTjE2PINkWBk3EyZiJOFr5GGOzF/91nHzT8xWpW/L2U
 tbBu+Q4L5zQOgt0Wme7OwnceNyi8eO5WilvMZfPEafCiAwt+Qk9Jp5a7moYp2GksjfKYofwnoI4
 rRin4IcOjOMd23CerVx3NVNFhHYtG4MJjSy6s+9XC7W6M7HcXVJfkVXxD+RGn9mjg0FayLJDIwm
 Gib2eGkFqZAdnuANJ9S+Ao6zqlRcBnkxlHJWn8B90MxRIL967XLeinfJKRwAJOISnIhVTemFd9D
 Zybm1SoOx3auNMjaXo43W9WTZN0kKVMunzZAulMYBFzt/W6u+s4ivlluNltU6Eb6h6Rf6CN3C8n
 YHbRAnSD/D3oa9dJ9iQ==
X-Authority-Analysis: v=2.4 cv=JeSxbEKV c=1 sm=1 tr=0 ts=69725781 cx=c_pps
 a=gIfcoYsirJbf48DBMSPrZA==:117 a=gIfcoYsirJbf48DBMSPrZA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=M5GUcnROAAAA:8 a=VwQbUJbxAAAA:8
 a=iuGNg8QWupQeMYE9WH8A:9 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-ORIG-GUID: Fedk55A5ZAV1jv0S6tKJzZ_2oZpXypgI
X-Proofpoint-GUID: Fedk55A5ZAV1jv0S6tKJzZ_2oZpXypgI
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,lunn.ch,bootlin.com,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[marvell.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[enachman@marvell.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marvell.com:email,marvell.com:dkim,marvell.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 8A57E6B592
X-Rspamd-Action: no action

From: Elad Nachman <enachman@marvell.com>

Add Falcon DB to the list of maintained Marvell Armada dts files

Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a56f8f00aebb..e3f8cec31d30 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2971,6 +2971,7 @@ S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/gclement/mvebu.git
 F:	Documentation/devicetree/bindings/arm/marvell/
 F:	arch/arm/boot/dts/marvell/armada*
+F:	arch/arm/boot/dts/marvell/db-falcon*
 F:	arch/arm/boot/dts/marvell/kirkwood*
 F:	arch/arm/configs/mvebu_*_defconfig
 F:	arch/arm/mach-mvebu/
-- 
2.25.1


