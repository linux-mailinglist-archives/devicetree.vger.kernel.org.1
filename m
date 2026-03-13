Return-Path: <devicetree+bounces-275165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGaoLWf7s2nWeQAAu9opvQ
	(envelope-from <devicetree+bounces-275165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:56:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E447282869
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A597301D32B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCAC1386C22;
	Fri, 13 Mar 2026 11:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="oQ4Ycrpk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78173383C8C;
	Fri, 13 Mar 2026 11:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773402974; cv=none; b=WvM58/SDkNkCYCxHWVo1dFum5Yo9M7Ugu5zvY9XfwqnSFTAPM1JMEaumyS3DqniibiIQ+bQoK8CcgXmBGTO5SK7G/cbgPU5gHHsdfo5Iz0suaTsa3DMW9PESV6YZQCUcfrfl3myzyx3Qbid8HV7vf84afgO6aOV7JgxYc+1hQ/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773402974; c=relaxed/simple;
	bh=+ZkXUMUd4kvRwxJWbuNqq90ges3ui7uHOgiHdPrdz0M=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=nOmVcbIQswWL2+jJ0E0269VEuWGY8X1KsYBYFEzc4DKbGWDgteDf9rRMKCnTBzXHAyq4GmFD/onzqlkXIYCrCIw2GfRKKYFD6SWCf9Rz1PpYI10Y1btxSMf8DBqYnJhyd67CrmZhTT/JaN/RWD86ftOOVpMJ9IiHHv6gzyuSRFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=oQ4Ycrpk; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DAd7tv3650548;
	Fri, 13 Mar 2026 07:55:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=KQNDbRPWeVnowZUU68Vp8vhVpPG
	UvfyAonUp7B3Ucr8=; b=oQ4YcrpkQTwLnfd7lRwBtQlCRNi2XDWJZrchWnySKrA
	bqub/OIWNdo0hCWo/ZB62Z04o7gjwKZHDkBhZ1dsbDGtL7mtoePadXzpkTq/mvi+
	+vv+XxpeQyU0oUAzvsiyvJeoG9AFo1iCI/5o2w9xcsO/lhoAkEKgfg/QCulNiVmy
	hRWxzxLNlTOfFbzJyMk86hYXS9O5Zm89CU+42KCpcRRTezk00nfpto6IBCUkcrEH
	mTOV/TBipVk7YCegZuyO/l1qtB1GnSOVI1dl1tiCjOKkJnWJVnEDKPhlGJKk+mkj
	21ybl3HpKrjxgIIkLNFQRyZvT/+v94EHlinuL4TyoCw==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4cuh6bf0tw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Mar 2026 07:55:48 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 62DBtlHC017327
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 13 Mar 2026 07:55:47 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Fri, 13 Mar
 2026 07:55:47 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 13 Mar 2026 07:55:47 -0400
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.247])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 62DBtTxH024500;
	Fri, 13 Mar 2026 07:55:31 -0400
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich
	<Michael.Hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>,
        David
 Lechner <dlechner@baylibre.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?=
	<nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>, Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Petre Rodan <petre.rodan@subdimension.ro>,
        Jorge
 Marques <jorge.marques@analog.com>,
        Marcelo Schmitt
	<marcelo.schmitt@analog.com>,
        <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: Antoniu Miclaus <antoniu.miclaus@analog.com>
Subject: [PATCH v3 0/4] iio: accel: adxl372: add ADXL371 support
Date: Fri, 13 Mar 2026 13:54:53 +0200
Message-ID: <20260313115525.85435-1-antoniu.miclaus@analog.com>
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
X-Proofpoint-ORIG-GUID: ENdShj5dP4_2wiJXyL1y00CeEdMFRnGL
X-Authority-Analysis: v=2.4 cv=c6amgB9l c=1 sm=1 tr=0 ts=69b3fb44 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=0sLvza09kfJOxVLZPwjg:22
 a=N--XFCr6TIEc_64PeIT2:22 a=Q8uUoR3sjCQRHAxpCJUA:9
X-Proofpoint-GUID: ENdShj5dP4_2wiJXyL1y00CeEdMFRnGL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5NCBTYWx0ZWRfXxG0l9tlPhlqs
 ZLAmjczYoDRG+tpaQyEEKXVZ9lNLflsndS9/7S8IGa7INesJbymDtUuSryoG7aA5RETbxfTpgFQ
 8MP19Vw1I6S5YvdUmXaSdZ+KVE0PEmgj+AkHNoujwsLes3i60bSPLKnjS2Op14fxGug40f/NOHa
 f1eqCAFDW4RAc2vMG0iORQSSvJtvH24qxwyxHdCoSzMchL3pOlh3U4O6zBqmNFZkX3EXD4QRHSM
 oycAXMqiixkR+Mu6lOwDwA4Zb4jTMWqvjLBvPVFpMHDcTURmrIQ+zmxbxp+FSE0INKHd0OwVXWd
 6ouIti80Ea1g00awxe4L/0S6dQ0iXJNoPFnrxWEns+O7sOklNJ7wYkGCc4wednxzQtcKTlbwa3L
 NC7twhuGqsM7FqT5BV223ycQ0LMZ8Klw71YfNTNp8Wrkbsh1bGrxhzU/XWD/dHktxXllRFzkOhW
 Re4dU+KbtkOch45EghA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 spamscore=0 phishscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603130094
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275165-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[antoniu.miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1E447282869
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for the Analog Devices ADXL371 3-axis, +-200g MEMS
accelerometer to the existing ADXL372 IIO driver. The ADXL371 shares
the same register map as the ADXL372 but differs in ODR/bandwidth
values, timer scale factors, and has a known silicon anomaly (er001)
that prevents reliable FIFO operation.

Changes in v3:
 - [Patch 1/4] Use designated initializers for adxl372_bw_freq_tbl[]
   for consistency with other frequency tables.
 - [Patch 4/4] Add ADXL371_ODR_NUM to adxl371_odr enum and use it to
   size the ADXL371 frequency tables.

Antoniu Miclaus (4):
  iio: accel: adxl372: introduce chip_info structure
  dt-bindings: iio: accel: adi,adxl372: add ADXL371 compatible
  iio: accel: adxl372: factor out buffer and trigger setup
  iio: accel: adxl372: add support for ADXL371

 .../bindings/iio/accel/adi,adxl372.yaml       |   9 +-
 MAINTAINERS                                   |   5 +-
 drivers/iio/accel/Kconfig                     |  12 +-
 drivers/iio/accel/adxl372.c                   | 295 +++++++++++-------
 drivers/iio/accel/adxl372.h                   |  20 +-
 drivers/iio/accel/adxl372_i2c.c               |  19 +-
 drivers/iio/accel/adxl372_spi.c               |  19 +-
 7 files changed, 245 insertions(+), 134 deletions(-)

-- 
2.43.0


