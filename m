Return-Path: <devicetree+bounces-259002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sL8gJL+Mc2l0xAAAu9opvQ
	(envelope-from <devicetree+bounces-259002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:59:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 522C377594
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 836DD300462B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6E52DA750;
	Fri, 23 Jan 2026 14:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="nOV5FBc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF1232C92A;
	Fri, 23 Jan 2026 14:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769180344; cv=none; b=AtIyGp8AK/O83N81ieql9gSmUS8HVnvLw+ZwtKLUHEy6S6MLoAIOHnY5O7GGz9nmXUqghZPsAI4U7q2I0os5hxuns6o0UoBPwk+O+gFjm8Gk7JsPazkfHkmAlfYrlG0ARarDcBjNjG+NWYXB1bK+KbMs8lreSgHtau8sYicDV9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769180344; c=relaxed/simple;
	bh=xE7n0qOoFfL7nDYSiS33i5d1sPOYKyXf0hnnzdD+IrI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ey7CG4DrHOR/t3FHgIuzrr/Kcyoq6RTmqrxBXblqaOfOv7rmukoE++QrcZzoZMAAJcVei/h1BWwLPRVqvWbMUnK6fpnA8dk9WMofGJXHZ1hGi8dbGE5i94C0RqyaI0v7dOeDvwoYn7R5lFNnD7g/iy5qyv9cVX1ia5gEFUOMI+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=nOV5FBc4; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NANemu691146;
	Fri, 23 Jan 2026 09:58:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=pyUcR
	feX+Zouoxl7wZdsN6kx/KtiN11FSLKiLhSeiBE=; b=nOV5FBc42/z3pk+OCE9xb
	ZUzA/6cg2i+9rH3DwQ/igwsHn/ofVBBztY3Tl1BsnZoT4c2enBiuF90ChyykSS5T
	c3LfXPHSt2pjAtrzYPjhP9AM2jmyI8QKW492t2El1kBb/Al8MOjkhET/omjtPfpj
	Q6EN/dvNSBlut6gavOZtEfHVEZ/yHgAof2yakLOpC3YcNPP/iopR0YNUOMTVDefm
	62YndHzBnOW05cQDCMbGKf9QeCe5pZl+WyoD5jKNi0738JgD7CccjBDPikiQt1wr
	lErBHkpVBNhw8XHt8/kParxGyLzyXjTu0Da698r6nr4kqlBQyJ3F0z/rptPF+B0Y
	Q==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bv76ssa7h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Jan 2026 09:58:47 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60NEwkWO028328
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 23 Jan 2026 09:58:46 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Fri, 23 Jan
 2026 09:58:46 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 23 Jan 2026 09:58:46 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.212])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60NEwLVc012602;
	Fri, 23 Jan 2026 09:58:42 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Johan Hovold
	<johan+linaro@kernel.org>,
        Linus Walleij <linusw@kernel.org>,
        David Lechner
	<dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 2/2] mux: gpio-mux: add support for enable GPIO
Date: Fri, 23 Jan 2026 16:57:32 +0200
Message-ID: <20260123145743.75705-3-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260123145743.75705-1-antoniu.miclaus@analog.com>
References: <20260123145743.75705-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: hW8MhPup2KNdZYk2vVH3JceqowppJiMn
X-Proofpoint-GUID: hW8MhPup2KNdZYk2vVH3JceqowppJiMn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDExOCBTYWx0ZWRfX2N7Ys8hgb2lY
 xhv/aIeKoEYNuHSsHOkMzSCYrYZH0dUCk+p+BsU/DkkQEPHhtlInMjuXiIdK3C9kT8os7Q5BnsS
 H9KGSSxndIZ0jod0xJbRAkVARnfAq0fz8SPQYYAMwYuyJXOhmiEmitx2SWXdbejZiJTMTjlKjdY
 QrvTTQCFxMjRe6ro1T6YXVe+ACHzangFa8OIZYWiL7xi5C9Vj62l/9hsP4EgiHh8150i+5MUika
 1JIBbIqTkx9q+L99DMa3hu0RfDEOcpsZ0mtHEy+quYNajvRJtNk6IFfnHhbdNWfKka2SHtZZ3pW
 5EahXPdjJOwzayiRae7uS3m905X7b/j6LosxgMyG11WuhA4Pq81umXJeqJXtcXclhiXcH7au6MR
 ampAVjebRSux8CZ+8OYZwq8YjcwJxn5ZN+BndV56n/eR8/sZW0y/jrlL2CrOdGEWhrKxYS0T61Y
 bo6aHpzk/tFLAtflG9g==
X-Authority-Analysis: v=2.4 cv=J/CnLQnS c=1 sm=1 tr=0 ts=69738ca8 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=AY8K-kA47ILn5Hm1wlYA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230118
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259002-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[antoniu.miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,analog.com:dkim,analog.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 522C377594
X-Rspamd-Action: no action

Add support for an optional enable GPIO to the gpio-mux driver. This
allows the mux to be disabled before changing address lines and
re-enabled after, preventing glitches that could briefly activate
unintended channels during transitions.

The enable GPIO is optional and the driver maintains backward
compatibility with existing gpio-mux users.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
Changes in v5:
 - Enhance code comment to explain high-impedance (high-Z) state when
   mux is disabled
 - Add context about downstream capacitance maintaining signal level
   for analog multiplexers
---
 drivers/mux/gpio.c | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
index 4cc3202c58f3..b95d2c7a53ca 100644
--- a/drivers/mux/gpio.c
+++ b/drivers/mux/gpio.c
@@ -19,6 +19,7 @@
 
 struct mux_gpio {
 	struct gpio_descs *gpios;
+	struct gpio_desc *enable;
 };
 
 static int mux_gpio_set(struct mux_control *mux, int state)
@@ -27,10 +28,31 @@ static int mux_gpio_set(struct mux_control *mux, int state)
 	DECLARE_BITMAP(values, BITS_PER_TYPE(state));
 	u32 value = state;
 
+	if (state == MUX_IDLE_DISCONNECT) {
+		if (mux_gpio->enable)
+			gpiod_set_value_cansleep(mux_gpio->enable, 0);
+		return 0;
+	}
+
+	if (mux_gpio->enable) {
+		/*
+		 * Disable the mux before changing address lines to prevent
+		 * glitches where an unintended channel could be briefly
+		 * activated during the transition. When disabled, all mux
+		 * outputs enter high-impedance (high-Z) state. For analog
+		 * signals, downstream capacitance typically maintains the
+		 * signal level during this brief disconnection.
+		 */
+		gpiod_set_value_cansleep(mux_gpio->enable, 0);
+	}
+
 	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
 
 	gpiod_multi_set_value_cansleep(mux_gpio->gpios, values);
 
+	if (mux_gpio->enable)
+		gpiod_set_value_cansleep(mux_gpio->enable, 1);
+
 	return 0;
 }
 
@@ -71,9 +93,20 @@ static int mux_gpio_probe(struct platform_device *pdev)
 	WARN_ON(pins != mux_gpio->gpios->ndescs);
 	mux_chip->mux->states = BIT(pins);
 
+	mux_gpio->enable = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(mux_gpio->enable))
+		return dev_err_probe(dev, PTR_ERR(mux_gpio->enable),
+				     "failed to get enable gpio\n");
+
 	ret = device_property_read_u32(dev, "idle-state", (u32 *)&idle_state);
 	if (ret >= 0 && idle_state != MUX_IDLE_AS_IS) {
-		if (idle_state < 0 || idle_state >= mux_chip->mux->states) {
+		if (idle_state == MUX_IDLE_DISCONNECT) {
+			if (!mux_gpio->enable) {
+				dev_err(dev,
+					"invalid idle-state (MUX_IDLE_DISCONNECT requires enable-gpios)\n");
+				return -EINVAL;
+			}
+		} else if (idle_state < 0 || idle_state >= mux_chip->mux->states) {
 			dev_err(dev, "invalid idle-state %u\n", idle_state);
 			return -EINVAL;
 		}
-- 
2.43.0


