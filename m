Return-Path: <devicetree+bounces-85607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0435D930B00
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 19:35:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A6141F217E1
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 17:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD7013A894;
	Sun, 14 Jul 2024 17:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ansari.sh header.i=@ansari.sh header.b="HbVDRnYV"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADE313C8F6
	for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 17:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720978542; cv=none; b=E2amWAeugJzu/Ox/v5Ap4srAh3tNy4wN6xDuOyuEw54QUOPv5NWfiByjILyfD8R3BfhpOzhxOXFBPygdTwMC8V3IFzTIMq6AYfOFHFGzcJi4Ip9yOd9lTrFW0Fy1Lrkgh4CLduyluy2sl05xmStudNmUeCxjXmptPyqH6yh557I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720978542; c=relaxed/simple;
	bh=3ffxm8F2nNdWFM9u69xqjKBGZVwaGQK7b7vNj9MxvRo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eYOBWjC1ReRXIdcd+Tjk40YVD3/hXrgV5jy3Nsq7/7c3qNDQSheywV23Ew1tvyji1yFJ2djFQ16W2MzlfK78FPq2nGzxxqei/6mrbmYqNoDOMYF+FRrRh6xOl/AXAnV10xyxeVaM4vL9NizsIBdDYwJBIzBr8u9qkXeOnQpZ6f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ansari.sh; spf=pass smtp.mailfrom=ansari.sh; dkim=pass (1024-bit key) header.d=ansari.sh header.i=@ansari.sh header.b=HbVDRnYV; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ansari.sh
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ansari.sh
X-Envelope-To: linux-arm-msm@vger.kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ansari.sh; s=key1;
	t=1720978539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qRweSE5UbZigEyZLVlledQrg52BwjBhiCJ+saT8YwRo=;
	b=HbVDRnYV7g6GXbXRKVQwUTdYtggd2PflHTVa1XFgbiWZc+Z3ex+hR/OX5dtKooMIAWiJob
	+XEsKD6rKknkgjjOWiHSeVqtT5NWAjDheOLh2pptUa3UucvypRYLDZCuBJojLsHWOStokm
	dMozbeL/rv42wedrl0EuHQVEyM8UkiA=
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-iio@vger.kernel.org
X-Envelope-To: rayyan@ansari.sh
X-Envelope-To: andy.shevchenko@gmail.com
X-Envelope-To: andersson@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: hdegoede@redhat.com
X-Envelope-To: jic23@kernel.org
X-Envelope-To: konrad.dybcio@linaro.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: lars@metafoo.de
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: rafael@kernel.org
X-Envelope-To: decatf@gmail.com
X-Envelope-To: robh@kernel.org
X-Envelope-To: sean@starlabs.systems
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Rayyan Ansari <rayyan@ansari.sh>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: Rayyan Ansari <rayyan@ansari.sh>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-kernel@vger.kernel.org,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Robert Yang <decatf@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Sean Rhodes <sean@starlabs.systems>
Subject: [PATCH 2/3] iio: accel: kxcjk-1013: Add support for KX022-1020
Date: Sun, 14 Jul 2024 18:33:04 +0100
Message-ID: <20240714173431.54332-3-rayyan@ansari.sh>
In-Reply-To: <20240714173431.54332-1-rayyan@ansari.sh>
References: <20240714173431.54332-1-rayyan@ansari.sh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add compatible for the KX022-1020 accelerometer [1] using the
KX022-1023 [2] register map as both have an identical i2c interface.

[1]: https://kionixfs.azureedge.net/en/datasheet/KX022-1020%20Specifications%20Rev%2012.0.pdf
[2]: https://kionixfs.azureedge.net/en/datasheet/KX023-1025%20Specifications%20Rev%2012.0.pdf

Signed-off-by: Rayyan Ansari <rayyan@ansari.sh>
---
 drivers/iio/accel/kxcjk-1013.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/accel/kxcjk-1013.c b/drivers/iio/accel/kxcjk-1013.c
index 8280d2bef0a3..b76df8816323 100644
--- a/drivers/iio/accel/kxcjk-1013.c
+++ b/drivers/iio/accel/kxcjk-1013.c
@@ -173,6 +173,7 @@ enum kx_chipset {
 	KXCJ91008,
 	KXTJ21009,
 	KXTF9,
+	KX0221020,
 	KX0231025,
 	KX_MAX_CHIPS /* this must be last */
 };
@@ -580,8 +581,8 @@ static int kxcjk1013_chip_init(struct kxcjk1013_data *data)
 		return ret;
 	}
 
-	/* On KX023, route all used interrupts to INT1 for now */
-	if (data->chipset == KX0231025 && data->client->irq > 0) {
+	/* On KX023 and KX022, route all used interrupts to INT1 for now */
+	if ((data->chipset == KX0231025 || data->chipset == KX0221020) && data->client->irq > 0) {
 		ret = i2c_smbus_write_byte_data(data->client, KX023_REG_INC4,
 						KX023_REG_INC4_DRDY1 |
 						KX023_REG_INC4_WUFI1);
@@ -1507,6 +1508,7 @@ static int kxcjk1013_probe(struct i2c_client *client)
 	case KXTF9:
 		data->regs = &kxtf9_regs;
 		break;
+	case KX0221020:
 	case KX0231025:
 		data->regs = &kx0231025_regs;
 		break;
@@ -1712,6 +1714,7 @@ static const struct i2c_device_id kxcjk1013_id[] = {
 	{"kxcj91008", KXCJ91008},
 	{"kxtj21009", KXTJ21009},
 	{"kxtf9",     KXTF9},
+	{"kx022-1020", KX0221020},
 	{"kx023-1025", KX0231025},
 	{"SMO8500",   KXCJ91008},
 	{}
@@ -1724,6 +1727,7 @@ static const struct of_device_id kxcjk1013_of_match[] = {
 	{ .compatible = "kionix,kxcj91008", },
 	{ .compatible = "kionix,kxtj21009", },
 	{ .compatible = "kionix,kxtf9", },
+	{ .compatible = "kionix,kx022-1020", },
 	{ .compatible = "kionix,kx023-1025", },
 	{ }
 };
-- 
2.45.2


