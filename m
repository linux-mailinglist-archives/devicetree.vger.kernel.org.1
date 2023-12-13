Return-Path: <devicetree+bounces-24736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DA0811054
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:40:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDEB2B20E8F
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D7BC2421D;
	Wed, 13 Dec 2023 11:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="OS/lO8Xx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3944EB
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:40:07 -0800 (PST)
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-7b37405f64aso275586839f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1702467607; x=1703072407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQqe+M0SciQZs03dKyyk03FflXJC4UVH/RDIGAymDmI=;
        b=OS/lO8XxaGDwyEKNt4VAHi5FICjbBU0QOwhUkBZ6KrUoJOU7/UjE4KZT4Nyel0bqyQ
         hqo1N012Pxov1uQFv+fmSkE500frgRdJHMWMI1UIJN8ZjV3ReZTRRLvroiTznyV73rfN
         615RJSd9izAbefG8LEsxOR1Twob5zts7erzZpql7OF+P21AJibEqgRHtMnL9lcjX4NZq
         7+jxXUzyTDZXSHrAuMubHk2E3U2DfvAx9ShThDk5v5g1U3mx1sj3EljJhCA+D/NMLrHo
         jHMkIdaeo3+dRJrb028OipGO52bvSJcZJE502387by9EXhQcvEzuQiz3eG0WZy/wyCQZ
         EgGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467607; x=1703072407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OQqe+M0SciQZs03dKyyk03FflXJC4UVH/RDIGAymDmI=;
        b=cd8SRqHj4uX1ZLbZyQezqohuaZroJ8ZiY7oJZud8LW/1nBs6BiZ6VM+OxSikgRe9Gb
         T5uH9+sIl46ZtAB4WzuZTeR1sTuXNIUufdLaTQEKTMTQr4eJEqECR2mP/JCxQxhkIKo8
         2WsOEcsEsO5ujtCKdfy3+toquKtKwmtgNVidl3UCA3qHBBpwAInYI6nqBoOP+qH1EyvR
         9qrqS9SKQkCSc+f8K2ioekpNMC2ZnpMTE05dp9ZE/NJwEdQOqfhO+DSo8046latx3QBY
         CM5U01bhXVPgoJxjO4qnmKjBKg8LwfGFZwaCDpThawQ6xuU6GKoWjdzvcX4OCP4DRvkU
         k5DQ==
X-Gm-Message-State: AOJu0Yz8ycXceXLQamIMlqU7PiDVAIXZTODz7vuNbNsLcsxJTlG9A7zp
	bbWeHsdhcinQNUVCCZskqVnfvg==
X-Google-Smtp-Source: AGHT+IGGyRqBeTDdNQ7HGycNQHOaojx3Dzjx01n/acJiFtPQlEWht8+O+/tfXna6+MHjMz8iHq9CZQ==
X-Received: by 2002:a92:d150:0:b0:35d:6220:ac8b with SMTP id t16-20020a92d150000000b0035d6220ac8bmr8780918ilg.58.1702467607093;
        Wed, 13 Dec 2023 03:40:07 -0800 (PST)
Received: from localhost.localdomain ([101.78.151.194])
        by smtp.gmail.com with ESMTPSA id t1-20020a170902b20100b001bb9d6b1baasm10331066plr.198.2023.12.13.03.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:40:06 -0800 (PST)
From: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	perex@perex.cz,
	tiwai@suse.com,
	trevor.wu@mediatek.com,
	allen-kh.cheng@mediatek.com,
	kuninori.morimoto.gx@renesas.com
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Rui Zhou <zhourui@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [RESEND PATCH v9 1/4] ASoC: dt-bindings: mt8188-mt6359: add es8326 support
Date: Wed, 13 Dec 2023 19:39:52 +0800
Message-Id: <20231213113955.47668-2-zhourui@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231213113955.47668-1-zhourui@huaqin.corp-partner.google.com>
References: <20231213113955.47668-1-zhourui@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string "mediatek,mt8188-es8326" to support new board
with es8326 codec.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
index 4c8c95057ef7..f94ad0715e32 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
@@ -15,6 +15,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - mediatek,mt8188-es8326
       - mediatek,mt8188-mt6359-evb
       - mediatek,mt8188-nau8825
       - mediatek,mt8188-rt5682s
-- 
2.25.1


