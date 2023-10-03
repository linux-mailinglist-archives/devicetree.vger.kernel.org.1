Return-Path: <devicetree+bounces-5333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4647B5FFA
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:44:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0A0A82816B3
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 04:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0A31113;
	Tue,  3 Oct 2023 04:44:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A9610FE
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:44:46 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 226ABA4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:44:44 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-692d2e8c003so2645062b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 21:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696308283; x=1696913083; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KBK3NZC+n7aQ9gEOFAwoNpYjPv+cjuqYwdG+XSaoH8=;
        b=A+C8NvPobBJU4BzQY8nusqME44W3wFPQ0giTDNyX8c1ss4Agalg9UoIUWbSvetO+RI
         fWgmgNwbC/Ig9WZ8J8H7p0IPnw0uQ/Eea3ByPzWrQD+ug6UFf4SuYpgiYCoigFJu3V6m
         WAYkNacl9ewRKOc4lE4ZLRuGwVoIOQpaT4qvljvTGJP9TfzSIuELoDgtC1NOVE1XLMm/
         0TsRFwuuZI6pqnKeTraVzTykKlmhI+YTGVXwgpODOjS6MvwwHeZ4VstdBBz5LQ+ajFR0
         KaFx2NzXqHZvnrsc0pH3DwczXvcvFoPHFz33E1WUoRyygYItiKO+UvQJdY6lO2Mwl//l
         ZNDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696308283; x=1696913083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KBK3NZC+n7aQ9gEOFAwoNpYjPv+cjuqYwdG+XSaoH8=;
        b=Ir2pruKc1cDkH3WKtycItHIDhbv0mAOici8m/F5I2MgmgRm9VZD+/IlJXUtMKOyaH8
         w2/H3x5aXvP3jEZaaoAhYReafabcEHLhdAoRV8vJ+2H+ETQfOrlQpT6AdSAbKosxhJej
         P3JRMCCaUV5B/5JAMTAhLhUckRNMwyPt7DFAs3gHUS0R0OAIDN0WijfXmAakK30x5EE+
         Sans8Zzh4fRu9vDIhs8sN1vXw++J7WxdndwdP6ZaDI6NS2Oq4CtRxGmIsbV4BnhlhkUm
         Y0xf2UTn6YfwRD4Yg0slmnZ8c0BNlMEeuLnlIXj09JypjcCc2yqKbWucamSFItYe22iy
         LeTQ==
X-Gm-Message-State: AOJu0Yx5h0eDGEmsOpLPU+qo0R3cAO6pGbqZ6rHTRFhkrlmbMg6dgZcM
	mDUdf4UeZSshMMJkVlpuCDBhHg==
X-Google-Smtp-Source: AGHT+IFGg/K6YXM3J+EKrEFvni3eUnfBZxPN5GQXl30b0bUztVZt5cBa2cf9Hxdefsa/91znIXj0mQ==
X-Received: by 2002:a05:6a21:3395:b0:14e:2208:d62f with SMTP id yy21-20020a056a21339500b0014e2208d62fmr2942718pzb.22.1696308283477;
        Mon, 02 Oct 2023 21:44:43 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.132])
        by smtp.gmail.com with ESMTPSA id h9-20020aa786c9000000b0068e49cb1692sm346421pfo.1.2023.10.02.21.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 21:44:43 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v10 02/15] of: property: Add fw_devlink support for msi-parent
Date: Tue,  3 Oct 2023 10:13:50 +0530
Message-Id: <20231003044403.1974628-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231003044403.1974628-1-apatel@ventanamicro.com>
References: <20231003044403.1974628-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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


