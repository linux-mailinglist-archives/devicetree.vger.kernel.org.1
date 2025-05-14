Return-Path: <devicetree+bounces-177096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6A1AB66D5
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A065B1B63F34
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800ED226177;
	Wed, 14 May 2025 09:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NuUI02+W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E0E22541B
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747213470; cv=none; b=iBnFBD7ohNP7jL7n7RjqsJz/50aJI+GVCR93J5v1z7J7bdJ5hlolx21suWvDB9rFz035WY1jEM2Bwn44/glm39UcokpWcoQ9o0VvBgqpdlv/KIpd4l7VNKfBQqs8hOZj0+wfH0uZ8QZ+i/M4TZnd9vHv5of+eUiz/s0ZKqCjA94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747213470; c=relaxed/simple;
	bh=lSx/4Ht8JBUSu1knPzCsb2MpBGaRumWB5Vw3zT8msCE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e0IelkSaroxjaGn5Szo8xnnCwflGyFppucSWxKFuqspXDbACFyilm96ACN0m1kq6naaVQNohpyJ5d0/ckvtiSQEbrBRiM6IsK99AzQOLDxfFYJ3cKaQ0/mFhf0XIxuaYgkdEkvfAdYoLocNsRizktTO8ePCQHnNZiOV+z0Ug11I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NuUI02+W; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a0b6aa08e5so460286f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 02:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747213467; x=1747818267; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vExdlpv8ucFDrl1qUaXs4AkTmkhk+6u8jMyUf6qz4Qk=;
        b=NuUI02+Wk+NPp2Ss55psFqA7BBirbj+TIx0+99/rQ9cMfXUPaTdHDQWgZlcntoTCbI
         msuPLngWCPDBufIga7vQs5EEJ78SjvJtMlEokirVWUTa++5FuZhg2B56YRYFhtzuzuyK
         eZ5t4k3HQ4XSOZF394VnrtTb7i015TO5ThS2QLAuqchfcdY8yCWvKjPscGDtTOEXWbBg
         LgMWV26sJM/LFxvaeUdJSEtYoDfOD3M1Iir80bI1/fD1oDe5aBPZCOr1SJjdt88bqycH
         7gUidE2JTTtEmlOwITM4wRx/9na1OhjT6EZ7cXcxsBzmrddx25BrnvOJB9mRmkux0BEd
         hBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747213467; x=1747818267;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vExdlpv8ucFDrl1qUaXs4AkTmkhk+6u8jMyUf6qz4Qk=;
        b=qB2qCXHqhgp95pdwfC7NP6oljKYW66nertSvLGxwNcwIwEZM92fiznfoMFouhSCNoB
         8+2ftdsOcHxa7pncbtQ8/jY9I1GCXuuiqWRKReMvf6ZL8c2zd4gR9tmPsTV3Rtw9MWwy
         4SKX6ZeGFMbZT3yXCkTOcmVcdWzNdCeRQE4ZFVgPQ1v2w3XYAlcrWGn9THSFyN5yKHt/
         AkBZ44d/ZXKAWTZxXyUWKPxzg/4hZuIXN8s4uOzqbpcur8Xkzh0zXCQFX12vdjCsuBDz
         I9Hv/VbaupiM+AifirMLiT9frmt4b0uSTrtRv5zFk0u07hlbIzW/6slmHiDE5A4K0ER2
         yM6w==
X-Forwarded-Encrypted: i=1; AJvYcCWZJO31tWl+Nu1REXp25zvr7IWR1XT0ys5Ie8QonDCOxsjm3hlG6Yo0EH/aP0egX4HMb/fc5r/k0V1w@vger.kernel.org
X-Gm-Message-State: AOJu0YwIXv9i3HjN7J3KK9+rygizImj1+tyUgK2LphuZm8B7reAsZmzB
	d1nb3JVisBD8xeK5SHHFf3+3BTH0LRhFoOWhg/NtG13nTsBUY1C0TlzIMvMQqJY=
X-Gm-Gg: ASbGncuryjwUEYrvKjA1olKQTrqOargzascAs5ZML6IVVFsAobgvWja+qs4XKTIK3T4
	+aA7xNoXi0bXXMe9BH7z7/8iKkZmkKrCMEOg6fURB6EQVvqO66EU+8ahohViF22kUrvCzks3wyd
	1IsNjf9t6hgWfGx7ImzTR8NJqGIoZAXmL+onwGxCNmWkTbuDKMBpjV8+fb7Vo/ZwINoQLsgZrP5
	5ZVhD40goht/W02kEzt0G8W+Awreaz+HVkTbZVYDbBMbVpJqhw01SmymQUSQfV6GMS0naO6JQXv
	YfNcNMDmVJL8BMGKlH19XlwM4lLwi/uvy74esizs2PZrUdU/elu6mSRY/6hIUYxVnwQvk136ABc
	y4cVz
X-Google-Smtp-Source: AGHT+IEwGY9dH9P7XssOURNYKSf/3UTKpupB6dh/lRdyD83IIAbxghb+uKoLBi1qGeqyoTOE/MRvWw==
X-Received: by 2002:a5d:5006:0:b0:3a3:42cd:3701 with SMTP id ffacd0b85a97d-3a342cd3716mr4962469f8f.23.1747213466808;
        Wed, 14 May 2025 02:04:26 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57ddfbesm19286561f8f.10.2025.05.14.02.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 02:04:26 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 3/8] clk: renesas: rzg2l-cpg: Add macro to loop through module clocks
Date: Wed, 14 May 2025 12:04:10 +0300
Message-ID: <20250514090415.4098534-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add a macro to iterate over the module clocks array. This will be useful
in the upcoming commits that move MSTOP support into the clock
enable/disable APIs.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new

 drivers/clk/renesas/rzg2l-cpg.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 767da288b0f7..c619b2da92b0 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -1202,6 +1202,13 @@ struct mstp_clock {
 
 #define to_mod_clock(_hw) container_of(_hw, struct mstp_clock, hw)
 
+#define for_each_mstp_clk(mstp_clk, hw, priv) \
+	for (unsigned int i = 0; (priv) && i < (priv)->num_mod_clks; i++) \
+		if ((priv)->clks[(priv)->num_core_clks + i] == ERR_PTR(-ENOENT)) \
+			continue; \
+		else if (((hw) = __clk_get_hw((priv)->clks[(priv)->num_core_clks + i])) && \
+			 ((mstp_clk) = to_mod_clock(hw)))
+
 static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
 {
 	struct mstp_clock *clock = to_mod_clock(hw);
@@ -1314,17 +1321,10 @@ static struct mstp_clock
 *rzg2l_mod_clock_get_sibling(struct mstp_clock *clock,
 			     struct rzg2l_cpg_priv *priv)
 {
+	struct mstp_clock *clk;
 	struct clk_hw *hw;
-	unsigned int i;
-
-	for (i = 0; i < priv->num_mod_clks; i++) {
-		struct mstp_clock *clk;
-
-		if (priv->clks[priv->num_core_clks + i] == ERR_PTR(-ENOENT))
-			continue;
 
-		hw = __clk_get_hw(priv->clks[priv->num_core_clks + i]);
-		clk = to_mod_clock(hw);
+	for_each_mstp_clk(clk, hw, priv) {
 		if (clock->off == clk->off && clock->bit == clk->bit)
 			return clk;
 	}
-- 
2.43.0


