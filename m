Return-Path: <devicetree+bounces-99866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AABE96B5D2
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:03:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38473282427
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993BE1CF7C4;
	Wed,  4 Sep 2024 09:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nFGD00MS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA3B1CF7C3
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 09:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725440450; cv=none; b=h3yr+mmIuvy+udOnEAqv/FtHZ/5wj1I9C2B87yTpCOeOVdc7xpSgKzyn5mh9idNxWtyeDzj/Tzv4c7xPBmfH8rtLCbyOy7iCfIMoESAXjFSvoAAEh6yDbtiNPQ4kCYMVJJ0IM2xb7/WoFv/45ktlKuMfQz6Sb1Fq5M+CVySJIPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725440450; c=relaxed/simple;
	bh=/6+e29D1jTzHcDiEl7NM7CoTAoSOKhezsDzMCtm9gzY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qUHyunOEEnI8lSlMWAPtnSZHlgRHthZ27Fkmy4U6tYIzILwNUON4po5qGniPFlpsWFHY7BXO/1PyXXi37ilDjJAsJ1Rht2xaBcxzYyrOP6mYYlvdzLGxjq1RO+N9+iPvpSR0X0ctoBtUYkCTkxmE/sq3eKQ3Yqk8siMCSQIAJOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nFGD00MS; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-715cdc7a153so416122b3a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 02:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725440448; x=1726045248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1lx3yQsWkTb9x7LagKbuMm4vpMCf33yZ7BqsG5IeSJA=;
        b=nFGD00MS5rxhyjP+cGASjFLb6A1Pk1osknyZHSio5PPze02s4bhkL/qnQf9z8XihKY
         qEe3mVK8ZGeUC0YItRKmqTqXjkrrTXvT0EQeWvdYWKFmaw4Q525icTxKTa/CPY0iIBnu
         CPMUIf8P0IpikobI/WHx6kXPDdQytS38AcXUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725440448; x=1726045248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1lx3yQsWkTb9x7LagKbuMm4vpMCf33yZ7BqsG5IeSJA=;
        b=vta2fC28DTi5hV/XFC1YXysnB1JNIcsQVX/hx+Mbi4K9l7f3F2OHbnYiIdxf16JMWr
         cc2AykQfrbYhbg6784CrsPD4edNUgBK6jhLbNwVBYex2IFpAFQ6yGFpCKHBmGSHODeLR
         Btdi/+hqwq4M79W9S9VYMEf/JZ7kqkjYhRxzN3kWcE1S1qilr+sW5kddmfelG8Pot+eH
         FIayHPk/o0tEYn3R812K9CvrCsFZZrpemnDwYi7XEYVjbWLS66baIFaA3AAj2m0/+c+v
         hXebqK3i9jMxHYCES2MoAC79Gfl6rIVzoZDOfG4+/grMRcSZCRUMK1e94IXZ76lRdZ8f
         p1Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWi+kNonrzF+T5FyglRmhgZShqqk6UTb3KgVgsMKi8aTdeZufW8MqcXEHU75B8v2B1E5QuiFDFl8cLD@vger.kernel.org
X-Gm-Message-State: AOJu0YyCwj9cd475ImB2eNwG/Wc79LOuO3n0RKP0tFxJT1QtEgwzkBAk
	ta6uV7GhG3Nk1eusr5h3HAnbxMTuKNqHA0GciWDo2dfAjSKbJchuTNUvCiwLZA==
X-Google-Smtp-Source: AGHT+IFljw5CEOubKFgJs6Qw/4fe2qNKJQ/lUogumRK/GAi7DQzBwRnb7bCkK8F5ANHCSTOzSxDq3Q==
X-Received: by 2002:a05:6a00:2e08:b0:714:228d:e9f2 with SMTP id d2e1a72fcca58-7177a92187bmr2450461b3a.3.1725440448446;
        Wed, 04 Sep 2024 02:00:48 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:83fc:5c8e:13bd:d165])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-717785b5183sm1153279b3a.197.2024.09.04.02.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 02:00:48 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v6 07/12] i2c: core: Remove extra space in Makefile
Date: Wed,  4 Sep 2024 17:00:09 +0800
Message-ID: <20240904090016.2841572-8-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240904090016.2841572-1-wenst@chromium.org>
References: <20240904090016.2841572-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some lines in the Makefile have a space before tabs. Remove those.

Reported-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Closes: https://lore.kernel.org/all/ZsdE0PxKnGRjzChl@smile.fi.intel.com/
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v5:
- new patch
---
 drivers/i2c/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 3f71ce4711e3..f12d6b10a85e 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -5,10 +5,10 @@
 
 obj-$(CONFIG_I2C_BOARDINFO)	+= i2c-boardinfo.o
 obj-$(CONFIG_I2C)		+= i2c-core.o
-i2c-core-objs 			:= i2c-core-base.o i2c-core-smbus.o
+i2c-core-objs			:= i2c-core-base.o i2c-core-smbus.o
 i2c-core-$(CONFIG_ACPI)		+= i2c-core-acpi.o
-i2c-core-$(CONFIG_I2C_SLAVE) 	+= i2c-core-slave.o
-i2c-core-$(CONFIG_OF) 		+= i2c-core-of.o
+i2c-core-$(CONFIG_I2C_SLAVE)	+= i2c-core-slave.o
+i2c-core-$(CONFIG_OF)		+= i2c-core-of.o
 
 obj-$(CONFIG_I2C_SMBUS)		+= i2c-smbus.o
 obj-$(CONFIG_I2C_CHARDEV)	+= i2c-dev.o
-- 
2.46.0.469.g59c65b2a67-goog


