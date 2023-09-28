Return-Path: <devicetree+bounces-4048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1734A7B1261
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BD84C2820B8
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 06:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D61C1A5AE;
	Thu, 28 Sep 2023 06:12:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A06D4403
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:12:41 +0000 (UTC)
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B1CBAF
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 23:12:40 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-3515deaa7c1so10462025ab.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 23:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695881560; x=1696486360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVI3E1Wd+EtlgSmILdTG/g7O9SZ2R+Drh6P8ny9RejA=;
        b=GHaRpvckD+TRFbmfY/KuDyJXXCDwLYQT++2vWddGrAih4Y4o5N+OFRb+zwkv947O8V
         5m+XPvd1rC/zA+6SwD1+oFBVQVzwsN9QWBTGlOiRsMYJu/JBWc+lUOm5/4v71RBlAtKq
         vxb4YH8Wl3qB+HSINg5X5ClX3JxzZXu4BlBIrY9KfGPioSkyl3OkyCGVj0T/6+vzdfxk
         aAmtgZSvRgRsr2wD0WUrg7XxsMQFzf/oxxv/OblxkHjnJA6BoSRLBZTmMgLOn/be29Fy
         X8v2ojR9CFd5IMfW5dU8saEbmYeZynhUQT4JWph3OKtpxyHyK+rAeKelpdEu9DDvdXzf
         bgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695881560; x=1696486360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVI3E1Wd+EtlgSmILdTG/g7O9SZ2R+Drh6P8ny9RejA=;
        b=qFOuJnwQylQNEMu+SbxTwt9/VcOOVTPbyNEs3LWm2z0Yuy+tMQ6hGJf9VUex5MuRHT
         TEjlI2QHYRigOvBhOMMkEk96cPun3nyQ567GRB151/4fSGd4B7GQpRGK3aG6Lrych0tT
         uxlL0hCKeLMur/YPM7FeewvY5bV3YtVO+8bVsd8UHTBDuppCns01HL7n/Z7cO3h/8bu0
         8bhQHLcE24ycLGpWS5KaoybKyce2t+w+CEyTLc+zNcA7d+MNYJjfbAevNwSxqBIKnirJ
         iEn1JkiJkuqcdEYugoueJ4u9E6qEeUyi7DnWSCJpU3v7QcGdHG6aonLYiuJeiWJG83aH
         XCqQ==
X-Gm-Message-State: AOJu0Ywsp8DCr0aX701XfTBSwNxW2dR0HyPmazU0QqcqP9JcqIXYFfED
	BpN4TYpQE/mmzRKHlgkGm9k0tg==
X-Google-Smtp-Source: AGHT+IHxgTAD2C+h+2iRuALF/AignSrzhlWjU3CVwyaBIt0/qhlbz/Hw89uJisFxnDDxg1j5YAH3aQ==
X-Received: by 2002:a05:6e02:1c8e:b0:34d:ea35:842b with SMTP id w14-20020a056e021c8e00b0034dea35842bmr279993ill.27.1695881559675;
        Wed, 27 Sep 2023 23:12:39 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id x6-20020a92d306000000b003506f457d70sm4774467ila.63.2023.09.27.23.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 23:12:39 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v9 02/15] of: property: Add fw_devlink support for msi-parent
Date: Thu, 28 Sep 2023 11:41:54 +0530
Message-Id: <20230928061207.1841513-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230928061207.1841513-1-apatel@ventanamicro.com>
References: <20230928061207.1841513-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This allows fw_devlink to create device links between consumers of
a MSI and the supplier of the MSI.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
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


