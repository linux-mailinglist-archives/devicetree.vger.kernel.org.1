Return-Path: <devicetree+bounces-49632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B92B87720F
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 16:55:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E4B0281BCA
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 15:55:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2572B47768;
	Sat,  9 Mar 2024 15:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="heZy+aDX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911CE4594D
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 15:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709999705; cv=none; b=gE8WTmoh9UGpWfRssnPRSAW3VnhsH9U8dpUS6hPJ6/Xy5F0cNfItzkGRuPfFqzp5bBGjlh+MXxnR9Jp4d5FoZyF971KXOuLD+rFTCv4A3wDVMRPO5MktyF2OpW1F4HpMausZbuW7VIudtfgY49HVZvqc6+t4oa0jA47yhV/wdJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709999705; c=relaxed/simple;
	bh=oxb58H+3dJL1CUmBT7+dL71n3m5oVb4JbCJojOpkuYI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e5u6MHDfaKipKVIRmvfo4jXuRmnHw6HmAOz1yUCUyN8fUmxjYiu8NC0t/Q7SEk1gyQK8tWhEmI0qSrdI5+rejalmToMv2v+BuNLNZrEZg0XuJRv94Orl9Z9FqHOhCEwoaXOPUl8VqjpREKZzwFXaEUDMDHr5py0kFTGb1oYqxNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=heZy+aDX; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a45f257b81fso183379866b.0
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 07:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1709999701; x=1710604501; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZLBg9xRWeOEFGDBrQs7OucUs0Od0oeREZgUIErgurhk=;
        b=heZy+aDXlJeGbKVWKYgYdQT8r/MrQSG2MRcfUTnMwMntU1BZCwnBrnVizOKvHmdeev
         J3e4qE4X73ZFlD8fyXEX9AeR5tDwkfNWKyAS0MadIyhU9zoj4+gXrLFs86I0RqV00cFQ
         LyaEbe3CC1Ek0z3DoIZ3f62CX4icO1UTpk4J3KX+bctWyaURlUeg7O0igVy2pvQh0AWd
         LvKc00yZwcoIMu+tY4fFnnJipNOKZirT6m2RRawmb/dYkSNSUqCP+VOYYxhSLzEJH8dj
         cJcGDu/hGS+i9tNP5d3/OZbxzmkvoht/quqatTXLJ6RZ1oEDs+qmDmIsXYnpOAiDG7WQ
         GnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709999701; x=1710604501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZLBg9xRWeOEFGDBrQs7OucUs0Od0oeREZgUIErgurhk=;
        b=OxqeDQU8Kl3CJZLl+Uq//IGiTu5YQrBUIdd4lg/x64u/t3GiZJ0OYz96UiXW+7cNV2
         bBgG8nZptIft61Nrtxli3YAplBKF34GrdwonexndX8y2wfBqd2npYyEIwDIrIG+TMFpe
         MkLbDO/QUziaPkes55bHj8/TltlTfqXsuobHQw7at5c6HR7+4xprpzbOxDKvgZVDC3Z3
         qfgxxJ0podQy5ldOotXn3oqjsdnD47YIoc4KBoDB0sw9WTbmxHVbIGV7+Ec8UEMfZmPk
         Z5wrase6/ZLsU+rqK+ncB0uSkldhJNgimF1e+RGowlkQ9LEHuHbFaNSBH9fL7AkVQiqX
         TPbA==
X-Forwarded-Encrypted: i=1; AJvYcCUjh3AJYNGJIZR5lhQunk2tVC9XL90S2Jt45uehY1Pb1/KKzGctPyWDBML1rleYu8e5nAp5vS6F44PJbiewpDaokk2BzgqCDiCGoA==
X-Gm-Message-State: AOJu0YzpccVfhk467b87KL9C5ycsuChNsb59+l/XFNgIWddcGGQSB+4b
	HRvyqdbVkQWwmSjjruyZRHEPMDDwX+4rrQbgX6nE+qb/r0JzZABM1tL/5bYlcl4=
X-Google-Smtp-Source: AGHT+IHFKrKh+q85JxwpYDVCMdheOuNJVT349n5QNXE4KZnL8RYGyBx+xA62cTryxrHnY6Xf4F1XTw==
X-Received: by 2002:a17:906:c183:b0:a44:2ba0:8200 with SMTP id g3-20020a170906c18300b00a442ba08200mr1106169ejz.26.1709999700834;
        Sat, 09 Mar 2024 07:55:00 -0800 (PST)
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id kq17-20020a170906abd100b00a40f7ed6cb9sm1005216ejb.4.2024.03.09.07.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 07:55:00 -0800 (PST)
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
Subject: [net-next 2/2] ravb: Add support for an optional MDIO mode
Date: Sat,  9 Mar 2024 16:53:34 +0100
Message-ID: <20240309155334.1310262-3-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240309155334.1310262-1-niklas.soderlund+renesas@ragnatech.se>
References: <20240309155334.1310262-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The driver used the OF node of the device itself when registering the
MDIO bus. While this works it creates a problem, it forces any MDIO bus
properties to also be set on the devices OF node. This mixes the
properties of two distinctly different things and is confusing.

This change adds support for an optional mdio node to be defined as a
child to the device OF node. The child node can then be used to describe
MDIO bus properties that the MDIO core can act on when registering the
bus.

If no mdio child node is found the driver fallback to the old behavior
and register the MDIO bus using the device OF node. This change is
backward compatible with old bindings in use.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 drivers/net/ethernet/renesas/ravb_main.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/renesas/ravb_main.c b/drivers/net/ethernet/renesas/ravb_main.c
index fa48ff4aba2d..b62f765ce066 100644
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
@@ -2582,8 +2583,20 @@ static int ravb_mdio_init(struct ravb_private *priv)
 	snprintf(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
 		 pdev->name, pdev->id);
 
-	/* Register MDIO bus */
-	error = of_mdiobus_register(priv->mii_bus, dev->of_node);
+	/* Register MDIO bus
+	 *
+	 * Look for a mdio child node, if it exist use it when registering the
+	 * MDIO bus. If no node is found fallback to old behavior and use the
+	 * device OF node. This is used to be able to describe MDIO bus
+	 * properties that are consumed when registering the MDIO bus.
+	 */
+	mdio_node = of_get_child_by_name(dev->of_node, "mdio");
+	if (mdio_node) {
+		error = of_mdiobus_register(priv->mii_bus, mdio_node);
+		of_node_put(mdio_node);
+	} else {
+		error = of_mdiobus_register(priv->mii_bus, dev->of_node);
+	}
 	if (error)
 		goto out_free_bus;
 
-- 
2.44.0


