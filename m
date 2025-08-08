Return-Path: <devicetree+bounces-202578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 56879B1E21D
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:19:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76233580905
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 06:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 324F222A804;
	Fri,  8 Aug 2025 06:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Yxm55OY/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4590C2253AB
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 06:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754633911; cv=none; b=O/NouKr3+UOGdowRHbxAvDY5rII1VoFGcUxaniwo5d1sNcn+yD+FVEspxYUJhV/Dq9c2cCF49X6tKxQL4jW8izQLWRIgQGvy9WuRv4YlE7gJepfSBC1gzIUirIfWRxxqIrIYuJUGNOeKA/kEs+ThM998CXMtZvrn2HqHy+zNgoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754633911; c=relaxed/simple;
	bh=5EMuFxZZvKXeroJTxPHmMFr2FhfaMFLO6e3lqjZrqx8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sfag3iiiWuufSUD60r67IxOR13mXrZnkc5wYX8q+/5VVdvHSqIZgdSJLiQ0Bx/ksrAysardyzjgEEKCCqdrGA761wUtHwrM6Jwdraq+z4Ua34Qtl9iLTIYzXtY1jvFuisM26pVupp5QuXrzyRm+G6WV6jGjTCE3+BZN8/9vX7oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Yxm55OY/; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-615398dc162so2819371a12.3
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 23:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633907; x=1755238707; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nL3e94u2V9QLjXt1P6arYe1Izptm7cDG3511sG7BR2k=;
        b=Yxm55OY/ZednOtaY6ek+wrxnFSpndwufCI186pJ0G7ZNrq0zwlvlcC0vOOiyrAvy6E
         aKuGscHhlbxpTnbYPruC6nxmBdkmFaulCtDKuKQgbSKyCM0DEii9vatUDphYjIG1jNrl
         Fosv/OH6hP0pLwCXaCo/V4EsfgPLrtcO6g6LUhBgaX695kfW+MjkUiRwJWIEij7KFbv4
         iC4zEd26AlNXY+VEACHV7jWMLtyjWe9BnHCGpXbOePLOSoICEKLlgurc/iGTOCljQDpU
         jmXbGUfGwoPV2UloA6M27uZhqT+AHQWXzyufoMTyuwZ6sdOtcXv6GDqEXEp+r4Cal118
         O7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633907; x=1755238707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nL3e94u2V9QLjXt1P6arYe1Izptm7cDG3511sG7BR2k=;
        b=Teop3kl/v25jHp6oRIEE3hs4i2xx1VNM1XxJXiT53oytJ6hfb/pHOAi4PrHDc2lpnP
         jBSE2lMbIQLhBZaFSYSfB8Yv4xms476tt3Ga7704JhmiCyA7/XJPyJGQuW4v73UloF+v
         xtgAAUAfNNQ/ccbuK+b3deA0kRv70rmwCpvhxnBQeuaLw+NJWbE9dI7QaY+HtlkIEd9O
         0+h8lYryFbAkc/Va9IDP0sAeTQtC7U2Gr1v6cn/c4LUY6ENRJKHYqyFJFuspE4DmzDVA
         ga9UVV4Z9UuPW9cxvR4faRojZAXa1AQt0jdPl9yOCMozcTpJxmVsazuoyz/WGBmyMfsf
         eXGA==
X-Forwarded-Encrypted: i=1; AJvYcCUyXsuMFKqcK5fIljM1PtQTp6279NBvpbD2IBPxO4MK0jkjeARoaIHyAuLRQXwOvbtddkone1FtqY6N@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj1sOSJiyOudiYGMrw71w687RpRlIQh3mYKDiAzVQxFxkEDowC
	DhiWmASh1WwD9tVkmL3UXITqlXoRlagZLEUgiS8suS5trbTWMMauXtCC3Byk34d/mqw=
X-Gm-Gg: ASbGncu23sERHRiCrqvwc+2e4c64N5JVXqFsFsFh6tm3h5i9bix/tEzNb1lxVX0/VTE
	l4TEVeqsWG91iEYI/5jzjkgqIBE6mCFpp0FL2VWTk0dc+l0a00eJCjKSY6UwRtgwRVZNV8BdM2Y
	gu++seJUSRGvfIAQwwM/o5YYUwn4nXfyxn8Uw5hLC6lvHtl6Kt8t1VkwNixVEgu7w2KbD89NLqs
	H2eEfViGU75WsxVTebkxM6y+uoDo0rpHHp8y6yMCPHTG4tj362SkgdmX6ZwHUAHfvWdh4k7l0Py
	8Jk+FVs0o/EdEA799H0rav7QGmnXsu5BoFuSnCwBqCuotl2mNphz0phhWI4HM8QL8EHSBSF2pMA
	8t3xM5u4wK1d4FfBdgQ0wxqQgYk6RweqLmieUBflXGqzpkGNZGH7Q
X-Google-Smtp-Source: AGHT+IHQTGJ/wmiZp8s/hEwD1TQvz/dSoODt4iFA4o4Riitc+vO+5bZQdHaQm8JOei5Ab1lV1sHSBw==
X-Received: by 2002:a17:907:3da2:b0:af9:5260:9ed3 with SMTP id a640c23a62f3a-af9c642fdddmr146019966b.14.1754633906925;
        Thu, 07 Aug 2025 23:18:26 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:26 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 3/8] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Fri,  8 Aug 2025 09:18:01 +0300
Message-ID: <20250808061806.2729274-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

If an error occurs after the reset_control_deassert(),
reset_control_assert() must be called, as already done in the remove
function.

Use devm_add_action_or_reset() to add the missing call and simplify the
.remove() function accordingly.

Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
[claudiu.beznea: removed "struct reset_control *rstc = data;" from
 rcar_gen3_reset_assert()]
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- none; this patch is new; re-spinned the Christophe's work at
  https://lore.kernel.org/all/TYCPR01MB113329930BA5E2149C9BE2A1986672@TYCPR01MB11332.jpnprd01.prod.outlook.com/


 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 47beb94cd424..d61c171d454f 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -699,6 +699,11 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
 	return candidate;
 }
 
+static void rcar_gen3_reset_assert(void *data)
+{
+	reset_control_assert(data);
+}
+
 static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 {
 	struct device *dev = channel->dev;
@@ -717,6 +722,11 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
 	if (ret)
 		goto rpm_put;
 
+	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert,
+				       channel->rstc);
+	if (ret)
+		goto rpm_put;
+
 	val = readl(channel->base + USB2_AHB_BUS_CTR);
 	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
 	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
@@ -860,7 +870,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 	if (channel->is_otg_channel)
 		device_remove_file(&pdev->dev, &dev_attr_role);
 
-	reset_control_assert(channel->rstc);
 	pm_runtime_disable(&pdev->dev);
 };
 
-- 
2.43.0


