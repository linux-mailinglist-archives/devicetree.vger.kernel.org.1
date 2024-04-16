Return-Path: <devicetree+bounces-59787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 991FF8A7068
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 17:55:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC25F1C2109E
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 15:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116A3137741;
	Tue, 16 Apr 2024 15:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RWqjCpdC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C9F1353F3
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 15:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713282807; cv=none; b=tocAxWZGNuR8cQXc0Z8zlUoHXycVwOf/KhKkBqwHDSzvJ0TYfs/bYUo5Mss8sQknNs7Ex3SqNsoibG4WczMu1Am0v5MW6EmCK8nBZT5s+6RTB+zmcnmWcB98XrArq8ckrY7HwL4oesQLKI6vkqJktCVU0saYulsd6QNttEFII/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713282807; c=relaxed/simple;
	bh=R+vzoeOPPnxdZJDMjVfaf9M6El1keSxWf/VPx+5Omwo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VL9j3GDpKoWPHLg7k757iZmSxqZoTe5y7eJ5quCXfk9snuCcHnNxtrdWYHzjnYaE8rGYyMrhRCg6NNJ5UqRT280Wi4fzxQzDYAZUQH4uyZxfx64XL1Mc/ZfamYvt5V6b/zGWEojBx32HqoUxmEDB67Lbm3yMWMsLEQhgKY8doYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RWqjCpdC; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a5269c3f9c7so306788766b.2
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 08:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713282802; x=1713887602; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aX1ilvintuq1X3FkJfckvE1w8waUFusQvnh/7DfkGVs=;
        b=RWqjCpdCgvr59j4A62QD+1pShbSGQ24PCKufh2i2RmzHIC9sbTkZfyO5/zlCaqrAX1
         VlfHoGVAyNLX0FSmTEm6M+qcvymqPFzIYMOj6ZEdzmg+9Ge4NwWwLJvJua0rjvcWXchI
         +6HbucFc6Ni5cCoGJZKdbzHzuIsvjKH+rxo0hrJUnLnRIAvRi2DpLey9RvQeWksDUHci
         DhyYzY/WIRyukhFRJ4mEcswc+86zWun6uFHWudM8Jd2vvUBHh/O9jWcdhGecT/1OB/+5
         l8nDIhdAU+lzge4OSQkrkPqnk9qWYtKZai43g6fJk6xj0yeuqAUurS5hMk1u9QHJXGIu
         TJzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713282802; x=1713887602;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aX1ilvintuq1X3FkJfckvE1w8waUFusQvnh/7DfkGVs=;
        b=OIFNPzcnzL3OBpVfyFWMUUVKFqu2udMaVgu2niWR7Ne1OmqlAN4yvXLMyJyumEhx/8
         Kuj/UzP1FrYs2FYE7Ti8i33zznLIby2cye21ZBhBePzLYGHMCgez3CxT4+/GAQ9qBoj0
         2pikrjFd1f8w4DYpihyeJyBUZ0YloW+7rx8HtmOcSGmSQB3JYlnj5A5FE0hrdZmClK6o
         bkeXO3b6Civn/RpohfXS5GOr8rv5hOGapOFnqh/wXE9ISu4s5Msg9Hhmoeb2w2W9zD22
         Ix361vs2fpYLBOtAyHTO6m/u+7Y8+CstUWY8z+rb5be823vx9ox3IDUK5rKotQpi9r5p
         D0vA==
X-Forwarded-Encrypted: i=1; AJvYcCUyaE9V/U3CgFl2otUm8OvR9v1k8eY3HkaiGjC7cZ410NL7UTB3K+4rMwYd9Z4AZT8CIn8XSgjailQAIy8J5NGfbLRnF9TkkdZOxA==
X-Gm-Message-State: AOJu0Yy6pJfsBwedhcu/AD4Od+6yt19Q6aEV5/Gn6zM7V5UDYxgp/IcX
	uwyI9BUrmE4DVuHxixDMnUfS/T93wJJwmxhsAPIHr3PbTp6bm1hdkLFcj13LwDQ=
X-Google-Smtp-Source: AGHT+IGLZR+1+7B+BajRfnUQBXS5QfhNiQ5CennwyUtLwKqOcXMGphNr8pxmLBz1gtSdoS6PDtUNMQ==
X-Received: by 2002:a17:907:9283:b0:a52:5b0f:7f92 with SMTP id bw3-20020a170907928300b00a525b0f7f92mr5442353ejc.41.1713282802521;
        Tue, 16 Apr 2024 08:53:22 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d12-20020a170906174c00b00a52567ca1b6sm4156691eje.94.2024.04.16.08.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 08:53:22 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Tue, 16 Apr 2024 17:53:04 +0200
Subject: [PATCH v2 03/18] dt-bindings: display: mediatek: color: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v2-3-33ce8864b227@baylibre.com>
References: <20231023-display-support-v2-0-33ce8864b227@baylibre.com>
In-Reply-To: <20231023-display-support-v2-0-33ce8864b227@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 linux-clk@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=920; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=R+vzoeOPPnxdZJDMjVfaf9M6El1keSxWf/VPx+5Omwo=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmHp7q2YV8vqOm0I5SpvrTc8kKgMLlApdXdXBoGCm7
 TqzfkeqJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZh6e6gAKCRArRkmdfjHURdILD/
 9hTrBDlZ3MFc4Oqcrvu6IW9Wirx17tcVe9M2T8Q+zqdZk66uoY6oQg84TikiL1rAZ38Yr7Ggyt4B2c
 Wdv/6kuu73i6MPG1Xc94NEY/rgNIOBMudlppCXqrhb3PAmTCsiO8BVvIYDA1yHpz422cW7K41DC6OR
 Q9QAI1ZoDogA33x8CDj8/DIC1Hx3NKJii7+M0Ce36onRMyHr3iIz+dBGL5jDu8o4w/eFyoHjulcTdk
 El2ms2ptOT89BNgtESMBqnjAJP6ZEw2Vn/sklWB4JTHbJRmfuwthXqpWHrM0Xk5rnOWjDavj/QJdgY
 RotSfYpY9nZ77+QZBR8BUsfY239Ffkypq3nbnyTNiKqYqOTeITKwGXByCbAtf5/37dS6tY+XYzHLic
 CcjNYcqyazjucw4NdH00VqR6YZfezuQyGGLtClfKYrXwbpgKmoVEHu9PJX0Zf0yWqydjj8fm0OUkDl
 8H7call9IbOaj4Oojq2jFOnnbv0t3qJxeehgNtA8AOUYtkLsqOgTIRB8HK9TaQuaJDctyZa/ekFcWF
 xB1EFzfJQd5oyqR6ezcDj8qGSb66Mw6mFaHb43dlbcdx8ovYl2ywOzMokoC8pbOqTg7kSCoje6sQoj
 vG+yZ6XTUoOe8+TOyY/dmC2QsjVsiRcb+horawiIzt/VflsUQAJi9AU+qgMg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Color on MT8365, which is compatible
with that of the MT8173.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
index b886ca0d89ea..7df786bbad20 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
@@ -40,6 +40,7 @@ properties:
               - mediatek,mt8188-disp-color
               - mediatek,mt8192-disp-color
               - mediatek,mt8195-disp-color
+              - mediatek,mt8365-disp-color
           - const: mediatek,mt8173-disp-color
   reg:
     maxItems: 1

-- 
2.25.1


