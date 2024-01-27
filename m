Return-Path: <devicetree+bounces-35816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D05083EE58
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:19:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 117E51F2317C
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B2E2C19C;
	Sat, 27 Jan 2024 16:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ToMaSUKt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461C62C68C
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372316; cv=none; b=K0Gkgc9GT1D/MgwJxqM1YXt9ldwP+zMZlf6GtlZlVQL1Zu4EBU/RKl1ElMCVxI7j+eSGiJnUJ6UZnsy9y6umG61RvGwsDvSJORTsXtSRddrE38wl5Vsk+B/rnYcUC+WuWbtsSZrrEiGwQTVxtW7eqq6DUZXCHZtIh8rzCFWp6IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372316; c=relaxed/simple;
	bh=lErh7pLIs8JPN6EgGGGGO8yVQ1jQjwDvsxftt0cROB8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mOWVY2dxXmEnNQYWXfs3qe+pAy+a3bg4Uc1jNPGm/gcH2KZaOlsIqNd/avCYAt/o/Zx2AMEO4XVUnKb6GuJJDJrbnVEtNM7a+Jt25Afy0iZTPaJBVdvqSVOpsI4+mNoVqkFyczGd4S1xwy6rPW/MlTHP028bx4Gt6AzpuJALYOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ToMaSUKt; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1d51ba18e1bso14872135ad.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372314; x=1706977114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhYUMfVc19qKu3HnThUsAONLPR7ur4VXlw7AfNK85R4=;
        b=ToMaSUKtLffxBTZort5crYfZxbT4CKkzIOLzJO+yZ34eVGxUaZpm2o9TuYOks8K2HN
         fVVEoH8oX6dhumhpSR2tmcKzgAficmfkoGxsr+u6Pk4a4CHlPBEjun+d7Q8FMDuZAeg0
         /VbHWDOiGWtCWQbJASq4RNL8fI2DfGBHt7MEU3kEEM0+dUWSwfzFQ46tkCuMzaWpQl1H
         H/dEWxZuieuTmLyLJXv4Wc3nKGcJTjP7ROIovPaBb2ArQln/suE1GyvAd4efxVC5yYuT
         p+1eTflAIVTqhRYwbzjFWnfsapiQ7cgXvPkG/AX9MM2kizY5AX7eeIW7rQYzQSP4HDeF
         7/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372314; x=1706977114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhYUMfVc19qKu3HnThUsAONLPR7ur4VXlw7AfNK85R4=;
        b=IiNzAVOIYQhK5kujTELe7pMouaCSRGvMCxpMeD3xSIXbZbmFaTxDKFPbl4Ik3V88T7
         DECAm0OEUZmehI5KUMbiwhF0bdo0he8TtVLSgEjZBvYWlCOcAbQFD/V8TdNcZIp7MvJS
         bVSW9utZBNe0/rtr0R1UX8ylmflMEHAMcnRioUnntB8JLncg6yrl9JzgdhwgzmioMRZt
         ThjTdG7k7KAtMotghmXdFuCRv046FPlOcN6fk3eI9Av72W1ktPqmvX06wO2+ngRrRfhU
         NdhlEx4mvK+91HFeqOtq9Dlu9vXu4e7CRPfQx53glRdZpD67YSaUt7O6FnDwjfwmL6wp
         vPvA==
X-Gm-Message-State: AOJu0YwCxwQ+Y9xhlKFyDtiGyKKu9SsTnAG9QvTRwlBl5CR4KKUCxq1G
	WOSNk32xmIx9xIvBRhrmb7qHUZrnFOowNsxiHDFqG+K46gM0msub46zSXiRpGLU=
X-Google-Smtp-Source: AGHT+IHtY0P//woqQufFCQxfwqYt9nRAYpMpLB6XG5TxI8TAX8TT9FgCwM/axEzX7TjcSLauiPb5WA==
X-Received: by 2002:a17:902:d4cf:b0:1d7:8237:f770 with SMTP id o15-20020a170902d4cf00b001d78237f770mr2153923plg.17.1706372314502;
        Sat, 27 Jan 2024 08:18:34 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:18:34 -0800 (PST)
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
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v12 03/25] genirq/msi: Extend msi_parent_ops
Date: Sat, 27 Jan 2024 21:47:31 +0530
Message-Id: <20240127161753.114685-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127161753.114685-1-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thomas Gleixner <tglx@linutronix.de>

Supporting per device MSI domains on ARM64, RISC-V and the zoo of
interrupt mechanisms needs a bit more information than what the
initial x86 implementation provides.

Add the following fields:

  - required_flags: 	The flags which a parent domain requires to be set
  - bus_select_token:	The bus token of the parent domain for select()
  - bus_select_mask:	A bitmask of supported child domain bus types

This allows to provide library functions which can be shared between
various interrupt chip implementations and avoids replicating mostly
similar code all over the place.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 include/linux/msi.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/msi.h b/include/linux/msi.h
index ddace8c34dcf..d5d1513ef4d6 100644
--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -572,6 +572,11 @@ enum {
  * struct msi_parent_ops - MSI parent domain callbacks and configuration info
  *
  * @supported_flags:	Required: The supported MSI flags of the parent domain
+ * @required_flags:	Optional: The required MSI flags of the parent MSI domain
+ * @bus_select_token:	Optional: The bus token of the real parent domain for
+ *			irq_domain::select()
+ * @bus_select_mask:	Optional: A mask of supported BUS_DOMAINs for
+ *			irq_domain::select()
  * @prefix:		Optional: Prefix for the domain and chip name
  * @init_dev_msi_info:	Required: Callback for MSI parent domains to setup parent
  *			domain specific domain flags, domain ops and interrupt chip
@@ -579,6 +584,9 @@ enum {
  */
 struct msi_parent_ops {
 	u32		supported_flags;
+	u32		required_flags;
+	u32		bus_select_token;
+	u32		bus_select_mask;
 	const char	*prefix;
 	bool		(*init_dev_msi_info)(struct device *dev, struct irq_domain *domain,
 					     struct irq_domain *msi_parent_domain,
-- 
2.34.1


