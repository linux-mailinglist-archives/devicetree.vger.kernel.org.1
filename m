Return-Path: <devicetree+bounces-251480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BF086CF3718
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 13:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 03E983005029
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 12:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AC8D33556E;
	Mon,  5 Jan 2026 12:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="cHUOrErX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933693148B6;
	Mon,  5 Jan 2026 12:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767614633; cv=none; b=EZwjprvD9zySnKSHpb21Yk+xFaQNnYUGM0xwA03uN9sC1IubuJlCCrsLcGhX7j7m5e0PAwgT9ELiCQ0EAnmH0FsRlltmyPih/JxFwujrVHvHD966MIDJjDtNqg4/Fyvlb2g0IfIUcmhAqtbMU4bPWmnK4bhs1/S2FdauPD2byNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767614633; c=relaxed/simple;
	bh=qvudD6qKuJT6sP6iMTixQssc6waDLK57vxw+a3kskG4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qaskmPf3i84CzEJomZ+U/EGlOxTNq2Jk6Cslp24J+g7oFc98Atd/RltKrJMeSqTMOrYBajNqWDOqB6hIrR0w2tGkUrVlkLtTiDpyoPAqpoa8cXSZTvQxSvG6xyExLrYiaPdDKIHinQeoBVm063OqNAFDX7+so5jKgfF2dQ5mSmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=cHUOrErX; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058nTYw4096688;
	Mon, 5 Jan 2026 07:03:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=2zkjwPui8tcUh1OuxHCHBwdVaFR
	MYzPLyn83sonntqE=; b=cHUOrErXDa8/D1EcUbAjOyM3h5tTwyikyV9cNjVWcFY
	moBFR10UYo/Qbxavc3ht1V4lFgYVCrhFvtXrGTuCFwCIAHstxoEC82F4qCmzEvlj
	wg492qJ5QWdyNkvYWI3jabN/oa2T04rL9P83442MLmAiJtCCdctAR1MhszP7Q9Mk
	zfdChqGLruvfI7ClQd3hJLXHHAvUvW4fBj8Wp8IjCj8z5bLSOFHYv7LpCFQ/f0Aa
	ffmF5KivYbGHq1+OZ9NqisCj46pr4EaP0GTd6aEPo2DMSh7+JyXv0m2WycHjfv4v
	gKnPS6ffCjG4aD5n6GsjJl0eYpnzMiVeeWYx30+Gk3w==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bg6a1snev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Jan 2026 07:03:43 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 605C3gWE038502
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Jan 2026 07:03:42 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Mon, 5 Jan
 2026 07:03:42 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Mon, 5 Jan 2026 07:03:42 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 605C3SjY015791;
	Mon, 5 Jan 2026 07:03:30 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] mux: adg2404: add support for ADG2404 multiplexer
Date: Mon, 5 Jan 2026 14:00:29 +0200
Message-ID: <20260105120117.57607-1-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEwNSBTYWx0ZWRfX7BtF/zzdIq5s
 MVvOw8g3Ko7o8AoPK64vVd1UVIIXZzGzICasgHc5QSPVODx3Y7TD2qvJFFVfJ87mZvLFC3lUudT
 HVe5dUNPILCpbZlWcDCPGQ/bP7uOTuBJ3Z+uDlf6rqzBevNjg1kBX2n0nvGlm9p/ULZwZrNdyQU
 OQWL0FPQ2WByi56W+itvXh9QEV5btrsxnLL2lDpVrS2EPr9CcR8n0rLlX40bCIfrTUCKHCvMO6S
 yCvXtoTNsixTQcujmdJqSyUcfMwBjXaIGFhtszMb1H/5qbuWA7DngqKncCb2GpHV4FHb2vSdnSs
 0QdZmVtrNeEoYHZ9reaxG4TLZtt/jPyBtDfCciNvPzSBeDsugKJnQgPvTAe7EY+VdtSGk7LO/oI
 66+ms6H8hzqp6axb4qg5rO3Lt9e1FUGElKVjSilxmGpGpRZlNbE6HfpnUwRvXKejujR+MqrRID4
 qMP1huXnrg0iYp4Kf0Q==
X-Proofpoint-GUID: OrEWLxvkgkGStxrYR5BXQNA1-QSHq5OR
X-Proofpoint-ORIG-GUID: OrEWLxvkgkGStxrYR5BXQNA1-QSHq5OR
X-Authority-Analysis: v=2.4 cv=cM7tc1eN c=1 sm=1 tr=0 ts=695ba89f cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=-XNLjAG7Quv88JbFbJ0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 clxscore=1015 bulkscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050105

This series adds support for the Analog Devices ADG2404, a 4:1 analog
multiplexer with low 0.62Ω on-resistance.

The ADG2404 features:
- Low RON of 0.62Ω
- Flat RON across signal range (0.003Ω)
- Dual supply operation (±15V, ±5V)
- Single supply operation (+12V)
- Asymmetric supply support (+5V/-12V)
- 1.8V/3.3V/5V logic compatibility
- Break-before-make switching

Applications include automatic test equipment, data acquisition,
instrumentation, audio/video switching, and communication systems.

Antoniu Miclaus (2):
  dt-bindings: mux: adg2404: add support
  mux: adg2404: add driver support

 .../devicetree/bindings/mux/adi,adg2404.yaml  |  66 +++++++++
 drivers/mux/Kconfig                           |  12 ++
 drivers/mux/Makefile                          |   2 +
 drivers/mux/adg2404.c                         | 130 ++++++++++++++++++
 4 files changed, 210 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/adi,adg2404.yaml
 create mode 100644 drivers/mux/adg2404.c

-- 
2.43.0


