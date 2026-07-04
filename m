Return-Path: <devicetree+bounces-320490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tLngHuI/SWqQzgAAu9opvQ
	(envelope-from <devicetree+bounces-320490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:16:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D21FC7080E3
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:16:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pzAyaGoY;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320490-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320490-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A827300D329
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 17:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66243374A1A;
	Sat,  4 Jul 2026 17:15:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15823374E48
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 17:15:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783185317; cv=none; b=efKEhF8RPnOivJurHXQoOdlNLZM36ZdZwVYCLA4qLJ1CkVgwPBO1Nild4VtEiNkVTfaRIKKZ40JWkAk6bGAxJ/6t6WDTbBJUv7KM8CgAgWlHIctUURHStalmDzTfJ+VseI9Bnjia2+aPQbDElcMDTc5QiuCsk/MzfD4ZvlIYIr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783185317; c=relaxed/simple;
	bh=hiDqfxEwo2m08vVR+XmTBBNvFPcoR44JVTQtfXJLBKI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LHxqCF6FXQFyK/L+rol0ivuG1eBwPYR/n8bU9QZMc26EUeeQKuV8JoJZ9TtlcCNT53SDZsVD3ZxMZJcpHvS189MPQ0eq37aPgrxmtMAy6y48HAkHXbGvaDs4pcpxQxxjn5g5GphYgFhXp+XCcPqJ0Rc1SYz/YeokSa8m+OCy9hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pzAyaGoY; arc=none smtp.client-ip=209.85.210.176
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-84347ad88edso2279309b3a.1
        for <devicetree@vger.kernel.org>; Sat, 04 Jul 2026 10:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783185315; x=1783790115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=baNPOtnreWkoR3AhhTVFf+uOWjoLtova69oE/tcCCJk=;
        b=pzAyaGoYVxV9mic82r2ywwZ8C1KB2oxpJZosNFQzBJuOjkSymmYiQbs/N7ZMyB7gP5
         bHGFfFHvHj8Dobn1e/QP2wEsuhr7D+zhU3UI/JySUPVJOfBsfU1wkQ6Xzd7QoGaGBgbK
         YicXQPiZvfOg4su8i46vB9EtWUvZcFemGnFg9B6iWgMTsgZ9BDlTimpdHH0+ia+GJazn
         eu0SxEI1jeVWuC1RPyibEl6+M91bas8Mc2gJyCpXN39NyU7ZiRa1LOgI9USsqk/xK0eV
         5f2JtlgWRKznGvmFicbFe+EwvhUyqH45HEc2l4gT6klnFTNvrCJqYkHUVHfFSiQXN0Xo
         KOkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783185315; x=1783790115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=baNPOtnreWkoR3AhhTVFf+uOWjoLtova69oE/tcCCJk=;
        b=hMNwdi1++GKPqG/XXjtWiW7jQj+0tHEFignVrrStXXTW6KyzQOT7qDFf8/qCxJVtCg
         pQuZM2zhwfETZpgwZkrNUWVz/2uFz8NMGceg3wu5lKAskYpS4P8/YgSjguCXo04ZIXJ6
         1eQ+O1M/WJ/5VRoruxm7O1Woe1Fk0/dGydfGysHXFEsqg8jykj0sfNfzWTlTz+RfzShq
         roaLiFq+sa+baljvgglRM0H6WqqVG6OcSACml5igoHkejGGR5Rt1XJ5EEuoWuZSUWVVz
         SmxYDhhErG3lqHgmrIEhXC/QI0G3ZdVnGdMDNWGPanVAXQqLNqtQ93KklM8h8PA6E04e
         kN7w==
X-Forwarded-Encrypted: i=1; AHgh+RpgVeuIh446AACqX5653fFXfrLdOYm904zHUKK9w2qccDv54OXRstSx5s5guRjE7M1r3tgXl/cTY3sK@vger.kernel.org
X-Gm-Message-State: AOJu0YyAii6QXPy+K/9gQjHGgEPVvO+UAcCgIQTMf/WBlaOGX/0HZm9S
	SdpEiTqIjXBtMxCj952x/moLW/yKQTU5OyJLC9zd13YGlFYzwtUMmrY2
X-Gm-Gg: AfdE7clJ9+jBYT3HjcAHDfVfxln3AhmzLnW/2Rfnm7+rqnarOOhjE6ny3uByEdmHJGN
	1mmQt+ug0iXyCYYQ59o6R/2E7/Fq7mWYKZxM3mg3u6sSXG0KnyVbzT93259g8S+BL8a1f4oiW5v
	keXmT32KhlfYj2lE+jOo+5fXCJ5RHAyrH9NraNQlmAKjGOzkImU98ZuLDSv500k3Ro7cgsokmIX
	4nIR14rgw3sSavzBRn/msaUZMqJ8JTVFCig7vHPA22+NWmzPdRqkngJDQawNrCfPlO0n8RuO/DU
	L9MBsTZIret84OUN7gkKBL3db0LzC94b0dZUoIoV0WfRevBGOXSCH7xz1SBgFF8KHUlU7D5Z+UK
	+hHeaXrNkyZBew5/lE95YFcF1tcL5PaxoMfV6xuDbV4tJVGaRru4qHnOaVoubn11Xv4afwp45HJ
	HuiygM
X-Received: by 2002:a05:6a00:1c86:b0:82f:9407:d167 with SMTP id d2e1a72fcca58-847f6ee42c4mr3927100b3a.38.1783185315280;
        Sat, 04 Jul 2026 10:15:15 -0700 (PDT)
Received: from archlinux ([212.192.12.80])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6d498adsm1379101b3a.32.2026.07.04.10.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 10:15:14 -0700 (PDT)
From: Mikhail Kalashnikov <iuncuim@gmail.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>,
	Yangtao Li <tiny.windzz@gmail.com>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/5] thermal/drivers/sun8i: replace devm_reset_control_get to devm_reset_control_get_shared_deasserted
Date: Sun,  5 Jul 2026 01:14:08 +0800
Message-ID: <20260704171411.1413349-3-iuncuim@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260704171411.1413349-1-iuncuim@gmail.com>
References: <20260704171411.1413349-1-iuncuim@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320490-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[iuncuim@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:anarsoul@gmail.com,m:tiny.windzz@gmail.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:p.zabel@pengutronix.de,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:tinywindzz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,intel.com,arm.com,sholland.org,pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[iuncuim@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D21FC7080E3

The A523 processor has two temperature controllers, but they share a
common reset line. Make it shared with the shared variant of
devm_reset_control_get(), and also simplify the driver by switching to
devm_reset_control_get_shared_deasserted().

Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>
Reviewed-by: Chen-Yu Tsai <wens@kernel.org>
---
 drivers/thermal/sun8i_thermal.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 226747906..df0c26970 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -342,11 +342,6 @@ static int sun8i_ths_calibrate(struct ths_device *tmdev)
 	return ret;
 }
 
-static void sun8i_ths_reset_control_assert(void *data)
-{
-	reset_control_assert(data);
-}
-
 static struct regmap *sun8i_ths_get_sram_regmap(struct device_node *node)
 {
 	struct platform_device *sram_pdev;
@@ -389,19 +384,10 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 		return PTR_ERR(tmdev->regmap);
 
 	if (tmdev->chip->has_bus_clk_reset) {
-		tmdev->reset = devm_reset_control_get(dev, NULL);
+		tmdev->reset = devm_reset_control_get_shared_deasserted(dev, NULL);
 		if (IS_ERR(tmdev->reset))
 			return PTR_ERR(tmdev->reset);
 
-		ret = reset_control_deassert(tmdev->reset);
-		if (ret)
-			return ret;
-
-		ret = devm_add_action_or_reset(dev, sun8i_ths_reset_control_assert,
-					       tmdev->reset);
-		if (ret)
-			return ret;
-
 		tmdev->bus_clk = devm_clk_get_enabled(&pdev->dev, "bus");
 		if (IS_ERR(tmdev->bus_clk))
 			return PTR_ERR(tmdev->bus_clk);
-- 
2.55.0


