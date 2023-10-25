Return-Path: <devicetree+bounces-11962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3607D73A3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:56:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09F2B1C20BDB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672E42E632;
	Wed, 25 Oct 2023 18:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="oRXQvxGF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9C72C874
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:47 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11D0E123
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:46 -0700 (PDT)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 06FAB3FADB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698260204;
	bh=8ZSwQnx25XWx6H9WHSt+QTyzglk67NwsJMp2gzIlTF8=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type;
	b=oRXQvxGFWV+36DVVfwcqEhGl1Xhmyd/NxGQSoAHu7trykUzSe4dR06Bu/BKP9fMRU
	 ZDP69C01hJwKDoSbtRH0xmRQ4NpWCjEFEDMA5eFkW1nvZdPbxDphCivbGdW6WbRgld
	 6Qtd9qhW8Iadt88OZ0UmBq7UI1T8H8vfQOdYpV3bPjLVv3BSyeY8zYFhlHbVYDvrMY
	 zwTqPgZ4UeYtemPIoTFo/wSG5yU/H6HLPSI7x4U/TCaY6FpZSP/rRQzihx27CoTdjt
	 ncthGM88eIqznmrhQa0c/WLbxaN+hWm+B8mTG/jTipPMo7w4yDJP+PFlnwnIoleJ2c
	 SkQ4r5XXLdDJQ==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cc6fa3ea4so1800961cf.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698260200; x=1698865000;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ZSwQnx25XWx6H9WHSt+QTyzglk67NwsJMp2gzIlTF8=;
        b=NDVErtM/KTj0A4+s6nJ4covJQyYg3QyVZG0cGB/3mI0EDREnR3enoRbMlGMC7TVGTY
         +pzg0WvzDms0SlAWw6hm9gLHaRqI6e3sEmYQTOcmdFi20Aimw2Qju3UeZpD2JEbk6HP4
         V15iEcH7Ce97l7vfzocNuZLQgOJYhpUFvTYc0E409yItzp3fXgE1UKb15oSWpB6qsX+a
         J5hQA8ljhypLsPC/udCoyo7cqfkRKmJbEzrywL1+w56qvfeo+tosPWkYXOlEcWsI7AgH
         lvA5twbtgMCmhoFhb8VrxUPcEBPkZdexn5zGqXp0fBdRwEvAh0t4hAkWpHsifir49NZe
         8tWQ==
X-Gm-Message-State: AOJu0YzxzBj1u0Ilbce7tF3MPyjR8LsagulbNN5I6LVMWOITM4vhhwL+
	xcayTKhgkW7BzqHS0b9IRtnWD1cyX01leKeRYHSFD/s4ZfPvJ4UEjE2eJzzDWh3gsfFyT+VTKMx
	1iw9oabqC/42UKb1kw4TjR5BIO3CblWVW4u09MzMiwbOY5fkQCzW3PE0=
X-Received: by 2002:a05:622a:1b9f:b0:417:bd2c:2683 with SMTP id bp31-20020a05622a1b9f00b00417bd2c2683mr17944694qtb.19.1698260200206;
        Wed, 25 Oct 2023 11:56:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJTkG3zv5DTeWRvY1y/BasKIXcM7hXfHiMkDTcbRf8mjI+q0VqgB+zstaBrwJ9z4uKKWXR3bFMed8oDTtI7W0=
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:622a:1b9f:b0:417:bd2c:2683 with SMTP id
 bp31-20020a05622a1b9f00b00417bd2c2683mr17944683qtb.19.1698260199921; Wed, 25
 Oct 2023 11:56:39 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 11:56:39 -0700
From: emil.renner.berthing@canonical.com
Date: Wed, 25 Oct 2023 11:56:39 -0700
Message-ID: <CAJM55Z_U9R6R_t1g5KANV5hQwP91TcHYKGwbnHxXXs5fm0y7Yw@mail.gmail.com>
Subject: [PATCH 2/4] soc: sifive: ccache: Add StarFive JH7100 support
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

This adds support for the StarFive JH7100 SoC which also features this
SiFive cache controller.

Unfortunately the interrupt for uncorrected data is broken on the JH7100
and fires continuously, so add a quirk to not register a handler for it.

Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
---
 drivers/soc/sifive/sifive_ccache.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/sifive/sifive_ccache.c
b/drivers/soc/sifive/sifive_ccache.c
index 3684f5b40a80..676468c35859 100644
--- a/drivers/soc/sifive/sifive_ccache.c
+++ b/drivers/soc/sifive/sifive_ccache.c
@@ -106,6 +106,7 @@ static void ccache_config_read(void)
 static const struct of_device_id sifive_ccache_ids[] = {
 	{ .compatible = "sifive,fu540-c000-ccache" },
 	{ .compatible = "sifive,fu740-c000-ccache" },
+	{ .compatible = "starfive,jh7100-ccache", .data = (void *)BIT(DATA_UNCORR) },
 	{ .compatible = "sifive,ccache0" },
 	{ /* end of table */ }
 };
@@ -210,11 +211,15 @@ static int __init sifive_ccache_init(void)
 	struct device_node *np;
 	struct resource res;
 	int i, rc, intr_num;
+	const struct of_device_id *match;
+	unsigned long broken_irqs;

-	np = of_find_matching_node(NULL, sifive_ccache_ids);
+	np = of_find_matching_node_and_match(NULL, sifive_ccache_ids, &match);
 	if (!np)
 		return -ENODEV;

+	broken_irqs = (uintptr_t)match->data;
+
 	if (of_address_to_resource(np, 0, &res)) {
 		rc = -ENODEV;
 		goto err_node_put;
@@ -240,6 +245,10 @@ static int __init sifive_ccache_init(void)

 	for (i = 0; i < intr_num; i++) {
 		g_irq[i] = irq_of_parse_and_map(np, i);
+
+		if (broken_irqs & BIT(i))
+			continue;
+
 		rc = request_irq(g_irq[i], ccache_int_handler, 0, "ccache_ecc",
 				 NULL);
 		if (rc) {
-- 
2.40.1

