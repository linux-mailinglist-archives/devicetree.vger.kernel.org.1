Return-Path: <devicetree+bounces-171855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE37EAA063A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5E15481661
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A154B294A0E;
	Tue, 29 Apr 2025 08:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="FVgfckb3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E909E279347
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745916697; cv=none; b=iZcHJoyX4OyR1Hq983a50cRD51dJS5f4ZkF1Uzob7uSFKMlWLEhSTlf9oGmxvxXFxa9kB5umqJd9deAe8AK49MscWqi6/Y3wJ/n1GYvYsGjoneJkI0gDNpvXbDhPqARRtwozZA0Vi50cbTvoxOd2gxPpqeM0Twfo2WgqZ+E8zAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745916697; c=relaxed/simple;
	bh=ZLqnNRXBAVw2yotWdLMWiDrIuKC3zLz8bFoRIWISSAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DFIHtgC4DhoK25Xr1E9FHc0cUb+jP0Zg/z55T4q3BZUd2hJ67qzFatCubWlSuXboFw+/ZutBbQGzr5+vqhp4iGkNtgcXjRZzSGle7EhMbXeFV7Lf3P1GkojasqA++P7lBt+0rbGjiFVFnn1VQuE+tq4LcBCAwy7w0foZp+yAODk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=FVgfckb3; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-22c33e4fdb8so60657735ad.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 01:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745916695; x=1746521495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jf1MyA5jv2WhmjchTZbgQeXneBCKmWDUyNLFyQlB0MY=;
        b=FVgfckb3G4qRocEXzpi9VY9rR44o4E6MDwkZS0FuKU68mKed9zDU5TCGT88EHyacpM
         mMz1EjDMimL6S2+/YBfllzipMX/YYp/wIcReav4D5kdFlE33D3x6hJzsyG+8r6rlzGKE
         YyrPmR1JTLR5P4pogZ5FAgsMZiAe/X1NjKgIdB2UYX3fpJvZWq5lb/thQKfHLVeZ35zB
         RM7ZMlOsjX/DQjgaFiwzuBCBObICU9IOLnr03SY+JRPNEGmWlCDzWTo1xZmnVwiDqirG
         YpmADvZyq7v7x3F351NzMJbd51cS+l6o7mn6bQUJ1cL6DpnHXB8FKVCIW5QvqwkoaEnq
         8AUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745916695; x=1746521495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jf1MyA5jv2WhmjchTZbgQeXneBCKmWDUyNLFyQlB0MY=;
        b=gva7lt1ha9SwWCP0c20sIHXz/7RqZ+k2CTrDmS7dL84H/8w/tie2/ioEy63T7Mh3zX
         A/QzSq/GQVIjkDeLhdWSMZTqdFO/ToDWyHo8ZBJ85b73damlBF/FhUJNkjldFUwp2XHR
         buvg1X1Km2sqgmIJt62fKJmRTQ2ljRGYC0NptcJJktKhkUcFV0UnU8owG5hZ9Qn5tFQU
         lS1zW0e9X6f15hYernnmjVS/kizlc+a2vUlYnkgvIz9kWgQa2r5IlTY0aBrJpxW83cHH
         4dR4yebxomeS1eELTc/sHBODnT9NWUWpWXT9rATVEfcb2phniOLajWOo9nOw3y7mcC0o
         YHxg==
X-Forwarded-Encrypted: i=1; AJvYcCWNozT+FextUj9LeA+wQjTOoFHBBIcKzvnOgVeE1OoKAqxqO9okSzjWhaypUcFFxOtfYaO9e15msm+D@vger.kernel.org
X-Gm-Message-State: AOJu0YwUfGjwCUTvQZ0FGxqsDpdbW3/A10ttI2vMzxd4zckAyrRtbx7z
	yCh5b8kjOskV3TuS1usFzyLQZ/IyNPo+I/0PASB8bxkHeOS86PB9E+NrjH2JwRo=
X-Gm-Gg: ASbGncusZECZ9GfmRy74G6LryWxviuIHlwSv+qST+bjvSCmGJADjPXOYBJXkiP7BoE+
	lOW3JqesobdujaWo+uPViD9GwUCC5ehqfDmqvCDMm04REtFtve2bBnugk6m0U9XSDzOGC9c7vkJ
	kY5gmCXfOuLl16MbHcsy2qPj+w7vDzPXR5aF4QsBHZMEaAoa/jSSaYcrL2IH6oBFUPuZ+YxJjjx
	kcL+X0sv4RJjizwuWoqMIezAhOX/wJ3EJyhXdLb6PZqCKlRBeXjk+GOH5JfTbXzs8zsodNt9H16
	BPsZN765LwjEIyOGWLc2eAzG6jFJk6fkMAlMnd2wZxN2HFYiUnMMNZF5AXtSpKnFCl62jnfOPPc
	IN/etyLIxfE2vR1g=
X-Google-Smtp-Source: AGHT+IF/YTb11QJo7KHbzLovwGKhpZslh/Bu4+pqk61lazM/ExJSKXK7osXi8PFQQCc7TGaXhCoayw==
X-Received: by 2002:a17:902:cf07:b0:224:23ab:b88b with SMTP id d9443c01a7336-22de5eca712mr35763465ad.8.1745916695179;
        Tue, 29 Apr 2025 01:51:35 -0700 (PDT)
Received: from localhost.localdomain (210-61-187-174.hinet-ip.hinet.net. [210.61.187.174])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b15f8597e0bsm8550119a12.44.2025.04.29.01.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:51:34 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr,
	heikki.krogerus@linux.intel.com
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	guodong@riscstar.com
Subject: [PATCH v3 2/6] pwm: pxa: add optional reset control
Date: Tue, 29 Apr 2025 16:50:44 +0800
Message-ID: <20250429085048.1310409-3-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250429085048.1310409-1-guodong@riscstar.com>
References: <20250429085048.1310409-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support optional reset control for the PWM PXA driver.

During the probe, it acquires the reset controller using
devm_reset_control_get_optional_exclusive_deasserted() to get and deassert
the reset controller to enable the PWM channel.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: Dropped the addition of a reset_control field to the struct pxa_pwm_chip
    Using a local variable for reset in pwm_probe() instead
v2: No change

 drivers/pwm/pwm-pxa.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/pwm/pwm-pxa.c b/drivers/pwm/pwm-pxa.c
index 430bd6a709e9..f6a862531601 100644
--- a/drivers/pwm/pwm-pxa.c
+++ b/drivers/pwm/pwm-pxa.c
@@ -25,6 +25,7 @@
 #include <linux/io.h>
 #include <linux/pwm.h>
 #include <linux/of.h>
+#include <linux/reset.h>
 
 #include <asm/div64.h>
 
@@ -160,6 +161,7 @@ static int pwm_probe(struct platform_device *pdev)
 	const struct platform_device_id *id = platform_get_device_id(pdev);
 	struct pwm_chip *chip;
 	struct pxa_pwm_chip *pc;
+	struct reset_control *rst;
 	int ret = 0;
 
 	if (IS_ENABLED(CONFIG_OF) && id == NULL)
@@ -179,6 +181,11 @@ static int pwm_probe(struct platform_device *pdev)
 	if (IS_ERR(pc->clk))
 		return PTR_ERR(pc->clk);
 
+	rst = devm_reset_control_get_optional_exclusive_deasserted(&pdev->dev,
+								   NULL);
+	if (IS_ERR(rst))
+		return PTR_ERR(rst);
+
 	chip->ops = &pxa_pwm_ops;
 
 	if (IS_ENABLED(CONFIG_OF))
-- 
2.43.0


