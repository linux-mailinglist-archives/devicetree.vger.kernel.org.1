Return-Path: <devicetree+bounces-179296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D178FABF75F
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 16:12:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEB844E849D
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 14:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A7C27C17F;
	Wed, 21 May 2025 14:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="h1gOxFXk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAB7277811
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747836621; cv=none; b=HOQO0J8Pm/PPGyUdrlTOC4yILh1h2KgrKVf8bDCe21beUNS4br41pUFvadnOCGo/JhdExV/z/b4PzrXOFo58dPTnZ3zTz/nMiMv7J4WGelyXgEnsRyGXEo6X5Nomg42vSfSxR3pbqRLxtWcTelibal5W5AnNjx6vrx8tuLVizLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747836621; c=relaxed/simple;
	bh=EGFE9fF8CoyqCcQrGQ5RtJ1O3HstgRvlsNO0EcsOKKI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VLctrZkny1L7j3k0JIzlTsztUNtyDO4JFYFOvEmYftrGWlx0q9hjf8H+YLUnpH3tscSW1+ROTqISoM+boAafTgtwnWZwLDa/5ry/5I3kZ2So8JeqhkUHslHf4/e3R14r9gOpbrpG9+ug4Yssw7BkdkOu1wA4gSMFYKh9yD9taRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=h1gOxFXk; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-601609043cfso7898186a12.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 07:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836617; x=1748441417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1CHusJ4ei6D6vHackJEhVkMXrFixKZ73PuOqrjq43c=;
        b=h1gOxFXkymt5ugbEYFFKHOVB7tTtFkFGsrSQC2FaVTZ5TarZVdDS9mYA7uwRe6q0ml
         VOrIW0FdUF3bFL/A+aX9B+roh1XYO6Xqzkjn5lHZxIg+lq8jPBi9eYnCH3ScPoSVOcsj
         5GV/hO/TKIIP8sgBbDVVpRTA7geFA2TlUK3KY3k1UAN9PVaffh24Kjrl5VzDm+5e6J9k
         w7GByWFqCCRym8WJeH//sb0Vd/UhNI6ZZr4nrfOz17+lNoeX4Xcp3YijT+IevLxr2Vzu
         71rbrRIhsEHBCiv4QAHvBh/NDtiSF5arkzWHgsb20isQ6qohrJTJqYNSZvA8qMjtbZbK
         iVcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836617; x=1748441417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O1CHusJ4ei6D6vHackJEhVkMXrFixKZ73PuOqrjq43c=;
        b=ZHeDj8JYwHAEfVFfTHkIdSPx7yxU7spxZtdyHJxlx2mMtHMFNQOi96oyzqyHWeaWbF
         XYyx7bMBxuI+jaEIar49b0NIw14+gQJlZ2snDdSBe8lDPQT58gmRjd/S0jVpm3hwUgIU
         o5gD3juIA4G3GaeFoPxNtQl6xuJ2IkuNu+F5zmn0bR+EHS8r7OGAKP8WpbDOlV+fJ5ou
         Tbm/FcPRKwS83Mb2DVVCitdvJLrvRkZZ3dAA7KIGTG/Y6zkWdiz6XeG7nMRe+0D+2aH2
         N5oWnsNB9egj2w9mO6W8isIdLp1a+YE7waT43e9mB4g0FIIC2Rnw1OUJnjz3eMJUX1Fj
         Z3tQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoN0oMsLpp2EQuoMWaDWChCsSd776Ogyl1PBr9jU8UN0Wr0HoCkBOpcj6d/onvHR0PJShyXU3r/Txh@vger.kernel.org
X-Gm-Message-State: AOJu0YyolzbECWvw+AQOY4Vlt6yxMWMmoUDKL7cYZD4Un21C1LU9fOtH
	rIMQ0TSIm1bKka1vF+CeLwFIF71gWyTtTi6BE5zXb6D9sDFzpc++4EWgwdqARLhQ8mc=
X-Gm-Gg: ASbGncuc6RcGLuWTgAX24Ul8A2mVScI6UTf//1H1I3Ve/yklAT2DvxEr4iMzrxF0X3M
	Ugyz4w42F6y7Qp6tWirXvqcmtvDyCG2t4K40iiL8PaIyw/eveiVdgf58hpy0yyru+6NFe9awmL3
	g2tL3nxmYNOVxmGwSepb/GRoo0HePZQWHNP6L7htfXcJAd6LavKVIpAQVHdbPMIjTWcRsvPppQP
	95Yw5ZSppyTIP6zcX6YL+GvgF4pdqS1K7HIEH9USXs8GzT86AQ81MOynkPm72Lq9luqObNrq061
	/XiOc5sI0X4pPIXdBXh7kWJkY5GagL9PTB6tzdB0f5x5eeXu6I5doiaRO9ytz9zw2JMyw4lo5Ey
	KDUNL
X-Google-Smtp-Source: AGHT+IGvqJR7e/kOZrWWHQJQW+m9p5RsEiN0pjfvxiINSPfnR4snDax5MoMW4mDXwqItr/FNVvG8UQ==
X-Received: by 2002:a17:907:7d89:b0:ad2:5408:bf1a with SMTP id a640c23a62f3a-ad52d64216fmr1934817166b.61.1747836616979;
        Wed, 21 May 2025 07:10:16 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:16 -0700 (PDT)
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
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 06/12] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Wed, 21 May 2025 17:09:37 +0300
Message-ID: <20250521140943.3830195-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
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


