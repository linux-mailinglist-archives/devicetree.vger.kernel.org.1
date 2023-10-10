Return-Path: <devicetree+bounces-7244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DAA7BFD61
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42D761C20B85
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E44147378;
	Tue, 10 Oct 2023 13:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="e7fsV5cW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C7A8F5D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:27:12 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF242AC
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:10 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9ba1eb73c27so377407066b.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696944429; x=1697549229; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RRqYip+DIiJaVW5NA+IlRQb69v9BKma6ktZWSJUs31g=;
        b=e7fsV5cWZ4dNhc8TwNHNPHxniY3pbWtaQi/HfUB9VpE7h3kdHbm668FpdOpq3QW+7t
         LlRq0VFtSKo62i+xZAr3+eg+8qlBKLcx8ZRnSUghIBChT3/E89MifZDwsHszdmvkQ01c
         uv3O6Frd4+6AkRYvuNOozFs3MaE+dQg1xNBPrb4ugorS4kEtldWPuBqH3acRXw8WPVwL
         dVcyjEuuJBRGz3Mb0sJQZ86Gz24Mw8+tR60rGcP/dXhNd2vVWzyieeQ2L5RlrGOUwSP7
         g7MUFqLW7QbeINZsMNlJYK/Jewy4NFxysrlZ8Dyp45Hz/1iuLeSngbwSv/Iht2vz6CLs
         busQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696944429; x=1697549229;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RRqYip+DIiJaVW5NA+IlRQb69v9BKma6ktZWSJUs31g=;
        b=ObnCpLV9MOxltp4oGsN2n6rXQJsogfS3EqyWMRlxRA+Ldh6nK1QuhUxD4dSlFWF36U
         yKmCP2TKxrwf5C7Ax6FzBNN5rbmindJsk+/JK5AyrhL/psPZZ/O1VpQZ1oObbcZq7haB
         jhR2d1Zrbt4c8A5/Xkvd18pnC48AfcViNWJxoRZpNOGqq09e/mc7Sd3pKb0vt7vaIObc
         FuvURM6CWDWloCK+I1Iy8sR9v5cYL+Y+fc9BwWML8wPUm7fWcIq9tYd8cBbaV6J7IAXA
         QOeVSSHrg/0dOhOntMf8dwlnyDmC5+tmlLT1FM95zPtI2W7rtcXcuul6ws7gQYpyra7a
         B1VA==
X-Gm-Message-State: AOJu0Yw3lUv5PcEfZ3jyrzCS7i3XZPyKMXVYlTXm8rOVN15C66aOjoTp
	yK0IYvWwBIfXzImOEMTvQ0QSGw==
X-Google-Smtp-Source: AGHT+IF32yzeTQOTzp2gkm5QY+PEtK4uHJc1XkGUNanybiZ8Mmksq6ha1acBwygIYrRvQljZDiVYMw==
X-Received: by 2002:a17:906:18b1:b0:9ba:8ed:eab8 with SMTP id c17-20020a17090618b100b009ba08edeab8mr8202128ejf.45.1696944429242;
        Tue, 10 Oct 2023 06:27:09 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.152])
        by smtp.gmail.com with ESMTPSA id i16-20020a1709064ed000b0099bd0b5a2bcsm8526578ejv.101.2023.10.10.06.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 06:27:08 -0700 (PDT)
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
Subject: [PATCH 0/6] arm64: dts: renesas: Add SDHI1 and SDHI2 for RZ/G3S
Date: Tue, 10 Oct 2023 16:26:55 +0300
Message-Id: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
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

Hi,

This series enables Renesas RZ/G3S (R9A08G045) SDHI1 and SDHI2 clocks and
resets and adds proper DT entries. SDHI1 is connected to a uSD interface
available on Smarc-II carrier board while SDHI2 is connected to a
uSD interface available on RZ/G3S Smarc Module (SoM).

Along with SDHI1 and SDHI2 support I've added 2 small cleanup patches
(patch 1/6 and 6/6).

Please not that series is based on patches at [1].

Thank you,
Claudiu Beznea

[1] https://lore.kernel.org/all/20231006103959.197485-1-claudiu.beznea.uj@bp.renesas.com/

Claudiu Beznea (6):
  clk: renesas: rzg2l: Use %x format specifier to print CLK_ON_R()
  clk: renesas: r9a08g045: Add clock and reset support for SDHI1 and
    SDHI2
  arm64: dts: renesas: r9a08g045: Add nodes for SDHI1 and SDHI2
  arm64: dts: renesas: rzg3s-smarc-som: Enable SDHI2
  arm64: dts: renesas: rzg3s-smarc: Enable SDHI1
  arm64: dts: renesas: rzg3s: Fix dtbs_check

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 31 +++++++++
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     | 62 ++++++++++++++++-
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  | 66 +++++++++++++++++++
 drivers/clk/renesas/r9a08g045-cpg.c           | 34 ++++++++++
 drivers/clk/renesas/rzg2l-cpg.c               |  2 +-
 5 files changed, 193 insertions(+), 2 deletions(-)

-- 
2.39.2


