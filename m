Return-Path: <devicetree+bounces-255581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0377D2492A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:40:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13FE830319A2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9107F395268;
	Thu, 15 Jan 2026 12:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="YnrShpAd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com [148.163.139.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57B6394497;
	Thu, 15 Jan 2026 12:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.139.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768480347; cv=none; b=gozM1Gu+e2+sdNi1lqSdPIkJ3fpOUnQE7/XZP7XeE2Y973rUsC6uRQLJmNKm9RA5JPt1pm4SQOVH57T/StENW5dM/UteWUK7OTgixqB/yZG0TuuOFs1uiVqbpp4AvcGetjIKmkJGjuqZsK8RyIhIQoNkh4JRODKTTbTiecPO93Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768480347; c=relaxed/simple;
	bh=qgZKriIvZFpMvKWJPmj96I/bGPrp1ozuRnbXKzf/XAE=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=cEBvqh2Ik8g2Y5fYdIRasr/pdqJP+/CIQbuSB2/EA3g0KzcfiAMowNTjXceME6cckSIz9NGjUbpNFn8H6bqFJvfPOna9Jw/YiP95gSUluVik4CO+pzS51LYsdLUG2HZ2vJ9PrsSLZHgWKJ16/7kyjPWkuNq0E3ErsJgOMPFCzY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=YnrShpAd; arc=none smtp.client-ip=148.163.139.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375854.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FAJhIl3130549;
	Thu, 15 Jan 2026 07:32:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=UaP0XEsE4CWFeHL5JoR39AuXg1p
	/NG5hM93MLirIvHg=; b=YnrShpAdGALT5/cJ1EbixjsBgm2CjGhcr7k04kAUxvx
	L+kaFd9f1+2HJr9DeptfVkJ9CKw79Icl2UBpA2DvKyyhiragAS8YacHl0NdXJdBY
	wCwFgJAQbjkxiN5c7EyHPI0H3RW0MShM3WZR63NVxqtytAc32H53LQHzV0HXDCDM
	OqMheZtvmalglJGWp5+f0iHJAxAtqdR1zoyR5umGTVX6VXulPSUe425Ag+xNRYWw
	Uq2lsXsI4tGmqV9tswNJc+r930ERxVVPrCsX+lHKxulWwnm3kRoQ+GfY1vPUrhbl
	g7xbdd9fFnQUn1cdFWNCzZ5EhZLM2KkbZC/PS1ZOytQ==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bpxcv8gr7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jan 2026 07:32:09 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60FCW76e041315
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 15 Jan 2026 07:32:07 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 15 Jan 2026 07:32:07 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 15 Jan 2026 07:32:07 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 15 Jan 2026 07:32:07 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.177])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60FCVsdE030437;
	Thu, 15 Jan 2026 07:31:57 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla
	<srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        David Lechner
	<dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and ADG2404
Date: Thu, 15 Jan 2026 14:18:18 +0200
Message-ID: <20260115121943.23715-1-antoniu.miclaus@analog.com>
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
X-Proofpoint-GUID: O1UOrMeyrL0w-0rROZSM5lYRB54wNVlb
X-Proofpoint-ORIG-GUID: O1UOrMeyrL0w-0rROZSM5lYRB54wNVlb
X-Authority-Analysis: v=2.4 cv=fvHRpV4f c=1 sm=1 tr=0 ts=6968de49 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=HapAHONEMoC6MvEP3oEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA5MiBTYWx0ZWRfX4WzfUfhuN2Xt
 R5nOQfdNY8dlFOx9wagcvztvrr8QA7YKrz8jja9rNdWZ2+DKg8EAFOfLXFBNz08D57tsyx8qgkQ
 eQEzH31wCLqnS0cGqcjR8mha59MHp8vQgxhx9TDeV19P82xpFFv7asDM02Ok/BL3lGiXpBmSFWk
 apQm0+d83u6uXR5Y+Iy0hV8iVia1OyriaDIplfLJm9x7NwcNY7yz8+Ac4YwooSHq06q3eQZfv/0
 9IBwfIuTdTlg2CX6o1Px0pmU7fNsT83+FQFaHj9FJYh4AYuGVNXK7k8yWP7i4MYBDxbOvmDqf8S
 z1fRsQ3y6VCZyFOrPzeh8E2FFNXp7Uos+ARzBY4LW7vywPuEE/DlNaLbUf27kem58fO0R45lTAi
 lJsWTderjLZ8r9ZuSAJlZL0K9IE1j6EpPIDOtVRq1KWWMxW/frUUywv5AoQ4UeciPEichnM363L
 Mxa6ktdk1Ucail4LFSg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1011 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150092

This series extends the gpio-mux driver with optional enable GPIO support
to prevent glitches during channel transitions, then adds support for the
Analog Devices ADG2404 multiplexer as the first user of this feature.

The enable GPIO allows the multiplexer to be disabled before changing
address lines and re-enabled after, preventing brief activation of
unintended channels during transitions. This is particularly important
for precision analog applications.

The ADG2404 is a 4:1 analog multiplexer with low 0.62Ω on-resistance
that requires this enable GPIO functionality for glitch-free operation.

Changes in v3:
 * Extend gpio-mux driver instead of creating standalone adg2404 driver
 * Make enable GPIO optional for backward compatibility
 * Add MUX_IDLE_DISCONNECT support via enable GPIO

Antoniu Miclaus (4):
  dt-bindings: mux: gpio-mux: add enable-gpios support
  mux: gpio-mux: add support for enable GPIO
  dt-bindings: mux: gpio-mux: add adi,adg2404 support
  mux: gpio-mux: add adi,adg2404 support

 .../devicetree/bindings/mux/gpio-mux.yaml     | 26 ++++++++++++++-
 drivers/mux/gpio.c                            | 33 ++++++++++++++++++-
 2 files changed, 57 insertions(+), 2 deletions(-)

-- 
2.43.0


