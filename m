Return-Path: <devicetree+bounces-10961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAA87D39B9
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:41:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 810CC1C20860
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9694014A84;
	Mon, 23 Oct 2023 14:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="prKJdHAH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2853910A22
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:41:19 +0000 (UTC)
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 931541BDF
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:41:04 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6c4b9e09521so2376732a34.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072064; x=1698676864; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pH3GFq5D69xS1Tzi4QqCw1RIdz10bV1qyKuEWVVtejs=;
        b=prKJdHAHeZeCr6EWLPyJroloWdSm/JdWcrytG1aMhJ+2Uqj/qfwoPBijKk0D9BVB8u
         t+Nb8eio69BRQekkfb4aEo3HeQ60M2OvO07zqQDwJqoApQzTW0rZbNPkIKPPrxAzRBi7
         Xtq+bjYCisGp6/ujm6YT1oREiB8yjdA9Ft1LpQvgfw94A3/q6qjCzZ7ZAIqfPeC48NLZ
         L+jPgOMvcxEnAfypmw4ThWiZAXpZRJ8HAT1UCSycflIRvjb3WgMwxWJumkN67j//Y7NY
         X1UrLE2eu9dwZhzOf1/4gVCXYOB9MwPFAfVLvttd6nKfzF78dEDKvEIaA52tuPIBo3KI
         o+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072064; x=1698676864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pH3GFq5D69xS1Tzi4QqCw1RIdz10bV1qyKuEWVVtejs=;
        b=atLkFalun8/5C7/UXFiHSHv2AyJtse+eKz4aozgMPh/2lCkuCazGGJi5O9jkGOWRob
         27Aoc/uUjCntjsPjM0DvMHXZENqNR7Gb7VvWcHGNk/taYfUjx1Z0+pqMw7NPu6oq5Oog
         KyUOtOZnaa5ZpWfFP6j6bgmWEHHjNk/iZ4oZRIYae2om48BVWzIoEqBmXVtIMsbs8PgQ
         dZYbOs1zySrWBVz/uDUJ7wv6V1bZofpwUDTGTvvJQEymgktiIKGCEMj4DXypg+f7Vkk0
         QMWnNDEZuNF0j7OzD/unWJtbM64GKwDX+R6WEDGC8IqaOwEpacgNi5OYNpVG0D1b5w7s
         glqQ==
X-Gm-Message-State: AOJu0YzWNsiPnPu1oiPwWdIcLi6752aU23QuexykfdJjBnq7scVuoJAB
	4wt8RIlNFIi46Qg4FqLlmlG8Qg==
X-Google-Smtp-Source: AGHT+IH1IkI6TnT+ttcmCoscPeOrIopE1WBAZEg4r9UimrR6CIMRAoo8nMxYKo95tMWEpnGtVl6eKw==
X-Received: by 2002:a9d:6188:0:b0:6bd:c8c2:b70f with SMTP id g8-20020a9d6188000000b006bdc8c2b70fmr9880668otk.34.1698072063987;
        Mon, 23 Oct 2023 07:41:03 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:41:03 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:13 +0200
Subject: [PATCH 13/18] drm/mediatek: dsi: Improves the DSI lane setup
 robustness
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-13-5c860ed5c33b@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1234; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=M0lgMNEWbaoZ4qkfmFQ2d2c6SqYe0EzRwVFM4lhot+4=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXP9F3RAu1ZKmUXEIyW8a/kP5CK+Jb3tGF7IdoH
 1RqcA3mJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzwAKCRArRkmdfjHURTPOD/
 9t+6pSLsY0qJ4yNYIAy8Yj64n+qV7yRH4vlC9ppkx91ePv2Sf/rsw1+QRG5hlj0j3d5dWf0ZGe/qPt
 DjapblIQRzzn7BcMUQD/gavAeQ+YuLMd4IOyVk4uXEBjys9STpAuYQuKC03y3NcyjL6JWTj2fmFXTq
 FSDDYsV/wNBpk5ALR2J7sE92+GGZXhthAmqro6CeVxpKs8z4H+c8lJOUUGaohZDWJkzoPl3QJssrhq
 XljafCvUMlRJYbGBRWHusF+de6q6F9tY7mJoX2udGUIrH/cZR16ydBWCpSVaFEKmGEioAQXsFQ1JpS
 3/FHHTBX2h2nfGJQ2eT5muUbMii7hB7u5QWiVCF3BFBfzU4ketZCF3bj5Dk9xLBskq1ddV951Z1VJq
 aWbuUgtjoALtwalhNzN12FffvNPsJIBz4z1TjRHf/cK4a6jaXgVBorbrdg3g+HRu0BH+uAGnC6c1j1
 BZhh5BAQvMKdxFZnbk/zwmdsmAwXbfIPVcs2R2rk5mriJ4BOy13/lj/L2c/671sxkorHAFPtQUsi9I
 4XIePB314S80C1hBbP4Le8sz3x/gPiLeaQOFxu1Y38FmqYPDFc9iZvDBov3qmHwo1awkx6YyeMuOrY
 kr/y4GCxn8tSG8oU6g3QQsh+p+1wUWzZ6V47BRTgBHkVb5pT5lxJo6zeFjNg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Currently, mtk_dsi_lane_ready (which setup the DSI lane) is triggered
before mtk_dsi_poweron. lanes_ready flag toggle to true during
mtk_dsi_lane_ready function, and the DSI module is set up during
mtk_dsi_poweron.

Later, during panel driver init, mtk_dsi_lane_ready is triggered but does
nothing because lanes are considered ready. Unfortunately, when the panel
driver try to communicate, the DSI returns a timeout.

The solution found here is to put lanes_ready flag to false after the DSI
module setup into mtk_dsi_poweron to init the DSI lanes after the power /
setup of the DSI module.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index d8bfc2cce54d..81cf0ddcc399 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -668,6 +668,8 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	mtk_dsi_config_vdo_timing(dsi);
 	mtk_dsi_set_interrupt_enable(dsi);
 
+	dsi->lanes_ready = false;
+
 	return 0;
 err_disable_engine_clk:
 	clk_disable_unprepare(dsi->engine_clk);

-- 
2.25.1


