Return-Path: <devicetree+bounces-256164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8E0D33483
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:44:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B7B331524FE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F20C33A6EB;
	Fri, 16 Jan 2026 15:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="DoCS8Tye"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C81533ADA0;
	Fri, 16 Jan 2026 15:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768577976; cv=none; b=TJYPg9moNS5mZ9BfDLPFRxiIOKGVukQ14kdnzYry/rQYLxOuLxHPkxbZq2EPI91lwD9uWpOIBqfLrFBsy38KwXhvcDMC5SoUT0l5mrvGztU4h9lX1ivF8huJD0GfbCsoW4ZiUUafU+hJ1Tzu8ct1vMw1YEDkzsXQMmDtokzmfDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768577976; c=relaxed/simple;
	bh=O6PZA7hKqS0QNGhhaJ9SlJc4aOTe+KShom9cWEmlmu0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TWh51BSeczJMIuURjMKdwsUB9oC0fi5GlNGJdTgGB5shSXFvBDlvSAEdA0/ZGrUkww4KO9IDAHF3yk/o689nk9P4DeMjcAPBK5+PpvzAky1KZQsuit7oEZDBMiOSEf8vJwOf1l5BbZUU5QiNUMMz+jHjHGDbdLhKRaCSwNQv8zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=DoCS8Tye; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0516787.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GF9O4r181550;
	Fri, 16 Jan 2026 10:39:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=owhRd
	/QdjX3Ylsv1WOfeZlF+135PVdK2OeSQXO+ryqI=; b=DoCS8TyeEGBeLmX3mmpN4
	EOvmRQRAW7sz0RwGn99oaH2/4lDgGQtwHIrva/G8SlSdLuyl3VNcfewynE25rjmH
	/7TipDrrpWlx85NRHOYGnNjbdieAPa6ezawpnm8xGbMqnY/TgLANsBjzYLUmHtSD
	hOPsLoFFBb4TDeoGTjx63w395du65zSqGdvMV9033AHAzCxUqIocPl6xapKUXHTj
	RIv4D10mFDAxB0UrGfoip05mlqfFk4Fl+cO0hcWDfeLoeIHpIZGl5MFPHqyoW+aa
	ZCMkVLus3ltFd96hqswuQBS2klayWgiHGe6we6H5SulNGDCIGFEaG3lVayCtzODi
	g==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bqhs819xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Jan 2026 10:39:17 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60GFdG2h048640
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 16 Jan 2026 10:39:16 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 16 Jan 2026 10:39:16 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Fri, 16 Jan 2026 10:39:16 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 16 Jan 2026 10:39:16 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.177])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60GFbnx6023155;
	Fri, 16 Jan 2026 10:38:07 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla
	<srini@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        David Lechner
	<dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 2/2] mux: gpio-mux: add support for enable GPIO
Date: Fri, 16 Jan 2026 17:26:08 +0200
Message-ID: <20260116152621.75205-3-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260116152621.75205-1-antoniu.miclaus@analog.com>
References: <20260116152621.75205-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExMiBTYWx0ZWRfX+TzSSePEHfBX
 wJAlx6CJdu9oqUQfixtuU80/WgBlbAsqxqi/fg1s/QJKwOtPiIL0niE6n0Nxfre123C01g+w8il
 vCppr1OmSJ6BQPAh+a/zaHhkRTyqNqszLhHOaw/2l4CMDv5GE6ECC1q6LMia1I3tgzCCE5c8U7T
 l/BhXkE40CXdmRwGJi2poitBpukpDb3bAf4ArhIb6OWnSCktN1e/26E8tshNsBGHdSkcgp0NAz3
 HcBd5BW4wDg58sIb3EQQzTjgZow/OX51veiQIceMdQ1m2y0RxHzAjkA5rUZJV+DMi/l1KHO92I8
 NN2xyOeIgqbx3gTXbtR3nDVsZJQBgVGW3pu94L0HEzm1xrnnvjEQtx+yylo8T699zA7NdWIWbHc
 AnFuirdVxRpu1uwpxXE4kB9fYW0bO3iD6pdJ29HDf05nzi04hbaISF6tsVRZm0jMWuDoczfdF9F
 eo6QaI0h4qOtSqZQctg==
X-Proofpoint-GUID: bahEAdXezAmowevlVQf0ky8FCmOQ3Z5y
X-Authority-Analysis: v=2.4 cv=Y8n1cxeN c=1 sm=1 tr=0 ts=696a5ba5 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=AY8K-kA47ILn5Hm1wlYA:9
X-Proofpoint-ORIG-GUID: bahEAdXezAmowevlVQf0ky8FCmOQ3Z5y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160112

Add support for an optional enable GPIO to the gpio-mux driver. This
allows the mux to be disabled before changing address lines and
re-enabled after, preventing glitches that could briefly activate
unintended channels during transitions.

The enable GPIO is optional and the driver maintains backward
compatibility with existing gpio-mux users.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
Changes in v4:
 * No changes
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


