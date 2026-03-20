Return-Path: <devicetree+bounces-278125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCO5JBsJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 326A22D7640
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 313FF3012841
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F443793A7;
	Fri, 20 Mar 2026 08:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DvbpqxjY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257E6378D65
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996257; cv=none; b=MKGXJ2B5ABAdTc6FXyaOAQrwsJDGHImbGZb5e8TDJbeLNzSfjuCzKOgJvwkg/DdpeB72WFgG0rXgN25+qrB70fuwflm5MLijeENlmsI67P5sygsWv5kNbtD9Yj68nLvJFexluXAjqea6KHgTk28NLMu93KgOsZPZjqJ5hGxkYvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996257; c=relaxed/simple;
	bh=1kqE1QyJXlyvNnSazsDiBo9l0pUSXwpsqjOr8p58nZs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qkz2LW+dcSLdDW+Ma1FNSfOlbp6gMOSMeaV4HbZLMHrqagx9Ncd3egfGAoE8JlQQ4VnjZY9ayt0+6aAiYcp8C/EXwS+qotDi1aMM+nDB2IODyZfQPUxqwGn4kwkkSfAnBxczTPi6ojQKbvWh2ZhvtGUOXOp+UqWm6PBp3J0/5g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DvbpqxjY; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2adbfab4501so1537645ad.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996255; x=1774601055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aR24nRcCaE/rLy7RyBGgujkxzzBF1DIVho+ovF6igY0=;
        b=DvbpqxjYKESKCXRLKwwCQXZsbPTx2EBulZrUAKI3Ap9MYIV9N19IRzgkccgy7pjuj0
         W58yndqagoOMey4sV7JjOOAJRy3M/vB0LnzUZkiW9knQIzjqSh9rWx6joBVWY23H+bAJ
         pD9pNkqx6Jk7LxOoMkhxHf9FcmQ+FGnfe78ao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996255; x=1774601055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aR24nRcCaE/rLy7RyBGgujkxzzBF1DIVho+ovF6igY0=;
        b=LS/ITTsqees9p5CXhY2c9SVYsBkJVi15r5LyRXasW9aE3Re+GkZCGSEEd+6V4GEkjU
         yc2trS/VRVTg/di3wPSHMgK04lV17KjCuqbHo6+S99O2kTH2T4meAHtkQetxAi2mJgD5
         XmJMmpcq9g7ErwHQ/Ur4Dn/ykPY1h/AuSNs2pz55WaUPaDYpaw4QEay36hKC8ZtwlV3q
         T15UhnnQwYjb9q4aSwDQqmE4TTd2SrE/QDarloA5JDO2+l5lwKQ80g8/AmDPPKZ0PB8G
         0d9MQdZLAIbhnboFqJNvMDZfFpXpgSjlTnWAFflomm6ZfK6JwTrFZB43M49zaiSriNsy
         K0Vw==
X-Forwarded-Encrypted: i=1; AJvYcCVxx+sifKxwwg2Bv0eNNu17/ar3ocpE1NtFtCYGj8sT6kAnF+GZseWE6Kqj/zfqK8JAAmSPHvIfkU8t@vger.kernel.org
X-Gm-Message-State: AOJu0YxT2SCHegP9tvHs3dS7sCu6304s0iXjH4FVoOz+InP5aUdshLvO
	Fl7XVazF6g43j3BGG4rThh0kydWN42ewAV2t/9fQ+fTeV8YqZdhamPGjDufutxytOA==
X-Gm-Gg: ATEYQzy3X+fMyc7h6yaAgOuW1gh93eli6/sP0A9pSD88QhPGLakfB7HvpOakxFoctKy
	J0QLLuuQkAl3HRCgyL20L8KEIWRNRiU+nQ/g1EIlGYfGl49btsA8vazJ6OyjRTWsO+BYGAwxViY
	ngBGDlIxj1N+m5C8lHomK6o7AjuQdDHWTIf0l1Q7RiHl6bx7QLjGlAwENXZeKuGDexMw8Tk4l6D
	DLwdYPwtvpWB2H/0/08iSla0Ui9zGfqY0hrddCNTyoD5u2zRvB9pIredCyTZiruytany75Gas0K
	FeFrzb8A2GAKqbHN/YeaZtDgQ2FGMjVdZOuvB3tvGIQl7tgqAwUyJ2sT6vWkF/v5BP0Q7gMh6IA
	Tm9JFKoSJwUFMOOvXI0XWEwz4/oDC33rfIrFUQzVJECY4eE29MP8UwlNozNBadPJPAbUIPE0XFV
	0LmqjYpvZTWGWbp2MQkUgvlv5lDbZtNyyGBXHS8po+qCSuPn+WFJUUnEmEjIOeb9PD3zHN6inCB
	sUM8mHf
X-Received: by 2002:a17:902:fc44:b0:2b0:7026:24bf with SMTP id d9443c01a7336-2b08271d51bmr20115235ad.14.1773996255498;
        Fri, 20 Mar 2026 01:44:15 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:15 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 07/13] arm64: dts: mediatek: mt8192-asurada: Add SPI NOR flash power supply
Date: Fri, 20 Mar 2026 16:43:39 +0800
Message-ID: <20260320084351.2461060-8-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320084351.2461060-1-wenst@chromium.org>
References: <20260320084351.2461060-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278125-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 326A22D7640
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The device tree for the MT8192 Asurada is missing a power supply for
the SPI NOR flash chip.

Add the supply for the SPI NOR flash chip.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index 143f7f4161a8..b71c4c87730b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -660,6 +660,7 @@ flash@0 {
 		spi-max-frequency = <52000000>;
 		spi-rx-bus-width = <2>;
 		spi-tx-bus-width = <2>;
+		vcc-supply = <&mt6359_vio18_ldo_reg>;
 	};
 };
 
-- 
2.53.0.959.g497ff81fa9-goog


