Return-Path: <devicetree+bounces-4480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2607B2B8A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:40:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 4CC11B20AF0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B746D399;
	Fri, 29 Sep 2023 05:40:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7BC4418
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:40:36 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C43082119
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:17 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-533d31a8523so14041921a12.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695966016; x=1696570816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNA6C/dNsWVnBgEUTm8Z6rOEbpSML4/gavaJQafMpsk=;
        b=eofZB1GO218NwDJSwjvQksB2IQZLXfOYfv1e95XSPMHtoy/lxJrQvpnvoHkkVKsTtM
         G/dCoKm6lGBk8TSQzkqUbtiDfIrWyvhoMRRuTvUW4gXXwkEIobwfSAUPK64CkQ9sepjK
         HwbqLH04HHhZ+VM3i3L4pCOHHtojt61GDU6vQ7yaDDK9gbbmCF7LQ+KlWSb6Vtx2cpyC
         d+vgr5zjfomZQ75EI39NTLqGqzoxxh/w+Y1h6CqNcb9ujtsH7C9gpPgdjqivWPwQOj38
         23SnjqrvXZpWWYBMtKVw6n4X1cHCu7kMMbQVykCyrViAft4dUYmt8yeUcQDRYL1stMuv
         P2Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695966016; x=1696570816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oNA6C/dNsWVnBgEUTm8Z6rOEbpSML4/gavaJQafMpsk=;
        b=aahprolzL8M3Nv3HPoPakiillT3is2Q6ImIp1PqZy2TdyBwfVpwrVcLbPllJd3Xx77
         8SleRQuEo7dyr+FGAKczhtasfcKBa75+rTAAWGIVafd5qWbYMZlvahkrUjxBnrKWF8Q3
         xVanOLlEfPCmFEKRUoxbkityRKyi0fdslHYnF9Hq8oLGeNtvd/On6OgT8j/2gILywrDA
         MY+lzMYLRKyRfkbC7iAHoHb/LO3QoiQg5K+PYgrOvPKUZBaVizu5BGOPRkx0Vrmw/3kb
         Xf2LpXmUstLtNxYuNoZ79LNrCdBADIs8u61Ly0snsRFy+AHYlg4q+q9TFoAuCInDKfsU
         oXAQ==
X-Gm-Message-State: AOJu0YySgysMuG4y5dlS/vQ8GdrOCpAIXWaTdbF7ZeZYY3V1sbr9MrT6
	q9wdtxS0dfsqlevDiM+obEezDw==
X-Google-Smtp-Source: AGHT+IEIzAgpPIrjHotlL7xx9wjb9KVPZhkJFO8bHlxb7xKK5X2Nyt7i3SWGDLvuniOvgkZs/jFfxA==
X-Received: by 2002:a17:906:5daa:b0:9ae:5aa4:9f7 with SMTP id n10-20020a1709065daa00b009ae5aa409f7mr2491370ejv.14.1695966016351;
        Thu, 28 Sep 2023 22:40:16 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:40:15 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	quic_bjorande@quicinc.com,
	konrad.dybcio@linaro.org,
	arnd@arndb.de,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 28/28] arm64: defconfig: enable RZ/G3S (R9A08G045) SoC
Date: Fri, 29 Sep 2023 08:39:15 +0300
Message-Id: <20230929053915.1530607-29-claudiu.beznea@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable config flag for Renesas RZ/G3S (R9A08G045) SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---

Changes in v2:
- collected tags

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 66bfbef73324..07011114eef8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1341,6 +1341,7 @@ CONFIG_ARCH_R8A774B1=y
 CONFIG_ARCH_R9A07G043=y
 CONFIG_ARCH_R9A07G044=y
 CONFIG_ARCH_R9A07G054=y
+CONFIG_ARCH_R9A08G045=y
 CONFIG_ARCH_R9A09G011=y
 CONFIG_ROCKCHIP_IODOMAIN=y
 CONFIG_ROCKCHIP_PM_DOMAINS=y
-- 
2.39.2


