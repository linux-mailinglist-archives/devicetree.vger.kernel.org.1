Return-Path: <devicetree+bounces-241064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C16C78E1C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 647514EEF15
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD85C34F487;
	Fri, 21 Nov 2025 11:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hpy1b+Pz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A47734E742
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724980; cv=none; b=MHyOxpKmCBKpU9hKmLs1BimdhBztG3F6knPl7hCs0v/91pQOzTiLJGdrVfYYbNKW1bUZuuIgEulGg+AWvt4VocxwenrKVBCxKPXWA9qNyu5+uvp21EdGkbm5Apgv9Dr6wlGYf871e31zryAhMhSqfD5o/nntr/M3WjAnhcsE7Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724980; c=relaxed/simple;
	bh=hchXSgygJWBcEWG+hD4fRh8j8Qkfp0pxrBvdqBRJ3ko=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=psdsESBZYCYVuWuYhI8dSi+eciC/6SId4pnKUwDdXLlT3Ymcve+IuJdho23fWwNtW8o3BJSsF+oRazk0PmfuBV2AsAjNkq+3FmwWCro2EXwvWiZxyXT+YLYnXUieWeXlTF16kHv+RA5Z1wlQC16nzlomB5I0pC8uE21tYQbLSN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hpy1b+Pz; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so11352385e9.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724976; x=1764329776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nacbc5WMY0LOOZ8qaHyu8WlhOPDhH+6WVnm9Wyr/V+w=;
        b=hpy1b+PzjxQSWT/euyRXu6nYKCSF4IB5UCCXN65JFfcfEPzxIN9lhjI2J7PrVB6tPb
         MhyFK1u3urL/IqlQW30E07/lQP5x0hnuhjvANm0P84IbAjZJ62MmxFD9j0eCC4YySWOo
         cV3S/jtEwOkdnyK2s7N4WHO/6Yh6EWhXBCdwuugs8OrYI2odVPoQ1pIW6WJcaN3dkKZO
         yXLum70BSh9zAT0mtS8wgEBjPeGKHutTfM1mpZ4UTwdmyeY1FWw2YLX9Iz4G0mrGPaV+
         a1sNd4ex7UpNGj/CYAMuhDIa0R/QEZtdP6VX76aGOv+dwX5aj1TxI4VBKUbRmM7cEMYy
         Rw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724976; x=1764329776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nacbc5WMY0LOOZ8qaHyu8WlhOPDhH+6WVnm9Wyr/V+w=;
        b=cLQXiXRxs6HHdy/Vwz9+3M/vMY1Him2OXjsDVoM+dz9ldSVzRC/zmxMEmgIqmmeukk
         XwT/dy+mLFNrEXP3jHMiwaOYp6x+IiuVhTOz0f525pdAaQUdxq2N6P1iN8ECW3x/XQ1G
         HVBn9biFHWdERDhLDX+HIIYFQxmIGfK33qSf4K5Yip6jxLA9kgy28l/+P5ZWM5JqHd7W
         kIgMAB2hpES2RKpk02iuYaTOmRXQFDRQBywABf5SwFNNeim0QsmnpSai5CFmuP7iAK/T
         aor9+miAR7pJndT7LAoxRnCaLqpN9j1YX2Ww5MAnHMcV3759s49PIg8iqE0Uk35U7szd
         y0gw==
X-Forwarded-Encrypted: i=1; AJvYcCWX5p8eonzgqdnJ9tVfxud2nOv8CofO4yYqB44SpZdzf/stUNU/D4KQ+fBIb8N6gpkV11XeJNX57GBD@vger.kernel.org
X-Gm-Message-State: AOJu0YyMGkBNPQIkiKprc1iq/H/CF7nj5N+dy8xtLhAXz5Jz8hja6qKQ
	t4zpK7rKrtThIrwqcRdEQFjuxFhxYUqWjmiX0vflQNp/Qhw6tMaQDhOO
X-Gm-Gg: ASbGncvE2dmm3NM1zzGC84c8BfAgGuHtggsYvA2twgIo5oUm+WtKEUtYlVkNMCM4//x
	UOELhdb0QvkHHKO9x+mLsekA06xF+O8XxvRBMoOys2bBMujEWftHdzY8QLyUSEGxeaytCCN/qT2
	JN9aoCC8wqvOQWM2nnlFLulLoR4vHZ4dNavJvi4nizZFh5K1RbkDSXkERB4de65AVZpQakZ7dUB
	crxNNAjMZOp5lrL16YF2vS1vVqA3Lu82MwwxY9Bxg4dOAKDZoihKzZe+CprFqUP1gbfOTkXrSrq
	9/M772q3De49lFXbNwehQtSAqykfseMIf7nYwjRSfWaiOML8bAOnoLnl4Pw2XXud27l+KEXZQvb
	MXC61ONARNyRRkTTywlAonihEpYV61fHb6mMzGC++Ma8URJjS4q14aBlVHNUHRsLalt3OnO5wi6
	iqtI8VT9ccvkJg/GIX2TL2jtEvp6sehpVHTlc=
X-Google-Smtp-Source: AGHT+IG2HURpS3BsfaEjL3nAImQmP3zOqLnyYh4zvU/JiS2Ijzmk0gOHYb3O9eu50FjD0hI6GGLg8g==
X-Received: by 2002:a05:600c:3593:b0:46e:32dd:1b1a with SMTP id 5b1f17b1804b1-477c0162f1fmr24084985e9.7.1763724976029;
        Fri, 21 Nov 2025 03:36:16 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9cce:8ab9:bc72:76cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3558d5sm38732465e9.1.2025.11.21.03.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:36:15 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next 11/11] net: dsa: Kconfig: Enable support for RZ/T2H and RZ/N2H SoCs
Date: Fri, 21 Nov 2025 11:35:37 +0000
Message-ID: <20251121113553.2955854-12-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Update the Kconfig entry for the Renesas RZ/N1 A5PSW Ethernet switch
driver to depend on ARCH_RENESAS instead of ARCH_RZN1. This allows
the driver to be built for other Renesas SoCs that integrate a similar
Ethernet switch IP, such as RZ/T2H and RZ/N2H.

Also update the help text and prompt to reflect support for the ETHSW
variant used on these SoCs.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/net/dsa/Kconfig | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/dsa/Kconfig b/drivers/net/dsa/Kconfig
index 7eb301fd987d..9c44c530ebb1 100644
--- a/drivers/net/dsa/Kconfig
+++ b/drivers/net/dsa/Kconfig
@@ -85,13 +85,14 @@ source "drivers/net/dsa/xrs700x/Kconfig"
 source "drivers/net/dsa/realtek/Kconfig"
 
 config NET_DSA_RZN1_A5PSW
-	tristate "Renesas RZ/N1 A5PSW Ethernet switch support"
-	depends on OF && (ARCH_RZN1 || COMPILE_TEST)
+	tristate "Renesas RZ/N1 A5PSW and RZ/{T2H,N2H} ETHSW Ethernet switch support"
+	depends on OF && (ARCH_RENESAS || COMPILE_TEST)
 	select NET_DSA_TAG_RZN1_A5PSW
 	select PCS_RZN1_MIIC
 	help
-	  This driver supports the A5PSW switch, which is embedded in Renesas
-	  RZ/N1 SoC.
+	  This driver supports the Advanced 5-Port Switch (A5PSW) found on
+	  Renesas RZ/N1 SoCs, and the Ethernet Switch (ETHSW) found on
+	  Renesas RZ/T2H and RZ/N2H SoCs.
 
 config NET_DSA_KS8995
 	tristate "Micrel KS8995 family 5-ports 10/100 Ethernet switches"
-- 
2.52.0


