Return-Path: <devicetree+bounces-192930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C77DAF88C0
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D374917BFDA
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C9D8279DA7;
	Fri,  4 Jul 2025 07:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="RK6i798o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF7B2798EA
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612855; cv=none; b=CctPOZt+oH0kWwu5IvkiL72CP2lnYGk2TfesFzo2MXG/6/SzDKogxQebf6Uw0DRYzu2Qbdq3EmZTgVdywefXJW4Vc/Rmcy0Ktcsb09CAaVluMF5ziCSiSfTRe8hCHq+ihpQha73REilCsROrDp6+Ua41OeODo3Os++L+HIyTvm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612855; c=relaxed/simple;
	bh=uLkW3DQcKIIgVHib4AKQIVSEPy4uT4MPjoilFNj5tRA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j1dXNp7R6dtcogjaPvg5FKfeMohl+dbMMy3gqGLSo1j97ZqVl+5rDiBdmyD7PZu5Lek77ppfQ2DXdEFKVQJr5zT+25alOVw0c7kzBLTvEIrVhOU+gbL+DIelxXwZHA2nHrlz8IM1AXbzvg2WpT6fIN0ZvyHknvKMAFYwVEpSRYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=RK6i798o; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-23c8a505177so507405ad.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612853; x=1752217653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yiu9LW4OQPcl48oQrH2DU+mLfm2FHbXqcRasNtW9C8A=;
        b=RK6i798oHw38np0BJcviII1esSH97BpY0O50SqJ+OZ1GawlTa3WR3pHqgsQMa6pkEh
         8198kOCp/kdwVgAztz43Zn2vRPXVNEbUcv9TwlYharKOpR0zTP+d7K2xtJ/Uz54j4znx
         P8DSXpMV3usj0Wr29+NMXm8EWzIXsTX37V5YUQ2cILMXu6EQRk+voQb77D6VjeJ5Yt6I
         ZRPhXoOpQiypZ6SwEzeKctrZRHFfqbinRVQOFDLoB+h6ASlHT6/71CkwdnGiBwNM/XWC
         A3rGbmnij4m8gUX4xkabQO2lYSI6CsFbhaDjpaXdKoTMn44G3FmDUUm/O4iIm9cpizk0
         txGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612853; x=1752217653;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yiu9LW4OQPcl48oQrH2DU+mLfm2FHbXqcRasNtW9C8A=;
        b=Xs9NZJfpp8CYqiXDeAADvX5dlya7E96sEPM2bxEmEf7au7hmt/N3Dxh/RGGBadsBrm
         3lo8dBS20HLD3gQjj3ElAqP5AuhLvB3z5GsR4IcMziqIQ5KwJtmIdVQsSCwGH3GShY8t
         Df/TiVbjWGzGzTLlzoSxJOYci9ep1lJS06XEaBaj6W4xRWTBCgl+/caSfCtFmB3yXGq+
         iOXxFiqhPwtwZrGBbPMm5yRsliAVjP851mZ3SosXul8jK1YNskousa4LLdN4X2roNMzQ
         BaqE/sQH6YHKjHhPzSg7kzf+EK+2bKJdntH4OppZVq2jZSuoLPcUV8yAnARhUzUTPopR
         /LOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJ9gXH0HBA3XmhFA8mhyuFKndvm2nt0fBvT6xYKwWIo16QEK6PkSpJKaEvuuPMixv09e1InMy7fBR7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq4c/KBhTpsThjXTlhUbfgYrvN+eONO41XnBdsop73ARTAj0ad
	l2HZlU4nEYS6tCjblnSLayZo7+lacESKExM9Dvg2pYZfUzWTvMw1beu4X2d8yZL5kcM=
X-Gm-Gg: ASbGncsQFzIONluG2wnHvHpnm4koivE3eQ+OIbL27xRfVNAEVlgVCzcPw2MfHQ681h2
	ld30yKt4hYNwcbBrjc+hYj9jwF6S7gPcDK5VmXQw65ZuUGYm67VoB1V58J/uEPbfYb5J3wRWELa
	V9ZU9HJlv63ifODNpjmIXAamMxKACZ872AHdUg5yPFMPA1syWDi10c1ycEUIDv675igx85H1gwc
	K7R9jjD11v6Cz+vMeIFwXvq6w4F9iXVXILM2ybDx9I9Pj6OALnZg6B4nDpeAR1Ab6ELbclL8EnQ
	XgmJ5g0/MBI/ppH72rsapU0Y7J+IXHRHyk1jmx8HBDtpI8bVy1Gud95LeviW+VJaDl4Sc5DyVZT
	0lKbhJsWs9UW2JW8KZpecx0XuPA==
X-Google-Smtp-Source: AGHT+IH8K2q+ff9EmJzgqGezoG5ijxAfT3GRB5m50yeRgyCl4S8KgAneBei7J20U/ic7bxWUp8DQog==
X-Received: by 2002:a17:90b:2d92:b0:312:e744:5b76 with SMTP id 98e67ed59e1d1-31aac545a19mr2734380a91.33.1751612852693;
        Fri, 04 Jul 2025 00:07:32 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:07:32 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v8 17/24] ACPI: RISC-V: Create interrupt controller list in sorted order
Date: Fri,  4 Jul 2025 12:33:49 +0530
Message-ID: <20250704070356.1683992-18-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704070356.1683992-1-apatel@ventanamicro.com>
References: <20250704070356.1683992-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sunil V L <sunilvl@ventanamicro.com>

Currently, the interrupt controller list is created without any order.
Create the list sorted with the GSI base of the interrupt controllers.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/acpi/riscv/irq.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/riscv/irq.c b/drivers/acpi/riscv/irq.c
index cced960c2aef..33c073e2e71d 100644
--- a/drivers/acpi/riscv/irq.c
+++ b/drivers/acpi/riscv/irq.c
@@ -115,7 +115,7 @@ struct fwnode_handle *riscv_acpi_get_gsi_domain_id(u32 gsi)
 static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr_idcs,
 					       u32 id, u32 type)
 {
-	struct riscv_ext_intc_list *ext_intc_element;
+	struct riscv_ext_intc_list *ext_intc_element, *node;
 
 	ext_intc_element = kzalloc(sizeof(*ext_intc_element), GFP_KERNEL);
 	if (!ext_intc_element)
@@ -125,7 +125,12 @@ static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr
 	ext_intc_element->nr_irqs = nr_irqs;
 	ext_intc_element->nr_idcs = nr_idcs;
 	ext_intc_element->id = id;
-	list_add_tail(&ext_intc_element->list, &ext_intc_list);
+	list_for_each_entry(node, &ext_intc_list, list) {
+		if (node->gsi_base < ext_intc_element->gsi_base)
+			break;
+	}
+
+	list_add_tail(&ext_intc_element->list, &node->list);
 	return 0;
 }
 
-- 
2.43.0


