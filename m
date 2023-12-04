Return-Path: <devicetree+bounces-21522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CF6803F05
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 21:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15768B20B6A
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 20:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6EA33CD2;
	Mon,  4 Dec 2023 20:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fK56Zrrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02724D2
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 12:09:41 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40bd5eaa66cso34334015e9.2
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 12:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701720579; x=1702325379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVFpYtqEexLfydhqoFIxA/jZIztn7bZ/TEnG+oaDfrk=;
        b=fK56Zrrm6O18ofPKSTt+iSXwoJGRyKxaONG8QUHQrbK4zLsCx9mLepYdtwCW2XpvRk
         iDw/hfTs2kIo1L+mWafF0dJTN6otL2jSkK5RHD/IsmZ3LVi1PPeb2RPGbhJBTfuNeMO0
         uXvR1ktrQcoELYdLn1pzL/v97PWHO/l07gg4owwsxHEOyhMrIYjS47X/h1Pm0Y1hF+HL
         8mjBvTiIywT48uaI/Yp+OPLvDx+gMlOxte0zzqR7DOt5XgeTYBnwmcTaeLbEHEfnT7k/
         JR9F3p3FKk2+rviovVxGjX1u9gYStIIZez7T2uzwFZ8VXZ41J6rU0l/xDvLTTZ4lON/W
         /r0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701720579; x=1702325379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVFpYtqEexLfydhqoFIxA/jZIztn7bZ/TEnG+oaDfrk=;
        b=piAc3tvlNsSopDXUCzjJjZZgGweGDmkGw3R8BzE2JvIm8y6FYsM0HYwdBCbmTvFc2W
         Ui/DIr23hbwPa8VpY7+Lx5Q4ptIZ5AfFb1j5/IIS5nLCHRYym/HJ+xZUZf17UCdfOiD7
         A0PRw/RdliPdPYzYwSknYFN53z9h4VrQn6uQEhGz+nLFisQ/8hwiah9kYDjMxj0Sdi9L
         uVIj/z1VYC+7R2xEr/TdI0sN0WlYLoRHSFAcCmyxG/zNrB+bWznomKj4Vs9Et/7G6PwH
         ndcQN0TQMzh3ooFvKS/rEjwNM/pGxitNxUkOzNpEV6e49EIhRSU7JJOeMulqjdOsENqP
         gIfg==
X-Gm-Message-State: AOJu0YxreD+BHlsQRyeO8wNqd7StjyqRv1EErwaUo7xGiirLMy+PLtGF
	AqzU7ILuHWuVeAt9qLySwGQ=
X-Google-Smtp-Source: AGHT+IG63Al5DfRoGZvaIVTd9NWsHUAPVQRrDzaNLOrtrbQT+bnF7z0RJvh2ycDEMAsNA6qCgPUXYg==
X-Received: by 2002:a05:600c:4448:b0:406:5463:3f51 with SMTP id v8-20020a05600c444800b0040654633f51mr3026285wmn.25.1701720579155;
        Mon, 04 Dec 2023 12:09:39 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id lt12-20020a170906fa8c00b00a0290da4a50sm5620666ejb.186.2023.12.04.12.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 12:09:38 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V2 2/3] dt-bindings: arm64: dts: mediatek: Add Acelink EW-7886CAX access point
Date: Mon,  4 Dec 2023 21:09:06 +0100
Message-Id: <20231204200907.5687-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231204200907.5687-1-zajec5@gmail.com>
References: <20231204200907.5687-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a5999b3afc35..cfdd3317edda 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -84,6 +84,7 @@ properties:
           - const: mediatek,mt7629
       - items:
           - enum:
+              - acelink,ew-7886cax
               - bananapi,bpi-r3
               - mediatek,mt7986a-rfb
           - const: mediatek,mt7986a
-- 
2.35.3


