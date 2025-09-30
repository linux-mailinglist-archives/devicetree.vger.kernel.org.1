Return-Path: <devicetree+bounces-222773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3EDBACC34
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7728189DF59
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AC7A27B331;
	Tue, 30 Sep 2025 12:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u2/KjarR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CBF2F7AB9
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759233796; cv=none; b=UnBvWUTT9WbNEl+y1tzVKOYL5h8v0GwSRlnrLcp+SafiEsQ+yHV0wh2jyBR6AjZVXTFZ/lXe1DGl03Y+t09KsO408LApuZoutsBKMzsAmPB0X0rZMgfgZ+WRUry70yZ8eu1UWNvihvr+5E9fcL3dBewL7Hk9Oed3a+3nIdiBFf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759233796; c=relaxed/simple;
	bh=WImr9vrHfeY0y5MR5N5EtvVbHApD7DoSADT/apeR04M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vpf67k6LPrgrtKxRb5/Dpj5ek1boo+Uy0TFm9woEEOF6dqPA0SbveW6nEOsDUw3BQyLrRfZEvIMtzg4d4tNlW6FDwW3Q+Gt0kSGWTNaw8/MFYAHvaeJHE0PUEg4eDuHS+peAwJdoEkxQ0zHooZ286xUjNwYt4oo3/f4WGp5DJmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u2/KjarR; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-856cbf74c4aso813799385a.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759233794; x=1759838594; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ddmYfQfm2yXMPyNgG+28VBDkVxJ3r5jLlSFHAdpo6HY=;
        b=u2/KjarR4QYfLX/O8isweEGlVinS+/8WwsBniWLVMXdc5ODxfNa9o+i8G8ZJWMelwE
         MYn0bSU/SrMAaYkvQmoFGKhGXXx/bvnyFCFgHEB2mz+Eub7LI1/Tz6Cu5RSKjllAhYIB
         fk5kmnl3N5ACwvVuGkViWP8AJjE/MM/ib0vpmR93y1tsgC64Eua7WBZ5Q0xiveH5IxLe
         U6JOvKE7hm6dHqU27sHxaUFWY8qQ6OzHqIoOCSLiBDi4TSzf1HNvZWZ8IFaAWCazvT0Y
         jyWQehvY1+ckBXXis1px84amUhxJGM9bVqkT13vR+Y76CivNidP8+0z9q6CoqJn+tW/p
         SLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759233794; x=1759838594;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ddmYfQfm2yXMPyNgG+28VBDkVxJ3r5jLlSFHAdpo6HY=;
        b=Hm5FzraaEWZLbe3BkppADusjvssPWbMkqGVrZFO/Zdr3/ZXfQE3NFPK6oV3IFfv0BU
         06HoSB8a9qOMAouyYbsJBZBR10hIkqkQ1y/S+wnBHUlyeeiqyqJ+z4wGjwaz2jsq1pLS
         NqVwFGCbcnUynrWO9gLs7Cc5B00DRJCP0ILh9oDntY7ssTdlf6IrVLgTyR49/3rpp7Gv
         GVH1BaOEdWyuHzBLwAYBhluelzFffPur4CJqSVFoVmkRkcJkPuP5wIwU6nASGxdKRrZx
         Ng+huH4yz6VKr4EFYDqmSkSZIeNDOwQNGA37GEHpPHy0jxHfEHovDdQh7G2pKv/HfV62
         bEeA==
X-Forwarded-Encrypted: i=1; AJvYcCUP5q4OHJaoRdZ8MiWkPmtX3xWXqTAQ99M9SjRnV33wxtcWJg7NvWQJ3bfhcNnPl4D+6ex6R/gL8WST@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2irXyWK7ZbolTrjca71Jc2bVzdbQAidnNywxnzr8xXwnVxZ3T
	pgqgHxUNhK6lDk5jXrNgE2EW5QEIqWYL2rZl7aldJMHlXeEkoyPNO5YnNPzUhIlr+TY=
X-Gm-Gg: ASbGncvkiSBIY1/RTxU4iu7fnjNOdBbRhemz9/wQT4trOe2qb7CjAb5OdSUeLDhS3FC
	x0gFSey+oTKzTnNVLQUHSeOltOvFPbkgXX1EWroCTlE1auo6q82fpZ0sX8aTjNgIPJEk5NoISWY
	DHPaT3KkN/V8PH3qWbjfSUmn8i8Y4F1zcIbQiHW+zreXoL8SL8MfSDFs8Ga3BDs00xOEMPEQAFC
	Xu66Xy14JdnmGMMOcLVIiz+zTNLiTkl5d7qdutstBzGKQ34lj0wVs4KMbV6npPH0aDEL1luHGhv
	FjayAHfH+HeOtJY3oq0FvSXi5rD1fbne0UU+5Abrp23e/vIGMP++m7esqd5Dkr4dl8OkaAfBpGs
	ji5SAJzD4/h9dTxqovlXfRqDPx1Rb+IG8zZWuJQFqacAGt7hdplbmicOyzlNjR+dVfQnT
X-Google-Smtp-Source: AGHT+IH+1Dw7zq01fKC2gdRDExcGzD1vCDjStkF1HEAMvgt7+JzEP/XtX0rGrrtTXaZ9mjSzPEmcfQ==
X-Received: by 2002:a05:620a:46ac:b0:85a:8fc6:5c27 with SMTP id af79cd13be357-85ae435bec0mr2811895885a.23.1759233794013;
        Tue, 30 Sep 2025 05:03:14 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c306b5f64sm1020160885a.32.2025.09.30.05.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 05:03:13 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 30 Sep 2025 14:02:51 +0200
Subject: [PATCH 4/6] pinctrl: bcm: bcmbca: Use a guarded mutex
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250930-bcmbca-pinctrl-v1-4-73218459a094@linaro.org>
References: <20250930-bcmbca-pinctrl-v1-0-73218459a094@linaro.org>
In-Reply-To: <20250930-bcmbca-pinctrl-v1-0-73218459a094@linaro.org>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

Let the scoped guard handle the mutex in this driver.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/pinctrl/bcm/pinctrl-bcmbca.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcmbca.c b/drivers/pinctrl/bcm/pinctrl-bcmbca.c
index b7b2552fd48227b2d318bb37f81a58e03656b954..dba25b453507300aa1435c2eb0326f5ef9694c0a 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcmbca.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcmbca.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (C) 2021 Rafał Miłecki <rafal@milecki.pl> */
 
+#include <linux/cleanup.h>
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/mod_devicetable.h>
@@ -439,7 +440,7 @@ static int bcmbca_pinctrl_set_mux(struct pinctrl_dev *pctrl_dev,
 		return -EINVAL;
 	group = group_desc->data;
 
-	mutex_lock(&bcmbca_pinctrl->mutex);
+	guard(mutex)(&bcmbca_pinctrl->mutex);
 	for (i = 0; i < group->num_pins; i++) {
 		u32 lsb = 0;
 
@@ -451,7 +452,6 @@ static int bcmbca_pinctrl_set_mux(struct pinctrl_dev *pctrl_dev,
 		writel(BCMBCA_TEST_PORT_CMD_LOAD_MUX_REG,
 		       bcmbca_pinctrl->base + BCMBCA_TEST_PORT_COMMAND);
 	}
-	mutex_unlock(&bcmbca_pinctrl->mutex);
 
 	return 0;
 }

-- 
2.51.0


