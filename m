Return-Path: <devicetree+bounces-31140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2DC82A167
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 20:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 116BB283C2B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 19:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41D4E50255;
	Wed, 10 Jan 2024 19:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tMK+bB8F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854A04F616
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 19:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-598a2cb5a7cso229484eaf.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 11:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704916277; x=1705521077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uvLBZp36pzTyMACXtPdvGno5nE8Tc/vk1PKJFHFwqlw=;
        b=tMK+bB8FHUKWiY4R5vG+otH2Fl8/4TA2DGMPe9VOBfcGgN3nUeqsw/qbpPo2uF5O0P
         rrDr4JWl/LJ39a0Rij2SrdeJI1CkjT+3FlDkDe2XCrkhldMAwVgkFNomcSGEL+WfaLXX
         Dsi4JwQLnY685n5mlP+IyYnJj11sMQXoUxxIqY9iDF6JSVDf7Tuncxw5LYIFa4g2BfpX
         omQYBiMX8ztrcb+yVkYB3rtHRrcQltIhGXGG1rjg75WVgLwcTG+DkO6pnRcRA1crjZjZ
         kivj4PZ278PM3jkAQfQExZK7azpKD0SskdULDLWz3kiJ+pZykeylEuO4N4ofg+Qll9Et
         S7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704916277; x=1705521077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uvLBZp36pzTyMACXtPdvGno5nE8Tc/vk1PKJFHFwqlw=;
        b=mdPv2/pvGP07HYjxCDmC1Yuuyf7/LotdBsoMAGrGTXVZAlzVYr4Zh/B03LJEn+mTU3
         2j3+7CeppRMomNguyHGcj+A4EcPHEAgGXt+e4k0yfZRcJRlvBN2DrBl+o3Z+JdTagLdp
         8w2xLxEU97BYQUBxRbOeOVDiCjxl82ebTRziEcy+/sp8jcWTlklweOMYoQuXKPa3JjYT
         fGRIAl5rCQigsTPbVaEh5PuXgkI9oOoatzvk/GE+XvtyNL/15h3sfhvfsQPPKAkkDbVg
         fWtUxKVvGiBtPhr4WjYRrNkRFRR1RP9XJ18N2uRwFZsOoAuqz12j4H1JTOTcCWdkV2xj
         PF2Q==
X-Gm-Message-State: AOJu0Yy4Ayl3eD+3FnavQ1Cqw8zNG7LJ7bDYlktZ5jievlp7Ez6Nn7T7
	wfhFH4BvElUtkRe91jEAwUkBmlpRO2Zfww==
X-Google-Smtp-Source: AGHT+IFbclB6k8E5/ylz/wBfLjmVg+ND+S+SfqvTYYmbBTtTdhhQGPaDPGrmNj5Z07W3EBq+SgmL3Q==
X-Received: by 2002:a4a:3543:0:b0:598:1fa3:80b9 with SMTP id w3-20020a4a3543000000b005981fa380b9mr76085oog.14.1704916277632;
        Wed, 10 Jan 2024 11:51:17 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 187-20020a4a0dc4000000b00595b35927a3sm938513oob.39.2024.01.10.11.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 11:51:17 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <michael.hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Frank Rowand <frowand.list@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-spi@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 09/13] bus: auxiliary: increase AUXILIARY_NAME_SIZE
Date: Wed, 10 Jan 2024 13:49:50 -0600
Message-ID: <20240109-axi-spi-engine-series-3-v1-9-e42c6a986580@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240109-axi-spi-engine-series-3-v1-0-e42c6a986580@baylibre.com>
References: <20240109-axi-spi-engine-series-3-v1-0-e42c6a986580@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

The auxiliary bus uses names in the form of "module_name.device_name"
for matching devices to drivers. Since the module name is the actual
module name, it can be quite long which doesn't leave enough room for
the device name.

This patch increases the size AUXILIARY_NAME_SIZE to 64 to allow for
both a ~32 character module name and a ~32 character device name.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 include/linux/mod_devicetable.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index f458469c5ce5..4bd2d20067b6 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -861,7 +861,7 @@ struct mhi_device_id {
 	kernel_ulong_t driver_data;
 };
 
-#define AUXILIARY_NAME_SIZE 32
+#define AUXILIARY_NAME_SIZE 64
 #define AUXILIARY_MODULE_PREFIX "auxiliary:"
 
 struct auxiliary_device_id {

-- 
2.43.0


