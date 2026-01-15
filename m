Return-Path: <devicetree+bounces-255586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3092D248D6
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA87C3066322
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC98E395268;
	Thu, 15 Jan 2026 12:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="nhREuUsf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com [148.163.139.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76335399037;
	Thu, 15 Jan 2026 12:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.139.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768480481; cv=none; b=Li9LbbYg9kKyyvtYdll4z1qIVe2fxhbx3CU5lUUW/8xJpnmPk7nGTOIti1vXt/TFWFgUCbsdec+o6jgLwL7gPcBJ62xcSAVjTIDaKEYpjooViux2Jx+kXJdFHB0/7//0iby5BkV/xXC58adHbnNLzpVljrGpIxHY+i5trhB7j5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768480481; c=relaxed/simple;
	bh=E+dEztOblkzsYEMypPW+vX11tgnXLhbWTmHOFJ5GJG4=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HrDhtZCdznEfvietsYpyw5eNYpPUKUM7qSWUmF6MHKz/1RzZWCDS0VI2KpysoZqeE8lrbpJzJc4XQHjIjXBiew2263atadETS13wm8yftdzFuDk1x9vFTNTeVxh9MZMHd7bRlsZXa25rc2rZ8PfLXdW6U2bOe9PzQ1LZdBlQAfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=nhREuUsf; arc=none smtp.client-ip=148.163.139.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375854.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FAJgmt3130474;
	Thu, 15 Jan 2026 07:34:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=vfW4I
	t38HiBvI6Bl5GtD5sK2yHwuFizZ4ckZ+at/3MY=; b=nhREuUsfSdl+MTUgBnv3Z
	NhMydzu1tdQpwih0CLAbcaPAod4Nj4ibIP3W7OPcSlgoOnIzoQVRDt5LXq6zLiYi
	qlfdwsC3ZDdmjp6KfRv+n92hWKEIorvdWricsjx23JDgWNExrmyoaBhke45d+Dnv
	bLqKNQZCrcKrUP1lysfSmONsHbq4+diP0wexdLVFi/M+62S1fzCklc/hBcWbD94N
	ReG5oEBy014Z12TyXxyczOMpkC1DCcHgfOAgYVALPbvJy78+XRC5JOaem4U3dKIm
	8IF50kX12/K6P8DjZCm51WMGA+XGD5iFZuz5CrE+WwIPd3oB9e9EBX57koODneoN
	g==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bpxcv8gyk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jan 2026 07:34:30 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60FCYS7F041572
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 15 Jan 2026 07:34:28 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Thu, 15 Jan
 2026 07:34:28 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 15 Jan 2026 07:34:26 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.177])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60FCVsdG030437;
	Thu, 15 Jan 2026 07:32:10 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
	<bartosz.golaszewski@linaro.org>,
        David Lechner <dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 2/4] mux: gpio-mux: add support for enable GPIO
Date: Thu, 15 Jan 2026 14:18:20 +0200
Message-ID: <20260115121943.23715-3-antoniu.miclaus@analog.com>
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
X-Proofpoint-GUID: ALnqY-by2MnKfkektNbFJV0T_AH3Wino
X-Proofpoint-ORIG-GUID: ALnqY-by2MnKfkektNbFJV0T_AH3Wino
X-Authority-Analysis: v=2.4 cv=fvHRpV4f c=1 sm=1 tr=0 ts=6968ded6 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=AY8K-kA47ILn5Hm1wlYA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA5MiBTYWx0ZWRfX11QQsfDEQUF+
 uxMhJ3wUbNf5Ww5+Nqdc4jqHKsNi2MSdKwrsIOC+Axjoz+f7JSpWYdq1zgifLdVzQDNSRm2E6TE
 KVm26KI/2/ie7V4+im3sLaSw0zGXXweqeMTH82fjHzUiSFtK8y9Q3CqxeuGowJmQpX2s3s0Kj2F
 RJO+wFfo2j0oZmnuYe5uw57sxMLJUB1413amXIP5vJ/28bI3fw+tNTYmPoF05NpHy0Rv4G4+2rY
 um4Yyvs15MniMNB0zIIN3S3zu28HYVohezsV2Tmc6zDC3fkMYszcMLPKyWVZZXR/MFMgXPVq2zH
 DCdydaj5pXXK+h/KRUP3RZJyHSs9C8xu7nOOs7RAPPUP1f9CfEclzutHWrOWx0yJDZYw/+5sYQH
 k3kuXrwsyA3YPnjyc+6zCX6DFiSBhszs/y/vSf2wAgOdHtop0cR/jZGf18TmsaGRvJJxfWCQtr+
 sdaDCb+7SIj1+7yeFfg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1011 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150092

Add support for an optional enable GPIO to the gpio-mux driver. This
allows the mux to be disabled before changing address lines and
re-enabled after, preventing glitches that could briefly activate
unintended channels during transitions.

The enable GPIO is optional and the driver maintains backward
compatibility with existing gpio-mux users.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
changes in v3:
 * new patch - extend gpio-mux instead of standalone driver approach
---
 drivers/mux/gpio.c | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
index 4cc3202c58f3..93487483e81f 100644
--- a/drivers/mux/gpio.c
+++ b/drivers/mux/gpio.c
@@ -19,6 +19,7 @@
 
 struct mux_gpio {
 	struct gpio_descs *gpios;
+	struct gpio_desc *enable;
 };
 
 static int mux_gpio_set(struct mux_control *mux, int state)
@@ -27,10 +28,28 @@ static int mux_gpio_set(struct mux_control *mux, int state)
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
+		 * glitches. Changing address while enabled could briefly
+		 * activate an unintended channel during the transition.
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
 
@@ -71,9 +90,20 @@ static int mux_gpio_probe(struct platform_device *pdev)
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


