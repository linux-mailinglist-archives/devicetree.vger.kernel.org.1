Return-Path: <devicetree+bounces-11032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BD87D3D9B
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:28:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FFAB2815D2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8389208D7;
	Mon, 23 Oct 2023 17:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="BEMqgJW1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D171E51D
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:28:23 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E961D10E2
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:28:20 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6b44befac59so3342993b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698082100; x=1698686900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KBK3NZC+n7aQ9gEOFAwoNpYjPv+cjuqYwdG+XSaoH8=;
        b=BEMqgJW1giecH+Qg+10tx56SP5QCEtK0Nj3o9nQbSnTLH3aDdpA84jT10NNlE4YAy9
         UdLspmpuLRQ+A8LWjghcAVNwmJhPpr07q7TI9aMrbqThlqnaoTEFeAuThgRyqfHdgMQN
         ttyhRajUhTPlitVuNIr81zsdVkNour8DxeTTdrWK08atoSFJtgMgUGUUQhqpwZmtmETD
         Xa3BZ+/2SiXpozlN+WBRYpzD0isKHVQ+6j8Y5sbEBWH51ZbHFp2DGw5/Iv0ReMxJjAfo
         eyW+e/aGa8ncH+3GoCPyMiMqpBJNxLrYFR8pYrexOO9bMvbYjq47PNAbCpXHLi4c6oqf
         gq0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082100; x=1698686900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KBK3NZC+n7aQ9gEOFAwoNpYjPv+cjuqYwdG+XSaoH8=;
        b=YVs8IEs7Klk4KpRMglJy8Om5NTjeLdecLjKvMv4zXb6a2o4FBrWLI6mn/I7h1P7IxB
         hfT2R0pdEiqs3PGbP+79znE9WMwxsEx9sEfLkEePCyGGGsDBRdbPRIrpv+ivLbsiMWdu
         yh6bMS/SQIO8nme63y7D2RiV5Wvnqh09hwW1OUumYe/CoUjF3xftwn4FACJEGFFdhqxP
         9+6bNHKHW/8ZvpBNXr81ADHI6bnRo0fhA1SK92u4UcxI3rYR8nkVJWjOO0Km06Ia/joT
         56L2b/G5Cj6F5/CgPM0aNM59wlbBdwR0wL+23L5HyE3iNKYS9fgxVnFFZ8hzGzruST52
         pxqg==
X-Gm-Message-State: AOJu0YwHnSEs1fHDPW46/9aPUrceG9MoY+Ar1LYiaTpikXEUtjYERVQt
	72jU+jDjNncjWIvRI+Hl6vmOXw==
X-Google-Smtp-Source: AGHT+IEhamlczERwlzDzetrJnAlZ5sdu84K72HLg62pHuk1whfdxvOWdFru0gvqURGDGnkMiM0yB5g==
X-Received: by 2002:a05:6a20:4323:b0:15d:1646:285a with SMTP id h35-20020a056a20432300b0015d1646285amr279865pzk.21.1698082100040;
        Mon, 23 Oct 2023 10:28:20 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.9])
        by smtp.gmail.com with ESMTPSA id g5-20020aa79f05000000b006be055ab117sm6473194pfr.92.2023.10.23.10.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:28:19 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
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
Subject: [PATCH v11 02/14] of: property: Add fw_devlink support for msi-parent
Date: Mon, 23 Oct 2023 22:57:48 +0530
Message-Id: <20231023172800.315343-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023172800.315343-1-apatel@ventanamicro.com>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
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


