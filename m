Return-Path: <devicetree+bounces-260923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAu3CQiEe2mvFAIAu9opvQ
	(envelope-from <devicetree+bounces-260923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:00:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 891B5B1BE2
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:00:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1549B305B458
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF1A3337686;
	Thu, 29 Jan 2026 15:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="DMSqFr6n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0825330C626;
	Thu, 29 Jan 2026 15:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769702241; cv=none; b=F4vz/RYo/kmZdJTj/aJi6/NXkCURqbLFOLA6BblVOzZ5Eha8RdDM659n0WYE4Qvqbg1thYxG89pKg4yzuojFBTJcZKnGUv44XmpuQ0PE+qgazYNNnuur5KeSNgoPlhvx2NUphqkP0VpGJyNBrqIOxghakX2+sAT9cHyRu/pN4m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769702241; c=relaxed/simple;
	bh=YMkAQNDUp1tlSbMBeqJsoY+F6Z4C0FXNHEiY8tQ3bD0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=vAWJ2PKB6L1T7Ufsr5LSX1C0ti3FszoVk58K6ndE2kkm2iTFck1RDmqY0mhbfgELFBxPjgSXdyDuT3ZkvHrzvnacYeFRNhpPyPzXxg0RwbQUjlmS8YkuNXBXsEyMdIlo6dnNd4XyJy8RlSlo/HVsACpXYzXOOc8uqaJBr2yWCOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=DMSqFr6n; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TC4ZPk3783266;
	Thu, 29 Jan 2026 10:57:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=H0gU1
	Nf4JpAA3q6dxcxoDheVCnPQdkjTuNiOMGyZ3A0=; b=DMSqFr6nWGbWAdSmu3tmX
	nQwzhankOc81COio2cXKMVOIeSe7itrdFoxJhumGkUKgQIsXElEWVasThdJU7d+T
	Dmi6oc/X/9fVowXrOmPcQ+ANvlzNrH4bAsAsvog5sEMglo8ro6QZCMYuGXNjt2FG
	ce8LLq7rCfpdtQp+iz+gD667ph2Z3+iWQRUzQ7RJpQ0oY93hFsLX03koPps9FuX1
	HhvwhrPimEZbnOlkcutvme6eHoIurWPLxQ7eYkOLnrYfu8b/zrZNMrF+f1Xa88fR
	ebVybrwsLrLbeZUGXM8nXxC2VvAikbngc6o0Ei3/YN9si4F0HzILlAflJDgBP4En
	g==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4c011bj841-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Jan 2026 10:57:13 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60TFvBXS045304
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 29 Jan 2026 10:57:11 -0500
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 29 Jan 2026 10:57:11 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Thu, 29 Jan 2026 10:57:11 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 29 Jan 2026 10:57:11 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.247])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60TFujFa004048;
	Thu, 29 Jan 2026 10:57:05 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla
	<srini@kernel.org>,
        Linus Walleij <linusw@kernel.org>,
        Johan Hovold
	<johan+linaro@kernel.org>,
        David Lechner <dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 2/2] mux: gpio-mux: add support for enable GPIO
Date: Thu, 29 Jan 2026 17:56:21 +0200
Message-ID: <20260129155633.3985-3-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129155633.3985-1-antoniu.miclaus@analog.com>
References: <20260129155633.3985-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Authority-Analysis: v=2.4 cv=PvmergM3 c=1 sm=1 tr=0 ts=697b8359 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=iafUaGi6XMNn_EhtBlsA:9
X-Proofpoint-GUID: lnuBdNhIym6EH8Fze5hSlXcWbkcjp5T7
X-Proofpoint-ORIG-GUID: lnuBdNhIym6EH8Fze5hSlXcWbkcjp5T7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDExMSBTYWx0ZWRfXwgd927JBohRi
 SahmwswFMcDM4hIoU8dLRmIahqWSG1eiWBfS6SsBYwCdYsjlZIerzO0kiye/qGZNOKXEH106Std
 YmAA9E4nycqAm8TOfxSA26eQRl05V+TrB7/i30r0TJ43jQEJtoGuCZNBLx0JhPoV9p9m65A4lYU
 xLwh3Ux2spgzN5T5/LayiwAVB+KRBq4ITDuD3EW2De15Ak2HcXlsbGgkIvl3KT1s8Pz+fjL8Y6a
 OmkLuAY4XbGS9+4Pi+joAoaOlRX31ji70086HYWhucwcso0XbsdqeXqM42aiWUGbkJgrpusMU7o
 N2uzw7fb9qNqciDEnozkSxmp7L6Lo67l8HDpkKiihWUMYPR/BWsUBgxrfhOJKrp/q8m45aBzXiW
 XvLZDBjQLXYCvssOCVS+YjSw1Ax3/wovlxmRhqQ3LxPfc0cT57xwzqTj/eHLVj7+LX7v4RJZvnR
 qmIFfV0VDfvipGxhDVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[antoniu.miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260923-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email,analog.com:dkim,analog.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 891B5B1BE2
X-Rspamd-Action: no action

Add support for an optional enable GPIO to the gpio-mux driver. This
allows the mux to be disabled before changing address lines and
re-enabled after, preventing glitches that could briefly activate
unintended channels during transitions.

The enable GPIO is optional and the driver maintains backward
compatibility with existing gpio-mux users.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
Changes in v6:
 - Add error handling for gpiod functions
 - Make enable-gpios required for MUX_IDLE_DISCONNECT, optional otherwise
 - Remove redundant if (mux_gpio->enable) checks
---
 drivers/mux/gpio.c | 37 ++++++++++++++++++++++++++++++++++---
 1 file changed, 34 insertions(+), 3 deletions(-)

diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
index 4cc3202c58f3..eeeff9587013 100644
--- a/drivers/mux/gpio.c
+++ b/drivers/mux/gpio.c
@@ -19,6 +19,7 @@
 
 struct mux_gpio {
 	struct gpio_descs *gpios;
+	struct gpio_desc *enable;
 };
 
 static int mux_gpio_set(struct mux_control *mux, int state)
@@ -26,12 +27,30 @@ static int mux_gpio_set(struct mux_control *mux, int state)
 	struct mux_gpio *mux_gpio = mux_chip_priv(mux->chip);
 	DECLARE_BITMAP(values, BITS_PER_TYPE(state));
 	u32 value = state;
+	int ret;
+
+	if (state == MUX_IDLE_DISCONNECT)
+		return gpiod_set_value_cansleep(mux_gpio->enable, 0);
+
+	/*
+	 * Disable the mux before changing address lines to prevent
+	 * glitches where an unintended channel could be briefly
+	 * activated during the transition. When disabled, all mux
+	 * outputs enter high-impedance (high-Z) state. For analog
+	 * signals, downstream capacitance typically maintains the
+	 * signal level during this brief disconnection.
+	 */
+	ret = gpiod_set_value_cansleep(mux_gpio->enable, 0);
+	if (ret)
+		return ret;
 
 	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
 
-	gpiod_multi_set_value_cansleep(mux_gpio->gpios, values);
+	ret = gpiod_multi_set_value_cansleep(mux_gpio->gpios, values);
+	if (ret)
+		return ret;
 
-	return 0;
+	return gpiod_set_value_cansleep(mux_gpio->enable, 1);
 }
 
 static const struct mux_control_ops mux_gpio_ops = {
@@ -73,12 +92,24 @@ static int mux_gpio_probe(struct platform_device *pdev)
 
 	ret = device_property_read_u32(dev, "idle-state", (u32 *)&idle_state);
 	if (ret >= 0 && idle_state != MUX_IDLE_AS_IS) {
-		if (idle_state < 0 || idle_state >= mux_chip->mux->states) {
+		if (idle_state == MUX_IDLE_DISCONNECT) {
+			mux_gpio->enable = devm_gpiod_get(dev, "enable",
+							  GPIOD_OUT_LOW);
+			if (IS_ERR(mux_gpio->enable))
+				return dev_err_probe(dev, PTR_ERR(mux_gpio->enable),
+						     "MUX_IDLE_DISCONNECT requires enable-gpios\n");
+		} else if (idle_state < 0 || idle_state >= mux_chip->mux->states) {
 			dev_err(dev, "invalid idle-state %u\n", idle_state);
 			return -EINVAL;
 		}
 
 		mux_chip->mux->idle_state = idle_state;
+	} else {
+		mux_gpio->enable = devm_gpiod_get_optional(dev, "enable",
+							   GPIOD_OUT_LOW);
+		if (IS_ERR(mux_gpio->enable))
+			return dev_err_probe(dev, PTR_ERR(mux_gpio->enable),
+					     "failed to get enable gpio\n");
 	}
 
 	ret = devm_regulator_get_enable_optional(dev, "mux");
-- 
2.43.0


