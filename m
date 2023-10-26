Return-Path: <devicetree+bounces-12178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B507D83FA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:56:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8AB32819A2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1543A2E407;
	Thu, 26 Oct 2023 13:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890EE2E3F8
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:55:54 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40564D55;
	Thu, 26 Oct 2023 06:55:53 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1d544a4a2f2so517460fac.3;
        Thu, 26 Oct 2023 06:55:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698328552; x=1698933352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dS2bQbsQIb8CArWmGPDMcF+yvzLcVqjiAEJzVYwbS4Y=;
        b=WXv98GxHzt2vF0zr3O1BOVadpHB2m/CMItumCtVwmLY03ZCoBCumdZFuo5RQTtGDXX
         3ufMt0KAAtGtMntMQ3dYWSNtE5TkOGDVay9n0Zvu3CJsb5k4BObx1KNzkupVfCbHOJHc
         tdsO9teLmm2wauB53lhQvOcK0rVhRYFieXtorEUK6xE1GExJDUcd3L4hVX2uKPpy9+Ra
         8gtGKhqVQbqQLqYWvgIr0kuvSB/bF8e/LTMYH6rqAfxZ/n14uu91vn7KToGuhHkN/eNj
         orWkaPoMsQY1puYYJjdvDyWTuRbmfj7lZqpuVNrLu87OTr2U/aT6zVaEBZqCP0qlGHIu
         +hBQ==
X-Gm-Message-State: AOJu0Yw7tRC1bfekSbi+Rhlm/TWIkSUc1pAPwz2N3XYHdwGgKpbgd13b
	8Pbyz7FVAa98b/z3aLe7kQ==
X-Google-Smtp-Source: AGHT+IHgf8CUyKOpw+cAs/S6m6eInBTBXSRM7rx9/VPe+g8iy1ZVcIgDIaA3FB/mqMoSQ4Z1mFgJTw==
X-Received: by 2002:a05:6870:7a1b:b0:1e9:f0be:cbbe with SMTP id hf27-20020a0568707a1b00b001e9f0becbbemr24245194oab.9.1698328552259;
        Thu, 26 Oct 2023 06:55:52 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z7-20020a056870e14700b001c5a3e31474sm3046274oaa.45.2023.10.26.06.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 06:55:51 -0700 (PDT)
Received: (nullmailer pid 3566795 invoked by uid 1000);
	Thu, 26 Oct 2023 13:55:50 -0000
From: Rob Herring <robh@kernel.org>
To: Frank Rowand <frowand.list@gmail.com>
Cc: Herve Codina <herve.codina@bootlin.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] of: address: Store number of bus flag cells rather than bool
Date: Thu, 26 Oct 2023 08:53:58 -0500
Message-ID: <20231026135358.3564307-2-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is more useful to know how many flags cells a bus has rather than
whether a bus has flags or not as ultimately the number of cells is the
information used. Replace 'has_flags' boolean with 'flag_cells' count.

Signed-off-by: Rob Herring <robh@kernel.org>
---
This series applies on top of Herve's[1].

Rob

[1] https://lore.kernel.org/all/20231017110221.189299-1-herve.codina@bootlin.com/

 drivers/of/address.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index d21a3b74ac56..997f431af165 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -45,7 +45,7 @@ struct of_bus {
 	u64		(*map)(__be32 *addr, const __be32 *range,
 				int na, int ns, int pna);
 	int		(*translate)(__be32 *addr, u64 offset, int na);
-	bool	has_flags;
+	int		flag_cells;
 	unsigned int	(*get_flags)(const __be32 *addr);
 };
 
@@ -370,7 +370,7 @@ static struct of_bus of_busses[] = {
 		.count_cells = of_bus_pci_count_cells,
 		.map = of_bus_pci_map,
 		.translate = of_bus_default_flags_translate,
-		.has_flags = true,
+		.flag_cells = 1,
 		.get_flags = of_bus_pci_get_flags,
 	},
 #endif /* CONFIG_PCI */
@@ -382,7 +382,7 @@ static struct of_bus of_busses[] = {
 		.count_cells = of_bus_isa_count_cells,
 		.map = of_bus_isa_map,
 		.translate = of_bus_default_flags_translate,
-		.has_flags = true,
+		.flag_cells = 1,
 		.get_flags = of_bus_isa_get_flags,
 	},
 	/* Default with flags cell */
@@ -393,7 +393,7 @@ static struct of_bus of_busses[] = {
 		.count_cells = of_bus_default_count_cells,
 		.map = of_bus_default_flags_map,
 		.translate = of_bus_default_flags_translate,
-		.has_flags = true,
+		.flag_cells = 1,
 		.get_flags = of_bus_default_flags_get_flags,
 	},
 	/* Default */
@@ -826,7 +826,7 @@ struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 	int na = parser->na;
 	int ns = parser->ns;
 	int np = parser->pna + na + ns;
-	int busflag_na = 0;
+	int busflag_na = parser->bus->flag_cells;
 
 	if (!range)
 		return NULL;
@@ -836,10 +836,6 @@ struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 
 	range->flags = parser->bus->get_flags(parser->range);
 
-	/* A extra cell for resource flags */
-	if (parser->bus->has_flags)
-		busflag_na = 1;
-
 	range->bus_addr = of_read_number(parser->range + busflag_na, na - busflag_na);
 
 	if (parser->dma)
-- 
2.42.0


