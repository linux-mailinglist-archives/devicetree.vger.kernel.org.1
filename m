Return-Path: <devicetree+bounces-59793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A16608A7080
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 17:57:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43CF21F24B85
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 15:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E582313957A;
	Tue, 16 Apr 2024 15:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="h4sfhO95"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF8A1386A7
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 15:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713282815; cv=none; b=k1A5YwCKwBwtuB+wuz3H5PhQgn6R4KDOrhcMJVTjvPXyOqOORAxhOQNY/xJ6E2tr39GEzh4zvGbDtxt2XRhAMnqCGMBKVxEx9JNdUU2xMg/MKQbJg3EtkCP0xRShJm2rmTIEVqDkO5kEt7WPgMDbNss8tIXE27o/lUlqFH0RaEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713282815; c=relaxed/simple;
	bh=+xyac2cFKfXL7SEy4I+ItDZmKjuQP6rtH9cJMga1OwE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bxpf9REwv8FzblRIaSJeqg0LskWpsAiarauNy6xulqe1/dL5vKl+v7ozzET6L3uap/Y/GadBKrJ7SuBl9RubUpy4SLqFAvYRsWe/AMXpgeAJcmXcOiW+kzNACfyYF3356NAdmNeuj/5595g/GXKz6dfyRQ8wrsHv+iVv5FJtvRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=h4sfhO95; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a5544fd07easo117170266b.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 08:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713282812; x=1713887612; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9UK/IswjdivlZnvlMzYH9SOhVxM/8lGMwpTnAVDf5g=;
        b=h4sfhO95PFSaz518nhptM7VlP2TdUsl42oAqg2HyM2Wa+bY087xZBBtjvSQNGZDqtg
         z1IAar/ykw0FoWXX0rgr1z4aiHsaxhWprIZW6aZLu/RMyfTshX/HJGtfzY7uO+nXRs+Q
         8U58ggtIMxZ5mQ3+Yp3JNNe4F7hR8rpPc9iI+jbNI8FKROSpZtEc2RquAAc34Js5arC3
         FFGsWqYkiiZ2ReqNzesTwZS1dnF+mliZMHlTbfqFSGYdpck1gglASBjYj7BRD+qOpSGX
         3HcJ87xpzSXEG12MXfgXs5G3sWUNCoa//XAGGY+sO2cl6rZS+tuKBLmXeGtkD/cYNQ5f
         gv8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713282812; x=1713887612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w9UK/IswjdivlZnvlMzYH9SOhVxM/8lGMwpTnAVDf5g=;
        b=oNlPbVVP7HMCB+H3p/hWDppOyI536zchRFsBE73LaWIxtA50nZr3PuqpJy0GAWFVpA
         yyNNEZqHCdanhu7kq+XpVesvtrlYJXvDfw4WY3m6w5jTNJ3f/8AVq4VK6WigFqrK98Ja
         FtfTRiii06hZvUKB0tmb26PHfkhRZVgHm2BcyRUnRUm1Ke7q1i921pqHDb6hYOqfotk/
         pKfkCijXtbURde9hYjfIPrMZ+mIIjC511F2cA8Vjz3gi9DsP0ztwAcWR2cUUSXTMdI0C
         egk7os4luR2JAqrlhxDI+xviJ/EhIm8CZsGiJnl6xkJRaCsPzSBohBfj1c/VsJvHsK2Z
         vLHA==
X-Forwarded-Encrypted: i=1; AJvYcCUPQJ2gtT0FoknC4v8cqQFIXNIQF02BkUJVmcO8T44kAOMmdOmzDgq5rWpvnMwDqprEx2+OhKYtYGDgyJ+VvaQhWsqPWZeMYy7CaQ==
X-Gm-Message-State: AOJu0YyuPBsOl4yHOjkZYYfOLGacnz/a91Tw8HZ70QdEXzWKEnuLCtgM
	2lXMYR8wtBSJOS1cCbo6M0yovKjwEz6rbz6a+hoohN1DEdIfIF+3zBpfSYkJODc=
X-Google-Smtp-Source: AGHT+IFqfbM8k+GVv1bZnKX+bAKFMvQtDXmkeAj8oUzOTJ47JyZ+JLjUDqJoEtJaYnagjyBvM5NXLQ==
X-Received: by 2002:a17:907:9284:b0:a52:5a23:3c2e with SMTP id bw4-20020a170907928400b00a525a233c2emr5917386ejc.43.1713282812609;
        Tue, 16 Apr 2024 08:53:32 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d12-20020a170906174c00b00a52567ca1b6sm4156691eje.94.2024.04.16.08.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 08:53:32 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Tue, 16 Apr 2024 17:53:10 +0200
Subject: [PATCH v2 09/18] dt-bindings: display: mediatek: ovl: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v2-9-33ce8864b227@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=838; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=+xyac2cFKfXL7SEy4I+ItDZmKjuQP6rtH9cJMga1OwE=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmHp7qK/cbddaKH/+p1Qdvx84jOYg2K1vzKIKSS1Sc
 x5jA1GSJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZh6e6gAKCRArRkmdfjHURXsMD/
 45ehwMPBNwK+gMcsfnl3yGkL99YxRTk53D4gBwYrurtTfGf2jISxnqikQtv8LMasjLeJ2JlfjLqcjD
 6M9/gRGy5p/ulWRftZOocYZAbWH5YQPXj7PRy2syaxBdVRtP8O61fsrKK8ikvXoMxKpy8WO1Bsjq+j
 5a4MS54/0kcznLZwu4DeEsfvSHjRYdcFnxTQHYeEYfZN1FxgRloCTv7hSt5AWNfj1K427zimu8rut9
 LpawESAIs9cC9jAAJb6CzhzoM41a2VBav/bkCfKGH9tIb6wluhbluz9HuboIJBsp2YEI9YUF17HiF/
 iiX3j0ENc+L8GyCudQCoTfEHsIHCJmH4I3hBQ5ObScyO4gJIlv4j/3CFusPtN78NiKzzyHBZ0GEjCu
 pBvRBJKoitIGIpwsVxvA1vwWQ2S79mCzYXUrL0F+mMAEl2MZF20fwk+CiWWOkgNDEwrTMz4SCqRNaJ
 sts6N6qibOFRBAqGK+cgzlfKUBe1ppDKAQznI7E9nL6K5JxT/jgpQJZE/ciL6voSGy6IdzYPzVhs2y
 /F+i5IoK8IPqcXrXoEJd4JJeqs4hwOmwc8AmjfsSE9sZPjF0ZEmWMf39urMj6gU7tBlPgdWCtOiMKm
 BUFtMqc+dtHiEI15o4TKWJt0vr9hOJ2kYXhJA77T5fRw02DbDNFrEE5u6s6Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Overlay on MT8365, which is compatible
with that of the MT8192.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index c471a181d125..d55611c7ce5e 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -44,6 +44,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8186-disp-ovl
+              - mediatek,mt8365-disp-ovl
           - const: mediatek,mt8192-disp-ovl
 
   reg:

-- 
2.25.1


