Return-Path: <devicetree+bounces-7245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 658C87BFD64
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 961C91C20C21
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0B64737D;
	Tue, 10 Oct 2023 13:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RjmFxK0k"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397008F5D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:27:15 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15A2FC4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:13 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9ae2cc4d17eso1015828266b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696944431; x=1697549231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iig9ag63aVzgMKeY4TwjyQYW3SBdv2Ym+GOOusSElI8=;
        b=RjmFxK0khafMxqzsB4Od0FtHja4eGFDM6JsRgpnvl3TEMkm9CYaCd6klRgAK0F0z0O
         KcBsgWVuvi3dsu+VLecVUhQmioVnToYNx+WwnVOYginzbKByZlu4uAOZimeNitYYy60k
         QVATuuZKuySqjYqruwS+KjsjxH1SMnrvv3bIL1uQMPPV8Ho/3tci5S1uVU2gLIHn2uQL
         G49Qv9qbLjK9b9SRSu+VMFb6vsWOevBnoJzDZkDcWs4apduC1vP/pHNSGpB/v3ZsmPdG
         5YmrQTOZsEXz05sJ8Tv4X4+sl7kO5SQbKd0i+Q/tHcC5RrjPpP3G8JleUXc5SPqn5R1d
         BAzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696944431; x=1697549231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iig9ag63aVzgMKeY4TwjyQYW3SBdv2Ym+GOOusSElI8=;
        b=lsz/s925w6YRYj7BqLa/3NJZbCHRKrUomVEMpVLC1mN0mF8EH+n1WaMKITukUE8piC
         Za1VmeqG1sGpoxc2U76icTuC8oAe5ItuHEBIIR+FXIn9V7qfNdP3CnWfT9vX0HAFbxa8
         b16qJMk/2jVpZDT/tQO8bASgguLU84Gux+ajqgQLoMwfcLEUNla+72/i647KZIjDHObg
         meOXrWUrE4darO+bsfK208zGVWs2pA8f/h6s7uGHfrrlb4DT29DH+PWsxjog02opF7+c
         VRgcGwzkK+qhZva3x1/6+w5dUyF7FQXkxNl0kaqX4W/YdeZqTF0IJWasaK8bQRknD3I4
         NNug==
X-Gm-Message-State: AOJu0YywMaoz3j1iVNY6S5v/7A+6VyBeI1G7p6KtXtMfBJUTXzG5j7vJ
	DjOa0RYRJflL1x78bNy/YbcTAg==
X-Google-Smtp-Source: AGHT+IH/4VgcQTIb7nq7GquauPcHOWu6jQZTwpKEVREMKXrZskqhEh3KwuV8ijbjiN+arTCLWWjT0Q==
X-Received: by 2002:a17:906:8a59:b0:9b2:e26f:3636 with SMTP id gx25-20020a1709068a5900b009b2e26f3636mr15771125ejc.13.1696944430759;
        Tue, 10 Oct 2023 06:27:10 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.152])
        by smtp.gmail.com with ESMTPSA id i16-20020a1709064ed000b0099bd0b5a2bcsm8526578ejv.101.2023.10.10.06.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 06:27:10 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 1/6] clk: renesas: rzg2l: Use %x format specifier to print CLK_ON_R()
Date: Tue, 10 Oct 2023 16:26:56 +0300
Message-Id: <20231010132701.1658737-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Use %x format specifier to print CLK_ON_R(). This is easier when
debugging as the value printed will be hexadecimal like in the hardware
manual. Along with it "0x" has been added in front of the printed value.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/rzg2l-cpg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index d62f1bc1f60e..764bd72cf059 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -1213,7 +1213,7 @@ static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
 		return 0;
 	}
 
-	dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
+	dev_dbg(dev, "CLK_ON 0x%x/%pC %s\n", CLK_ON_R(reg), hw->clk,
 		enable ? "ON" : "OFF");
 
 	value = bitmask << 16;
-- 
2.39.2


