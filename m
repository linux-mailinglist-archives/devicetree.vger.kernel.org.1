Return-Path: <devicetree+bounces-233983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 37546C27818
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 06:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4337F4ED953
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 05:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64028258CE1;
	Sat,  1 Nov 2025 05:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VpZ2Wcl5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F5C23EAB8
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 05:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761973268; cv=none; b=qUfKQ4so6OF292v1FPb8Shczt3oTFUVnjURk3fD10X/TV2/YzFU8iS/awCjrEZOMuHIYoT3zWHrQl4AUNWqq6jFqVoVPsViSst0YVpXFMlqUnPzKkW+T4OyeFaPM0LmRmuJi3+AG9KGtHH9x1gu0dkn0OAgfeXx7NsowrrlpBd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761973268; c=relaxed/simple;
	bh=7CoecAazZVUZJo5c1x/39QLu8I+tPMMru6+eOKh156g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T4twLqFAg6XBTXO9dxqPAzgr7ss8RBsGBnJobQCebqMWnQSn2SsLq7HXvVgzYAk4+hwwYH/xkkc0t6i6O/UI/XLOksDvqNcaSuBVEcJV0fdl1a8haEdB+7ZFkzCYULv463DoskoS9AAlx7//+D8if/sl579sMLV9T93esfftsuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VpZ2Wcl5; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-340c1c05feeso110447a91.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 22:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761973266; x=1762578066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8+IGcxRP2HUQNmNa/PX5gbUVFNrUfSy3Bcn1D58oBqI=;
        b=VpZ2Wcl5a8pfWhLtBBNGk5fqDnfa/krJDzj5ub+W+e7cvgCfREBYzf7/R7duLF7w1k
         HPn+z6xGoPrHSWzcFvKGjFWLhpa50cq8TNdHMf+MB7vnUxJ3e/ENFZZdZlWon39z2exW
         M39cEKNVyvcLm89yil3V4bRE8IU4imfpNq28XDM93pwEU/SNPovRXbBPseMYAHMjtTEq
         HJApOwqGkm7XgXzcEsqiLsxdaj3Sz/MznTF+AtsoH48ms+OHlG7sr1VE7EA/LeDgOBRY
         l/+7r5Y1tEexuNQmNA2S27CZRcKX37oaY+Eto3fz/xpsIh63AU3oIt2dYOjY6YuaZYQp
         75Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761973266; x=1762578066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8+IGcxRP2HUQNmNa/PX5gbUVFNrUfSy3Bcn1D58oBqI=;
        b=RbBzi9GfDCNy6Dib3B4N/3/mM82wp3S/KqrXPzxKndz9lmV32JxTKpGv6EXXNolLgR
         tKkC86nXi/UAt+eNpn5lEPZTbe6W+ywLDvRBWnMX9KoZNmPBJTo6pLj1wyhdtPYUwxfh
         h6m49tZfStEYoOFBaeNyLOOX2+HImE1BpbC4CU6sTlJcQjX9Yq7hHPsdkn2DiAv6yQtv
         zGPZKh8vwDkmZx1GQs2+IyogOs2Y/zAeORUm+WwrQ0Z1rEMSrfqVp15LT59ZTYkNhkgy
         i6h2W++rK2oUNexALyCruGDXC1Z7kpTS8PaTHjUns+95RCWabODq3t05n7y3ETwjixGj
         5F+g==
X-Forwarded-Encrypted: i=1; AJvYcCVRN5ZgXXC/2Bk+ngrHtVfTkIaxU2OTvAfrktd6QtPvi3MECLPhEvUb2yh4NDkuOer/tWusCMivtBT/@vger.kernel.org
X-Gm-Message-State: AOJu0YxOAwGvxHXm3hlEkQTR9PUNV3OKKwRxRY1D2FySps5GkFrZM4aR
	hWGmu/oVzf6SfqPGagAAEjnWduCymvTZCsp9bXo6XDD3BKnt46GcBk1s
X-Gm-Gg: ASbGnctz2sbb0lZ4DRKC9J961Oib1Tn48TPmpwB7TxY2fBDlWdYrKc9eH/mlwYX/b60
	sSXc6GiUyO4orY8S7NUF3DOeQZnBI5hk7RnsDcmE5fcczjy9954rPjDegNmfj2d9rZejQlhRXQg
	HLgMBMKaped3dgBSabUn2AVXbwUAsjR+P1YgvWlc7gKM9Xd/9yN3Qt8OT+nFZOZFYwxMwaiy0Ql
	zYZnACJQ6GoQSLrQobJ46hTLF11sbNBQx6OrVLLOnDlY1cAVdrCevgt0F5DqwX1EgO0xUUGZ9tS
	c52XigAf6jB+uHbOcnq3byMIAlvYODelWSPyQ+VbMAtxucMdE3xJ9+gvE1bubTKF+KCjoZAxvuo
	9Nc3AUq+dDnH8x15pstr4AHLfIBOsd6on3Wh/H9uwDS01FlVG776f2PgjXagc04QNj4t4P7FKrc
	lD6heK5rRRUuEUwAf3EBFuvz8nV3YZ+vg=
X-Google-Smtp-Source: AGHT+IFTVER6tPe0BrYgVjVhCPj/RhlxH2w2OGMnx5CtQGWOImiI7geL9hbHegU87BWWBMj9pLwYsQ==
X-Received: by 2002:a17:90b:28c8:b0:340:c261:f9f0 with SMTP id 98e67ed59e1d1-340c261fc6fmr822666a91.15.1761973266042;
        Fri, 31 Oct 2025 22:01:06 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:600d:690:cbc4:d4d9:22c2])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93b8aa3ff1sm3761095a12.14.2025.10.31.22.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 22:01:05 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/4] clk: renesas: r9a09g056: Add USB3.0 clocks/resets
Date: Sat,  1 Nov 2025 05:00:34 +0000
Message-ID: <20251101050034.738807-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add USB3.0 clock and reset entries.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/clk/renesas/r9a09g056-cpg.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/renesas/r9a09g056-cpg.c b/drivers/clk/renesas/r9a09g056-cpg.c
index e4a6dfd2bec9..f48a082e65d7 100644
--- a/drivers/clk/renesas/r9a09g056-cpg.c
+++ b/drivers/clk/renesas/r9a09g056-cpg.c
@@ -17,7 +17,7 @@
 
 enum clk_ids {
 	/* Core Clock Outputs exported to DT */
-	LAST_DT_CORE_CLK = R9A09G056_SPI_CLK_SPI,
+	LAST_DT_CORE_CLK = R9A09G056_USB3_0_CLKCORE,
 
 	/* External Input Clocks */
 	CLK_AUDIO_EXTAL,
@@ -226,6 +226,8 @@ static const struct cpg_core_clk r9a09g056_core_clks[] __initconst = {
 		  CLK_PLLETH_DIV_125_FIX, 1, 1),
 	DEF_FIXED_MOD_STATUS("spi_clk_spi", R9A09G056_SPI_CLK_SPI, CLK_PLLCM33_XSPI, 1, 2,
 			     FIXED_MOD_CONF_XSPI),
+	DEF_FIXED("usb3_0_ref_alt_clk_p", R9A09G056_USB3_0_REF_ALT_CLK_P, CLK_QEXTAL, 1, 1),
+	DEF_FIXED("usb3_0_core_clk", R9A09G056_USB3_0_CLKCORE, CLK_QEXTAL, 1, 1),
 };
 
 static const struct rzv2h_mod_clk r9a09g056_mod_clks[] __initconst = {
@@ -319,6 +321,10 @@ static const struct rzv2h_mod_clk r9a09g056_mod_clks[] __initconst = {
 						BUS_MSTOP(8, BIT(4))),
 	DEF_MOD("sdhi_2_aclk",			CLK_PLLDTY_ACPU_DIV4, 10, 14, 5, 14,
 						BUS_MSTOP(8, BIT(4))),
+	DEF_MOD("usb3_0_aclk",			CLK_PLLDTY_DIV8, 10, 15, 5, 15,
+						BUS_MSTOP(7, BIT(12))),
+	DEF_MOD("usb3_0_pclk_usbtst",		CLK_PLLDTY_ACPU_DIV4, 11, 0, 5, 16,
+						BUS_MSTOP(7, BIT(14))),
 	DEF_MOD("usb2_0_u2h0_hclk",		CLK_PLLDTY_DIV8, 11, 3, 5, 19,
 						BUS_MSTOP(7, BIT(7))),
 	DEF_MOD("usb2_0_u2p_exr_cpuclk",	CLK_PLLDTY_ACPU_DIV4, 11, 5, 5, 21,
@@ -426,6 +432,7 @@ static const struct rzv2h_reset r9a09g056_resets[] __initconst = {
 	DEF_RST(10, 7, 4, 24),		/* SDHI_0_IXRST */
 	DEF_RST(10, 8, 4, 25),		/* SDHI_1_IXRST */
 	DEF_RST(10, 9, 4, 26),		/* SDHI_2_IXRST */
+	DEF_RST(10, 10, 4, 27),		/* USB3_0_ARESETN */
 	DEF_RST(10, 12, 4, 29),		/* USB2_0_U2H0_HRESETN */
 	DEF_RST(10, 14, 4, 31),		/* USB2_0_U2P_EXL_SYSRST */
 	DEF_RST(10, 15, 5, 0),		/* USB2_0_PRESETN */
-- 
2.43.0


