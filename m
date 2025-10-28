Return-Path: <devicetree+bounces-232273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9563DC15FED
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBB3B1AA722C
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 338353491F7;
	Tue, 28 Oct 2025 16:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VBDswHIi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DFA4283C9D
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761670328; cv=none; b=j9SMcdj9OnPGBvCCQhK1X/DQ53OiFXT8yDhotcAWA+K/Hmew4QM1HGP6CM9x8QPyHJbfN1k3njj/7w1iJz0ULGbhqhaT3RISGYn8XE5cPC83hfWObto6lsTXAgTpcz2iyvOBmXKBMGFX0bHOzxv7QuYdLk+ynRlHay1JNJ0VN8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761670328; c=relaxed/simple;
	bh=uAi2FHcWsJ3GX+mStHxzc2rrz7IQpZYtqIP74XffftE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i48BQKBXeXm5hev29J9syGUeGYxLqaAeXo2GHgrWMBOgVq7IxTmHByx3VeAF2aOuMWmlwPmhEIH6JMiq7bhOvvIl6oZNkM4QFuTqQ4TDEGjyB81NyvNn8l2aQvNxn1aQMd+CzwwNe/t/RLC9MWY9AuM/U75OlpwVxm4sKDIppA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VBDswHIi; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-782e93932ffso4695423b3a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761670325; x=1762275125; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ozhuagEONZfNxkbetsUDydMVsoqSUlAvk99bJ1oqkyE=;
        b=VBDswHIikAYS2q0DgNT6jElJeM8Tn4FQ7TG5FDNH5dlPJSmbWYSFpH+8UzamC+Grwa
         7zECYJ6zkBJ5LL7jKlSo5sSMtHNuZ9YBWMa+IycOp9PX/ye9nig7879/XMRyii81g2e8
         Z+ujwtzreE3lvFkPAyeTdgpELJ1RmsG0O9quDHapWU44hV8/rYLKmtEOT2W8c7DxE1W2
         MiD7VqliDv+qqrkTQCYQP8oGjJHElrxEqAqMwJ7a1UMBLnhUMYY1KDDAYLygJhU6Tark
         j5tLzCQhMReRF3B7Ic5WWJ5+dzYX+XUMyONO8bw/OJ2iwHknj4fz2RxBg+0co99nzPRR
         Z99w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761670325; x=1762275125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ozhuagEONZfNxkbetsUDydMVsoqSUlAvk99bJ1oqkyE=;
        b=rqoshN2xkTk4/lufFyP3uq2uaKAG0IxXg1ZurV805BdbnGUXxZeje6Zt/S1pFxF1fR
         Qz7XP/MEL9gh5LybRZ5oaBOgrxNe3eMmj5P6B7wKpRoldTLBIl+Q6FL1ffWEsDqkZwF4
         wXmitLEMT3ZbpLJFPjDxqow+CaKwh+8wcVBIR0nucZ7IjHtMvVW3sW/2KK+pQRQp2I/T
         GH/eeyLBW5yZ2E0pO2n47BscC+8SdDmaj932p1ecf7+pO2rRuX/jtgmnOHkBH9zEyHDH
         pynp5YWdF1/08CfE5KwIpQvJHZpQDmGt5nElf33xwoyJe61X35JNtArpfcYiy9De0nwh
         ypwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlmYyAgLIOQmosu7CtdsYLWfHZ2nXZ9cRoCaWQLXiPa+CF45YJju1nfTnPWf4delhCyfQmnJYhY0jW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8snWtjR/aO2TJ+e+tX/nUix5k4f7ZxmwMcs1VvOJXN2aVnC+2
	WHAAB3CxFDwNRcHssrSY6HSZW06I8FB6L6AMTbkkoGj+SV2pUwNC5Z3K
X-Gm-Gg: ASbGnctHrWhEoi+HQOWl9EtCdok5YaFIQc7DEu2Wh4Onr3UuF/Z7MF3levZGa7hxcuW
	R/JYPms6tXfzQp1/qeVB+/+ZpG/Da4i1xOyKkxZsV7UATgNDbiVtKTUMBoBnyHEZhc5XqBueLpy
	Af/JjwTEmnhknSADbLtb3YC5+4hSyEzP9Mp0o/by/A2UWn8yIJPiJ91DwmGaeMSK/fBdWb1uhTF
	VhKDIwi5JtA/A3r/SLGn4WsnFl4AoVvqb0dZ6uYsKi7Aliz8WPe1MjfmukOs4P6DyY1ZCYjchjj
	AAvwxP744OBtVyMpOcCe5OfMydNGyntLSQ1B9vOHxuknYx53bgGf5fK6YXPlULv6eBj2cUJuILH
	JbW5Pu4evH5beXXW95exCfAsHgwnVTIzuXfnCWCMLJpPlBiGmyJ7YmVximtnpjgQd7ORQfaqCfZ
	iPEN7N41qlEgMCqSlgjMA6Jg==
X-Google-Smtp-Source: AGHT+IH8qFlYrrL24sCRWgUP6EN5lsSkXhcAlMQevGU1F8wGdL4QnVY/o2LpJYNhO1zLzXrVH+kFBQ==
X-Received: by 2002:a17:902:d2c1:b0:292:dca8:c140 with SMTP id d9443c01a7336-294cb6739b3mr50494845ad.44.1761670324753;
        Tue, 28 Oct 2025 09:52:04 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:77f0:168f:479e:bf92:ce93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm122123665ad.96.2025.10.28.09.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 09:52:04 -0700 (PDT)
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
Subject: [PATCH v2 3/5] clk: renesas: r9a09g077: Use devm_ helpers for divider clock registration
Date: Tue, 28 Oct 2025 16:51:25 +0000
Message-ID: <20251028165127.991351-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

Convert the divider clock registration in the R9A09G077 CPG driver to use
device-managed (devm_) helper functions.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1-v2:
- New patch
---
 drivers/clk/renesas/r9a09g077-cpg.c | 30 +++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/renesas/r9a09g077-cpg.c b/drivers/clk/renesas/r9a09g077-cpg.c
index 666fc16b9a81..b46167d42084 100644
--- a/drivers/clk/renesas/r9a09g077-cpg.c
+++ b/drivers/clk/renesas/r9a09g077-cpg.c
@@ -220,21 +220,23 @@ r9a09g077_cpg_div_clk_register(struct device *dev,
 	parent_name = __clk_get_name(parent);
 
 	if (core->dtable)
-		clk_hw = clk_hw_register_divider_table(dev, core->name,
-						       parent_name, CLK_SET_RATE_PARENT,
-						       addr,
-						       GET_SHIFT(core->conf),
-						       GET_WIDTH(core->conf),
-						       core->flag,
-						       core->dtable,
-						       &pub->rmw_lock);
+		clk_hw = devm_clk_hw_register_divider_table(dev, core->name,
+							    parent_name,
+							    CLK_SET_RATE_PARENT,
+							    addr,
+							    GET_SHIFT(core->conf),
+							    GET_WIDTH(core->conf),
+							    core->flag,
+							    core->dtable,
+							    &pub->rmw_lock);
 	else
-		clk_hw = clk_hw_register_divider(dev, core->name,
-						 parent_name, CLK_SET_RATE_PARENT,
-						 addr,
-						 GET_SHIFT(core->conf),
-						 GET_WIDTH(core->conf),
-						 core->flag, &pub->rmw_lock);
+		clk_hw = devm_clk_hw_register_divider(dev, core->name,
+						      parent_name,
+						      CLK_SET_RATE_PARENT,
+						      addr,
+						      GET_SHIFT(core->conf),
+						      GET_WIDTH(core->conf),
+						      core->flag, &pub->rmw_lock);
 
 	if (IS_ERR(clk_hw))
 		return ERR_CAST(clk_hw);
-- 
2.43.0


