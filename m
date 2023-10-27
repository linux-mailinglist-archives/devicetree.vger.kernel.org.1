Return-Path: <devicetree+bounces-12532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B58227D9D3B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:43:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 587C6B21158
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5D3737C99;
	Fri, 27 Oct 2023 15:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="T0LJAPNB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5FFD530
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 15:43:21 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAEBC1B5
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:43:19 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1c87a85332bso19623215ad.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698421399; x=1699026199; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KBK3NZC+n7aQ9gEOFAwoNpYjPv+cjuqYwdG+XSaoH8=;
        b=T0LJAPNB19x+3cmpdpCBFxa32T0bxfaocCYvLabqvXPV9ZjGHp+oLN1bwZ9aCEqMCS
         G1gtQiVWX7fYCtaN+EneO+PwtFwtKiTC9OycHz37V+/RPHJFNLWumK4yJ4WlyF9X6R/2
         es5UTdClqdZUdwQPm2APlb/8jUCXRv+7q5Q2sy+DQiOZ9LzrAYkNb6PyDoaPFLxJ8Nir
         vviSUJR4zf6R4KDBinF1/oFme7+MCiQ3PPiRbGMzWjpww/JEwYzMBeGg7uPZW6VhDJrk
         16hwGHiKxzSlYJdYdUqMiJp7716cGCBSZbdOYioVuMBcnsrYvf16WsRiZxz0kVcBthPs
         xnvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698421399; x=1699026199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KBK3NZC+n7aQ9gEOFAwoNpYjPv+cjuqYwdG+XSaoH8=;
        b=bVULVKbsW2mfpQDY64q2lVh6+x8x81lnPMLDVXWRG8LSGJHosLPQMEwILKKYy2ssnV
         C3z0H7coYYGUmPfBHsu+a2Ud5j9P55d6tg1WgcPbCkMm4aN7JZY6hrSuStZUj3vvh3OS
         K9EXLDv9HYrue0RnOc3R/CLWQ951a0CT+W2KPChLfsiI8g6kE4TfomlcvTjhu+dHsIu+
         3J5Oq8E315/lA7NVHXYXtWBwuHe3Ue6tKEIhccXb04SmDZnj8oD5mhE5BgrXg2ukkIeY
         mYL+iWqp1ry/arbbVomD6nOG+Y+rrZ+2kSZG5UyumdyUqqABcfOlKzYFctja91JT5vPN
         yy/g==
X-Gm-Message-State: AOJu0YzXSdAvQ1GAsPVzJ/1dV4XALh1+QAlo77On0DIkJPjcXjhqq+FW
	ea7w8Sh8PJ+z1duM8LQZCnVITg==
X-Google-Smtp-Source: AGHT+IE0WwiuMIrwwFj9qaBNO8bS08eHPy8xyS/b27ydVSLkLsZB0Im99FCLmBi5mGjBXe6UHnkgtw==
X-Received: by 2002:a17:902:6acb:b0:1c6:a0b:7b9a with SMTP id i11-20020a1709026acb00b001c60a0b7b9amr2905659plt.3.1698421399249;
        Fri, 27 Oct 2023 08:43:19 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n16-20020a170903111000b001b9e9edbf43sm1729246plh.171.2023.10.27.08.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 08:43:18 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/2] of: property: Add fw_devlink support for msi-parent
Date: Fri, 27 Oct 2023 21:12:54 +0530
Message-Id: <20231027154254.355853-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231027154254.355853-1-apatel@ventanamicro.com>
References: <20231027154254.355853-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This allows fw_devlink to create device links between consumers of
a MSI and the supplier of the MSI.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index cf8dacf3e3b8..afdaefbd03f6 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1267,6 +1267,7 @@ DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cells")
 DEFINE_SIMPLE_PROP(leds, "leds", NULL)
 DEFINE_SIMPLE_PROP(backlight, "backlight", NULL)
 DEFINE_SIMPLE_PROP(panel, "panel", NULL)
+DEFINE_SIMPLE_PROP(msi_parent, "msi-parent", "#msi-cells")
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 
@@ -1356,6 +1357,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_leds, },
 	{ .parse_prop = parse_backlight, },
 	{ .parse_prop = parse_panel, },
+	{ .parse_prop = parse_msi_parent, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
 	{ .parse_prop = parse_regulators, },
-- 
2.34.1


