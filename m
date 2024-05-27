Return-Path: <devicetree+bounces-69487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A57228CFF7D
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:00:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F553280DB7
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9567A1581E2;
	Mon, 27 May 2024 12:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C/9C2zXp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65BA15DBCE
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716811217; cv=none; b=NJCEPPKNfc1/ziMT/fh9W+ooW+ZgD+8mQCpA+ZTfx/Ggfo4Hn+auWpYkaGfkriMLus97w5Tw1262WaSlLySb03ekeekKDHIiQ3saePdeIu7xI7C7z6BqD2X2EAat6MJr03GviV9MWyXyCn2Raa6JRz8SkNYEjSx7JVvUAULcR8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716811217; c=relaxed/simple;
	bh=I1tf1HKbnvEtJN5mThs9AFWNMdgrA0egGTKJf49oICk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N1OuGnftyN8yJuDjMgEWBxidsMvfCgBIlKAa6vr1aeXg8PLwddG1UqHXmCjgPsLFyS9unSIZiZD941pRAZIrqDeX1p4ucfc+gBe6OMs7DWjsSyUvqkNQHVWONjk+xpLrzu13pI0GME/mlZCDzi32OY1+jWS1uVSM8yFHUpjF9vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C/9C2zXp; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a6269ad71b6so357036966b.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716811213; x=1717416013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=be+meMFX+lXLsoY1vauyMtoGL9wXpaeQ3cLiiOkxwWM=;
        b=C/9C2zXpuX5V290hYU8yNtkaOC1u4suXeMTHXSjOD340PJv41IFrxEpli5Q0YakUBA
         yW90mI6zXsD/zV+jXWAFafYZ2m/CgBcKLUNpwyG2yDvfe5tCPJehTODSYIZV4qvtBn93
         WMtZsInPR07d83dcjHq+E0BcUqvIdH2Ex76o9XONgPAhdjM3XxvIRKVojpXnUmPXwtU2
         LHkPqIwCPriy2+XMvVlPikoEqn7+tlLjvzRXQKoYrsGuU8/MlL1AWt5vmWfe5oFB1y5Q
         tABxvTiNXQvjMfvc5LL6V4shm58UHeRJD7gCupo613vDiEgDC+vT3pJxWKQ4KxyRowJE
         Tvcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716811213; x=1717416013;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=be+meMFX+lXLsoY1vauyMtoGL9wXpaeQ3cLiiOkxwWM=;
        b=DLE8lmf6/uHV40NC+R24zgmYZv10hVIUu1O6Li4rdXcZyGWVfhDZA4U8iatVKAGnav
         ojxiTvdizPhBgTWa7c24FHXNRw8g+wInzibBPl084zZK4DwOCSmPLSyQEI3Rn9CdxWwk
         kpRAJi2QpoDRCj5E52Lz+kmAPAwsAL8wyEoQsBH7TIDDoAUYYNg5snH9ILRt8KWJpwvs
         2H1WeQneeHvwt3rbAA6jm4Rmv3oXQ9LDXaJ6yuaBv9mJu8MbNyJvR5+ca4+tB6gdU0+V
         mzELuhtzwjY2OenVSyeXLo3B5M6x09r2A5AoPmhc1JoZxH4S7akGzai4cl+c1AMfuzqQ
         9NaA==
X-Forwarded-Encrypted: i=1; AJvYcCWOKrTq23kAZ3Ux98cuYbgY7ptZfwkFnTNVZdPcKBXEA+xFOTklCZ3/SygiPEO8EM4O9MvUbuJWp6knMyhEF8uzuDL4Cf1h4K+jWA==
X-Gm-Message-State: AOJu0Yy8zXSfPxEy1/tkMNWOoZ6lEFvUCsJxPBKuOyT5NbFUZWbf/Lye
	8QcEg4yCVDf+0JVhphJ87KxUHTihLiB3TfMO7sHwUCUh7cfJE378
X-Google-Smtp-Source: AGHT+IHlmAFvgLS49lyX6ic7wbO5heyC9S7czR8KX49sC5/pb+ilLrFGYK3uJlCTdzLLSUVQ9HvEUg==
X-Received: by 2002:a17:907:94cb:b0:a62:eab9:4be2 with SMTP id a640c23a62f3a-a62eab94d52mr228164166b.44.1716811213252;
        Mon, 27 May 2024 05:00:13 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc8da37sm484669766b.183.2024.05.27.05.00.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 05:00:12 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	openwrt-devel@lists.openwrt.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/3] dt-bindings: arm64: dts: mediatek: Add OpenWrt One
Date: Mon, 27 May 2024 13:59:32 +0200
Message-Id: <20240527115933.7396-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240527115933.7396-1-zajec5@gmail.com>
References: <20240527115933.7396-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

OpenWrt One is the first ever OpenWrt product. It's based on MT7981B and
has entered an early production stage.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index eccc3f7cc4e6..c150acde1f90 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -86,6 +86,7 @@ properties:
       - items:
           - enum:
               - cudy,wr3000-v1
+              - openwrt,one
               - xiaomi,ax3000t
           - const: mediatek,mt7981b
       - items:
-- 
2.35.3


