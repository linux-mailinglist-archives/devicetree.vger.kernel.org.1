Return-Path: <devicetree+bounces-315115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bCs5Lo+aO2r4aAgAu9opvQ
	(envelope-from <devicetree+bounces-315115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 10:51:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EA26BCAFF
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 10:51:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Af+KmiJQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315115-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315115-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DE4E312192D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90FBE39733E;
	Wed, 24 Jun 2026 08:47:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E7E31E84E
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 08:47:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782290827; cv=none; b=kHIeGZ91UZAnZ6vx+YlHzdv+lrjYxQRzNxjWfpM5hnHjF1ig6pt+hFiWUq669vEPy8YCyKJNMc/XAli//yHiZjBE6PjwTOVHTVHs389bsDQdgMwkozY2TxbC0kwKgz4H1VXmMgchK7o0LTRZAuhtnf4W6TGGOU7BXoRtCexle/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782290827; c=relaxed/simple;
	bh=hGja04LjVLdEUpRMeYni1ttZeCHW7DBtTY1DVjPxwic=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oYmBZFmdTkahCfHcnGU8xC3hao9Oo+UKhSTOngLXGNL4EaNTK50AU2PzeXCk8rzw8fMFh8aeqhvZtoiPdXf/H7ecaB9qPhwigyrZ+JbGzAt1AxH64xU3lQ4iSI32cBkKa3cyiTJowl3TQwlDfNQWqQHgqf7PUDy9WVmd3W8LXQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Af+KmiJQ; arc=none smtp.client-ip=209.85.216.65
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-36d630c0e35so868665a91.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 01:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290825; x=1782895625; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ebJKu9jVn6lf143JvVHMNKq41KUqWP0vuZLPZ5+CqQ4=;
        b=Af+KmiJQSg+i2JixyfI20ezVLnPcSnvc/auuBBiT4mWb5DFT8O3GPeC/t0EHmGjZvj
         n6C5D2Dh1gYwDtndBKFuwVJm5kPmYfntHyKgAQGL7ENpsD78yLyoDkU1swvsUtvlqbKs
         t8sE4Zsc995yaRCJUOqZuFv2ZiJhLYcZm+xJy+2hjUgH2LrU7NGodyAO6JEKO5K+w/wc
         8gUKqLNwPN5tlIurAifT5prxYX+FW+Ppp72MXxaWGdHhisTRs8DUFgKK+46DMiAsueUr
         KNbvLIMQSvW3u+YBlVNbcGbtAO8+YXsCr/vXleUybZFJOXOViIxNXdx94HfWTSAd0xy5
         F6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290825; x=1782895625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ebJKu9jVn6lf143JvVHMNKq41KUqWP0vuZLPZ5+CqQ4=;
        b=AF/JwvdCoKxZyfWFs0IVwrxDlq3G3yk6iPwDolo79s0z2eCjhqozO1XS2biO7wd9+W
         zir5Jshv7lzBQoArhzJ8EfZJRU28T0Z1jWyIqWHMlGTPxDg8uQ2CvgQaDWBvfeyEhh0/
         o0jh7TrSilP0SkP6ZcTbEqU/AEf2zPZxaCEKCQY6Pd2eIXc+Fjwn3nlVnmrCcKH+8eun
         sLfQ3ICHl9HXNf4xoTx1jVVZb84JzDImwqbTlnD+j/znIzqL76PYDPWQmn3BPwl/i26O
         tz2M+KEnSkDIvwVDyXrULa1pAxc6es8MGh0WJLFc6ysmposiG1IDIvHX6iWjhnl+BBPd
         wxkw==
X-Gm-Message-State: AOJu0YzFD3/JyCoKYC04aTT7srM8tEkVXGfE3ucUqmsNKI5ChjViJPg5
	pJpEojf61SsUN5OKU//ua5meCSAPvJhIW2JZefar8OiLE1UR0YqYPQhg
X-Gm-Gg: AfdE7clkIILKKh/R31drC0JLpEq7e4ja2BD9PEskSa7I7BNey/4tYvW1UeNDnzbv4VB
	+IXYi3q6zU6WCA3n/HjHsjuTW0TErBedQGPInyniRTG9LcYiHZfAlxHLC+K0HI3Fq/seRo8zmrk
	wzzAHcekQcyJqzZ6aBWmE3EX3Fi6XkE6MjLsIzHhzxL1RFh8ben21LRq0kcwCCNHri00lv2x/9u
	BtF1xlu4g2bfgRGMekgQktcbjtS+RHdqD3Oas2x96Kdyt1kA3B84n+s37n70FFHYNu2XBeAmNrA
	KS/93Se0DC+bXbBQwAQn7xWQ/RIslJ0jbNha/4go97olSeKqQ8qrOV1B++ZtwHQKp8Vf9Trm/Qu
	EIiLcoVvORi4/maM8gRayejnRdtXCI4Ghmph1iIGGdOhWuno6XZ4QeQ1XuRBkk1XYLXP91PO7gW
	VCUvMpe+cHKgkD/6MvupwVy8W3CFeFeDRA7JU=
X-Received: by 2002:a17:90b:3904:b0:36a:f612:e6a3 with SMTP id 98e67ed59e1d1-37de46877cfmr2475296a91.17.1782290824660;
        Wed, 24 Jun 2026 01:47:04 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3d152f4sm2138146a91.14.2026.06.24.01.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:47:04 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Wed, 24 Jun 2026 16:44:41 +0800
Subject: [PATCH 4/7] net: stmmac: dwmac-rk: Enable refout clock for RGMII
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260624-rv1126-alientek-dlrv1126-v1-4-5aef608a3f64@gmail.com>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782290789; l=1756;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=hGja04LjVLdEUpRMeYni1ttZeCHW7DBtTY1DVjPxwic=;
 b=aI+crboHR6Sc2cp1Nzvxr/IYTjV+SylvGPnYmATX+BdMMDrUePA2j4BHkJb8G4YNpQKcqGWmi
 5Vg6IPb+CuWCLswJq8rvutIrZNwt98EZslHleACcj/eXxIM6e1/OxLq
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315115-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:david.wu@rock-chips.com,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:netdev@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:grumpycat921013@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:andrew@lunn.ch,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[grumpycat921013@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,lunn.ch,davemloft.net,google.com,redhat.com,rock-chips.com,gmail.com,foss.st.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grumpycat921013@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 17EA26BCAFF

Some Rockchip GMAC integrations use clk_mac_refout as an external PHY
reference clock even when the MAC is configured for RGMII.

RV1126 boards can route CLK_GMAC_ETHERNET_OUT to the external PHY as a
25 MHz reference clock. If the driver does not acquire and enable this
clock in RGMII mode, the common clock framework may disable it as unused
and the PHY can lose its reference clock.

Enable the refout clock handling for RGMII in addition to RMII.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 8d7042e68926..f6fdc0c5b475 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1112,7 +1112,8 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 	bsp_priv->clk_enabled = false;
 
 	bsp_priv->num_clks = ARRAY_SIZE(rk_clocks);
-	if (phy_iface == PHY_INTERFACE_MODE_RMII)
+	if (phy_iface == PHY_INTERFACE_MODE_RMII ||
+	    phy_iface == PHY_INTERFACE_MODE_RGMII)
 		bsp_priv->num_clks += ARRAY_SIZE(rk_rmii_clocks);
 
 	bsp_priv->clks = devm_kcalloc(dev, bsp_priv->num_clks,
@@ -1123,7 +1124,8 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 	for (i = 0; i < ARRAY_SIZE(rk_clocks); i++)
 		bsp_priv->clks[i].id = rk_clocks[i];
 
-	if (phy_iface == PHY_INTERFACE_MODE_RMII) {
+	if (phy_iface == PHY_INTERFACE_MODE_RMII ||
+	    phy_iface == PHY_INTERFACE_MODE_RGMII) {
 		for (j = 0; j < ARRAY_SIZE(rk_rmii_clocks); j++)
 			bsp_priv->clks[i++].id = rk_rmii_clocks[j];
 	}

-- 
2.54.0


