Return-Path: <devicetree+bounces-35165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C1D83C70F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:43:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7053AB213F7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E8377316A;
	Thu, 25 Jan 2024 15:43:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from andre.telenet-ops.be (andre.telenet-ops.be [195.130.132.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C6B634FE
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706197411; cv=none; b=eUbo0l5YcJEMli/FLLsq+u+Z3q/BkgOsW6RtfAO5kTCkZc9JJtzU7lBCT7RHhG19+U2zJvHQQhzBi6PwgaX6UkV+AF/X0BcA1AXkP0LRVKAVWtFO6UyuETjJlwilCe/Rp3h9KoMrhhUDBHfxhruY9Yp6jSD4ToiPmtZv5AHbDso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706197411; c=relaxed/simple;
	bh=zWe3tCCEsgYRHeb9TN02orgVqN6or7rmfDdSe/lSNLA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=S0KvNUBJRyNpqv26LfJjyXKk0J998aVCoOp9u+S+UPpcurpkzVla2EMkSEmG1HMy6owsvmsay2OVMjkZddhRzHcIgA1dzzQXSS8OhGJxE5bzh7zskQzOVlCYIxoWaty5AGegEo4j+Hfe0GP6HOziKxjiNHbWo7MOzQLxC3du2IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:bc9e:fcb8:8aa3:5dc0])
	by andre.telenet-ops.be with bizsmtp
	id f3jU2B00358agq2013jUiF; Thu, 25 Jan 2024 16:43:28 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT1sD-00GUxT-WD;
	Thu, 25 Jan 2024 16:43:28 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT1t1-00Fs7D-TF;
	Thu, 25 Jan 2024 16:43:27 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] clk: renesas: r8a779g0: Correct PFC/GPIO parent clocks
Date: Thu, 25 Jan 2024 16:43:26 +0100
Message-Id: <5401fccd204dc90b44f0013e7f53b9eff8df8214.1706197297.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

According to the R-Car V4H Series Hardware User’s Manual Rev.1.00, the
parent clock of the Pin Function (PFC/GPIO) module clocks is the CP
clock.

Fix this by adding the missing CP clock, and correcting the PFC parents.

Fixes: f2afa78d5a0c0b0b ("dt-bindings: clock: Add r8a779g0 CPG Core Clock Definitions")
Fixes: 36ff366033f0dde1 ("clk: renesas: r8a779g0: Add PFC/GPIO clocks")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-clk for v6.9.

 drivers/clk/renesas/r8a779g0-cpg-mssr.c       | 11 ++++++-----
 include/dt-bindings/clock/r8a779g0-cpg-mssr.h |  1 +
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/renesas/r8a779g0-cpg-mssr.c b/drivers/clk/renesas/r8a779g0-cpg-mssr.c
index 5974adcef3eda194..0acc301221e552f7 100644
--- a/drivers/clk/renesas/r8a779g0-cpg-mssr.c
+++ b/drivers/clk/renesas/r8a779g0-cpg-mssr.c
@@ -22,7 +22,7 @@
 
 enum clk_ids {
 	/* Core Clock Outputs exported to DT */
-	LAST_DT_CORE_CLK = R8A779G0_CLK_R,
+	LAST_DT_CORE_CLK = R8A779G0_CLK_CP,
 
 	/* External Input Clocks */
 	CLK_EXTAL,
@@ -141,6 +141,7 @@ static const struct cpg_core_clk r8a779g0_core_clks[] __initconst = {
 	DEF_FIXED("svd2_vip",	R8A779G0_CLK_SVD2_VIP,	CLK_SV_VIP,	2, 1),
 	DEF_FIXED("cbfusa",	R8A779G0_CLK_CBFUSA,	CLK_EXTAL,	2, 1),
 	DEF_FIXED("cpex",	R8A779G0_CLK_CPEX,	CLK_EXTAL,	2, 1),
+	DEF_FIXED("cp",		R8A779G0_CLK_CP,	CLK_EXTAL,	2, 1),
 	DEF_FIXED("viobus",	R8A779G0_CLK_VIOBUS,	CLK_VIO,	1, 1),
 	DEF_FIXED("viobusd2",	R8A779G0_CLK_VIOBUSD2,	CLK_VIO,	2, 1),
 	DEF_FIXED("vcbus",	R8A779G0_CLK_VCBUS,	CLK_VC,		1, 1),
@@ -232,10 +233,10 @@ static const struct mssr_mod_clk r8a779g0_mod_clks[] __initconst = {
 	DEF_MOD("cmt1",		911,	R8A779G0_CLK_R),
 	DEF_MOD("cmt2",		912,	R8A779G0_CLK_R),
 	DEF_MOD("cmt3",		913,	R8A779G0_CLK_R),
-	DEF_MOD("pfc0",		915,	R8A779G0_CLK_CL16M),
-	DEF_MOD("pfc1",		916,	R8A779G0_CLK_CL16M),
-	DEF_MOD("pfc2",		917,	R8A779G0_CLK_CL16M),
-	DEF_MOD("pfc3",		918,	R8A779G0_CLK_CL16M),
+	DEF_MOD("pfc0",		915,	R8A779G0_CLK_CP),
+	DEF_MOD("pfc1",		916,	R8A779G0_CLK_CP),
+	DEF_MOD("pfc2",		917,	R8A779G0_CLK_CP),
+	DEF_MOD("pfc3",		918,	R8A779G0_CLK_CP),
 	DEF_MOD("tsc",		919,	R8A779G0_CLK_CL16M),
 	DEF_MOD("tsn",		2723,	R8A779G0_CLK_S0D4_HSC),
 	DEF_MOD("ssiu",		2926,	R8A779G0_CLK_S0D6_PER),
diff --git a/include/dt-bindings/clock/r8a779g0-cpg-mssr.h b/include/dt-bindings/clock/r8a779g0-cpg-mssr.h
index 754c54a6eb06a46d..7850cdc62e285493 100644
--- a/include/dt-bindings/clock/r8a779g0-cpg-mssr.h
+++ b/include/dt-bindings/clock/r8a779g0-cpg-mssr.h
@@ -86,5 +86,6 @@
 #define R8A779G0_CLK_CPEX		74
 #define R8A779G0_CLK_CBFUSA		75
 #define R8A779G0_CLK_R			76
+#define R8A779G0_CLK_CP			77
 
 #endif /* __DT_BINDINGS_CLOCK_R8A779G0_CPG_MSSR_H__ */
-- 
2.34.1


