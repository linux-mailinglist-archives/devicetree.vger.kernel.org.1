Return-Path: <devicetree+bounces-241063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6558C78DAA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 30256327B5
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A49C534F241;
	Fri, 21 Nov 2025 11:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J9HanB4/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE2F34DB76
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724979; cv=none; b=IxWl60dvGno4/R/UQiOpEewDkB9uHJd+Vs5BWhwUoix0H1gDATZLRks0kSA3ne6c3m1zmJTDfxF30yvDB7TFG1uqrdwepKACAA9WeUvD9B7emrxF3J3qU8pRryUrWkujEwUQ4b2hwUn3beu0ZojzJ7ambeNE0hnQfUDrhlZWJdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724979; c=relaxed/simple;
	bh=p0Zq4gARic389z5cUOv02yKuHJQNu/nVWEGHNiC33nw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VMFdAgWGMMKE7BXxt7jIK3guD2f73z6NXrCbl+05dghXQ3rVxB0hr9IKUJIJXmALRMBBdwgT7LuCuybR321JqOHvT9z/U5Gz72jEjhIzcPd1IHwBsYD6ivpascYuo5ft4bWuXiB4BHrujIkjfEJjk9J2+gAefuINGhA++wZd10o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J9HanB4/; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47796a837c7so12607325e9.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724975; x=1764329775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M398mpeozAislS4NsyHxHxkyx50MVbfvXAZ3uGjRUmM=;
        b=J9HanB4/BlxP5FZaTF8VRM2BjuTjaAj3BZlYLw/Q18MyMyXmaKkETwKRQhi2EgzOY4
         DOerkTXesDmXg4COahSg7Dj32LrMm/35Lx1g4cQT6vnZzufGWgg99aNqJ/x9foShzxOD
         CPCwOFtdl2mB7B7NGsJH6UL/wVQnr0IWSPMGxB5WHA18HjplzsxkIDGr8mvg+V1isbkg
         qIoGsJnE+NRF1x0pHUc9QEf2taVdYyhAYZbgExvo1SSCYacbLgae+B8LcHCkkeZIyO2H
         iVSR/uWBo9lPXwv2w4OWlGVzJ6E8qetfinDyVYMahF5AKvFHnHidRyVyJf0JLliOxfEo
         gsPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724975; x=1764329775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M398mpeozAislS4NsyHxHxkyx50MVbfvXAZ3uGjRUmM=;
        b=fY0xWWSQhQo73EHZly6OPbvcQQ+7REujWR3kGEP7BPNmOivyAv/oZalnPSssWGwMj4
         yKnT5PHwwwLIa/DGBYA6xNjkUE2gfv0KXPew6VpxwEQNvUbK0+B2FmaSERv02lm1xC9i
         oJa4P2Zo3PNrq/WfD36SVuwoX2caGr8eekJvjuj2wUAQRIM0cYqYgwhOKxKvvzNzqpF9
         l29y8HJkr4vNXfJoA2WINDlxJDyjO+K4zB2iMy3kAs5h1k2KoxAO/MYwj2slRymris0W
         xHifg94DqGonTuUdzCV4Ckm9W/sbZqyXcLiqgq22bKjPnN3+hK2RnvLLpqosZaJ2nUGc
         uTAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIQYcgl65BWzu+k+LoL6MCEV4qDW19B7zbXfEKoDy+dThFqVHn0xR6uRd7Kz73IQ6IpBHlMkD+CNL3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf8BEKMqEqheWOm0CAF8AEajx7b4INmlt/UWAmhXUHvfuis+pd
	BQPW8ZQr8K9zl5ufXbLTxlHOfj/OopV8u8phB6IwZ0o3lIliDDBUDuGs
X-Gm-Gg: ASbGncsu7qu0/kJ2vH5rhsx2xFHunUXIyvDaZSk8Jc2iQk1uQixqjENV9n3dlsN8ZNz
	hYmXLAegM6egxQtwlPB65ATg1UjFLWu1jGWqlrNy36fElYZyQP46AAFfo/w1WROXkR3fp6neTry
	hi6dCDe9Ov/UqJuK/CxFj0zpTFG50DABEqhN8A9mbaCM9VmkuTIL/aK6mfyYWnVsQ4kewHlFibW
	wchE8o5fLcLSY7mFZEgoBw0SJIgnafduCo+GZVDodVXvWByDQxjCeuRLZ3PK38V1586vWo8grzy
	GKOYhKPfc0bl1pY4hK4kfQ0GL1p5G4Mf8bUeS0rHIMZjjoew+o1QYnYTvysxUtRT7URT+HhLYQ2
	v0NCpPf2QaZ9GdLJ3AeZztPDxchaX4Pv1HW1QpEYOnL///47n2R6cg110CB0ygV382brG/rDGKv
	OhNa25GUgq2DtBltehdsNUQtuxl/0PaARirl8=
X-Google-Smtp-Source: AGHT+IHGSARKVH87wKwqZXU+BypHZzYVsPLPqyAMU3sI2rXwgt9jOGXsb6RjgLHXNLjhSt8AyQ5uqg==
X-Received: by 2002:a05:600c:c8c:b0:477:73e9:dbe7 with SMTP id 5b1f17b1804b1-477c01f52cdmr22433365e9.35.1763724974873;
        Fri, 21 Nov 2025 03:36:14 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9cce:8ab9:bc72:76cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3558d5sm38732465e9.1.2025.11.21.03.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:36:14 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next 10/11] net: dsa: rzn1-a5psw: Add support for RZ/T2H Ethernet switch
Date: Fri, 21 Nov 2025 11:35:36 +0000
Message-ID: <20251121113553.2955854-11-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add device tree match data and configuration for the Renesas RZ/T2H
SoC Ethernet switch. The RZ/T2H uses the same A5PSW switch IP as RZ/N1
but with four ports, the DSA tagging protocol `DSA_TAG_PROTO_RZT2H_ETHSW`,
and an additional 8-byte management port frame length adjustment.

This prepares the driver to handle RZ/T2H and compatible RZ/N2H
Ethernet switch instances.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/net/dsa/rzn1_a5psw.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/dsa/rzn1_a5psw.c b/drivers/net/dsa/rzn1_a5psw.c
index 82f4236a726e..9f85a4526bd2 100644
--- a/drivers/net/dsa/rzn1_a5psw.c
+++ b/drivers/net/dsa/rzn1_a5psw.c
@@ -1319,6 +1319,13 @@ static void a5psw_shutdown(struct platform_device *pdev)
 	platform_set_drvdata(pdev, NULL);
 }
 
+static const struct a5psw_of_data rzt2h_of_data = {
+	.nports = 4,
+	.cpu_port = 3,
+	.tag_proto = DSA_TAG_PROTO_RZT2H_ETHSW,
+	.management_port_frame_len_adj = 40,
+};
+
 static const struct a5psw_of_data rzn1_of_data = {
 	.nports = 5,
 	.cpu_port = 4,
@@ -1326,6 +1333,7 @@ static const struct a5psw_of_data rzn1_of_data = {
 };
 
 static const struct of_device_id a5psw_of_mtable[] = {
+	{ .compatible = "renesas,r9a09g077-ethsw", .data = &rzt2h_of_data },
 	{ .compatible = "renesas,rzn1-a5psw", .data = &rzn1_of_data },
 	{ /* sentinel */ },
 };
-- 
2.52.0


