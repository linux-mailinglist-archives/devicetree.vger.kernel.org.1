Return-Path: <devicetree+bounces-15490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AD47EA5F1
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 23:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 903A9280F35
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 22:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC723B2A2;
	Mon, 13 Nov 2023 22:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="gSMf+XDW";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="t4uax94n"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3B72E625;
	Mon, 13 Nov 2023 22:20:21 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050:0:465::201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CB56D50;
	Mon, 13 Nov 2023 14:20:16 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4STkQ53MLbz9slX;
	Mon, 13 Nov 2023 23:20:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1699914013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G9dXAJy2AM725pB/pqmXYw+L/buu1cyuwhewSi6ID4Q=;
	b=gSMf+XDW/wgmZZMwy+bwAQVdndvosAM5bMoDrjOP2SLSkYCJHJd5sD3Q/gAlYv9YyQGnrr
	53YTHCpQWgpycXV387gOy4uWz90/tE1w4OO5pf3wMcP5QfooINMrHCAEE7w4q6hExlOnPk
	V4ma7v7Ly4dvzhOl3m1alY0UFZ/BcnsDfzoLm028AYa7YdOSdQcs5HcHLZHaCVTsNFN0+C
	A/ucJUFN1GWAy/zJ1weiJ1OH1t44rhiibfEhgvtdGoHN+Rm42lS7/BfSEgc3PReHRp3wRx
	SFTQNMAdYDusq/+RriiyfTf8pRumXUOfeiJL/cS/DOT9Z4eoZ1mAqh4WwoXnRA==
From: Marek Vasut <marek.vasut+renesas@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1699914011;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G9dXAJy2AM725pB/pqmXYw+L/buu1cyuwhewSi6ID4Q=;
	b=t4uax94nkxmrO1csSud2TThYpQ3mXNGZDeA2y/g2gE0o0qFTLbVioHwHZ8EeP8tVh1wpo3
	htQPZ+f+4qbrW4qEztun+OOoaBLrCJt5a+pVDjHBO5OReeSUdm/Bpc4RWD4FYPPsbQ7ugV
	glgRDvW3fGC6IVGNhtEdGCJZgTm2vHX3sSHpSXwZ3wmMiWcAVPR2Sc+xppZmTF4t+V/9Tu
	YnR0RGv0cUVypWSvEsOd69NDJkDoaN7G+xXh373d7QHnbU+SVr3pxOWZjIdpTh6Ubsk4Tv
	J7EvcvG1tOnxkmH9yDg0PDWmP79Mb97kHGo6ZBjdErW4/+1rDh+jStODmbs6ng==
To: linux-clk@vger.kernel.org
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh+dt@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v3 2/4] clk: rs9: Limit check to vendor ID in VID register
Date: Mon, 13 Nov 2023 23:18:52 +0100
Message-ID: <20231113221949.111964-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20231113221949.111964-1-marek.vasut+renesas@mailbox.org>
References: <20231113221949.111964-1-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: ztfkpc8p8an7t7zsowe8s15wcfyjeum8
X-MBO-RS-ID: e747309860f3f3bb344
X-Rspamd-Queue-Id: 4STkQ53MLbz9slX

Extract only vendor ID from VID register, the top 4 bits are
revision ID which are not useful for the vendor ID check.

Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
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
V2: Split off patch from 4/4
V3: Add RB from Biju
---
 drivers/clk/clk-renesas-pcie.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/clk-renesas-pcie.c b/drivers/clk/clk-renesas-pcie.c
index 6606aba253c5..b5c430e4899c 100644
--- a/drivers/clk/clk-renesas-pcie.c
+++ b/drivers/clk/clk-renesas-pcie.c
@@ -42,6 +42,7 @@
 #define RS9_REG_DID				0x6
 #define RS9_REG_BCP				0x7
 
+#define RS9_REG_VID_MASK			GENMASK(3, 0)
 #define RS9_REG_VID_IDT				0x01
 
 #define RS9_REG_DID_TYPE_FGV			(0x0 << RS9_REG_DID_TYPE_SHIFT)
@@ -333,6 +334,7 @@ static int rs9_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
+	vid &= RS9_REG_VID_MASK;
 	if (vid != RS9_REG_VID_IDT || did != rs9->chip_info->did)
 		return dev_err_probe(&client->dev, -ENODEV,
 				     "Incorrect VID/DID: %#02x, %#02x. Expected %#02x, %#02x\n",
-- 
2.42.0


