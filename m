Return-Path: <devicetree+bounces-240266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EF170C6F785
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A43C4FDE17
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CECC36655C;
	Wed, 19 Nov 2025 14:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="UELPLbVE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60004364E96
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763562954; cv=none; b=rpbbyBEVH/7t6UuwD07dd/aoGcRFaFyjpBfYuZE5Y52wqlil5DBL1ctoIv7XdRRjimVjoMk3MyUhLDk1pcxIkkT5E0YDwkCiPIwvLgqlZkGnpugBo7mSOlb3yiGmU5W27u/O/qOiR+PBOUqEcP1/2otznj/+5cwELcyYivtIC80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763562954; c=relaxed/simple;
	bh=11llYBJlsNGu46qBbvgUePXbm5WDYTu1X+hgJv0rNa4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tlbVqaPHk1iLLftqMw2N/DEiQR9WMqSnzkOpHZNmjigSkJtJ4d4uoWqSwtuQ+HselgOxlIzfFTa2kigSHESz16sVAO97Wh8LJB3/7dajD6YqRlL9lfEp9LdCO9Pv96SDbtcDdwi/qCmsrdylSicKyyrAEv/tQMapMJUHhOHyrzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=UELPLbVE; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42bb288c1bfso3009865f8f.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763562951; x=1764167751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNQs+jMGb0vll66kRY8SuunRCpU0Vo1BfiANzBw4F1c=;
        b=UELPLbVE1WnSMn/cS4lA838slWRaGWPaZgsLYDymmrkD9LBuFTDgHzM23VXe8WxxwR
         EoXAw6icDtrX49NMgpFZ68iDHNtzvQMcmh2tkOY78eYq+a3i7pmEo44Z8ZuZd0FndX1m
         RifGHZgN/DFOoRXyQHwYL/9D2vy12FZYxCQ55zQWA8GKGsmzIGNBIrtlSc67npjPr5f6
         4pzz2PVwicpeMTWIXktz2kJSfCWjTwskHCuKQVTkLyXBoCbIVPI5wFtyUG+LUHT1ZB71
         FXR5XDq1Qmscc7H3ZrPmvxn7umgjahqA0Y5pihUFoonsIrOwZQUzlgpUWG03OdsjzZ5G
         Frdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763562951; x=1764167751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YNQs+jMGb0vll66kRY8SuunRCpU0Vo1BfiANzBw4F1c=;
        b=j81RTa5vPA1Gasw2j4Mc/8UcMtUOh13+7CrKkqVprpW5SAGnuqRarn7DvYmbuq7PqW
         Sj1MIaN+wu4HqpONw9IlOUV0dVXesm+rYtVFMR95/2dlmNEGu+BmxJ4oBp1zZArKSLs/
         SDLwJ43w20ZX/K3tvfeKKosmjtMBAbY5AkvpaQDfDRA6HaLdrKyM9GUCA/KEdBXnPZ1n
         dLvlfydtTyyYlf63H2uhi5juqo79Ody+yyMaHzxJKyT4yzOimO53nhZdSfrKz3/iY8Wp
         bpZt+tbsn37e4hUEH6jItXGZ8eDmVeUeUtLH27V8r6Mnpl1laxjaetANXvTK7C7bQrOs
         tDZw==
X-Forwarded-Encrypted: i=1; AJvYcCUOHb9Dp9ruPcv1kWNwBUMH2+GlDF3Y7E7N5BjVVFaft4Ag8RaR8+UKjK7L6dV0kSgPySQirSO3iked@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6k6fiYScDvpUQMTqfwtkb3QakZHCH3gl0pvik0ZmmT10q/g0J
	Fp/e9xJit8TAdgni1JSedrz0LtgTkrE8F2xpfZa28v6HEkc9gvKNBY0gpob5O13y+wo=
X-Gm-Gg: ASbGncs3wCkgpu2fGBPoBssAF9f5eFH71PAa51eJkJTwTfsnJ+tZWJ37sSn8/Kb4WsB
	WsWxuDwRX5elWTnznQfVCJIeqYS78ar6MmJi6zE2LXy5c63rHPBy+GVCoGX1bB3d4JjpOoEKhOb
	S9u5AjTY/9pPrmyYsEriO5LjfBm4vBNAF+vJTC+XhG8dZ7E6njEuyOVpSVcRfJtOmnYsWrsT/7a
	2oxIjVyD8tLvnD37vGOuI7LXQ6qjZ64yUZImayMXpHML1lJALhD+OwthZPVXqS/NXh5r80z1mQq
	pWSgGQnJ81Bl7f7FmDrHVjjMCwo5TOIKky9woGpA8Iso+C7DRGOueCn1EJmYxNcSIcsqcbWDk3n
	5Jsxlefb6cFpKyr4RCcbuMNIkqh7K4rf3ex3DoJPS3ZA+53LuzpBgbtEXo3arb6svUrQK6tLWQJ
	vXj0g8nnBJ9B6ifj21ba1OMsWUA7Qw1qzHhzxVWXbfqGcSeS7bMHE=
X-Google-Smtp-Source: AGHT+IETrxRzLL90ssPWWldKaErlCBtXruYKnH8kKJ9M+zXXzSsOk2J5nfNKsRlo8J6q3wsX3XzrlA==
X-Received: by 2002:a05:6000:1a8e:b0:42b:3bc4:16dc with SMTP id ffacd0b85a97d-42b59350576mr19482167f8f.21.1763562950591;
        Wed, 19 Nov 2025 06:35:50 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm39973399f8f.26.2025.11.19.06.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 06:35:49 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v8 4/6] arm64: dts: renesas: rzg3s-smarc-som: Add PCIe reference clock
Date: Wed, 19 Nov 2025 16:35:21 +0200
Message-ID: <20251119143523.977085-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Versa3 clock generator available on RZ/G3S SMARC Module provides the
reference clock for SoC PCIe interface. Update the device tree to reflect
this connection.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- collected tags

Changes in v5:
- this patch is the result of dropping the updates to dma-ranges for
  secure area and keeping only the remaining bits

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 39845faec894..b196f57fd551 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -172,6 +172,11 @@ a0 80 30 30 9c
 	};
 };
 
+&pcie_port0 {
+	clocks = <&versa3 5>;
+	clock-names = "ref";
+};
+
 #if SW_CONFIG2 == SW_ON
 /* SD0 slot */
 &sdhi0 {
-- 
2.43.0


