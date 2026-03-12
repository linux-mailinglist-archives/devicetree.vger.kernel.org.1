Return-Path: <devicetree+bounces-274405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MF39FSE+smk6KQAAu9opvQ
	(envelope-from <devicetree+bounces-274405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:16:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F9326CFED
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 973F9302526E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7737539656A;
	Thu, 12 Mar 2026 04:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fb49oqSm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561713947A1
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773288976; cv=none; b=G5LfY2YOOW9PY5KmDhOdEl/hmn67iLnJEdr5EeR/nyJU9j3b6XntQj08JHqrG8MwFu4iRaIsDnU+OtjteOazvLwT70ePXC1GRgNeESlIlQA0Mo18DyX4PDL7Q6cP1aX1v1tqZ2fml3hWeaOVb8KgPYg8QYiGnXCk9ppVBE9m5CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773288976; c=relaxed/simple;
	bh=FBOaVAluo/5aHc/lwvDS5glu5xPnHou8L60dlb5IY6o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NaF/3cIAdA3hEIsHtwppwIU2KdNvE94tgUXVAKr+ldQWVgIdBA9izXibNNuclmGPp2VzeU6gojrWtxxLLEw35wTarf47capyZwkBJdt1lm+Uao6D5xx8Itg1OkzTUY9dI0kGoIJUxdYh+2CsLBbJ+9IT1jGmu5vFLiHuKG4qA3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fb49oqSm; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-35a0b413684so347661a91.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773288973; x=1773893773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J243xpU31bBbVlACRT5AgcKckiL1IQqdWNfb3EEgNIU=;
        b=fb49oqSmvYxNbabZO7J15k6Q3Z347awvpW9pThwAYLyiU1gC1KhttkJf8leY1j0BFn
         FoOD//qCvgKOoaRXiBoXMY+C0dObJCYqqzABHAJKkYxSeVt1Hc3UbCncNAYK057GOIRy
         UYIwAQNo22bO8i+PUGtUNCNiFCw0lhMdKRLLSobDnOG+jFbbzGxFsrrrrHR5A4SFuGIa
         h2IA34fx7+77uNrGDrToGmY/Op3T3Vmt33XG3Fj+gScu2bz5lOdg1J1lx7F+PCln3ZzP
         BO70UROSLmXgnqLrO1imWY3we9di4isMDlulbOXE1yjf6tLz0aeIYret1m3YvaZBvZJg
         zz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773288973; x=1773893773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J243xpU31bBbVlACRT5AgcKckiL1IQqdWNfb3EEgNIU=;
        b=SQghthO3v/cJsVSeirMlnQ6eR2gpYvf2ljgpAEb5zvnbAbA7ut3j1MWHexAG/if0tg
         ko+VWTjoO6r9YlTJxKe4f+Iu9jWHYq2DpT507rNPvtS7dhq2Q7u1BKC1zO/Nf13UIsOz
         gWogdqUFyHCPqwrzhfHrF4cgboi4V/3oWrCvhNbCN2ogJV7e/yJaJmHj5eKvnBfoM0Ym
         8Cau7iUhri3XZjIR2/8tgKG2ZJJkpMc7QGka5dPoJFQ/mFWADiSDXclecDf+Inc8F+DF
         7WyLhlTMw6jLrOmQLufXvcyBlO8eqUH2z3NXzh8e9ws/qTxjQ9GLuy3DlpP+dfiVW0Sz
         TMLA==
X-Gm-Message-State: AOJu0YzYIbPGln/UM338vZqZ3+3/zOGrVbMm210rO7dAG0pbZRGf92SW
	/LC4pfcAhU6uBt+L4G+HY2dj0Hg+CXQCXxXD6Hr4d3PecQ9bnwfWBxTn
X-Gm-Gg: ATEYQzz3RvqJ2ZUmznvJlS0gWQoeiZrLMzFHUm0NCqzKEHeW/cE8/xfEcHWBXnowEGn
	RXoPfjSS9o2jL+A8/tQOLy4uk1WdAKDe1ZK6PUTmHjypKTOth/3rHTrS/qETZ0dabXCZEEfUJ09
	ldzPBqs5wHU+dKPE3GMn/8MYHwAlgWtRbHS4OIrO1uiIVGL9jKuyPHNF506+tykr23uiY0SlFny
	3rPz311Y7YyKZlNbKL8IgcsbvyoN8w3fuoJ69OzFEftS4Xh4bEtGfMTpq/dOMwWtAXhi448jTl6
	o5BgNVOIBQz73v943fByph9+kENYnHlXru5mdHFzGsMq/RLHBOnu4ffqKFKEzxc/wN7EeFrYm9q
	Iil4IRwjt90Uw66fN6uIjzbdkik6ARzAtamzbPjeU6gbfMizFldmcFufwfjMYEoJ+gWuXVns1I9
	AiDK7TIV6pygxxBJEN2nodddpM/Y3sQz7VqlBAVl4IAZEe2TNHZo+U1SIJ+aCPzk80gYBEb8Cix
	eBivgE=
X-Received: by 2002:a17:90b:1e10:b0:359:f69a:f7b7 with SMTP id 98e67ed59e1d1-35a012b3820mr5127239a91.10.1773288972604;
        Wed, 11 Mar 2026 21:16:12 -0700 (PDT)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02fca40bsm5018229a91.10.2026.03.11.21.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 21:16:12 -0700 (PDT)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@kernel.org,
	linusw@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	hui.liu@mediatek.com,
	nfraprado@collabora.com,
	linus.walleij@linaro.org,
	mars.cheng@mediatek.com,
	andy.teng@mediatek.com,
	hanks.chen@mediatek.com,
	sam.shih@mediatek.com,
	rafal@milecki.pl,
	ben.ho@mediatek.com,
	erin.lo@mediatek.com,
	zhiyong.tao@mediatek.com,
	Jason-ch.Chen@mediatek.com,
	amergnat@baylibre.com,
	seiya.wang@mediatek.com,
	tinghan.shen@mediatek.com,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH 2/6] arm64: dts: mediatek: mt7981b: Fix gpio-ranges pin count
Date: Thu, 12 Mar 2026 13:15:29 +0900
Message-ID: <20260312041533.187553-3-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312041533.187553-1-akkun11.open@gmail.com>
References: <20260312041533.187553-1-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-274405-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,mediatek.com,collabora.com,linaro.org,milecki.pl,baylibre.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,11d00000:email]
X-Rspamd-Queue-Id: 35F9326CFED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The gpio-ranges in the MT7981B pinctrl node were incorrectly defined,
therefore, pin 56 cannot be used.
Correct the range count to match the driver.

Fixes: 62b24c7fdf0a ("arm64: dts: mediatek: mt7981: add pinctrl")
Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
index 4084f4dfa3e5..1bbe219380f9 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
@@ -332,7 +332,7 @@ pio: pinctrl@11d00000 {
 			interrupt-controller;
 			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			gpio-ranges = <&pio 0 0 56>;
+			gpio-ranges = <&pio 0 0 57>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			#interrupt-cells = <2>;
-- 
2.53.0


