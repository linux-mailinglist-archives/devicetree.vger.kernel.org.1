Return-Path: <devicetree+bounces-255584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD6ED2492D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5C8AD302709E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99323399A57;
	Thu, 15 Jan 2026 12:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="hAhgRoXF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00AD399A5B;
	Thu, 15 Jan 2026 12:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768480432; cv=none; b=JMDIZNB0S5asVaHtrbrxZ2fInRlesrbxs+p0GTari5uEhvCKPNbU4e9f1aJMBJm1FT2FRY9OijbuI0FZC5LwK5o//6GP7EW/V8iWtNmLT1pYcnyEIXPv/fC9L9KrVI17wd+aIT+lvQFBLkfY3h69IOzyVnOia6qHi+UWEDSWEsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768480432; c=relaxed/simple;
	bh=9mOOR+Je3ReWIlesOdPsIINW//sPs64vu30o+8k7PmY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QYp2k2jsmU8wUNWhd4eGR8qHNuSn7uthfeLfe5zH/Uj/LCfWEGznh2Qslf0FTdXCy6u7eE+DfNAjE8N84AanipuiP6PItjZrGZsQPTuIxNtguSQqPUyu4KneBrM2OTf68txcwBFVhfit+eGVSI9KzeElKqoSHWTsaq1eUGjIse4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=hAhgRoXF; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F84OH11848658;
	Thu, 15 Jan 2026 07:33:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=WQRqL
	tdESWRnJ1WjtRivtbHmnOEFFZ5mHAIsYFX2iOA=; b=hAhgRoXFydn20nE9XBuph
	MVbCiLWIKVvRbqS4SmESYdxMLoKIj6Sbokl9Zf2suhlePvdzLcAxPj0rkO0C5+yK
	lQW4WETvysfswA9SjnFU4H1mNhW6xih6CBVfpu0HfMRDmfHSkV/jMylfQZFx57se
	TuzaHqSXjkDigkjEns6ebVz9hnFuoDg7Vx6FGMYNdJCOcTW8Dc6R4fQSBZfCpS4W
	KBLLQ2nM3MaQ0dIawraUTuNxDSmMJfalMapoLjiVB95xYHWmb4cIwM2GK2oi9JiU
	dL4Phegc623alTKUkHkHtsg1t8il96e2MUpSmkiX8UVn6ZeDXRGZnHsyq/ENQhwk
	Q==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bpn4yb5kg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jan 2026 07:33:31 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60FCXUGG041444
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 15 Jan 2026 07:33:30 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Thu, 15 Jan
 2026 07:33:30 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 15 Jan 2026 07:33:30 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.177])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60FCVsdI030437;
	Thu, 15 Jan 2026 07:32:19 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bartosz Golaszewski
	<bartosz.golaszewski@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        David Lechner <dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 4/4] mux: gpio-mux: add adi,adg2404 support
Date: Thu, 15 Jan 2026 14:18:22 +0200
Message-ID: <20260115121943.23715-5-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115121943.23715-1-antoniu.miclaus@analog.com>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: yH3waMJZfav1JqjTXrkfoRD0r3FHqjhA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA5MiBTYWx0ZWRfX7/Qo4fmoTaCF
 YHrtXnx2az1Hy9jXGK0YRhDPcnJ15pjxrbK6dqCdalkwfRD3lZ654U1VnywTVXjdywSh+8AjntN
 +QAO4nhTX+ISU1BlDHpFxqrzy1hExiZy4C4qnAYMxC26lQbFV5zD3FpzQaG/6oCdrPbpnDectUe
 q91UmIvVxbZKB5y55a8G641vTngagCI2q3ris2tG5vmfzB1GzahY441eiwmDnlyFQAQtXPnZWD+
 vxgxdKbzwTyEgs3/Uq8Nxn+hooiWPPBPjciRFI4YERkawd1th01lXAk7z6rfOdyZvMcqobBEi00
 Ykb3tG37eSfhYDSKps/uIpMRyC9GKH2NgGLo09HWZCb7148iG4fBKajXWoGCOygIYzkenBS3JV+
 /bbC6KGdnD5YuO7ZRFeJhjLbvSOtHStXDd7xdS/fVHoGAWOmO4pD9QDnzckdFU2BxF/WxXYfikL
 BNbeorEXG10pL2TNM2w==
X-Proofpoint-GUID: yH3waMJZfav1JqjTXrkfoRD0r3FHqjhA
X-Authority-Analysis: v=2.4 cv=Xoj3+FF9 c=1 sm=1 tr=0 ts=6968de9b cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=3zS33ksJxgkuVerCQ9wA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 clxscore=1011
 lowpriorityscore=0 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150092

Add adi,adg2404 to the compatible list. The ADG2404 is a 4:1 analog
multiplexer that benefits from the enable GPIO support to prevent
glitches during channel transitions.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
changes in v3:
 * integrate with gpio-mux driver instead of standalone adg2404 driver
---
 drivers/mux/gpio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
index 93487483e81f..bd8f0c617dd6 100644
--- a/drivers/mux/gpio.c
+++ b/drivers/mux/gpio.c
@@ -59,6 +59,7 @@ static const struct mux_control_ops mux_gpio_ops = {
 
 static const struct of_device_id mux_gpio_dt_ids[] = {
 	{ .compatible = "gpio-mux", },
+	{ .compatible = "adi,adg2404", },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mux_gpio_dt_ids);
-- 
2.43.0


