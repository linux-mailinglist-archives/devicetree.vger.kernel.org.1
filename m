Return-Path: <devicetree+bounces-11903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 988A27D6EB2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C90B41C20D9E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E70729432;
	Wed, 25 Oct 2023 14:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="BavMbCpp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C98729D05
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:28:50 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A016693
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:48 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6b36e1fcea0so4675619b3a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698244128; x=1698848928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KBK3NZC+n7aQ9gEOFAwoNpYjPv+cjuqYwdG+XSaoH8=;
        b=BavMbCpphcFIUwz1RVi2TDeIwmJeuAt3HhJZH3vBAq877YqpibcGcwpWFsGDJBQQGI
         gp3odMjce4EgaoPYz4DWfexUHOewu9FWRSHHFAMJeinPl/L55LCFRK8oY47fmeIBpPGN
         bCFdWVaSnE4pldMYk0H1DlZB7s1aBApXdAHC6vYcL5Ww5dP+FiNl2IdwJVsOmekDkpOO
         lXszh6cM//cRWcTI5olxcQCKqS6UWAd+LVNi23ys8DVrOL5Hfz+kBSL1DJPOUVY1JsFO
         g9ap90ecc3J9Z5lOe4US5CiNgdyki/Z1sQ6k8bSpvtVu2+EzND/SJXXcPR9bdZeq/8me
         D+Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244128; x=1698848928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KBK3NZC+n7aQ9gEOFAwoNpYjPv+cjuqYwdG+XSaoH8=;
        b=GqqQTjrkotZAU5nwBQPtOSL2GdW5t6oVXTcrXX8n5AEc9SFfm3NtYMCefwTphU3dVM
         Ip/N+0q0A2ikFSx79V2O7YUPc2gYUMxgDqPjBP6cju61ZrvwvuQctJs155JLrwCslz84
         9eZ23QJlWHyprXx9yliqvmK7/dSjSCLg2/8TJ1N5OrZ92V11WJvKvPsAYtcJ6DvR2iwe
         +riA6SUdG76tLTLux+iS42+FbcTYEEMi9iODIKiIRQkwLF450UPpHmFFZSiL9quB+kNz
         35cT1/ZRe2Ug0kN6o/paluK4dFPJadbCgoIFhUxDj+0Qxq/mnsBIvr+SfPOMu113EhPe
         Ntxg==
X-Gm-Message-State: AOJu0YxpSO868+8dtnyXA0WByM0gZmlpv4+i26NAWWOfcfwZAAcPN4le
	sw3Emnd/dXFrwOcSHUMewoPiFQ==
X-Google-Smtp-Source: AGHT+IHf5xLTf1KfVLoRMBRais+yDi8I/s1NVEGKVd+AFMTt9BY+nGX8/ulLd9cgkH/b1pX/mifhiw==
X-Received: by 2002:a05:6a00:2308:b0:6be:367a:2a71 with SMTP id h8-20020a056a00230800b006be367a2a71mr15594745pfh.16.1698244127853;
        Wed, 25 Oct 2023 07:28:47 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id g2-20020aa796a2000000b0068ff6d21563sm9817411pfk.148.2023.10.25.07.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:28:47 -0700 (PDT)
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
Subject: [PATCH 2/3] of: property: Add fw_devlink support for msi-parent
Date: Wed, 25 Oct 2023 19:58:19 +0530
Message-Id: <20231025142820.390238-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025142820.390238-1-apatel@ventanamicro.com>
References: <20231025142820.390238-1-apatel@ventanamicro.com>
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


