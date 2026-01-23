Return-Path: <devicetree+bounces-259000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBB4LKmMc2l0xAAAu9opvQ
	(envelope-from <devicetree+bounces-259000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:58:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E15B7753D
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:58:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AE6D23007BAC
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD3127057D;
	Fri, 23 Jan 2026 14:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="xagGajDE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0A526ED56;
	Fri, 23 Jan 2026 14:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769180326; cv=none; b=T1CE0QmYKna8+PtFZdc9JOu+oI/S5/BUxcvK8EILYfh3SoOeAK+Hy2VAMJPAjHCDxAIRCWnOdOmJd4IbAi9zx/0VYhf5dri02E2fyjNhZ+LgvhLNXQAWmH7DCNQ8nzyNtFCHLmwDFMPaTzql4B9OOKuAzUAbnv5WaIC6s7VUftU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769180326; c=relaxed/simple;
	bh=gSWVJqHTktPGJyQSnUhZZtv9vbpjiq5x/pbPBiDb65k=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=LiWH1/tOoOr9r4+S5OrBKyGJbtM1zTJrf77NatFNWQQqA6rihi4o5Nce2Nx4QVj2ujqAp68YpJMUumBPizpGDz4Am4rLy7fX4VFWrZHM3j5lDrL+FaDcQ1dPtOdC/3I1GYWnFYqYozOjc+aVN0/pR47F+9YNcAFrd0botQdx2fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=xagGajDE; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NDBVpB2402842;
	Fri, 23 Jan 2026 09:58:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=fPqu4bFjzo35IVO5C1V0/4ppL6r
	CCkDSg5GQS/LXTHM=; b=xagGajDEahVykq4WqzzukgPXa6BKPlHDNl5pJe8ic9s
	E2ix9M72TSShqGnOLGDZ5gEEt5BkavOrxCVx5Vf3s3/7KlKttixYgehgTPqe8F7G
	kp6Bff+XWk2NZeq0vUVNhJvM/WZDgp0Yl3BVoz/8ChhRdU+GNBTRFpD6Zpz0E5lw
	NyK9iYvV9zlzdjJfaoN+o1VMTLXXTdD+rg5w7YPbivdo9Taa3oe3qZURfabaPqaQ
	jb1KXcjH21AJmy/zHvBMVjvIbR7EX8If8mKJZ+IrytjycR2q42INGq1c59WIu8FY
	ksLlPQFYZBP0nKM1rft8ZqPTaEC4KgheUORO3AFyAAw==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bv5suss17-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Jan 2026 09:58:37 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60NEwaG4028261
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 23 Jan 2026 09:58:36 -0500
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 23 Jan 2026 09:58:36 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 23 Jan 2026 09:58:35 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 23 Jan 2026 09:58:35 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.212])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60NEwLVa012602;
	Fri, 23 Jan 2026 09:58:24 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Srinivas Kandagatla" <srini@kernel.org>,
        Antoniu Miclaus
	<antoniu.miclaus@analog.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bartosz
 Golaszewski <brgl@kernel.org>,
        David Lechner <dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/2] mux: gpio-mux: add enable GPIO support
Date: Fri, 23 Jan 2026 16:57:30 +0200
Message-ID: <20260123145743.75705-1-antoniu.miclaus@analog.com>
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
X-Proofpoint-GUID: FmJWUdrr8b49dM7OYUAXWxjDhZxipvyD
X-Proofpoint-ORIG-GUID: FmJWUdrr8b49dM7OYUAXWxjDhZxipvyD
X-Authority-Analysis: v=2.4 cv=JuL8bc4C c=1 sm=1 tr=0 ts=69738c9d cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=HapAHONEMoC6MvEP3oEA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDExOCBTYWx0ZWRfX4th2zSKIAK/d
 MfAk/dv8GeKu4YR1Xj5sgBuPOs7KoAoWOSO1ti7APJo79OUfuC6V8iJrbGW/UmOQa12N9EECcRN
 cIXEqGYAAhCE5PKQCAyuIrRwUumAVMtr9kN9G91PGH0kMzxw6nwvBNZNwBhRCMcGvIKaEdFyovX
 mN+ZcliyxgJFCbt06i6ev+e4c5njUkYx8VPstZJIE24IICpLYE+csve8w3LhROToGU3EJRoPvJ/
 TwdxFj1Hu+PhAsU0NgYUPYaT+3mVvhr2KBs0azhX4fRDy5GGwAYp7OqUxlobSfaSTHTuElCG9YO
 MGPi/BlyLDlQa0l8/2UkF6wEfdHFPPntmqdOy7ul/i/N2LqFJjR3GTIJrP+E+NNDPC1nJGqYT2I
 x9orRQVhiWhQXviDI1O+vgU0616PWUFgcHjCvGI8X6aUQExOZYyjS1u1ZTxkrncRSl9PHEPfWET
 VW+bfHfS5huiCK8a/nw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230118
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[antoniu.miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259000-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,analog.com:mid,analog.com:dkim]
X-Rspamd-Queue-Id: 4E15B7753D
X-Rspamd-Action: no action

This series adds optional enable GPIO support to the gpio-mux driver.
The enable GPIO allows the multiplexer to be disabled before changing
address lines and re-enabled after, preventing glitches that could
briefly activate unintended channels during transitions.

This feature is useful for devices like the Analog Devices ADG2404
(4:1 mux) that require enable control for glitch-free operation. The
binding documentation now includes ADG2404 as a supported device with
a dedicated example.

Changes in v5:
 - dt-bindings: Expand enable-gpios description to explain high-impedance
   (high-Z) behavior and analog signal considerations
 - dt-bindings: Remove separate ADG2404 example, add enable-gpios to
   existing example instead
 - driver: Enhance code comment to explain high-Z state and downstream
   capacitance for analog multiplexers

Antoniu Miclaus (2):
  dt-bindings: mux: gpio-mux: add enable-gpios support
  mux: gpio-mux: add support for enable GPIO

 .../devicetree/bindings/mux/gpio-mux.yaml     | 16 +++++++++
 drivers/mux/gpio.c                            | 35 ++++++++++++++++++-
 2 files changed, 50 insertions(+), 1 deletion(-)

-- 
2.43.0


