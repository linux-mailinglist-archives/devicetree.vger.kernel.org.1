Return-Path: <devicetree+bounces-256860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F23AD3A810
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C6401302DB2F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51BE359713;
	Mon, 19 Jan 2026 12:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xHXRgmFz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93D7359710
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768824540; cv=none; b=psgULLur1ptSVox05Ylbu3RLJdMUHKG26Mnkjd2u+zsPjjK9C/OLw+aSUaeG6s9m4jNRk3b9czSmGWVA4vGz2PsNzcItvOP4IoR8fV9x8W84p4F5xENDQRKAM9uyyE/AGGOv6Ps2DjUI79LkC4gfWDUBUjQbRQ1PfX3c1VIIww8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768824540; c=relaxed/simple;
	bh=pykdip+kkXufUlfCYLkhdMwhxg3VFd8rMtL8HJrLcEc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dx4YHDpzLdipfz1dPUKMKUnwzKLssSj9nRutBGOr7+qqf+zk4pRfb72FMdibwby5tZhd4lp7BAlOHmj5VImqcLZXV/LCDhVhgZagYJaSw9hLB68PDalDn487vGL1pl/bAid+7iOpppSzZ8m89/YDdiPYG8NsbdZjGMAmpaMIQcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xHXRgmFz; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42fed090e5fso2304592f8f.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768824535; x=1769429335; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3sT+McEH0mapvqHwCrxtH/EF4dLPev+0QCK1+TJXdyk=;
        b=xHXRgmFzETIZcWa5HE5EhJ5+64tJAbKQ1twr0y6aBerc+Q8BlfPEXBIuFX0+Ymjrdp
         UxShKe5lO0/H3Ywpx7CgUji4gE1uZptjSpklLZ0jfNSTUUtHvfoadlkcPk5utLg4WvXy
         ARqmyVZmz62hB+vF2R90WZa8LtXc3N2X0eKyfs3W3REKDKom1RSqVQxCwzsWBF3pvSbD
         XZnv4KzedK3tILV0LtQPHgN+Pm/egNWikLilPURTQi9tc9NeX2TGt3UkDuxWtFwaNqId
         325DeLOS5MKKr/i9LoEjwrbYZFjAjmk16ujzKG5rzLpb6XBSA1DJnYzy0Y1XignAS2jw
         aKlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768824535; x=1769429335;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3sT+McEH0mapvqHwCrxtH/EF4dLPev+0QCK1+TJXdyk=;
        b=m28F6xgPm/pDwI4MwJSPxZnRD2k9ZSTpzXSYzfitY2dkvVHLAEAs1Y6TNCtVQoVnym
         PgiUv41xe6XDQnR+BQes3H97uo9G0VnRl6Bi76DFemaq5v2Hf8ddTBw3lq6fC/LL9t7p
         DERUT6p7H63J+SK7wbyNOLDT1jrz33URfWkWiFzzo1vtsTBrwiRV/hGquGAbydDOzD9D
         /PPsr+W/VSkg4omH6db2rdVLe1OQer0O6tG8g/SkBIbXH8//9G8DUSMLBFlIFZdSIRzi
         RSQIpklgPLPldp7zdZ6LbkcGxBErO/S12RTTmotwu3X1fJ1E3qXxmTC12hsozux8VhHk
         TQYg==
X-Forwarded-Encrypted: i=1; AJvYcCWsLw8pExSZdGdehA3HIvB30VNfnHHFVQrQM3vDzbVpEgQkhPj7LnGsGRSZ8gCXW+c0K8F7/BDYrjUP@vger.kernel.org
X-Gm-Message-State: AOJu0YxnBGTe2CFDRxMqZrIDfaMbY3QXTMeRPnH9calvXuT/ikun7RAF
	1ncAM2CBBoW26vU7GOf7xWz9pe/DXhpMPqEeUPSkkISHG6/gqzpZ11S2w4pm+kDe+kA=
X-Gm-Gg: AZuq6aLezIXCqCpS0Li+AA+G/RpKuPxqFkn6F/L3HTbYsb3QgsHTyw8mYWf1hbDJX2d
	k+2Bgp/F7q7UfUAR/RsqqyEKPojmnRDhqyu1rOSYCRYXzM33JdqgfcrW8K5MToC35HmI0i8Wz01
	L38i3mk9pmYJWk2t/Nwn6skPijUdK6ZwgHvJPaAJu6azJbR2BalvWi7EiHsbEt9B7v0B5cmKmQL
	jPgc3EdkyFzf5SzxYucOMoA1/SVDNSjuUH71FT3QyMCR7ghI0tliauqi0TOEOiANa+47Eyff/Dk
	0AWI1h31l4Rxf9WnJRKxcP70oImw/IbwJGi6ggrvqPV2jm4jIblfUycioqEnA5juPvub4ilFRbl
	xnwSi1rWumbB/sej+bDZxvys1NtDADF0ZFUYXRtVkmrA1A5Ws0eWB4/ki88LQCxsEnsHscU6WdQ
	ycePh9GEj+AhnCykAY3LrJrj7w7ezjl/9TUK1je3GH7mMKT2S6FO5K7OWwuY0KA4pcFtRnKw==
X-Received: by 2002:a05:6000:2505:b0:432:5b81:49c with SMTP id ffacd0b85a97d-43569bd463bmr11645564f8f.55.1768824534827;
        Mon, 19 Jan 2026 04:08:54 -0800 (PST)
Received: from ta2.c.googlers.com (164.102.240.35.bc.googleusercontent.com. [35.240.102.164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356997e664sm20698421f8f.30.2026.01.19.04.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 04:08:54 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Mon, 19 Jan 2026 12:08:49 +0000
Subject: [PATCH v2 3/7] firmware: samsung: acpm: Add
 devm_acpm_get_by_phandle helper
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-acpm-tmu-v2-3-e02a834f04c6@linaro.org>
References: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
In-Reply-To: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768824532; l=2702;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=pykdip+kkXufUlfCYLkhdMwhxg3VFd8rMtL8HJrLcEc=;
 b=mq6tHfgFD5v+dBnv9e/9P/zH0n4O+kG2DeWw28a7k1Ie25bdm6byhx1O/Jsmir3D59rhSmRB2
 PCtjiH30SmtCASeMud922mbZVmChdLaD2MzvcIIs6KDlOrDaN2jrrTO
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Introduce devm_acpm_get_by_phandle() to standardize how consumer
drivers acquire a handle to the ACPM IPC interface. Enforce the
use of the "samsung,acpm-ipc" property name across the SoC and
simplify the boilerplate code in client drivers.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/firmware/samsung/exynos-acpm.c             | 23 ++++++++++++++++++++++
 .../linux/firmware/samsung/exynos-acpm-protocol.h  |  6 ++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/firmware/samsung/exynos-acpm.c b/drivers/firmware/samsung/exynos-acpm.c
index cc045370f4b0dc6ccea99e3c2d6f86a43b2e9671..cf849ba23f09d8b1e7f91734a0a1cc064f7407c7 100644
--- a/drivers/firmware/samsung/exynos-acpm.c
+++ b/drivers/firmware/samsung/exynos-acpm.c
@@ -776,6 +776,29 @@ const struct acpm_handle *devm_acpm_get_by_node(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_acpm_get_by_node);
 
+/**
+ * devm_acpm_get_by_phandle - Resource managed lookup of the standardized
+ * "samsung,acpm-ipc" handle.
+ * @dev: consumer device
+ *
+ * Returns a pointer to the acpm_handle on success, or an ERR_PTR on failure.
+ */
+const struct acpm_handle *devm_acpm_get_by_phandle(struct device *dev)
+{
+	const struct acpm_handle *handle;
+	struct device_node *np;
+
+	np = of_parse_phandle(dev->of_node, "samsung,acpm-ipc", 0);
+	if (!np)
+		return ERR_PTR(-ENODEV);
+
+	handle = devm_acpm_get_by_node(dev, np);
+	of_node_put(np);
+
+	return handle;
+}
+EXPORT_SYMBOL_GPL(devm_acpm_get_by_phandle);
+
 static const struct acpm_match_data acpm_gs101 = {
 	.initdata_base = ACPM_GS101_INITDATA_BASE,
 	.acpm_clk_dev_name = "gs101-acpm-clk",
diff --git a/include/linux/firmware/samsung/exynos-acpm-protocol.h b/include/linux/firmware/samsung/exynos-acpm-protocol.h
index 43d41e11ad2eb985e27a918ce3f9e9ac15a194ee..9485cdc1d91e86f9a9a8fc00722f3313e3000c6a 100644
--- a/include/linux/firmware/samsung/exynos-acpm-protocol.h
+++ b/include/linux/firmware/samsung/exynos-acpm-protocol.h
@@ -82,6 +82,7 @@ struct device;
 #if IS_ENABLED(CONFIG_EXYNOS_ACPM_PROTOCOL)
 const struct acpm_handle *devm_acpm_get_by_node(struct device *dev,
 						struct device_node *np);
+const struct acpm_handle *devm_acpm_get_by_phandle(struct device *dev);
 #else
 
 static inline const struct acpm_handle *devm_acpm_get_by_node(struct device *dev,
@@ -89,6 +90,11 @@ static inline const struct acpm_handle *devm_acpm_get_by_node(struct device *dev
 {
 	return NULL;
 }
+
+static inline const struct acpm_handle *devm_acpm_get_by_phandle(struct device *dev)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __EXYNOS_ACPM_PROTOCOL_H */

-- 
2.52.0.457.g6b5491de43-goog


