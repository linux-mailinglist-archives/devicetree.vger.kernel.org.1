Return-Path: <devicetree+bounces-241056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 068E3C78D50
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:36:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id ADF2A2DAEA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 912A634C9B7;
	Fri, 21 Nov 2025 11:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dTfJ7ThJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF1A34B433
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724971; cv=none; b=fYosiTceM/4fdLHq16wv7mgeX4jhcVcqNvgzELzZJGuGDGVPSZZ3LymE8S5ngYyw95i1KPNfRITI5cx7IUXSZQBDdhlDou0grsddmMKZSNti4SVKwDxIlEtRmE1+JZaJZDT4cfVW/SVfpQiPbzencOfUPpX7AmUJq/S3/+pmuYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724971; c=relaxed/simple;
	bh=txNrbR4kjc/pY51+xvNJPPLRbwZbm/EM4zTlrSM5lhA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P0DfEQZYKePKptvELht7RpRqbFEKc02tSXwQSvhZ98py38G0MsvEcxJ6tggV2shonSlKSGYhJr9nNz4KhiZDa9qY6xIar2QvMKzAiYS36YJGQhpX9x6zjchoy04SaFSACec+2wCDbN3QhMlYrzBmZQQMPH1NAuMQGmZ13E1Tw3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dTfJ7ThJ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so20670865e9.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724967; x=1764329767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkXvNfxvuRshzrX3T7DmPxZ6UESlXh/M5H4rR5c5zXs=;
        b=dTfJ7ThJI1xlL7R/hBx5DVskgFPSntxVjwwKejb4CYoAxxLtjIgMl87b1CByEQ0uKC
         FPDgneU8bOz1kJteTQXaPLV1zA4eKIldW33vFgFMzVXipjLxpLatmNBtLy+mcMRzJ2gP
         i+KlT+v3wwhZQvgxTJVT8l84NdBxjF92SM6FRGAgKZJ/tX2h4wxJicKQHY+OmJ4U2YiC
         Ho0EkTI+v67vh2ck2RcTn5ufXuK+qyI69Jk0YQC1GVfOzGe8JLTycHeI5PvoQT6kpObf
         f+Nv+IwVX19l2jnmB7P6N5WEBjORUZEBNpmhxfxGTm0RnlXtnRPF1uP9FDGDxulvjoWW
         QfiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724967; x=1764329767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xkXvNfxvuRshzrX3T7DmPxZ6UESlXh/M5H4rR5c5zXs=;
        b=FYzLct6N4GKtE0oVFhrfvRtuw1WcW07DidRsEFDh1li3sNLUhGl2zaHGtUSo2AE1ju
         0YVRf4ENhelnEaHKokF2fj0CuTKvVGoHsOqZ7JfTLubnGH16919tmG8uhCmpujaP6g9x
         dDloBiybc9MnXI80MTcvTikVDEvJcOO5Bgmh4RclknAoLCW0zbKGkbtpZLjyCV1U+L11
         l7b85/Hk/JuLmwFwYxH/BFmyh6JTD62uDN9XIjTRM2CpdkuoI9AZwGB+xaIyB48PnArp
         U9eX4uDUkg6do95LUfwZv4VKIS6avL+gbPr//4tqVk+Dl2ltGAhYn4ktH4RwHy0x/rQ+
         dIlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrtLc5jakjoYedzjSoCCZsf/zX+EgNq0x9MDC/CStFKqipR0DmJPDWmB6NfOCGxKwsagD909eUemYB@vger.kernel.org
X-Gm-Message-State: AOJu0YxCGzuK6YU2aQ/gd3nA0Y7DSLolYTtJi4YS5P4DNsUaH+3zcht7
	79v7O1fWPJrVLaGKjVC3aBeU1XnXi40JbwiksGiB9d7Ft9YZJa8xaShx
X-Gm-Gg: ASbGncueI5Y+VifHNh8ZSTHLrY9jvyXyh5lxnf+1e7ZYpKou9MnvUiFd0pCHj0USsYx
	Qplt5e20S/hv4aC9snfO1w5BfZaVtWczij9wwBLzuMaX/Usf6v4phXZNh0llydSE6fCY+m8yPzE
	omeZ/AWHjw4WUIpIBirNbKAACa8k1Pt71G1KLsXNLKfSep9qMdT3yFjgkwKdEVmSlJrErEamRWB
	gJoDQU+rEeQtcHB9u0vwTbFXau0VfhCOOqoXSiD250HPAngJB78LMJG/07oj7kAGfcUVtd8teZL
	YbzUNRxBFMzuGWFCtnWEKOmpSBzEeO4rVu1+JuuvF7Dhz2nH1VUHRlvllzNI2Plo4lJktJcOux1
	ff3wVM08swTn2lMXXNNnGx6DqUISLuBaeSh2RVoCC0MGXl1Di7i5Cb753mLneOogcd9VLsdmc0S
	z73yEbcbzmO1FOo+p85dUf6txEAJWaGjP/Fkw=
X-Google-Smtp-Source: AGHT+IFBmFYvdBEIuzrTSbSnwbk43MBJtoPoX7HxLBKhni5O1VX3pQuLjHyH3K2qpXRDhjoQjPVdbQ==
X-Received: by 2002:a05:600c:c492:b0:477:429b:3b93 with SMTP id 5b1f17b1804b1-477c1143089mr17859875e9.18.1763724966973;
        Fri, 21 Nov 2025 03:36:06 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9cce:8ab9:bc72:76cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3558d5sm38732465e9.1.2025.11.21.03.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:36:06 -0800 (PST)
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
Subject: [PATCH net-next 03/11] net: dsa: Kconfig: Expand config description to cover RZ/T2H and RZ/N2H ETHSW
Date: Fri, 21 Nov 2025 11:35:29 +0000
Message-ID: <20251121113553.2955854-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

Update the Kconfig entry for the RZN1 A5PSW tag driver to reflect that
the same tagging format is also used by the ETHSW blocks found in Renesas
RZ/T2H and RZ/N2H SoCs.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 net/dsa/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/dsa/Kconfig b/net/dsa/Kconfig
index f86b30742122..a00eb3bdcd0f 100644
--- a/net/dsa/Kconfig
+++ b/net/dsa/Kconfig
@@ -159,11 +159,11 @@ config NET_DSA_TAG_RTL8_4
 	  switches with 8 byte protocol 4 tags, such as the Realtek RTL8365MB-VC.
 
 config NET_DSA_TAG_RZN1_A5PSW
-	tristate "Tag driver for Renesas RZ/N1 A5PSW switch"
+	tristate "Tag driver for Renesas RZ/N1 A5PSW and RZ/{T2H,N2H} ETHSW switches"
 	help
 	  Say Y or M if you want to enable support for tagging frames for
-	  Renesas RZ/N1 embedded switch that uses an 8 byte tag located after
-	  destination MAC address.
+	  Renesas RZ/N1 A5PSW and RZ/{T2H,N2H} ETHSW embedded switches that use
+	  an 8-byte tag located after the destination MAC address.
 
 config NET_DSA_TAG_LAN9303
 	tristate "Tag driver for SMSC/Microchip LAN9303 family of switches"
-- 
2.52.0


