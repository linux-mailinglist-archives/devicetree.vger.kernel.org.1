Return-Path: <devicetree+bounces-8874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 575D57CA610
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 12:54:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A82A1C20841
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A121A208C4;
	Mon, 16 Oct 2023 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="WN9CMfWC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 839A41CFA2
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 10:54:01 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAC2B95
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 03:53:58 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-98377c5d53eso668810266b.0
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 03:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1697453637; x=1698058437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SxNTh+uyDKLWsmxupnWSc6U2Hic2Ni63Y8zI4pPRJak=;
        b=WN9CMfWCAYW3W0yCYxM1fL9tXMmiHKT6I2wWi0B7bvuNnLZCZmxUK4aMdud5JBvMo2
         Ngl7oVQAGv/tKBHcMBqZhZgfyllsBiIaJ91FXWNvIJxFkyfCXyaOdIhMAv8cdYSTdLJo
         MsigUpBmgcgAsNym3+5Oplk6bBDeONvYHqdLAr1vruP3ibEDOfeect7TMARi5r93Yoh2
         ENwldK9++/gPhbB7EvvqQXvFI2KajhYx+FAC0ehIytmWvHe+IwBg+6Vohjc9Bho9EMzs
         C6ZSOK3R9YRmR1vzQFTg+HLl59hkIeRGtqhkxTe+JFlZQd8ZnRSgO9rz1dUxzGs3+G/W
         zjoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697453637; x=1698058437;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SxNTh+uyDKLWsmxupnWSc6U2Hic2Ni63Y8zI4pPRJak=;
        b=wGwSwmbaN0l/foJCDNY1hDsKMSnSNye6AhI4NiOK9mur/fVm2Noy49kWVJjw/D97/0
         N3UqTHOOeFgS9Zby7M8x0mOqoBcZcBhH1oJHIB1iyjFVH91VscH09qoCeW8nU7MSOsea
         /14Zh4aSWsNcjl7aIFDHW+ir7BnIrjJWAPmzMJ6j1+vJU6CQboKuWsyN9lP/O57Kxbjy
         oK95pn4z9xCR7oGNDU3b6iwLeXPwDlS/oErd6ZOEkxLvu7vu+jlMs2rBltGjgzD4MdCk
         AzMCikiYfNrYRCX9jEGiTlZZdErNxPS9pyxeCC5SshGMweHZav3SEbKGWXwbDsmc6/6M
         zsZw==
X-Gm-Message-State: AOJu0YwB3AjOVKRHpzHqFOSmoQ0sXNXgJXj38Pqu8iJij7kCoZgPa0gS
	KAnJmmYX1ziIST70Koa0Wl1f4g==
X-Google-Smtp-Source: AGHT+IGbVnaMTAqevmmvuacn2EkANYMZ2bGIY2fOygD1PBvhtQX9uA7CkemAj8Augtl4aoePWVjCGQ==
X-Received: by 2002:a17:907:e86:b0:9bf:1142:4361 with SMTP id ho6-20020a1709070e8600b009bf11424361mr5137635ejc.10.1697453637002;
        Mon, 16 Oct 2023 03:53:57 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.103])
        by smtp.gmail.com with ESMTPSA id v2-20020a17090651c200b009a5f7fb51dcsm3818126ejk.42.2023.10.16.03.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 03:53:55 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 0/2] arm64: dts: renesas: Add SDHI1 and SDHI2 for RZ/G3S
Date: Mon, 16 Oct 2023 13:53:42 +0300
Message-Id: <20231016105344.294096-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

This series enables Renesas RZ/G3S (R9A08G045) SDHI1 and SDHI2.
SDHI1 is connected to a uSD interface available on Smarc-II carrier
board while SDHI2 is connected to a uSD interface available on
RZ/G3S Smarc Module (SoM).

Thank you,
Claudiu Beznea

[1] https://lore.kernel.org/all/20231006103959.197485-1-claudiu.beznea.uj@bp.renesas.com/

Changes in v2:
- addressed review comments
- remove patches from series that were already integrated

Claudiu Beznea (2):
  arm64: dts: renesas: rzg3s-smarc-som: Enable SDHI2
  arm64: dts: renesas: rzg3s-smarc: Enable SDHI1

 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     | 49 ++++++++++++++
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  | 65 +++++++++++++++++++
 2 files changed, 114 insertions(+)

-- 
2.39.2


