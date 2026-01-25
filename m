Return-Path: <devicetree+bounces-259263-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGvnFr01dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259263-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:24:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 751F3812C7
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA8E830013B8
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F36C324B26;
	Sun, 25 Jan 2026 15:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="MAqwm5WF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D7B27B353;
	Sun, 25 Jan 2026 15:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.148.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769354673; cv=none; b=sM8GX4LcXVXDeToxdHJEZr1v4RPRU2kHyA2akPNRHjdBDNINMK7yxKWM1s82EgHsc3b8YCaRBZBlelNPCZvhpYGvIltFnYZqKmLW+CMgM9SuNI78vNSf73qsZF6f8puebV7FXMnqxYIeqnWCgDT71mzG74CI/qQYN+w0DxmJ9UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769354673; c=relaxed/simple;
	bh=HKFQenOggQWNiUkjWr4yDIbrvtKOwIQFY8QRedhmWA4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Sr3QmfViSe/xSaUpZ5/wOily1IwB3jiQfFpd0srm59/uwNUjqwEHxGOdrOlWVmedbcF2r7t5gnzr+iCQC9vV8941EeLUNNm30ZQIFGeuQZvzZH/bzYF7pzCJn5+o9b5PcZJ/bkubF0QCeuZQIQPxic2YqWIMMSJmbETl0C99Wn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=none smtp.helo=mx0a-0016f401.pphosted.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=MAqwm5WF; arc=none smtp.client-ip=67.231.148.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.helo=mx0a-0016f401.pphosted.com
Received: from pps.filterd (m0431384.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PD0o1w1944761;
	Sun, 25 Jan 2026 07:24:03 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pfpt0220; bh=V
	7X9qqcrCgPVgF1/MP/gVVOjus2lAkCFoeo2ICUwtfE=; b=MAqwm5WFjaV/aN+8G
	u6HRAmrEZa+Qz8tRZSNNiLe2EKr2VlZZC2nMlM5YYlJm6CDgKt91MCrW7CJqQX7q
	rfMkMiI1mpemlCmrgU3FEXS9f4myqa2Sdvo+tyrK/AXDUtL2XvxWCF24vbmpPH2O
	lcohv7fqWIhUxirRqIuUkN5jiToOcXpQr+BBWA2+8byqD985PDhU7yfg09dmpNyT
	uC1ae2PgSkzkhV/yyu+UUlHQt5LbSodTLwRlPFSl5CBEq1jNyKL0kMY+bEfh/20e
	qJgyaT8l8cyLJz0mjP4BRisFYjoWVJZK0/RlwM7/jmKTTJlkmh5MOSGCGOxKGUV9
	0nA6w==
Received: from dc5-exch05.marvell.com ([199.233.59.128])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 4bwk7a04jn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 25 Jan 2026 07:24:03 -0800 (PST)
Received: from DC5-EXCH05.marvell.com (10.69.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 25 Jan 2026 07:24:18 -0800
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH05.marvell.com
 (10.69.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Sun, 25 Jan 2026 07:24:18 -0800
Received: from c1illp-saixps-016.eng.marvell.com (c1illp-saixps-016.eng.marvell.com [10.205.40.247])
	by maili.marvell.com (Postfix) with ESMTP id ECCE43F7089;
	Sun, 25 Jan 2026 07:23:59 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>
Subject: [PATCH v2 3/3] MAINTAINERS: Add Falcon DB
Date: Sun, 25 Jan 2026 17:23:47 +0200
Message-ID: <20260125152347.2518538-4-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260125152347.2518538-1-enachman@marvell.com>
References: <20260125152347.2518538-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDEyOCBTYWx0ZWRfX7/jouMxogqPS
 VQg4onViZrBsKzgKRUg01S/xbKcWHdkmDh+O2n8xellsb9bSDcjbBJHwLp7hh21j5B7UB8FR3Nk
 vw8YV4+IppUI+ao4fH/y8UV9lmYRoGHbz9VV197jRG+L/Fyg2iHOMmTJDNQug2M1BBlQLjs+5rV
 YjYjXT5v9ttl6qRnH2Nl6FIEM1PNRf3D+1wBulkVB55jD4gAG5Ku072/tVW/tKbKW0gJ6IrVmj2
 gxzo0VdotS1bSvy6glaveaL7z/PZKMpRZQ85ZF2ztbl8/WtYR7FI+ZiEBad3s/YafPuBWsshLLO
 CQCzDbaiG2BITpqFkf3kY9XjN4Kbe0wbuAAYAmM6CZyLNBJqsyVY8FHunppDRR+IYuvFKx9dj03
 hi8qN+JUOaXXQqLVKuTawKCV4XsZU6RB26FRA7q6/0Hz+Mqy16hT53a4x15srjYJpHM28zBYh2b
 LPYyg4jki9yn/rCC0AQ==
X-Proofpoint-GUID: fZBQBRLTdmdyUfxz1I9ASuM44iigSWdW
X-Proofpoint-ORIG-GUID: fZBQBRLTdmdyUfxz1I9ASuM44iigSWdW
X-Authority-Analysis: v=2.4 cv=Vpouwu2n c=1 sm=1 tr=0 ts=69763593 cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=M5GUcnROAAAA:8 a=VwQbUJbxAAAA:8
 a=iuGNg8QWupQeMYE9WH8A:9 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259263-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,lunn.ch,bootlin.com,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[enachman@marvell.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[marvell.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 751F3812C7
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


