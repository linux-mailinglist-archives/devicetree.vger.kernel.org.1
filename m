Return-Path: <devicetree+bounces-263358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENWgH3johWnCHwQAu9opvQ
	(envelope-from <devicetree+bounces-263358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:11:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1A9FDE72
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 735FF3059AB0
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 13:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE5A43D9024;
	Fri,  6 Feb 2026 13:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="e/KoUgN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8AC3D7D67;
	Fri,  6 Feb 2026 13:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770383386; cv=none; b=QQi/545eooMLTjJQ+pvkdKb9MwtHdNlrmBoM2yX+/vsohTf8+7uwMz7baB6Jz880lYoUxPzl1f6UsxD0lWRr2GwcrX83xfBd1py41AicHFt04wKUS/zDL+yM3RzmU4e93q7Lj5nHPkPgSD2sXa/eRWzw3RhYG5h0TB56Fzk8Ehc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770383386; c=relaxed/simple;
	bh=2jsq7xTzExelXmbaTYnqgYiM78AaygfvoZH9ObMJ1tA=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZphJwgl2ScwpaKRIh7sO8VJVvqZ2DF8rP8hbbEKf6r+MdFWt1gRONDC+PQcXJMZIY1XYlk3AgEaKksAkmfn5VDhGBpmKj50YbO4CNY+qkFY5GWPLoQ0IRXCUBVlbrZvPE7d+AtTaDDYmimatgBlDupzbvOi8dBgR6Z6wgar1NkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=e/KoUgN1; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616AIh9x2328489;
	Fri, 6 Feb 2026 08:09:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=8etXChZG62BQbq3EpLptsexz3N1
	YfoX8ssvIj6jtGkw=; b=e/KoUgN1+fqu7MxyUsFjoKTsLSWTYs1cgWIyRm/IxFu
	I3udLAEJFW8fKQMXKUxNbVUpcpwTEw51NqH8zf7RrAXt0qwrfuQCJh8S51yh9N+l
	ae85NHlbKrZV+jnleXEMDlElsrl6zp+wUOvvJLTEHP4ahF531X6BuMs14+oktwhw
	TVYgz11aF8mQgaZbNPNHcSdVnEWvbFX1a3prC3rlDu/kuXT7INzsql9qlWvKD8kS
	ILP1nPoxYEsRZJfYWoyniUc4Pg4QLhmAVhR8oGrdwwr3CbGVpUyMW6Y7k+R8GAv6
	6Pab1mFRQ/m6SuV41QSQmFBER86Qkfwcc9jeubacTKw==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4c58721sfs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Feb 2026 08:09:16 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 616D9FEX038210
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 6 Feb 2026 08:09:15 -0500
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 6 Feb 2026 08:09:14 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 6 Feb 2026 08:09:14 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 6 Feb 2026 08:09:14 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.247])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 616D91JH024213;
	Fri, 6 Feb 2026 08:09:04 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
        Lars-Peter Clausen
	<lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        "Jonathan Cameron" <jic23@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Andy Shevchenko
	<andy@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, <linux-iio@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/6] iio: adc: ad4080: add support for AD4082, AD4085 and AD4088
Date: Fri, 6 Feb 2026 15:08:19 +0200
Message-ID: <cover.1770382796.git.antoniu.miclaus@analog.com>
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
X-Proofpoint-ORIG-GUID: qP1QfuTOR_a43B2TkRVavqHLcW-sAcS8
X-Proofpoint-GUID: qP1QfuTOR_a43B2TkRVavqHLcW-sAcS8
X-Authority-Analysis: v=2.4 cv=eqzSD4pX c=1 sm=1 tr=0 ts=6985e7fc cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=HzLeVaNsDn8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=4GZ7O7lbiYnNbMRglawA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA5MyBTYWx0ZWRfX31N82h6P6imY
 EQ/USAQgkP2sG3pla3h8Hk4PJ7gZprnhbWkukcE+qZipmrY+w1GN3KB8inWIUKrgPIdf6jIdXth
 6lwja6prhP6WncR+0+T4dEu/HJaPZUb5B9VBkKr3syV3/30JCMOhQlXiPNftfNc3vC4r5Y76yFk
 h7DAh2YPDGzt7MswYYQvQER2coE03yMdPsu0yfSOIvwfoFx3ksER0UJwYZtUC0twQMugadjSyPN
 obquqHkMYfy4QRqnV+OU2IEsSS7x1OohL/ZPjYU6bXESx+27pWq8ANWap0Q7BulMn8KXzyxmfKV
 qWXdlirEJYp8yqO7IQo0R3EH6aRxtJH1sZuHyQQoqzuv6MuupUl9ScRkGXrVxz8LH+Mc4YZU3FG
 cZKV7NKbjMcRR5mbjU7Nu6kbq+ZFDqRzKQIepHedk9DUC6m5VVKvLyWL/HhlfYdsNZHuOTB6CuY
 EuJzMcVnLQXIcTO+T9w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_04,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263358-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[antoniu.miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:mid,analog.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.980];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 1C1A9FDE72
X-Rspamd-Action: no action

Add support for AD4082, AD4085 and AD4088 SAR ADCs to the existing
ad4080 driver:

- AD4082: 20-bit SAR ADC with LVDS CNV clock count max of 8
- AD4085: 16-bit SAR ADC with LVDS CNV clock count max of 8
- AD4088: 14-bit SAR ADC with LVDS CNV clock count max of 8

These devices share the same register map as AD4080 but differ in
resolution and LVDS CNV clock count maximum values.

Antoniu Miclaus (6):
  dt-bindings: iio: adc: adi,ad4080: add support for AD4082
  iio: adc: ad4080: add support for AD4082
  dt-bindings: iio: adc: adi,ad4080: add support for AD4085
  iio: adc: ad4080: add support for AD4085
  dt-bindings: iio: adc: adi,ad4080: add support for AD4088
  iio: adc: ad4080: add support for AD4088

 .../bindings/iio/adc/adi,ad4080.yaml          |  3 ++
 drivers/iio/adc/ad4080.c                      | 45 +++++++++++++++++++
 2 files changed, 48 insertions(+)

-- 
2.43.0


