Return-Path: <devicetree+bounces-16985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6627F0C67
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:02:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C96DB20E95
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 07:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C119E6ABB;
	Mon, 20 Nov 2023 07:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Uh6UBi3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8306710E3
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:01:45 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40891d38e3fso11581095e9.1
        for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700463704; x=1701068504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uj4K1pfoFmhhsoRQVm6vixpVPFIpo1qe9oMsVe2v1kc=;
        b=Uh6UBi3WA+R0O4PX+8lI+jPWnt1T6LV+QZ+jP6jq+LmgzkhDFnKylZxKuUoRGpJp4O
         BaDHRj3ro5p5PpKENYni+3gQULTE+6eiG+6YLe+juzlpGGRXBWOlAWZ+8ve/FOOz95t+
         4rn3E5EnJ0qFODYgP8enVvX/gsfNeB31x/mss9g3ENoL8JKsVO/ZSzBega5jSpsUWFqj
         fHVMCdt0EV526WbCEVaPxyh7yUnAI2TLmuXyOrrG2i1zRbdd6QOM79nGOfZGGw5lKGPt
         G6s0IvuI5LD1czBJINQAxu8zgwSDymwbrU5vw6UwEMIDIwkkyf5TSDuJocpdXmsD/mAM
         BBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700463704; x=1701068504;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uj4K1pfoFmhhsoRQVm6vixpVPFIpo1qe9oMsVe2v1kc=;
        b=JXMskmgQFqTbAcs5OW1XVwoH3pvCwiMIEj2HWZOjLx01IQCj8qMm8uDCRf/uk7t6Fr
         dp5oK8UA3I1c8PAlLdJ7bGfUXglp9YBXMN0BLOBB6McFv9pYG1IUmdm7yTgdouU+3hHS
         Nakt+K/nmILQ4lbdVBN4nhtuhGp5XBPerZmXv+u6JcihU1VPGWRNAYuCYWcNUAJIaqjs
         UPu8TlJXvHmHhY6/WfIfnRwYY0XI0ybK8y7K97UB8dFuId/R4hrqu5nbSSjbGslbniL6
         64o/hl3KP0EQrVKIV4In0EjOVQK9t1ZnC8lMRi6gnGbn+acwOI+7GahpS9V0QvHMIZZU
         KLTQ==
X-Gm-Message-State: AOJu0YyPgJ4TuuQPMcwRZqS0jP15ehaQZGgSI5dyfDwyOpRI0jP7ukjl
	MuQm+I/Ly2kKKbW8zr4VeOycZg==
X-Google-Smtp-Source: AGHT+IFbHUCjfCJLgApfU02GbEBAEEDTn2cUfzkYAcqxgH3UIdeUTzC7eHrWRIOHe/xLOqhqenD/bA==
X-Received: by 2002:adf:fd4a:0:b0:32f:7cea:2ea2 with SMTP id h10-20020adffd4a000000b0032f7cea2ea2mr4049149wrs.17.1700463703709;
        Sun, 19 Nov 2023 23:01:43 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id p2-20020a5d4582000000b003316d1a3b05sm8777667wrq.78.2023.11.19.23.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 23:01:43 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: s.shtylyov@omp.ru,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux@armlinux.org.uk,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linus.walleij@linaro.org,
	p.zabel@pengutronix.de,
	arnd@arndb.de,
	m.szyprowski@samsung.com,
	alexandre.torgue@foss.st.com,
	afd@ti.com,
	broonie@kernel.org,
	alexander.stein@ew.tq-group.com,
	eugen.hristev@collabora.com,
	sergei.shtylyov@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 14/14] arm: multi_v7_defconfig: Enable CONFIG_RAVB
Date: Mon, 20 Nov 2023 09:00:24 +0200
Message-Id: <20231120070024.4079344-15-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

ravb driver is used by RZ/G1H. Enable it in multi_v7_defconfig.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 10fd74bf85f9..9a04564566a7 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -272,6 +272,7 @@ CONFIG_KS8851=y
 CONFIG_LAN966X_SWITCH=m
 CONFIG_R8169=y
 CONFIG_SH_ETH=y
+CONFIG_RAVB=y
 CONFIG_SMSC911X=y
 CONFIG_SNI_AVE=y
 CONFIG_STMMAC_ETH=y
-- 
2.39.2


