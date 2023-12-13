Return-Path: <devicetree+bounces-24947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D24F8811BE0
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 728B6B20F39
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E1D5C07E;
	Wed, 13 Dec 2023 18:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eSF3iGXX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69C62DC
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:01:37 -0800 (PST)
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-7b6f4ee4f7fso158427439f.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702490497; x=1703095297; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IE6mE6pjbGov9LkkEhCEwGDUbXlSJbMapTwV75Z3EGc=;
        b=eSF3iGXXOC2kQ3n5Nvjxs6TXImtBZ+93Z/bZSIAOBmGzEVcfVUtzn/EVhDmjEsflaq
         MZmH+PNqez1eEtLBjr+QZtLdrvyS19dkt6p8/fahgjp3jxHcDCYZUNQo9zxtMR7vDHe5
         Bncbrq6uoJ/qVNICvi3OH76+02VUHERHM3VFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702490497; x=1703095297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IE6mE6pjbGov9LkkEhCEwGDUbXlSJbMapTwV75Z3EGc=;
        b=odW0T3p+90Y0KnDqhkRQuaJBXDrz6qfbAMcrfdZlwZWtJ4EnXi3ZuRULY5ItH1C5qp
         29Qfz6t79+oo3q4e2h9WgEexJQusMw6dof70+flTXpgr6A1BMS82RX6ddqdg+ikENVST
         t72OclwjMFVt7UlWuIHDP3OfAkByVMSbd5OOUvFi5A9su7s22LHjZkzsXs7E5c6YUvt1
         JsaXAKe0dyAysCe+Sn+jtG/dgadbMxL7/TZghLHO+P7OKsknnMqBlEmqpgWy3Qy18Qp+
         MIlLVDDR4ZOYd1thICesCn0Vew2+Ql8IarxJLrVyHUhq+WO23AD0mtL+3SiZfo8vNnio
         I1OQ==
X-Gm-Message-State: AOJu0Yx+SzRioofC7CJo1aaxuEG2Yv7sfdLtHqm6AWzDnMKKmLIAaBIU
	iW3Sz6IhKFH7daCr0x2K01k8hoUwIM5lXxwXanU=
X-Google-Smtp-Source: AGHT+IFwHjqRnv3J268uplXRN6NW6wDD9LjTDk7o/KlDkWoKhoyaIiSuqY/p3e4OsbxoyoSGIJpY3Q==
X-Received: by 2002:a05:6e02:b45:b0:35d:59b3:2f86 with SMTP id f5-20020a056e020b4500b0035d59b32f86mr7479369ilu.27.1702490496668;
        Wed, 13 Dec 2023 10:01:36 -0800 (PST)
Received: from markhas1.corp.google.com ([100.107.108.224])
        by smtp.gmail.com with ESMTPSA id o28-20020a02cc3c000000b0046671f9717csm3161206jap.109.2023.12.13.10.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 10:01:36 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Raul Rangel <rrangel@chromium.org>,
	Mark Hasemeyer <markhas@chromium.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v1 3/6] of: irq: add wake capable bit to of_irq_resource()
Date: Wed, 13 Dec 2023 11:00:21 -0700
Message-ID: <20231213110009.v1.3.I29b26a7f3b80fac0a618707446a10b6cc974fdaf@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add wake capability information to the irq resource. Wake capability is
assumed based on conventions provided in the devicetree wakeup-source
binding documentation. An interrupt is considered wake capable if the
following are true:
1. a wakeup-source property exits in the same device node as the
   interrupt.
2. No dedicated irq is defined, or the irq is marked as dedicated by
   setting its interrupt-name to "wakeup".

The wakeup-source documentation states that dedicated interrupts can use
device specific interrupt names and device drivers are still welcome to
use their own naming schemes. This api is provided as a helper if one is
willing to conform to the above conventions.

The ACPI subsystems already provides similar apis that allow one to
query the wake capability of an irq. This brings feature parity to the
devicetree.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

 drivers/of/irq.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 174900072c18c..633711bc32953 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -383,11 +383,39 @@ int of_irq_parse_one(struct device_node *device, int index, struct of_phandle_ar
 }
 EXPORT_SYMBOL_GPL(of_irq_parse_one);
 
+/**
+ * __of_irq_wake_capable - Determine whether a given irq index is wake capable
+ *
+ * The irq is considered wake capable if the following are true:
+ * 1. wakeup-source property exists
+ * 2. no dedicated wakeirq exists OR provided irq index is a dedicated wakeirq
+ *
+ * This logic assumes the provided irq index is valid.
+ *
+ * @dev: pointer to device tree node
+ * @index: zero-based index of the irq
+ * Return: True if provided irq index for #dev is wake capable. False otherwise.
+ */
+static bool __of_irq_wake_capable(const struct device_node *dev, int index)
+{
+	int wakeindex;
+
+	if (!of_property_read_bool(dev, "wakeup-source"))
+		return false;
+
+	wakeindex = of_property_match_string(dev, "interrupt-names", "wakeup");
+	return wakeindex < 0 || wakeindex == index;
+}
+
 /**
  * of_irq_to_resource - Decode a node's IRQ and return it as a resource
  * @dev: pointer to device tree node
  * @index: zero-based index of the irq
  * @r: pointer to resource structure to return result into.
+ *
+ * Return: Linux IRQ number on success, or 0 on the IRQ mapping failure, or
+ * -EPROBE_DEFER if the IRQ domain is not yet created, or error code in case
+ * of any other failure.
  */
 int of_irq_to_resource(struct device_node *dev, int index, struct resource *r)
 {
@@ -411,6 +439,8 @@ int of_irq_to_resource(struct device_node *dev, int index, struct resource *r)
 
 		r->start = r->end = irq;
 		r->flags = IORESOURCE_IRQ | irqd_get_trigger_type(irq_get_irq_data(irq));
+		if (__of_irq_wake_capable(dev, index))
+			r->flags |= IORESOURCE_IRQ_WAKECAPABLE;
 		r->name = name ? name : of_node_full_name(dev);
 	}
 
-- 
2.43.0.472.g3155946c3a-goog


