Return-Path: <devicetree+bounces-35815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4FA83EE57
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 727EB1F23072
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 500E92C68B;
	Sat, 27 Jan 2024 16:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="OLFUkwd5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2FF2D051
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372312; cv=none; b=iXT8vqkAjO0OK0Z4L3p5qLTqSKDBuTe2ylKIe8qHr2KtperF6KLTwCMFbviuSpWbTqWPjlwIyOXp/vDqSw/Fu5aCfDcZCJdJJo92XjDf1LzIA9UU4ybb/eUMuiZq3u7h5OR2OoA9c9SVFFx3W2BlHgOhgm1+0rYSTr+d7/sTQSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372312; c=relaxed/simple;
	bh=eJFuo3cIfXEq1mEON0RCgiaWMZ23JLuACI8xiBlZ4CY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lQsKKCcSlWGHHOcwqgCIpziXGIKx2+Zp7F/Ri36N8wA0URNBCL06A/7BGfnw9wVm+G/o73qjQgTQORlpOKr25vjw2vt8jIJO31EFcXo8wLzACCE9oLuIdpVrtFrPMz+tS+DQQDslbcRESVX6WLwaXDh9kwgEpr8q7BprMtoN3zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=OLFUkwd5; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1d731314e67so7038535ad.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372309; x=1706977109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gio4VcisYA6evHi9fLFTB/NsIADoYywgfT0MwGlZzIc=;
        b=OLFUkwd5v6tkfaultzA8WwqEMA3GwD6QeZUFT8YUzgO1ZY7XS34jIRPfoDVfXTNek/
         tAbd/n4kTnjhZWXHVw7nAwPgyIogameaQYLn3NbPO9QglqvkTMKlYbYppRXu6rD0CHKr
         XnDiIsa8jfQShhMkcweTg4NpTuN2l8Okz+urrnttE2ec3AlUwgckyCAUE/f83DvOvHCO
         tQhqBepp4RRU+BNHmWoUuI9/4xahnS7CE9qScsmtg94DSWXSXLWdSFMPiTJV7tPgJDPL
         ymE1PTE/g7q6SAgeMXLCUsyWje4GgZXKNYG47nq4N0z6SdbvCD0WLK/uacCnRMMK5x0B
         FdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372309; x=1706977109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gio4VcisYA6evHi9fLFTB/NsIADoYywgfT0MwGlZzIc=;
        b=dDKcFAeNmRP3KlTGFfO21O1KxmpgyAAnDfeAvCzipTfTCh77Ib4cbx4v7LVrWbPt6C
         s5gWOta2r3+DCk9yfCrk9WbCIQi6UILvKqaW233Nwrr+MqZt8rW5wCpudkY34Zx11L4p
         G7kiUcAy6ifM35yVgIZBqECNXTiyJDZxzpAzwBDH+XT4Vem7BC7P1Hq4BLnlEk8C/IHn
         Y6P4rU7Te/pDrPTlZ+5vW5CKIsBSfNUG+5+aexG/6xKjgPA8fbNnZ3JppoiGawObykSG
         bGACHGAHrBJnFTd+5wQr/tXAINDZK6aQ/gf9esmN/Q6tW9DKCeWxNF+KW9K0BhaKyJ+B
         fGGw==
X-Gm-Message-State: AOJu0YxWSe9lZ4E4UN/US7sLGVY3M2dIklbJkblGBMAlL5WDlUWPnZdW
	eXrDncrGxwSnLzDMFclTDwL2LngnCcx5dTS2llm2hq7yG3dikGPcsAt7Upui58M=
X-Google-Smtp-Source: AGHT+IED/6ZIyLe42SYcWyw5qvmxNb89PVkJ7Cc0/TjAs0f65nBH0WO/WCelT/RErST/4ZIoCKlTJA==
X-Received: by 2002:a17:903:1c3:b0:1d4:326c:1c89 with SMTP id e3-20020a17090301c300b001d4326c1c89mr1195988plh.10.1706372308671;
        Sat, 27 Jan 2024 08:18:28 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:18:28 -0800 (PST)
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
Subject: [PATCH v12 02/25] genirq/irqdomain: Remove the param count restriction from select()
Date: Sat, 27 Jan 2024 21:47:30 +0530
Message-Id: <20240127161753.114685-3-apatel@ventanamicro.com>
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

Now that the GIC-v3 callback can handle invocation with a fwspec parameter
count of 0 lift the restriction in the core code and invoke select()
unconditionally when the domain provides it.

Preparatory change for per device MSI domains.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 kernel/irq/irqdomain.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/irq/irqdomain.c b/kernel/irq/irqdomain.c
index 0bdef4fe925b..8fee37918195 100644
--- a/kernel/irq/irqdomain.c
+++ b/kernel/irq/irqdomain.c
@@ -448,7 +448,7 @@ struct irq_domain *irq_find_matching_fwspec(struct irq_fwspec *fwspec,
 	 */
 	mutex_lock(&irq_domain_mutex);
 	list_for_each_entry(h, &irq_domain_list, link) {
-		if (h->ops->select && fwspec->param_count)
+		if (h->ops->select)
 			rc = h->ops->select(h, fwspec, bus_token);
 		else if (h->ops->match)
 			rc = h->ops->match(h, to_of_node(fwnode), bus_token);
-- 
2.34.1


