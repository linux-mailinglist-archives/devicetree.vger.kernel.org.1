Return-Path: <devicetree+bounces-108844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BFE9940E4
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:16:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC3D02883C4
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5E91C3F07;
	Tue,  8 Oct 2024 07:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jmc8sahn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804BE1C2420
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 07:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728372908; cv=none; b=jgT0mjMtDW8ZbDBM4W8cHjvOkdW50Ar8lla1djeH1zxitfJWpjKZow4w43TuhbqbA44BHmwOqPUaWdlZcbxCGlgdLr3L+/C5LO8VYlMjLGC3pdQfa2+avG9gv+b5wDt1+Zq2FFVoWtlfKv7v3+IzqWZ90EtX/ASVsM5V77VfL4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728372908; c=relaxed/simple;
	bh=VLQYF1yplf7AxMnmlaVUPVzibwbvLqQiWe1pLK515hQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aog/K9S5FD+mHDXt2u8c5fGXvpTTuVWPV58FrJWfOvf7t/sR5olTamH7hcCL5jY1FABNdZzGF8uh7qw8j4JcRJ+fnV5D5FBvionjAnDsCV3d0ihlW/MMsEGkmNZ6kvnA14ghMyQzOtdSoDE5+WKopGCaKbFx0Fh22AKOiVs/Kdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jmc8sahn; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-20b90984971so54574345ad.3
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 00:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728372906; x=1728977706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sPUO/QyLYbgAXcOBLeyWR3uKE5ceZyKuapBUH4+Vdho=;
        b=jmc8sahnps4lXEHnTf0Jdl0EMdFzsQ1+bc78OQEs6YZI1+g+PbGt0rAzyup6Pyd+YF
         DtbONuLSTrpTc1r7fABx63UoUZ5RSr94cuh+bjDT/7IlEpTL8DZUgu9igD4TQJ31S4Fp
         H4QgKpbe2xyl29Sboaha6yWQz+7ZIshPol7/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728372906; x=1728977706;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sPUO/QyLYbgAXcOBLeyWR3uKE5ceZyKuapBUH4+Vdho=;
        b=RjVaq11NbUbL+4UmPmXW9Fdiba6aRuQM4GQMtNPiFTYQ44Eru3NU1+oyZyeNLTpdhU
         7p13sazUlqoY5prgOyf6r11uHq7Bdrtq7bmTAjHg1H7l8nbr2CwZ0UCZCRvBvMSjP7qu
         YcnpyVl5oJxKhT3kxyW7WmZ2IsOvAomeVq9Xp1fC5+7aoVB8ou1t7pHVHGiZFTIKkgiy
         Lm/qR29cAjiEq4dXyqd1nByTGcyh0Bz1x79D6TmnkhaL04Q1WNxiMF2mvvE8ma4HLMQY
         5Ey8uEBUFh5E/tGnDCxBET8d7QozdUPnWyk9YRO3lpwL7l3w1cl4U7GES7uUX/8i0u5o
         FhSg==
X-Forwarded-Encrypted: i=1; AJvYcCWrTc2gw4uBrvbkN7MWuHjrCMEpaiBz8+NHZ4nt8RzFdsF8e9QlJRVanZqreWtm/JPm60JzGWVRaL2e@vger.kernel.org
X-Gm-Message-State: AOJu0YxFepKgYxrO80mcYlhlBPEF/J8CJKZDNjSLNz4wHfjShHHMhkfL
	mKpk3P3DoWCHleBmU38YHZdOmbfSBPbM6hzqh+FCAFUIfBkz108HxG4pfqU3Vg==
X-Google-Smtp-Source: AGHT+IHw2VKleWZGjUzsOr2cjHRHd5ZZtRaR+rzZ7wLp6Io7cZVGwb3z9BPQYRo0UmvC/P2G9wcZcg==
X-Received: by 2002:a17:903:22cd:b0:20b:aed1:bf8f with SMTP id d9443c01a7336-20bfe298189mr218586815ad.42.1728372905977;
        Tue, 08 Oct 2024 00:35:05 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:10df:d27e:8d4b:6740])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c13939bd7sm50121175ad.120.2024.10.08.00.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 00:35:05 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>
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
	linux-i2c@vger.kernel.org,
	Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v8 3/8] i2c: core: Remove extra space in Makefile
Date: Tue,  8 Oct 2024 15:34:22 +0800
Message-ID: <20241008073430.3992087-4-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
In-Reply-To: <20241008073430.3992087-1-wenst@chromium.org>
References: <20241008073430.3992087-1-wenst@chromium.org>
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
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
---
Changes since v7:
- Collected Andi's Reviewed-by
Changes since v6:
- Collected Andy's Reviewed-by
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
2.47.0.rc0.187.ge670bccf7e-goog


