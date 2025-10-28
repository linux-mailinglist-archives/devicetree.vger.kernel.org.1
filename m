Return-Path: <devicetree+bounces-232271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0AFC15FCF
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:56:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF5031AA520F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB9B4347FF9;
	Tue, 28 Oct 2025 16:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gNuUWFVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F40F347FC6
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761670314; cv=none; b=c6ceWXz+wROTQ7yACeZ20pq3qbzOTMevbfyvAUR3+QRRQ/kmGmfMuf9FJYC03kDDKumRo+VURnwR1Rin4BKyjBnWZ0Tk9oIsKR0SOZRRcLt688TVVR/y5ALTUUu0w8eaJrZ8HPLhomTX4JsSXqJD4/vhVgw5NzDpBM2AtfE00yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761670314; c=relaxed/simple;
	bh=8Bofhv76xiZ6SkaSp/xpBcxYedthlmIGe5RQkTkfBLQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iiXkPF13fIL3W8jR6MubNiCWB08cMEovYKq/UuWSMvYqjHlF5EMdSVypzWWv92bcX5KH5kazG/5G/amnNOMOCLAvz2X+T/O36iWXwBBoWyTwRpeEBn4fCwftFBwYzdNpD4+YXGeDd3StEuIAQG7SmPLNFYDJp7il+CftZoPqGkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gNuUWFVP; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-28e7cd6dbc0so76869085ad.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761670312; x=1762275112; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nqGbM5vvwSaAdyr+kisx/6GyJLMoi/JUgGO1sEcNgzM=;
        b=gNuUWFVP3N2CrMMyOfEaL0txGchAhfKjdaojawQFq9ZvFE4Gzx1CDrcWr8Gn7ypgJD
         9BqsPdZnvmbTo/sDJEXiZYrQviiqe9x4buUPVZcwsB2q9aL0WbG0RBBjyKHxQmG6wq36
         bQuYhbH27gBYk8+amVDN4fEgYm8wGtgv+dB0XtElja1Lze1EPgAQJrU0b6RTrbmDYYe8
         I+4kjv/T6sjezUzKIfYBEGMWHaSzXGUnAjB7/GoNAzjvMQkxggF/E4iYuxEaLhQZhntd
         3g/PSWEu1CdIe21xL882PpeS/p2wm3Qal06Wd/9QcStWflEB/Id6P+L0xlndoISxKune
         WCUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761670312; x=1762275112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nqGbM5vvwSaAdyr+kisx/6GyJLMoi/JUgGO1sEcNgzM=;
        b=VXlaCtR6adnA8UHX1BaICx9x/xpfNDW4+V/kwIyywbehnmqQcEbegdWPRthfLhXhXd
         pGUAELfYQDhtnfNlVKBm8qGIlAwx579aYfT1yTdg+jcz324eheSgTQYsnuuqC0MpMPZf
         RJkKiQkX6+qE+z+UqtMuk2YH5b2HDKkoL1S4EMqkZIbeSiYWQo2CeW/2HJqpQiQkSe1Z
         OfQkSqZyv2AtiVIn+Atp5mAZmBfc6wGiP2GQTm6EUKMLHVvo1uLVZ2pMJmnYMLKCDW1K
         MawZeMEKy5qPnm41DyOMG5UOQJ1GxUTkLsMOQya7fgI6qay7hiicYjoK82klra3wLXl3
         dm5g==
X-Forwarded-Encrypted: i=1; AJvYcCW4E+plAioH+rlrCaqJeArN6AOAvznhM21o9CA60vJOkInmPvXJARenVggOZY1mplMl2ajMwLoKiiis@vger.kernel.org
X-Gm-Message-State: AOJu0YzHrMTe+KzoWl75EWVnGP5wswFdRbWVDXAdYfZ1kOpuRhFVYUxk
	MTiwsX+A5dA/z1g7WLppSy2xpC2qsvVoPmCChkm30vv7BVGRSzWR6nIn
X-Gm-Gg: ASbGncvocwBcWCQ2zIj7gjqVQXH9nXUDZAl3BRAKFllpPH9CvTGuWObrGzoyY5fhzTX
	/VhoY1bUfh0PnIMMvjEQzbrHn5kCTNSIIyidgt70EJ/2xmHcPblnR/8f9wEu24mOy7lW9FhlW7C
	3FqLW9rjQxIQxTADtvgncsHNv/PeddNN5KHwywAxQutZUL+WZwftEs27otM/VIlz/aBLAN71GZY
	TGZ6Se4/vqbMFWBLA1OMpt+4yrkAO0tEc80kYqS24Mt0zAPFA/Zs3F5k4oHONO96mhSYjsSKz9U
	+8QbUmg4yCxz9D5IUVcGKbLrenTQFpHMXqpE2560BZSIelZFfcvSwg9wIGkGsGRNlnJ4+5LIwXB
	rIFjpjz4ErbWs00Hu4tLsXByW5cQf0/eG19Z8YUySnwv8iCOcquxPRgnqR/ft0pF7cZgvyBlj/C
	yOPNvhX+IdpYzrfG6tjjFkXg==
X-Google-Smtp-Source: AGHT+IHwlx7UTwHMvwMgoePukjEkmehBzU+pJX/qbbUcV5S5wP0HYILyy8+Mz1GCKLEfOQitsWAwUQ==
X-Received: by 2002:a17:903:1248:b0:269:8f2e:e38 with SMTP id d9443c01a7336-294cb378634mr57410855ad.6.1761670312365;
        Tue, 28 Oct 2025 09:51:52 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:77f0:168f:479e:bf92:ce93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm122123665ad.96.2025.10.28.09.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 09:51:51 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 1/5] clk: renesas: r9a09g077: Propagate rate changes to parent clocks
Date: Tue, 28 Oct 2025 16:51:23 +0000
Message-ID: <20251028165127.991351-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add the CLK_SET_RATE_PARENT flag to divider clock registration so that rate
changes can propagate to parent clocks when needed. This allows the CPG
divider clocks to request rate adjustments from their parent, ensuring
correct frequency scaling and improved flexibility in clock rate selection.

Fixes: 065fe720eec6e ("clk: renesas: Add support for R9A09G077 SoC")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1-v2:
- New patch
---
 drivers/clk/renesas/r9a09g077-cpg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/renesas/r9a09g077-cpg.c b/drivers/clk/renesas/r9a09g077-cpg.c
index 8b7e84a4c307..1cb33c12234e 100644
--- a/drivers/clk/renesas/r9a09g077-cpg.c
+++ b/drivers/clk/renesas/r9a09g077-cpg.c
@@ -221,7 +221,7 @@ r9a09g077_cpg_div_clk_register(struct device *dev,
 
 	if (core->dtable)
 		clk_hw = clk_hw_register_divider_table(dev, core->name,
-						       parent_name, 0,
+						       parent_name, CLK_SET_RATE_PARENT,
 						       addr,
 						       GET_SHIFT(core->conf),
 						       GET_WIDTH(core->conf),
@@ -230,7 +230,7 @@ r9a09g077_cpg_div_clk_register(struct device *dev,
 						       &pub->rmw_lock);
 	else
 		clk_hw = clk_hw_register_divider(dev, core->name,
-						 parent_name, 0,
+						 parent_name, CLK_SET_RATE_PARENT,
 						 addr,
 						 GET_SHIFT(core->conf),
 						 GET_WIDTH(core->conf),
-- 
2.43.0


