Return-Path: <devicetree+bounces-192327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F2FAF6421
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 23:37:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAAD81C45D2D
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 21:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 614F62D641E;
	Wed,  2 Jul 2025 21:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="R9bum3YR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3E023C516
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 21:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751492230; cv=none; b=JpIQGqas58fzRqw6PRWmO8UuBS6zq6lDtQ72WxCBmnZBYl7co4ny7JCLpXR07KtZwVmw/FVci7uyacvWkcFh4WAVNrf3g+JTAXAkIlCldh1KjfeSDCV2I1V3HOyGSQP5yuH6qIs4tKuQG736ifODfg1qFgKv38XhVYAcINAwM68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751492230; c=relaxed/simple;
	bh=WB/IrpIB/wfBJbu5dFJUlcKQY59F+HJ0MTfMkd8sfQM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SGKeYL3NRxrv0OPlRVuQIXqTw4hW2/a3MMXgplIXBpSu9j9R0HCQQM2WY7RJ/KolnRhpBY2WqvRjsi7gFGC19Bk3lXY7krp6CgxCeoSFFLFBz2vajMKe5Q5kGi+6O2Gvl3uXJcALZok33EmJQzCOU+/wzryjJwJYbgmygX2N0Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=R9bum3YR; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6fad3400ea3so68095966d6.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 14:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751492227; x=1752097027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z77tQyjzfW0dcmF8i2CALNcRi1lkFInteyFHSr2VXyM=;
        b=R9bum3YRUI7UInsDEmkEa3gyb9TT9B94Yfr7hlcPcUAUpwyqK25pNA7A2mDwoMoHkZ
         B7YiQbmaFJ2j/9clB9KfnP7Cqn16jpzk2P6ajpLyg0eYANj9LAxSG+fL5Yd+IbxPI5RG
         5fzMgo/ApASZ2NoLfHfH6rBd8E5fVcCZzzZIDpmnEDTBvh7pfrIQBphyTkvUeKj7VL53
         XjGJVoXX6HgYusbCikekUfoDDEl5j2bP72zwrfH70R5heoX+SoNWNlnHI7cAlUqv7wHN
         zrzARjvhn4IwbfObJmVXZrK+zMUF8X2KjgT1yB+BZD5h8VmZHbacqd/I7rZum/ax/Exa
         SI+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751492227; x=1752097027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z77tQyjzfW0dcmF8i2CALNcRi1lkFInteyFHSr2VXyM=;
        b=ZVBleEg0lKT/7p1WA0b+1fvRRPSSbdNoQ1XVlpozEfSQaN2BV7SBEAHy/7sawQGGxf
         vWKRKx3+/ymE9I6rQe3tyu3KDclSvOZN5ttyHLCf2HFV4bBj4yraDN9c0RPK8o4yIzjG
         WbsTBn/hcfagi/zEdvfdwUb1DeSh5bQ+osuN04HHzPa7uC8TPsWiU3GUqPSOSg8HcZVJ
         H59Q/ui41OBVh2K/ZQD6H4aYUt4jbJ0DKitzcMtgfF0wimA73tcGFl/GH52/QmY8nyZo
         qvkNEdTeCP2wq70Dk//m5aW1O1KSfZuMwlF+1x+8waL+Jn6dTQpYT44tSId27S1szGTZ
         LFOA==
X-Forwarded-Encrypted: i=1; AJvYcCVT8OXorzEYFP9DGceBOs5A2kr2Xre36srv03bkrnCEsP+MX1Qv7X3zoSoO6L2F0oRWZ0JDPWTnRoRq@vger.kernel.org
X-Gm-Message-State: AOJu0YztcCpDDOVn9J1xJNQnAYTAnJ2cIcSKoHGU7/9B2myUv+Wxz+pe
	2Ru25BTW8MUhZtSRJYz+a7zQUvt6MmvVKQu7UGdjZgyq1b+BDDv/wc1r4jIXJgUbfLs=
X-Gm-Gg: ASbGnctA62GW+mliyfIUjDPF8yCEY3cGvflE+tZa6/dx4SvWr+F1gZbziQvN0ehWPpd
	m18VEKuFDTIYEwTSZyqq2vNQLqCGK1f4MQvu4eo6LpinF93GNq0Un+sYp2G8fRhMw9moU3YOwSL
	egJxJW6lTb1xCSrLJ2/ostCmux2LRccJ+n93DZ5fxMeGdcX1aLddEBVeQOSFGHwOoyVlUDDupmG
	2/BTK/jUJuYBj/1EqDY9MBhAssHFuZCjzaQrhglJ/iKcwb/bHgLQbc/vAdHsNLeQHzJ+aOH8Edz
	OhAEZEjLDvpoJFk/d4XS800F9msygi2VimmfIjIFZDPojhXu17k/IOnBzmvXDX0sIhMAjjJp0nE
	tg21Ds8AFqDbw+P9A4qGyWyzPtRJd/xBosw0=
X-Google-Smtp-Source: AGHT+IGRObx6Rpk1Zs9IQPZXVPL/wda/SaVAzAggTxX0GxDaBqWEjwz2sqTqj864Fw46dZI0C1TGsA==
X-Received: by 2002:a05:6214:2342:b0:6fb:66cb:5112 with SMTP id 6a1803df08f44-702b1c1ed54mr54743616d6.43.1751492226919;
        Wed, 02 Jul 2025 14:37:06 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd771bc01bsm105691746d6.40.2025.07.02.14.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 14:37:06 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/8] mfd: simple-mfd-i2c: specify max_register
Date: Wed,  2 Jul 2025 16:36:51 -0500
Message-ID: <20250702213658.545163-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250702213658.545163-1-elder@riscstar.com>
References: <20250702213658.545163-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All devices supported by simple MFD use the same 8-bit register
8-bit value regmap configuration.  There is an option available
for a device to specify a custom configuration, but no existing
device uses it.

Rather than specify a "full" regmap configuration to use this
option, Lee Jones suggested allowing just the max_register value
to be specified in the simple_mfd_data structure.

Signed-off-by: Alex Elder <elder@riscstar.com>
Suggested-by: Lee Jones <lee@kernel.org>
---
v2: - Allow max_register *and* regmap_config to be supplied

 drivers/mfd/simple-mfd-i2c.c | 15 ++++++++++++---
 drivers/mfd/simple-mfd-i2c.h |  1 +
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/simple-mfd-i2c.c b/drivers/mfd/simple-mfd-i2c.c
index 22159913bea03..3f959f4f98261 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -33,16 +33,25 @@ static int simple_mfd_i2c_probe(struct i2c_client *i2c)
 {
 	const struct simple_mfd_data *simple_mfd_data;
 	const struct regmap_config *regmap_config;
+	struct regmap_config config;
 	struct regmap *regmap;
 	int ret;
 
 	simple_mfd_data = device_get_match_data(&i2c->dev);
 
 	/* If no regmap_config is specified, use the default 8reg and 8val bits */
-	if (!simple_mfd_data || !simple_mfd_data->regmap_config)
+	if (simple_mfd_data) {
+		if (simple_mfd_data->regmap_config)
+			config = *simple_mfd_data->regmap_config;
+		else
+			config = regmap_config_8r_8v;
+
+		if (simple_mfd_data->max_register)
+			config.max_register = simple_mfd_data->max_register;
+		regmap_config = &config;
+	} else {
 		regmap_config = &regmap_config_8r_8v;
-	else
-		regmap_config = simple_mfd_data->regmap_config;
+	}
 
 	regmap = devm_regmap_init_i2c(i2c, regmap_config);
 	if (IS_ERR(regmap))
diff --git a/drivers/mfd/simple-mfd-i2c.h b/drivers/mfd/simple-mfd-i2c.h
index 7cb2bdd347d97..706b6f53155ff 100644
--- a/drivers/mfd/simple-mfd-i2c.h
+++ b/drivers/mfd/simple-mfd-i2c.h
@@ -27,6 +27,7 @@ struct simple_mfd_data {
 	const struct regmap_config *regmap_config;
 	const struct mfd_cell *mfd_cell;
 	size_t mfd_cell_size;
+	unsigned int max_register;
 };
 
 #endif /* __MFD_SIMPLE_MFD_I2C_H */
-- 
2.45.2


