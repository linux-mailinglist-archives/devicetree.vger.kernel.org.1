Return-Path: <devicetree+bounces-254126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 168BFD1468F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66D5E30102A3
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C300737E30A;
	Mon, 12 Jan 2026 17:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q0mooQ2s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E36736998B
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768239367; cv=none; b=FtmsTjGUAqwf0+CiLALpyaeFqg2G6bDJIKAk+We8eIxAFVnpnvX+QGFoHE20gcfu/fyxrB25UxfTFIeicgCfp9zlVI1JYouFZj2fAKol/g0CCsHYb1IqPvMRfLl0xgvkJboq8wB/kWk8cmXDrYoWQkTugWap8X/TQtmqyC6/5Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768239367; c=relaxed/simple;
	bh=O+Byoxmx5aMFUn6zo/RCrmSirKIu6uGFmeSfQ28hT9A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bV7QWhWTL2rV9BMEamLZ027kpnp92J9jONb2C9NIX05dAisYjA8inK6NRBY2Pq2F5vYq9aApycyXPvU0k7n2Wx6AguUvDkrJ+qI7jsgOk3FNDximlD5zD2rV7DKq3FMYP1/rSwAfDM4fQpozgMzl/6za2gIo4zdGprftxpoLxFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q0mooQ2s; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47d3ffb0f44so46641795e9.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768239364; x=1768844164; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ccwZkX7KOgsXzk4XTlSqSZLTxj9NHOK3gCOcjfYtLj4=;
        b=Q0mooQ2sSBLWEayWrPaXz+7d32pCMG3gxCofZ+EhEH8AdeulUEV5t8Dx09g3Sj6wqh
         2e6ZN9roEnfuH6AcFOSikA43vm/tkbEpipNhLDvuE2vdwQVh03He1mqTzEUfAYThKo4+
         5kpbD5aM9S5ZRPDg1mB+PolCzEthu4m7AOCPUFkiZNC/FKAF55PWCMEUI5GnpKS+mb2F
         MWexRnS7dQsJ7e7biOPMeqEGIED7/QqPw8Q4xlPuZas3Jq6G1GZjuDYdODJpfFt4W6AY
         LzLwUf6VbfNGJs+Hxg5XgGaK6QfoxIbFrUcSVJN65crhlNb5Kmnh9oK33JwVg1IiupsZ
         Msyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768239364; x=1768844164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ccwZkX7KOgsXzk4XTlSqSZLTxj9NHOK3gCOcjfYtLj4=;
        b=rZfCjGJJV4zbs3sRgEI+41cuMuxSq7MUfWDp9A+HxY1ZCqz1horkvREC4R8R3Gk6gG
         NfpePnEjeQGU0WiaUJWn1AIJn7skoric3ra4/8yLPtRJPVf5zAj1IKGrg1bZXPpmeZMx
         T2lw+sl5UhS3hgxsT+n/7HzNs3iXIwv8TbxuGriOSdPN2+lfxdaSK6xtcQTC2/GphFdg
         SOYn5UqQ2Jb/J/LHh1kejYdcm6gdxNog7SykFilwmA/Cd9Oc9sSl6eVV3JUWmwzD+VFn
         o9Bvm3YY6A4cw8FbsmMCg1CgCG5YI8TNqzVboSSrCGtK97iXk4BD0I449ft4Qg3P0VLv
         Xfzw==
X-Forwarded-Encrypted: i=1; AJvYcCWTPVdhOZfOV8f7vW+BOTfzWQApfnIzpscKIhlZOUIgiohVyVj88KWY0uCh5qX8LUH+qJBZLnJTAejm@vger.kernel.org
X-Gm-Message-State: AOJu0YwQVhCyd2aEVhH5JHfdA3YmAjHW8W/ZD7YOJkHuJ+cikMOCgRJm
	BmnYOUD3mtAd/EjekWK8D9G13loEOYbNbz3iReUKhjbCkFW6K7LWf99W
X-Gm-Gg: AY/fxX73hXg3VJzA6PGykCVvoaHg/GIZZulpL5yTkRbUrOoUdaQPXt1pxHyP0tyxquR
	sMwM7Q7EX336muIEr9/n9kPuTRZZRaKOK82AQNttcTh+vBGQfStGUwTuByBMOi9o1upKQipSNu6
	PBjWrtQip9ptvKVnXZ6YVeow4lr3L+A/MmAbBx8UNF/iIm6ciitXuOXudueRF6VfhZV+V6bDY9m
	Q2gv+uOayHUEB4pUcnpva5m03+FVCHdFvg/DFDHgsZczbiJWSk1ervrFjclxVD7n2SONe+RZAtt
	nQje9ocrARkGlqBWPTqDVoSmSCDzfDivFatDxkOiRrUgzOaRk/rMERm1DgRMVHHk0mNkbaYe4hg
	jYoZPlcnLCIv4Dm5SK+YZq9fZ/IrIZBBDvbH8jCeY8hJu+FT5uTxQemEiWY0j8iPr3G2vsL48Zb
	AhobAg7ol70pE3fbs2R/3dtlLbce+EARj6/WbuBNLYhFiLu52Yx7LIjPuyP+cMlQ5rIXEMR823T
	8XTF6aK46PjZNxLpFVmm9Oy0dclYfCUj74=
X-Google-Smtp-Source: AGHT+IGd/dXpE1UekMm7fe2Y8Zq6LtE4qiSGPXepY3N31F28l3HQsMUDGb9MfgiyYpESAriyrrGkzg==
X-Received: by 2002:a05:600c:1992:b0:477:7c7d:d9b2 with SMTP id 5b1f17b1804b1-47d84b4a815mr228892545e9.32.1768239364058;
        Mon, 12 Jan 2026 09:36:04 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9336:b2a5:a8c1:722e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff0b2sm39625403f8f.42.2026.01.12.09.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:36:03 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
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
Subject: [PATCH net-next v3 0/2] net: pcs: rzn1-miic: Support configurable PHY_LINK polarity
Date: Mon, 12 Jan 2026 17:35:53 +0000
Message-ID: <20260112173555.1166714-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi all,

This series adds support for configuring the active level of MIIC
PHY_LINK status signals on Renesas RZ/N1 and RZ/T2H/N2H platforms.

The MIIC block provides dedicated hardware PHY_LINK signals that indicate
EtherPHY link-up and link-down status independently of whether the MAC
(GMAC) or Ethernet switch (ETHSW) is used. While GMAC-based systems
typically obtain link state via MDIO and handle it in software, the
ETHSW relies on these PHY_LINK pins for both CPU-assisted operation and
switch-only forwarding paths that do not involve the host processor.

These hardware PHY_LINK signals are particularly important for use cases
requiring fast reaction to link-down events, such as redundancy protocols
including Device Level Ring (DLR). In such scenarios, relying solely on
software-based link detection introduces latency that can negatively
impact recovery time. The ETHSW therefore exposes PHY_LINK signals to
enable immediate hardware-level detection of cable or port failures.

Some systems require the PHY_LINK signal polarity to be configured as
active low rather than the default active high. This series introduces a
new DT property to describe the required polarity and adds corresponding
driver support to program the MIIC PHY_LINK register accordingly. The
configuration is accumulated during DT parsing and applied once hardware
initialization is complete, taking into account SoC-specific differences
between RZ/N1 and RZ/T2H/N2H.

Thanks for your review.

v2->v3:
- Updated commit message for patches 1 and 2 to improve clarity
- Renemaed DT property from renesas,miic-phylink-active-low to
  renesas,miic-phy-link-active-low.
- Updated references of PHYLINK to PHY_LINK and phylink to phy_link
  in code to avoid confusion with the Linux phylink subsystem.
- Simplified the PHY_LINK configuration parsing logic in the driver
  as suggested.

v1->v2:
- Updated commit message to elaborate the necessity of PHY link signals

Best regards,
Prabhakar

Lad Prabhakar (2):
  dt-bindings: net: pcs: renesas,rzn1-miic: Add phy_link property
  net: pcs: rzn1-miic: Add PHY_LINK active-level configuration support

 .../bindings/net/pcs/renesas,rzn1-miic.yaml   |   7 ++
 drivers/net/pcs/pcs-rzn1-miic.c               | 105 +++++++++++++++++-
 2 files changed, 109 insertions(+), 3 deletions(-)

-- 
2.52.0


