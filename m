Return-Path: <devicetree+bounces-98240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C76989657AC
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:35:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A0B91F24895
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 06:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 195F91531E5;
	Fri, 30 Aug 2024 06:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P7DwJqBl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D9F14D71D
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 06:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724999708; cv=none; b=SK55xO/ECHglVSuI5G5xlb6XAvuOeZF+ZEHKh+PBBmlQzBuVcu0rt6E35By8i2pfQIji5WGd1eLnPWFq+fHeX6zQcSkQltrz9tnLjRtRFRKlraq6BZfhVTZxUy5PsBWYD6UaWoRPra2IFxN2Pw92XFqqnlKRtzHCylqv7g0AjHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724999708; c=relaxed/simple;
	bh=dHPvVFMF9oE/Smq/fAVh/jP8Xok6qZTN+5FpM5SDwrs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EQDtssYbY1RlJIM2UCKsgrOmciOU21Br44gE/5wiWHRKelQ/8RbSOJXyvMQ/udR8USEUdPH+R2C8aoUEb3LRbGPNeBjQ3ylDy5BVWGG4EnLZIPwjNryjs7bkjpmC2G0f6VEM4FrHuvVvoAGWy4HtJp7ATxRTLZQSxRITVM6Qv5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P7DwJqBl; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f402830d19so2560751fa.0
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 23:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724999704; x=1725604504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0tdmBT53w5VNdz5QchETAoTh/+fSs3HRvsgOCGHU8w=;
        b=P7DwJqBluoj2v4IW4Swcui8jtscwDcVkhEP8eLz2JsU4uoeuyNDX1tCnMJDspzz4HB
         aKqSsiJflKO855XDzHcfQp6djTyA+jCrxbZJ5rmtF/Oz3G8IXbcg8w+MimZ6tnadiQN7
         MdjBO6+dKGxkmcoIxneUKlTBoyTJR9TtsXcvIGe37RXClJrrtGPP12QcYC4PPaNedp6r
         ikJmd5CDGab1Xe00svSWc8rgiubgAo5aEvKOA0WK1DgxJtFv8fzbPudHSNU5d8fauhuy
         rkP0YWlfZsCUwTMLTOEsM+u4YO48lIRZ2KmRfM+bgrYOE/CXryTep6ubUnAX+ZAfkiFS
         LIuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724999704; x=1725604504;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h0tdmBT53w5VNdz5QchETAoTh/+fSs3HRvsgOCGHU8w=;
        b=hUF3zTxTqWMGHNPiEsJF/PPym/pyhURF6JA+NMTlAHTcDrNibGOE4BgyrwxhaemUOg
         t4lY/NPum/N4HNe2ab5fmVZy04kdINJHlk8zi7Tu2oBqWnkh10eF6KXLWyhh5X+dUxh/
         7Tiv70zkXq8mp0drKrQcOuJyoFVeuHHx0hRZrYfwnS/D2wa08gJFPRBKIVBTEMe5KLMH
         zTEuKfNM7icz/FHpLtAzLw/wEpQDVQr/APdSb1HgRKRin0Ixjt5X4d9zOEgvzxSCuixv
         MUO9Z6+PpUYK2WOpMwgj3QaIFZsceiWV0AKqFFYRXCIn7svFPS50b4tqdM23eZmOmKHT
         8nRg==
X-Forwarded-Encrypted: i=1; AJvYcCWugDV0zVryG3+WCa7O6TbbCqNlqtJAsYZaXbO1LUzOsrEBcTrDhMVNRxoNMs5OnHw5BquzPfg3mJpZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1XjtE5l8dUKUHuJvg+Fa8r/udp/kMKI+R3KeC7LDefL+TwNLh
	JxYgqBsrPJ4r5y6Eyko53jd1m+8nTpGYolUVFCgXGPidJ26B4yTNIbOaMjQxc7Y=
X-Google-Smtp-Source: AGHT+IFuvKUckfbRC+E10FenwVh2Z2J91k652f4e/vTm6Ou50FkcDfTix9qXMYz6TbhCrjIL3Jx2FA==
X-Received: by 2002:a05:651c:2115:b0:2ef:2373:5f90 with SMTP id 38308e7fff4ca-2f61df9f4b8mr4658801fa.0.1724999704477;
        Thu, 29 Aug 2024 23:35:04 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614f00860sm4879441fa.45.2024.08.29.23.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 23:35:04 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 2/6] media: i2c: og01a1b: Add OF support to the image sensor driver
Date: Fri, 30 Aug 2024 09:34:55 +0300
Message-ID: <20240830063459.3088895-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830063459.3088895-1-vladimir.zapolskiy@linaro.org>
References: <20240830063459.3088895-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The OmniVision  OG01A1B image sensor driver currently supports probing
only on ACPI platforms, the changes adds support of OF platforms to
the driver.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 drivers/media/i2c/og01a1b.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/media/i2c/og01a1b.c b/drivers/media/i2c/og01a1b.c
index bac9597faf68..9e756c1c47df 100644
--- a/drivers/media/i2c/og01a1b.c
+++ b/drivers/media/i2c/og01a1b.c
@@ -1057,10 +1057,17 @@ static const struct acpi_device_id og01a1b_acpi_ids[] = {
 MODULE_DEVICE_TABLE(acpi, og01a1b_acpi_ids);
 #endif
 
+static const struct of_device_id og01a1b_of_match[] = {
+	{ .compatible = "ovti,og01a1b" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, og01a1b_of_match);
+
 static struct i2c_driver og01a1b_i2c_driver = {
 	.driver = {
 		.name = "og01a1b",
 		.acpi_match_table = ACPI_PTR(og01a1b_acpi_ids),
+		.of_match_table = og01a1b_of_match,
 	},
 	.probe = og01a1b_probe,
 	.remove = og01a1b_remove,
-- 
2.45.2


