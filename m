Return-Path: <devicetree+bounces-306654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u/dGLeonIWpI/wAAu9opvQ
	(envelope-from <devicetree+bounces-306654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:23:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8A363D982
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:23:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=analog.com header.s=DKIM header.b=sqZGi2Pu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306654-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306654-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=analog.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51319301A1E9
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECFF3DDDA5;
	Thu,  4 Jun 2026 07:14:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09D4313E10;
	Thu,  4 Jun 2026 07:14:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780557266; cv=none; b=QnfSIAlsUfzJk/ZOya+1F2DuzKdCsDRq60o5DB6R+dqXx/H5nJ51IfLAZLV5v46HUL1FFUQvBw/afN/0cYPSGdjdtX2syuRbObhzEWg4RydKLloOfBP4pkonHtEk1SF4+DzcGv0nTX34oqMz6pL0MV0Qv8fxX+SM+Ebicr4w7Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780557266; c=relaxed/simple;
	bh=Qm4GGW0O1kj9XjdB6AHET+MekqWNJGT/1PW8iTPZlrw=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=EvLZVBfk5PBhrsBxlXnaLOctw80WfTC6gAe3RYAMO9u9Cger9lAhIbUgARqg7gm1G3Vg0Tmn1JKeWM0Qitklce9LdXJJpqn/TVuAkpz9ZADnokRRtOukj5ToAL6XZDEQCMl1/rVWiU6FTaghUG5gxaI44l8LC8h+3VYgNfJOghw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=sqZGi2Pu; arc=none smtp.client-ip=148.163.135.77
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6543hpHO3245948;
	Thu, 4 Jun 2026 03:14:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=unDSgL0ETchCIrjpISMEZvq6oow
	2Ut1jX6G8bxJJXlc=; b=sqZGi2PuL4rqJMetzmAIZKBkPPzWgbVJRomW1tZV/vy
	L3WABvgmmD8MEXIY1ux50QbG4IyD3PGTRRrOGj2nYZZaouc6PjYJj9TDG4izwKBB
	xaLO86WjeZM1pxCKp1OyrGakVGTMFuNHGhOkkwTwExIewXMK2gBJIqHIEanKKDwR
	qo0u1TOiuLjBxaOt/jXz1iBngLD+06If3xobnmHmKMND5egq0/Bms6b1m/5SeQBK
	iijsqVeFRQjcf272ygBsITMWXj6uzVcyuyQGTqA20C+8jmymIex6e8xHWCH75EON
	UjjelVQLHsycabeLJqIdw4jrjdy+41W3LWD7+2jMlGA==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4ek1q9gncr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Jun 2026 03:14:16 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 6547EFfc042099
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 4 Jun 2026 03:14:15 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 4 Jun 2026 03:14:15 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 4 Jun 2026 03:14:15 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 4 Jun 2026 03:14:15 -0400
Received: from analog.ad.analog.com ([10.66.6.191])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 6547Dv9L020350;
	Thu, 4 Jun 2026 03:14:00 -0400
From: Kim Seer Paller <kimseer.paller@analog.com>
Subject: [PATCH 0/3] iio: dac: ad3530r: Add support for AD3532R/AD3532
Date: Thu, 4 Jun 2026 15:13:42 +0800
Message-ID: <20260604-iio-ad3532r-support-v1-0-c3552f9031de@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKYlIWoC/yXMMQ6DMAxA0asgz7VkAgTRq1QMFAy4A4lsQEiIu
 ze04xv+P8FYhQ2e2QnKu5iEJSF/ZNDP3TIxypAMjpwnTyWKBOyGoiqcom0xBl2xrhryNTdUcg6
 pjMqjHL/rq/3btveH+/VewXV9AY0VlYB3AAAA
X-Change-ID: 20260604-iio-ad3532r-support-759067e904e1
To: Jonathan Cameron <jic23@kernel.org>,
        David Lechner
	<dlechner@baylibre.com>,
        =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
        "Andy
 Shevchenko" <andy@kernel.org>,
        Michael Hennerich
	<Michael.Hennerich@analog.com>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux@analog.com>, <devicetree@vger.kernel.org>,
        Kim Seer Paller
	<kimseer.paller@analog.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780557237; l=1495;
 i=kimseer.paller@analog.com; s=20250213; h=from:subject:message-id;
 bh=Qm4GGW0O1kj9XjdB6AHET+MekqWNJGT/1PW8iTPZlrw=;
 b=TGKos1j+J3iWL+ns4eOeEmLJsnwXOTinKZU56Hi8yJtL8GXz7g+LYyv4axWq6JbRNHsRiuiut
 VvdgpmNIUvvCW9y4ikk8aj1FfGJHDdsBDRqRwwMBBTqD2QUALjQ2rLg
X-Developer-Key: i=kimseer.paller@analog.com; a=ed25519;
 pk=SPXIwGLg4GFKUNfuAavY+YhSDsx+Q+NwGLceiKwm8Ac=
X-ADIRuleOP-NewSCL: Rule Triggered
X-Authority-Analysis: v=2.4 cv=fZGdDUQF c=1 sm=1 tr=0 ts=6a2125c8 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=0sLvza09kfJOxVLZPwjg:22 a=Z0pTeXoby7EwIRygza74:22 a=gAnH3GRIAAAA:8
 a=6-YLjScE4UsAHGhbFlwA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDA2OSBTYWx0ZWRfX7SdOys/1OO4b
 vVxgTiYb2gvngKMLdEU4Wh2xq81I27MKQLjWOQLgMlF7fHlYPVqKrU2yD4UoLLtD8ZPrwnhcRvN
 3gkow8tgulTHNxdxn8KGuonF7AVMO7cjpuWG6fecipEHNRkeCrorMH1d3M9tlzJlz+Jgfyul6Rv
 nZRbBJHdw1muEIlB/z+pzzfNOltNEQpD7WceCE9oIVZfxDx1eUgxbnTJg+DjvtWys9mqVl7hYyo
 uCd4sTV45TpSkuvn12BUcnAr3OYRQIDAnZeB1e55c5226lz1UB7B238bXYw5vNGE/31j4eov4JC
 5S3Rp8KedO7DIHOakxs8M282sefTWC9gE7UEPqe03DtR7MjDk3i6x6rx33q6OIRtGr4frjFTXRL
 FQUB1p0Pc0qMGoIJy8Ox+rDVXOkA0zKoh6ADxSwiJuaGip7UVx/FWABj574fZpAvnvTb5dNqRp5
 1I1j7swz7hcbH+/1xow==
X-Proofpoint-GUID: I2tv23R9xhH-0X7w6jEoJEzsNhpFLz6z
X-Proofpoint-ORIG-GUID: I2tv23R9xhH-0X7w6jEoJEzsNhpFLz6z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1011 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040069
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306654-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:kimseer.paller@analog.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:mid,analog.com:dkim,analog.com:from_mime,analog.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[kimseer.paller@analog.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[analog.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimseer.paller@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D8A363D982

This series adds support for the AD3532R/AD3532, a 16-channel, 16-bit
voltage output DAC, to the existing ad3530r driver.

The AD3532R uses a dual-bank register architecture (bank 0 at 0x1000
for channels 0-7, bank 1 at 0x3000 for channels 8-15), which required
refactoring the register access paths. A table-driven register bank
approach is introduced where per-chip register address arrays in
chip_info are iterated by helper functions, replacing the single-register
setup calls for existing variants and scaling naturally to the AD3532R's
dual-bank layout.

The series also adds AD3532R-specific powerdown modes (1kohm_to_gnd,
10kohm_to_gnd, three_state) and a new ABI entry for the 10kohm_to_gnd
powerdown mode.

Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
---
Kim Seer Paller (3):
      iio: ABI: add DAC 10kohm_to_gnd powerdown mode
      dt-bindings: iio: dac: add support for AD3532R/AD3532
      iio: dac: ad3530r: Add support for AD3532R/AD3532

 Documentation/ABI/testing/sysfs-bus-iio            |   1 +
 .../devicetree/bindings/iio/dac/adi,ad3530r.yaml   |  16 +-
 drivers/iio/dac/Kconfig                            |   4 +-
 drivers/iio/dac/ad3530r.c                          | 315 +++++++++++++++++++--
 4 files changed, 302 insertions(+), 34 deletions(-)
---
base-commit: ae696dfa47c30016cd429b9db5e70b259b8f509e
change-id: 20260604-iio-ad3532r-support-759067e904e1

Best regards,
--  
Kim Seer Paller <kimseer.paller@analog.com>


