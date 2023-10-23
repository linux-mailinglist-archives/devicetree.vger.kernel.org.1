Return-Path: <devicetree+bounces-10957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B16CF7D39AB
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:41:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B0BD281315
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C3912B85;
	Mon, 23 Oct 2023 14:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cLSHiUR/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB3110A22
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:41:01 +0000 (UTC)
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 453C21998
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:53 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id ada2fe7eead31-45895225422so826554137.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072050; x=1698676850; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=btxrc1J+7nlpNBhaaQIbXhy+BRoKrBh7Tei2ReYceTw=;
        b=cLSHiUR/hYTLq5+W4mmD7GwIiwZxyMm5ZvkRc0LLGQIedFO/PxkhZOV0bPAP3SShsH
         K0905soWLL0Q6zt7WlTrzlhK+Nu00mlhJ4Gbyfe71PNhskzRDIV8L+zTSbw11XKBPaH5
         AF6X/wKl/m7wjXlEm985cfPSnyfG+Hh2eo/QBpvoyxF6sUD8cRm6hmVThzPDr1oOaIhV
         wQ+rc6ikggfxg+6Hv6iWw40tABmQnLvFReScScp/cr6n6Uqt0vhfpe19D4YLn+G6tYbx
         i/o+DD+xVre+QEEWcvBOuFoYiSZfITVh02YIhHYv8UvpTwowaHTECJ1HDssYYPKVihOg
         60bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072050; x=1698676850;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=btxrc1J+7nlpNBhaaQIbXhy+BRoKrBh7Tei2ReYceTw=;
        b=jWXq5dpCN/mUkqiy4QctKvrcyqNAfvMIhfofSCYSVuFADAAri1HxAYRvpMq0giXDO8
         uceQ4hPP6Ty3Ne7mkIzQSit8Jc3brbpsBCgMZrZLarTLtPCmu1LXantn4N817uOOsHV2
         XesmEmeL4NSRuL/iClYqMfSBb2GiZAkwiMIyrj8iGIi3MGjq4G96fYHPAaxaA7l2m0M1
         XI5VCqPC4tepF5o98lX27CK1/lqol23M8wuR/IZTeYDC1hLuGNrh+eiq5/4kUjbmDJkE
         JG6bF+ojo/a7bGMarPDCs2/Ccn/xcp2TjAX6hg3pTTTZqxviqerVenM1dypGu9GnNEDl
         QSDw==
X-Gm-Message-State: AOJu0YyPkfHiHvOjtv5bDxjesqlvva5wCVQ5yG3ceNTjetXcWScqjSEx
	MasYTUin7a9RRjZWwEYAuQTAfQ==
X-Google-Smtp-Source: AGHT+IEHtN0BO7u7QDArNCPWdW4jkZH4U2Tgzur52L0BG1r41rfx44EWTcGQl9iPYctJnK5hBurJEQ==
X-Received: by 2002:a05:6102:4741:b0:457:c025:4c7b with SMTP id ej1-20020a056102474100b00457c0254c7bmr5878640vsb.19.1698072050079;
        Mon, 23 Oct 2023 07:40:50 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:40:49 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:09 +0200
Subject: [PATCH 09/18] dt-bindings: display: mediatek: ovl: add binding for
 MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-9-5c860ed5c33b@baylibre.com>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
In-Reply-To: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=860; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=M4WYL+KrM0LAMGbIVVc2NhXvV7PADZ7FKnKax4OIhj4=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXP+76mL8HcY0aJG5HTEVTd79bVZFTl7La+u6T2
 JtLgOyaJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzwAKCRArRkmdfjHURW52EA
 CWVgb591a/Qg88wnSQZ4uFhh17HaC4VEqoWqnc5n29xLfeW4uwo4iuJ1oVMC+IgR5Sa4OZv57VWYUz
 1jpU9G55weccJHI8BBTZEpR52MScVpl88+GfNRQhBDdRXI2GiN1yBFQlSJM9b0L8s4xlrZKDvDX4Z7
 gP5EZEa20WZkJN/ZIwRqeU6NaN50M0VhcX/skUqfrivEaeM7hkBhqBD/O9Vs/0Iw6+VolwYEFlr1wy
 Khn/iFY3FUx5JS5iMwAlV0CDUo9gDfbFhVV31rxhCRnK4KbTSnl9Dz+kEoJD0dUfIjNGJHxGm6Cn4U
 0bz6kYLJId4zAYyUeKK8PoJTCEeV7kgjI27B9yxPGCzK6KITdroOYCTMt6QP9DqY7KMexqo6SAyR6B
 knw3j9zrIxxYNWVptIoES4cPRcD5nYKrwvJ8DcCRx9TOKqpXnzkWifEGFWAQqnOGNTKk2o+MurGpkk
 KXaBkkZXiMWmHPYO9GpgdrI2M7VZwq/IQVIKc7aEe8pZjpPX868/ZSdgszL1nRULbhHUrzJaLLKMsS
 WNe7bfxjPFr+NqgEf0vr8ZypN2tC1fqKSXgB4MWxMb0n6Uwy2+Tx/6bfn9UwPfbwLkfoaUOlULrghE
 wJoHb2K2NMlrEE8w5A0+VvaMQcUD64/D5uzOy3Z5Ilnx4VcaTFuadcOxuUjw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Display Overlay for MT8365 is compatible with another SoC.
Then, add MT8365 binding along with MT8192 SoC.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index 3e1069b00b56..2873bbdf3979 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -43,6 +43,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8186-disp-ovl
+              - mediatek,mt8365-disp-ovl
           - const: mediatek,mt8192-disp-ovl
 
   reg:

-- 
2.25.1


