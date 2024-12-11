Return-Path: <devicetree+bounces-130006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AA59ED7D9
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEB61168D67
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 20:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1601B23A1AB;
	Wed, 11 Dec 2024 20:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XxhoNC2e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CCB2288FE
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733950531; cv=none; b=DYhlgJCBi/QY4X0M0rQtWR5Ne17WUsp6vxYX0QoUBZDq5NqnM44N6T5V1VAhKMg3xJ9pBEwGFtAE6m0dPOsj73SbQCNkSixDdTmZTEOwoCpps1MZE13WTQtzJTyqxt3bLmMKDa8/x1mQ2wD+1JRgxFPCsQ1yb9P0b05W0ZvNC5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733950531; c=relaxed/simple;
	bh=WAwTb5myka3LdUPJqpDewXuqJ4E4xxoro/9r7/Szvgs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CeoZi/HVTiIRkvT0BawjzPifFhnNsf0YHBfAt0HEjK6iUD6ntWEF1LW3zmEUdvgVAJeg9XgHTzR2zt+7y6FNkjIeDq/PtpsLQRFXyRliQrJPmuxUq2kJG/KVnDt7cpnu6CFmP4HygTrzDIuosUGtWHMGpy8TxUIgh/7Q9wIn6Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XxhoNC2e; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-71e17de2816so663454a34.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733950528; x=1734555328; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iQTW6D1fIdftX2zgH4Jllg1mjOtWmH2bIJ8hHBb6gVk=;
        b=XxhoNC2exsi0+emKrjMP4sDx5XqmlS2PQiVe9r64Ix8BLDmF0w1/lAnkooiUZhOgvv
         vBnSWcVlxXb8qiJdMNqVyMsOzLPQeW87vwVvMsKhImQVzWPwo4QTs7bpNlb/3oojEzD7
         QPj33WHPMuoFdt5IIowefhxRezP/im3LsghAN/IpVkWi98CgZeLLFWtxwCAfzQmf8vgK
         yeE9spo3atQeCUw8hZcgEMJXkBa1515blRSoiZr4tD2RxxaXPKgywLN1leYZd0pvfjov
         Psrd/spH0pwZVdKcJjzk0HM8qcJnpT+iCEJ8Z1F1sSjOskfZNfnAWc43SjkciiZa6m49
         U/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733950528; x=1734555328;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iQTW6D1fIdftX2zgH4Jllg1mjOtWmH2bIJ8hHBb6gVk=;
        b=pJp6OSWodTNUmEhAziTvtMnOHPbGCn1CUWWjfWqvSeyVjwz1VfxEa9m6FP2OeDub9k
         6E+MWXBDix81awHlnP089d3iUCsIXMLsCz1Fc1io2yIy/cgTrUwEcnzMiLMgms7Ichsm
         +l/eZAgFnnwITrdhhuYTElbFSeHoF+FGulUnhtol0wQfjvb1k2nSd9LmzXP3mZZ+/7Wx
         Towus+hlhrFVrqTAtK+hYGMFuJeEIaYUtz6W+DbjReUZ1h51dyio4L2hdVO5yNAEIZiG
         hID7XpGmf8UBSNjLdnaaDS4P9GfhYls0gLMYXhhKY8QXeT6OgK5HfqNG/izNJsw4VEZD
         Vr3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXc4RjY/FZ4FIFGmQoiJ99CrWAGLtZOPqr6UgHztdi+V6uQRrsT24YeMISTOKyvwanhBGt2KGu7+D3w@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd0o+9M8Am0grE/SHp2mR1Ep3iswgm57pyLouMOyfaxVgHoOhg
	lbOq2+ODona3PBUhvcx5YbrQkyrICJnX1B9CZMBPrsxrb9nXoXJ1XZ2+NjowlJ8=
X-Gm-Gg: ASbGnct0ptUItE4GjfJ8l+HCHkUImrVVoHyYjtbTnwwfdtaOSMdc3hZUQWB1ICabEqJ
	W9rxB8C64Muoiz//YrbijH7kt0DCXRYZjr6GvnfBvZKkHJ4MAFn665RkITk6NrIIYHAQJ3CFOAU
	i3zNTCMrIkhjIafsR4X23+AY6OjPMc5GIKlT6b46XuK20T1Rh8tz9Tm7PTbqXYLMSS8sNiKB+O0
	tKqUWmtjHdapIgYMoTn5pyXfbyvgYgDordjibXN5zVMQXFeMsekiOw38cjjPdJ3wMs5NGBiHc9j
	855DzJw5xg==
X-Google-Smtp-Source: AGHT+IFuudyGftKCliMPrvNIjDvrTqh80IEhkFgUdBPmfjIx2sVP9rniThVNaNVnvLDBQ2fzFuey2A==
X-Received: by 2002:a05:6830:6a8b:b0:71e:1b44:35c5 with SMTP id 46e09a7af769-71e29c5f375mr670404a34.18.1733950528037;
        Wed, 11 Dec 2024 12:55:28 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71def651fb2sm1888288a34.27.2024.12.11.12.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 12:55:27 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Dec 2024 14:54:53 -0600
Subject: [PATCH v6 16/17] iio: dac: ad5791: sort include directives
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-dlech-mainline-spi-engine-offload-2-v6-16-88ee574d5d03@baylibre.com>
References: <20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com>
In-Reply-To: <20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2

Sort includes alphabetically before we add more in a later patch.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v6 changes: new patch in v6
---
 drivers/iio/dac/ad5791.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/dac/ad5791.c b/drivers/iio/dac/ad5791.c
index 57374f78f6b885e1d4f2fb452ac0563b85fc222e..24462cb020e19e8e2c6faa13109ac047cf423c37 100644
--- a/drivers/iio/dac/ad5791.c
+++ b/drivers/iio/dac/ad5791.c
@@ -6,21 +6,21 @@
  * Copyright 2011 Analog Devices Inc.
  */
 
-#include <linux/interrupt.h>
-#include <linux/fs.h>
-#include <linux/device.h>
+#include <linux/bitops.h>
 #include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/interrupt.h>
 #include <linux/kernel.h>
-#include <linux/spi/spi.h>
+#include <linux/module.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
+#include <linux/spi/spi.h>
 #include <linux/sysfs.h>
-#include <linux/regulator/consumer.h>
-#include <linux/module.h>
-#include <linux/bitops.h>
 
+#include <linux/iio/dac/ad5791.h>
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
-#include <linux/iio/dac/ad5791.h>
 
 #define AD5791_DAC_MASK			GENMASK(19, 0)
 

-- 
2.43.0


