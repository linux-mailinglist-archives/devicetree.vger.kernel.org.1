Return-Path: <devicetree+bounces-119483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D77DE9BE6A4
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C1CF280638
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 12:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851921E1322;
	Wed,  6 Nov 2024 12:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="i6EBt7lA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7D01E0DB1
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 12:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730894505; cv=none; b=qWr8OjU3yy2BwpWz9ctil4nPCec8cZ9eFKnQusJphGNhUZcKOQ+CqKu7ODCEIzVoLknH686yzx2gfMDNd2JJxVd1m4EKfPaxz2KohcQ7+QK6i6Z1WzCYcHZYBh4dcS7pwn1zE85dttJIG1GXHdayCtdEjVjQG63FXTKp1JdE0GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730894505; c=relaxed/simple;
	bh=gkZYPsH/vb3WY/1lIzQ8Dj4FgRmceTUwrzbmFMLCPH8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mcixDfLkl5IQRIxmI/65u/RRpE952Szs3ceE/h0NVaU79EI8oE1Ul4GjC+AkPR+S5cxhzUCsYhdDH/gSXW4ZhFHKbwAfMCG/0Nwa9Fgxg2t3UHnhZ9pOJIhlJ3vsNkIvuPAiu8gO/JoNevbA8kjfGHIiiSW6UvnyeFVizHrn4hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=i6EBt7lA; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5c941623a5aso1445268a12.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 04:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730894502; x=1731499302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DTk49kg3sxHgDomjJGsue14cSnQ2z3PLgvI6znyFaQc=;
        b=i6EBt7lACXMMBbi5Okt4M1bwae2aWgrwLVTy06xOgSmOUy9IPLmAnBayrwEkDz7ti+
         m6Fn8OOb3z+s/WlLSscFh7J+MTBG/WMmKA6DfzbxLJWXEO0l/wz9WgYTPEMt/WKvLkAp
         FTQGlkI5czhRl1iOb79WgJOkfxBifDQrpou8T9A6ZzSP/BXEz+iDrUxW9kwfdl2CV9Pt
         z5bRSYOAmfW65k55uRi1E69Ynv7lTyNioLIEkV8qq2IW4l8alEwuJ6a9dKRi566NwcB5
         pvgFikqFs81bbqezshEylIXnbDOkJotcTCSyaIuhZ8EMMRheyhxYLdA08Bo15wA5v7BD
         axbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730894502; x=1731499302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DTk49kg3sxHgDomjJGsue14cSnQ2z3PLgvI6znyFaQc=;
        b=FzlbM8Wumk9hv8ZVycgllSlSez3L7MMg9CXzWYTGYc3OEFIGruNgFHCGVViPjFuQWP
         tV8tvPsk6YxCV5z8aS9WJn82Vjbgq7BVF1A6sfKqViNVSQQFrDfRWTB0aphnbKJFmSph
         QZ0uF8XO+cO0XumEWMZxYV8fVS/Hs3uuQ35hmJ3TBmRL3bOdGrknL6HdLrcfDFdAVar1
         jkSuCU1eDjCdLMZ/Ce3xNDjcxwCS2md00buBYxM3D70XbrzoIn6EK70K4aNggN5sCxEp
         M8GMWdxbBoYKY+2O7YHigAdajL9x7nzx1WBJeWPCREe/0pxmt3b7qmhleZAkHgavfQIN
         vn1A==
X-Forwarded-Encrypted: i=1; AJvYcCW02gL8zkB6OqbEdigcKJFLmJ84zXhlUQq8RKdskHbxJvv7Q/vo9E4ssJPQ9+L4hC6l70x3yPQ+1LOV@vger.kernel.org
X-Gm-Message-State: AOJu0YyStfd4AJSTr2jCm1boS8hr0vETBecH5MAWQZHnUW5DRTXCmFBp
	R1uMff6RjVxUdsAR8uKS2MIIreVW6FtHYlj1RZmT8X/LlhROpYVihFVccvgylQ8=
X-Google-Smtp-Source: AGHT+IGsGf47lgcF/WyQLx8YrH90sARYpGTUy3Y4l7vmameX6vDncBFwbLkpZsYyaEeHNlLQDhUJbQ==
X-Received: by 2002:a05:6402:5383:b0:5ce:c940:5182 with SMTP id 4fb4d7f45d1cf-5cef54d1a82mr2310638a12.11.1730894501685;
        Wed, 06 Nov 2024 04:01:41 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cee6afe528sm2697984a12.55.2024.11.06.04.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 04:01:41 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	lethal@linux-sh.org,
	g.liakhovetski@gmx.de,
	ysato@users.sourceforge.jp,
	ulrich.hecht+renesas@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 6/9] arm64: dts: renesas: rzg3s-smarc: Fix the debug serial alias
Date: Wed,  6 Nov 2024 14:01:15 +0200
Message-Id: <20241106120118.1719888-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106120118.1719888-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106120118.1719888-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The debug serial of the RZ/G3S is SCIF0 which is routed on the Renesas
RZ SMARC Carrier II board on the SER3_UART. Use serial3 alias for it for
better hardware description. Along with it, the chosen properties were
moved to the device tree corresponding to the RZ SMARC Carrier II board.

Fixes: adb4f0c5699c ("arm64: dts: renesas: Add initial support for RZ/G3S SMARC SoM")
Fixes: d1ae4200bb26 ("arm64: dts: renesas: Add initial device tree for RZ SMARC Carrier-II Board")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 -----
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi     | 7 ++++++-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 2ed01d391554..55c72c8a0735 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -43,11 +43,6 @@ aliases {
 #endif
 	};
 
-	chosen {
-		bootargs = "ignore_loglevel";
-		stdout-path = "serial0:115200n8";
-	};
-
 	memory@48000000 {
 		device_type = "memory";
 		/* First 128MB is reserved for secure area. */
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 4509151344c4..33b9873b225a 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -12,10 +12,15 @@
 / {
 	aliases {
 		i2c0 = &i2c0;
-		serial0 = &scif0;
+		serial3 = &scif0;
 		mmc1 = &sdhi1;
 	};
 
+	chosen {
+		bootargs = "ignore_loglevel";
+		stdout-path = "serial3:115200n8";
+	};
+
 	keys {
 		compatible = "gpio-keys";
 
-- 
2.39.2


