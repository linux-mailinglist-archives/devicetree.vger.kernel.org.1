Return-Path: <devicetree+bounces-195151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BB1B00AE6
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 19:56:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA0A97BF40E
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CE912F365B;
	Thu, 10 Jul 2025 17:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="MibllwvI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249752F1FEA
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 17:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752169877; cv=none; b=CwHqG2abCpKG6FPSWIhvRRSmicJuTHIFY2RkG657EnrXBGUdvanEqP+U+t/Bj5Bw7ySEAjoVhNZ4OcSO7+6QuiE/qotlIiOnl/3spAMplZj7L4TwhtIYbsLa9uZaD+bpcSsIwsMasD53zBsbm6ae2X5hjQ152gKpxnDF8/HxiWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752169877; c=relaxed/simple;
	bh=qw54s6+dB4TTXuc48Qt7Fv1rhcl09JsKjrdaymOOvwk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UMgLJR+PH8y2Y7ZNFIjqQk5DiN4WtwuVLs+FIccjk9li5cMZas7t9cW1bBz0SL9A79ZPmyQ3Wmn2QhG4B7wjZrzjd4Ojm/PaiQ/MLr+GRQWCJizR8O0AhDUJK8vdYFmN+Lg2oUb2MQrC2u2cl/Q7yX41sYuwrF8vN3h4vxM9zDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=MibllwvI; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4a58d95ea53so16413431cf.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 10:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752169874; x=1752774674; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPxd+P8tmDwx0y+W1SNnV+rw8aIzaBC1lp7afJoBcgY=;
        b=MibllwvIk9RfL5jmcMhrM41e9sl51DsRvefvYRMavCWVWmzKH45CYZzqRRgZi8Gz6e
         vAT7aSB/oHc78Nz1O1nhIpXhp+6dY1Rg0Z+zmUJkPNyYcZEruwcDfrekYT45i88VB9ob
         I1KfjY2NZyi6A1D6Dl8X3hJVH/0gM0KQAgrkTIb9UYZcuhrzrUSUdK92W1xxv40Ukfj7
         Zk5RI6kLYnGvgmKiFHCrbh+KE27H07CCBkBI1zkGKLFRyQj6GYFdzVEQrScFkp/qMiQL
         mnFMbIWekush4sf7ICw58jYnxvjRG3409jniVY75UgdwjbuG8sqd9nDsNzlg49AYawPV
         Mc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752169874; x=1752774674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPxd+P8tmDwx0y+W1SNnV+rw8aIzaBC1lp7afJoBcgY=;
        b=M5r7HuItAO3cKbG10txReubzlGMmWXTZ4P5rZ3LQivKh+VLETZ4/vn9BKnZ+pZGm+c
         rCE4Gq492osQWAXITkVQsixdqjaKUOkBUqGU0byluxE5Yjw48kOFN+RDsqVfzm0pzZDU
         5dxIunC1HMoj2I8fYa1ncOeNXd6zJjM4jtd0bXTgs6rnYn/kMe2mN7i9uTT7rriyKz8S
         TMfAEw4NEKDqYGDUhlYmKVOJ5Ec57lLXyrgB5Cg62EqwPYZrI0EniRIB6JSBaY/JyS6x
         DkDgYcyjcFSXMI3Q/VXfAM2lJCAsO6VNDOy2jrzBJXKsocS0hM0Ru7tBZ0JHVWlUDVHp
         C5jw==
X-Forwarded-Encrypted: i=1; AJvYcCU50JSEfUZzhIsBbDU9dgodn3qhwzdiifdHRbVwyjXHXifeKxK1i+Ao517YuSKZq5mcfDq+fHBFALSy@vger.kernel.org
X-Gm-Message-State: AOJu0YxEFOi7dAikLe6Pke4DzCHH6Lps8mL4SQ+Eix+86/FjwQW8fiuW
	j4s4IM3HV+3k50dga+7HsRRr7YqM575/uC57Aabk0UHAZNDyUoDUqZztPGjMBRCHpn8=
X-Gm-Gg: ASbGncsKe3BG+cYfF6U0uJ3m+ABr0bpKlV14RBYkHXkwG7Iglp4Tkoo0/d4IM9oTasM
	VlYItg038Hmuc4gzMHux1jbEU6DQyVSsWxNc5gHZtdEmJ/9p/Bhxhee8FBb7w6oyOIZYU4DwAGf
	OIi4GWtEsTptHxWuiNhg8j42Sxa5vU1dFCnsDOGUf0Vy2gVrJiwfUMgGti7qRbZ6wIMtjNtQIwi
	/aNZa8t57bOdzQxrgwa5auA9APnOdTdkH6RclT3GTtXvNq5WLt666vWGJhvQfVdbVjKoghZOAli
	tSBLXfO7LX6Ez8hZkGTdlrn2sui+iZKFqsuraAcxw/u7hchhunEzscxN88Jyw5uwxyGaEJdocbQ
	DgNK4hgzukGHMnFDbVt3z0BuHYa6TxwP/uIHrgb4ujrUssw==
X-Google-Smtp-Source: AGHT+IEkx+AOQpLVZceBJR6aNNu41el+MInso6QxhBVwmiG6+XiP3kC1/9JcknKd6ozM3Mhkp6rCyQ==
X-Received: by 2002:a05:622a:1441:b0:4a9:a608:43eb with SMTP id d75a77b69052e-4a9fbb4f054mr2871861cf.20.1752169873838;
        Thu, 10 Jul 2025 10:51:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9edeee300sm11165941cf.73.2025.07.10.10.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 10:51:13 -0700 (PDT)
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
Subject: [PATCH v8 2/8] mfd: simple-mfd-i2c: specify max_register
Date: Thu, 10 Jul 2025 12:51:00 -0500
Message-ID: <20250710175107.1280221-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250710175107.1280221-1-elder@riscstar.com>
References: <20250710175107.1280221-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All devices supported by simple MFD use the same 8-bit register 8-bit
value regmap configuration.  There is an option available for a device
to specify a custom configuration, but no existing device uses it.

Rather than specify a "full" regmap configuration to change only
the max_register value, Lee Jones suggested allowing max_register
to be specified in the simple_mfd_data structure.  If regmap_config
and max_register are both supplied, the max_register field is ignored.

Signed-off-by: Alex Elder <elder@riscstar.com>
Suggested-by: Lee Jones <lee@kernel.org>
---
v8: - Use regmap_config_8r_8v, modifying it if max_register supplied

 drivers/mfd/simple-mfd-i2c.c | 8 ++++++--
 drivers/mfd/simple-mfd-i2c.h | 3 ++-
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/simple-mfd-i2c.c b/drivers/mfd/simple-mfd-i2c.c
index 22159913bea03..5138aa72140b5 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -24,15 +24,16 @@
 
 #include "simple-mfd-i2c.h"
 
-static const struct regmap_config regmap_config_8r_8v = {
+static struct regmap_config regmap_config_8r_8v = {
 	.reg_bits = 8,
 	.val_bits = 8,
+	/* .max_register can be specified in simple_mfd_data */
 };
 
 static int simple_mfd_i2c_probe(struct i2c_client *i2c)
 {
 	const struct simple_mfd_data *simple_mfd_data;
-	const struct regmap_config *regmap_config;
+	struct regmap_config *regmap_config;
 	struct regmap *regmap;
 	int ret;
 
@@ -43,8 +44,11 @@ static int simple_mfd_i2c_probe(struct i2c_client *i2c)
 		regmap_config = &regmap_config_8r_8v;
 	else
 		regmap_config = simple_mfd_data->regmap_config;
+	if (simple_mfd_data && !simple_mfd_data->regmap_config)
+		regmap_config->max_register = simple_mfd_data->max_register;
 
 	regmap = devm_regmap_init_i2c(i2c, regmap_config);
+	regmap_config->max_register = 0;
 	if (IS_ERR(regmap))
 		return PTR_ERR(regmap);
 
diff --git a/drivers/mfd/simple-mfd-i2c.h b/drivers/mfd/simple-mfd-i2c.h
index 7cb2bdd347d97..ea2a96af8bce4 100644
--- a/drivers/mfd/simple-mfd-i2c.h
+++ b/drivers/mfd/simple-mfd-i2c.h
@@ -24,7 +24,8 @@
 #include <linux/regmap.h>
 
 struct simple_mfd_data {
-	const struct regmap_config *regmap_config;
+	struct regmap_config *regmap_config;
+	unsigned int max_register;	/* Ignored if regmap_config supplied */
 	const struct mfd_cell *mfd_cell;
 	size_t mfd_cell_size;
 };
-- 
2.45.2


