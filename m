Return-Path: <devicetree+bounces-13924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FB87E1631
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 21:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DBF3B20D2D
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 20:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D44182BB;
	Sun,  5 Nov 2023 20:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="c8MsOHYN";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="X+55kuiQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529CE17998
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 20:07:05 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21D78E1;
	Sun,  5 Nov 2023 12:07:03 -0800 (PST)
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4SNlr3449Dz9sVN;
	Sun,  5 Nov 2023 21:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1699214819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aTQFv+jxFsY3X5csA/whB9c77q2hCbYcNxae1TskwzQ=;
	b=c8MsOHYNKCZq+G4vK28jvelMzuh9vV0bIReZeId4FVGLZrShV70vmH+dn4kmBaLXQweddR
	0gVPDF0GSXrQwszV3wzR9kSHVy00j53ao+hHWru/h7gzSUO82JnO4H0KtwhWVPH+IC6IR4
	xCri0Qb2a8dINoLliCPPYRDKwPL4idEBhx1bjGbjZxZPnspfCl7a8Vgxu6z3qyfNJKEew4
	7PIGcNBmk6tlNiDaSUGpVg01Z7GIYknxmqqcADaH7CuTDBqSUsNPeBFOSQgLdMqCIMRJ3N
	459olyXiJ7yIx6UXDOTdktTQT1OgDMlpz5hup6A19VHGFCFSJjaLwNbSdnRdKg==
From: Marek Vasut <marek.vasut+renesas@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1699214817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aTQFv+jxFsY3X5csA/whB9c77q2hCbYcNxae1TskwzQ=;
	b=X+55kuiQgnpvrwpqBcNYI9FDdAqRnmhbis7tN9Xo4uWEZOxRJEQaETMHuZTVdoc9DjbLLS
	MTf1LCx96Kna1fYyHVqzBTp9pFFJICpx5eH4/iIwEKa9TUbEo3snDUMvqTx9+pjZuB5ao0
	UVPGTN3Vopcu1Jdx9tHXMjJYuwbfjCDvUVy8ck8mIxU+4+QgitHjGLMSxerDP9K9PtSqSw
	6ll51WSmnlUEjI7AJmsF5yd7A0NPuP/9wtsshtLzEK6zwX9j45o66jroNlZ6pkNe9jzWPC
	s3DZaRr52qp2Qp5IGvQ8gmgcuH3VFuGtmjBSJ3O1DNLgTiuhxyvURtURxbdtJw==
To: linux-clk@vger.kernel.org
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh+dt@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH] clk: rs9: Fix DIF OEn bit placement on 9FGV0241
Date: Sun,  5 Nov 2023 21:06:15 +0100
Message-ID: <20231105200642.62792-1-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: 7jnrc1r3hg64n4pus16cxxxnohkj5j8e
X-MBO-RS-ID: a2288b80ca60afe3830

On 9FGV0241, the DIF OE0 is BIT(1) and DIF OE1 is BIT(2), on the other
chips like 9FGV0441 and 9FGV0841 DIF OE0 is BIT(0) and so on. Increment
the index in BIT() macro instead of the result of BIT() macro to shift
the bit correctly on 9FGV0241.

Fixes: 603df193ec51 ("clk: rs9: Support device specific dif bit calculation")
Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org
---
 drivers/clk/clk-renesas-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-renesas-pcie.c b/drivers/clk/clk-renesas-pcie.c
index 380245f635d6..6606aba253c5 100644
--- a/drivers/clk/clk-renesas-pcie.c
+++ b/drivers/clk/clk-renesas-pcie.c
@@ -163,7 +163,7 @@ static u8 rs9_calc_dif(const struct rs9_driver_data *rs9, int idx)
 	enum rs9_model model = rs9->chip_info->model;
 
 	if (model == RENESAS_9FGV0241)
-		return BIT(idx) + 1;
+		return BIT(idx + 1);
 	else if (model == RENESAS_9FGV0441)
 		return BIT(idx);
 
-- 
2.42.0


