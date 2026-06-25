Return-Path: <devicetree+bounces-315716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T8o4DqQ9PWrwzwgAu9opvQ
	(envelope-from <devicetree+bounces-315716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:39:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 707D36C6BDF
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:39:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=imgtec.com header.s=dk201812 header.b=NSMtUabn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315716-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315716-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=imgtec.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D59E230388B7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6E5036826B;
	Thu, 25 Jun 2026 14:30:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2023B2D0D;
	Thu, 25 Jun 2026 14:30:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782397828; cv=none; b=p1CfY+4A6gc5un0ZMGRrnOqfucpqC77dAObYIYcFQywwY6Tkp2Bv1yreXrWess6in2kht5j87c8pZ6JwyW4R8eU/N+r5qfrXDcD7Ft+BQUrw/CKfywI7WMZgHZqwR0FNDyc4IdkNUiB59qViSSHZ2tNcIdTWG6oEz5tTcKW4URo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782397828; c=relaxed/simple;
	bh=273UYrDZLPZRLdQE9gl9FKkhwcDVtVsSfuVQnIfzmlo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=URlZq8KU8/sDbsGx66xksfSE5MCBLkZ/NWt+9e47A3UjnOb3Nff8iqKBCALa6L4EyZe1GSvirVZVOoy/1zT4JBZt9jH4cebH9pKV3qMb+R9mzdWgSaZKF3wxzk49kShI3glTILRR/82AF8V1KvPRON0jg0PqlrUPf2+pS3a6FDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=NSMtUabn; arc=none smtp.client-ip=185.132.180.163
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65P4JFRn405670;
	Thu, 25 Jun 2026 15:03:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=5
	Ogf5Wl3QQZvTKRAy4ITMzPaEdLMo0ILl6iyTX/9sOE=; b=NSMtUabn0lci5kpMO
	AUn3wuc/5H0a/VZn7CO2sT5aNvfH06GVUSeNeoZpFq1RIBQfUnukVGgMQcVB5m/X
	T8bCIEW/5VCmRJnS7yBXc6EpVfIctDwlAw3osrR19fvbXJYi/q/sNHnlfBjeds63
	Rz3iCqBc65G5kGBWH0Huoc6cZTEGdt9b89MIa/RiTDESM83Zv366bFCiqVO/W2nL
	bXa04eSlninGjUeonqkRaTfbhXk1YhP+afv5DXf7mFlgngmYccTPZjki03EBiX//
	h8FjPnAhPlffzhEfDc5Xa2Mn9iS21t10Byv1jsVw2JTHOF7frsVZiv3CIGcphZyh
	PTpgQ==
Received: from hhmail01.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 4f0t728jce-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Jun 2026 15:03:47 +0100 (BST)
Received: from [127.0.1.1] (172.25.4.185) by HHMAIL01.hh.imgtec.org
 (10.100.10.19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Thu, 25 Jun
 2026 15:03:46 +0100
From: Matt Coster <matt.coster@imgtec.com>
Date: Thu, 25 Jun 2026 15:03:38 +0100
Subject: [PATCH 2/3] MAINTAINERS: Update imagination maintainers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260625-maintainer-updates-v1-2-35112b2f038e@imgtec.com>
References: <20260625-maintainer-updates-v1-0-35112b2f038e@imgtec.com>
In-Reply-To: <20260625-maintainer-updates-v1-0-35112b2f038e@imgtec.com>
To: <imagination@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
CC: Alessio Belle <alessio.belle@imgtec.com>,
        Luigi Santivetti
	<luigi.santivetti@imgtec.com>,
        Frank Binns <frank.binns@imgtec.com>,
        "Brajesh
 Gupta" <brajesh.gupta@imgtec.com>,
        Alexandru Dadu
	<alexandru.dadu@imgtec.com>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        Matt Coster <matt.coster@imgtec.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=728; i=matt.coster@imgtec.com;
 h=from:subject:message-id; bh=273UYrDZLPZRLdQE9gl9FKkhwcDVtVsSfuVQnIfzmlo=;
 b=owGbwMvMwCVWuUfy8817WRsYT6slMWTZmjq8+uCnbiXy8W9WgN8ih4A31+d1f404KbR1+zGpM
 2+eppSndZSyMIhxMciKKbLsWGG5Qu2PmpbEjV/FMHNYmUCGMHBxCsBEfHYyMqyPrpq/K2PZbxmX
 XY0fm/bv9G3pidjWZ/Ur+pf9R2eu8K+MDIsT99zkfRKn+v7t1bel1qdfF/d8+VX9lTu7t2mJdsA
 qLSYA
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-Proofpoint-ORIG-GUID: uETB7RQCPe1RhS5WYL2R2dKPQBKMS_gC
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI1MDEyMCBTYWx0ZWRfX8+oXo2FtpFrm
 zRyczMqvwnV/BPKORQ+mLLIcdW/IxdyLki1vaKXGKxBxxj26xUl4ikwKp4A8Y1FyGyJxu5iGJkq
 AFgCBXYDUxk1xPZDh2m2DhgzqhUD9dM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI1MDEyMCBTYWx0ZWRfXzRRe6HiSypAh
 Pg1EmW3XfRYL6uU3h2y5quOPyewzH42Zn2IJJyjCBLO8hEw6rMAV2nALg4wxRhUtDN6fUYLVGos
 yCwDbBiLvqXr/P0VGuZQM8WNmpUNNVBp+Wwoqm8G2Ifl/XvCKeGlXNtnWSO3Lr3/6KW4XjvY8Dy
 qNMl3NMxIY4CQ9P9KMf/YzMBJizD2RB6LkdRWpFb5h9UTDjkcCda5QhKM2bBd57qbxuiCHFoA5g
 MwqDJHxivU7f5MVjUnM503Vob3peVZRAW/HefKMPdRxmgew1mgqMb0r0YrsD3muaOZyIaOXag7o
 9AVwyPZ0vYdyjwFdoXfJ0pKEN519pScsw4I3OYCeRKGIyu9pWhk0JPXcBsmGOASO7SqK85Qym8b
 2QCNRSJW4INjHMQY5e5zkyE+/1LpvmSginrlEzID+717EdP9XFuK0fl7i1O9iiW8LQwo3KkMq9V
 xHq0p2Z8e4C0thizGFg==
X-Authority-Analysis: v=2.4 cv=ee0NubEH c=1 sm=1 tr=0 ts=6a3d3543 cx=c_pps
 a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17
 a=e416AD1ZbSsA:10 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=kQ-hrUj2-E3RCbRHssb7:22 a=7RYWX5rxfSByPNLylY2M:22
 a=e5mUnYsNAAAA:8 a=r_1tXGB3AAAA:8 a=iCmMkxMm0QhFShkxjzEA:9 a=QEXdDO2ut3YA:10
 a=Vxmtnl_E_bksehYqCbjh:22 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: uETB7RQCPe1RhS5WYL2R2dKPQBKMS_gC
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[imgtec.com,none];
	R_DKIM_ALLOW(-0.20)[imgtec.com:s=dk201812];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315716-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:imagination@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:alessio.belle@imgtec.com,m:luigi.santivetti@imgtec.com,m:frank.binns@imgtec.com,m:brajesh.gupta@imgtec.com,m:alexandru.dadu@imgtec.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:matt.coster@imgtec.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[imgtec.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[matt.coster@imgtec.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt.coster@imgtec.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imgtec.com:dkim,imgtec.com:email,imgtec.com:mid,imgtec.com:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.freedesktop.org:email,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 707D36C6BDF

New people are taking up maintainership roles within the team.

Signed-off-by: Matt Coster <matt.coster@imgtec.com>
---
 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index b45e60524762..fe02d1087ab2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12567,8 +12567,9 @@ S:	Orphan
 F:	drivers/media/rc/img-ir/
 
 IMGTEC POWERVR DRM DRIVER
-M:	Frank Binns <frank.binns@imgtec.com>
 M:	Matt Coster <matt.coster@imgtec.com>
+M:	Alessio Belle <alessio.belle@imgtec.com>
+M:	Luigi Santivetti <luigi.santivetti@imgtec.com>
 L:	imagination@lists.freedesktop.org
 S:	Supported
 Q:	https://patchwork.freedesktop.org/project/imagination/list/

-- 
2.48.1


