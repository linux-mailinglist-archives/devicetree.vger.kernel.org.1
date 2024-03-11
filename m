Return-Path: <devicetree+bounces-49857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC4F87816E
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 15:13:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA1671F24096
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 14:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B6840843;
	Mon, 11 Mar 2024 14:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="b4izc26p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF933FE27
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 14:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710166354; cv=none; b=IsB55y6u8FnxicEFmtP4mYeY0vpuVvEvIancZfTkFzXcLKFLwuxdpOA3DytpAvhXtR8yyoYdhryyfk4JZkls9687oUS1N1JdBInCjbh2/ELPDNvg7Bu1+53/Js+mLemJebe9/2gAGnRK+EOvT4+3aI5Nqtb5uxoysrSoVjtCrlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710166354; c=relaxed/simple;
	bh=rVZOsO2PWk9L7eDbDTFt/a8pYc9EpOZUtY86t0+O3oE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lkgFGBSat6pQL+OFwK/cRzOsK9xcAPFMbY2RP1e/rHI4BVwXBqC2O31C/7WAdvCJ61m5DCiG/FbmDmGmXKelf3EuEtyswnnlHhNfwNiFPOz3W4/f76mJpsEimF6Tu0UJ3bFAVQ3A8InM7OOH74QNPme0Low2zBgO6ijhr3S5e7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=b4izc26p; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5683247fd0fso4264216a12.3
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 07:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1710166351; x=1710771151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tGqfMLj68zV4QYB0uesNdYqp81X62zcg2nmph+fkNLQ=;
        b=b4izc26puqsPYrGND3iwWeujcwm/X9ZjhJ1OCZWqGDTmCXVwFLhD4J3+gze9LbWhZc
         iBN+ZtDpTQTPQ1TyoVt3fzxI9wDzAmGB29b5VKRRHwaBep9ohRqBxwODmKN+99VZackE
         FHRVEedMP1onuQhz9UseIufl4ATsaX+4edrF4Qp4KDfU4NW6j70bRxXQADV7uOoY9n8N
         nd27ooAC9a+5dkU7Fa42T8t86RCQ4UGFBRCwWF6lFDHyuOOP1YrwQBQ1Og95WHOBMK+C
         JnNyaVIQU6zCE7Sz2B/QbnELLlkkZsT7MAlW27TUYsqIuw9nSuryD1+kK/ymRIC8nO4I
         oegQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710166351; x=1710771151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tGqfMLj68zV4QYB0uesNdYqp81X62zcg2nmph+fkNLQ=;
        b=Vx7smilChMb/MCncR358s54B1sw7fGv1MLsnolvyoiyFp/z5KIsub9/FNlHe8sHq6d
         Ezm7pv7MIVzyt/DAKBOFYp3mg9mr05H3au/6LADUb9yA5UCRnlQn8t58OLLRqXWSngmy
         HEvyfeMIFbDoVFfdsE0YXnBaBn0eBJe8C7CNK/vziTyTVmyudVAfFK+Sjl0LlHV6qBlc
         yHNKFrf6Km1RxWNwpRekwsWVsL1B/Uboeb3dDz3ZH3/JhBksTGPMjEB1pAuyOXX9z+ai
         PhLx/it//fGkq5f/dPgQr7iHEaAEJ0JGaFN3hYHmnDRBKMGvj3LZGgOVyBUgnrxfJsRn
         q2DA==
X-Forwarded-Encrypted: i=1; AJvYcCW2zkhfVLFzUggWxWpoikYwTlFvb4OB/7arU65SG0hLHgC1fO8UYdMYW4DbITgyQcCCeA5VO8URCWouNRq7Ai0TWs2Ilqesnbcesw==
X-Gm-Message-State: AOJu0YxgHxchsrVgsqbIgNnvCNE0Ca05LV0jNE85xDqrtNQuWt0LJgw4
	dKOpeZ0rCokzhf+stplZg/AICT6O0g/vnByzz9J9Hh+k1/Z2XlTTwxNpBDoczdw=
X-Google-Smtp-Source: AGHT+IGv/UO+y536rcu5Pt1opdzuMvWULQFbRmxnXvsT/KYgcNTaWIUMZPJHXoYy8ixzjKVsCLJOEw==
X-Received: by 2002:a17:907:d40d:b0:a46:17dd:33da with SMTP id vi13-20020a170907d40d00b00a4617dd33damr3853059ejc.29.1710166350938;
        Mon, 11 Mar 2024 07:12:30 -0700 (PDT)
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id kn11-20020a170906aa4b00b00a45efdfdd1esm2863154ejb.40.2024.03.11.07.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 07:12:30 -0700 (PDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Sergey Shtylyov <s.shtylyov@omp.ru>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [net-next,v3 2/2] ravb: Add support for an optional MDIO mode
Date: Mon, 11 Mar 2024 15:11:06 +0100
Message-ID: <20240311141106.3200743-3-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311141106.3200743-1-niklas.soderlund+renesas@ragnatech.se>
References: <20240311141106.3200743-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The driver used the DT node of the device itself when registering the
MDIO bus. While this works, it creates a problem: it forces any MDIO bus
properties to also be set on the devices DT node. This mixes the
properties of two distinctly different things and is confusing.

This change adds support for an optional mdio node to be defined as a
child to the device DT node. The child node can then be used to describe
MDIO bus properties that the MDIO core can act on when registering the
bus.

If no mdio child node is found the driver fallback to the old behavior
and register the MDIO bus using the device DT node. This change is
backward compatible with old bindings in use.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
---
* Changes since v2
- Use DT node instead of OF ode in commit message.
- Update punctuation in commit message.
- Simplify the node selection in the driver.
---
 drivers/net/ethernet/renesas/ravb_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/renesas/ravb_main.c b/drivers/net/ethernet/renesas/ravb_main.c
index fa48ff4aba2d..b6adf608ebfa 100644
--- a/drivers/net/ethernet/renesas/ravb_main.c
+++ b/drivers/net/ethernet/renesas/ravb_main.c
@@ -2564,6 +2564,7 @@ static int ravb_mdio_init(struct ravb_private *priv)
 {
 	struct platform_device *pdev = priv->pdev;
 	struct device *dev = &pdev->dev;
+	struct device_node *mdio_node;
 	struct phy_device *phydev;
 	struct device_node *pn;
 	int error;
@@ -2583,7 +2584,13 @@ static int ravb_mdio_init(struct ravb_private *priv)
 		 pdev->name, pdev->id);
 
 	/* Register MDIO bus */
-	error = of_mdiobus_register(priv->mii_bus, dev->of_node);
+	mdio_node = of_get_child_by_name(dev->of_node, "mdio");
+	if (!mdio_node) {
+		/* backwards compatibility for DT lacking mdio subnode */
+		mdio_node = of_node_get(dev->of_node);
+	}
+	error = of_mdiobus_register(priv->mii_bus, mdio_node);
+	of_node_put(mdio_node);
 	if (error)
 		goto out_free_bus;
 
-- 
2.44.0


