Return-Path: <devicetree+bounces-170373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFBAA9AA28
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:27:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F00C6189A032
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74C5B230BF8;
	Thu, 24 Apr 2025 10:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HAavX8b+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968992309B5
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490338; cv=none; b=oJpM7Sq/geCSEr4UklwsYA1crK64rtdngfZi04HVlM6nYGGHuEngD85rgDEi6eS/D8zj1If4XTe1EDPQNF9n8ZiGXyIXMQ0kT4tt+T4D9vV/UzYX+Jysqn1MyE4UFOkXRWA9WdnbV/oXtVNZDbZB1hrIg+1hGr1ziAwxntLgp8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490338; c=relaxed/simple;
	bh=SddUH/xqsKCkWdaBB0Rh8l7Fup5QKZ1bZQvIU0QOXGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IT0L9o1bRFfOz0jsZQEdN9oLyTNnfekcfnwV2LvlTS2ewoIdO0ogVurDy7jZ6GIo+jmnkt06UJuVLCzoxbBuvqCONbtOh1ZZMAYwZF3GETmijsHg4xrsi6QLco7fUYGwua+lbVzbCF0ddDvqWeEE1n8/4ghYKHoeUOzXmQP11bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HAavX8b+; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-22423adf751so8516885ad.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490336; x=1746095136; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kPI27XPPYRRK0xWqV54WIVswQxSYJsBtgx975xO40PU=;
        b=HAavX8b+aOd3i4wLFnVYNA/6M4S2WVEZFhdlv/5nEoCrC1wL8Ov+0iw9VcfKiFl4uT
         Hj2i1YhGh0CXlxZzEi1BbQFbxdd8bNtkIB0TZVjTWDKxcPhzCZAVeCvT5p68c4xelxbK
         oJ7vw3D4/ZV5JP0B2DIVTMVFjVtpzcBev6ifc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490336; x=1746095136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kPI27XPPYRRK0xWqV54WIVswQxSYJsBtgx975xO40PU=;
        b=nrTxJ0zkA6b/BPKz/SvYtu8D1df84sQ6qNBslE4QZFAeIuN+Jtfhl1QVCX77U0+eXH
         EjzX0pkyAe6Fqw1nLwduh4jrMGrAsbjD17vPk2a2plMfC8aQqUg2bDTQMAbERJEDB2CV
         OwvYoMTg8+/JY2VjVZfOlOEBwgqq7Oc9SkaitgkWSR07oQOroF5FgclVqDEdn1CAv+hq
         TJNHFwSuBWx3b6dLh+m+1SDkbDv5RnNmAOEqpsLsztX5TwGu8MWQIs+Etl4TAif05kQB
         TzxNJpAjkp4lWPXYCF2+tPizYnneH/E9hau2LEjCw4gkU+trdQXNFpmuFo6prE0JLSlX
         Dsug==
X-Forwarded-Encrypted: i=1; AJvYcCXUdNmehYUU/PS9amgmif0lJvXvP/4mRt3ujr2Tm1o93tZhAseXPYZ0b8JgtiFODfvwfbtH++ZFoThJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzJE6NRGGqOcArFq/DJt5tQ0zGTMarbNyERqcScj1yvOC3hBjmT
	uCnLmF7LcR3zgthDpE4zAe+bx9G0ejNOOZD6K90LCssPYiOjikj6YDyFUtilFg==
X-Gm-Gg: ASbGnctXm7h1lTKUGFJ692v/cztm3u0rvnvtxGn5+85xbjuC4ZuBLuwF6R79NuKXZ/O
	Zwgw4H651NFmLki46w7Qv0jrSZBCZha7WOCgrRb3Cyv2OvBeE8TuWBJADNnFaM7JfeNO+xAXZIJ
	EgkotDV3saEBHySiZPV15XKKdUKrj2F+0hDig1peu/2/2BFtOucPrbBckdSKrXRG77iZlr2stk6
	8JNKYGAYWwccHoHz+00CqxwX2mANKl0AEecLKgbRIcUNWSmPrY24mGkQT4QR89Ema6EnkOkL2y+
	ZoAgcDnew6QPDnAswCHtAwBWctm318xEU/JFCTQBJzG4QF1yNfqrngnhmA==
X-Google-Smtp-Source: AGHT+IFl3f1jhKy5TreVsC3n6Tp6f11IsZEiWWY1AzKzoKnuU1FfQGTVtrsgZqmOG5uoeu4Ajq1oKw==
X-Received: by 2002:a17:903:28c:b0:224:76f:9e4a with SMTP id d9443c01a7336-22db3c0c147mr26537035ad.14.1745490335985;
        Thu, 24 Apr 2025 03:25:35 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:35 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/13] ASoC: dt-bindings: mt8192-afe-pcm: Allow specifying reserved memory region
Date: Thu, 24 Apr 2025 18:24:59 +0800
Message-ID: <20250424102509.1083185-6-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250424102509.1083185-1-wenst@chromium.org>
References: <20250424102509.1083185-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is desirable to reserve memory for the audio frontend.

Allow the "memory-region" property, to be used to point to a reserved
memory region.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
index 064ef172bef4..8ddf49b0040d 100644
--- a/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
@@ -23,6 +23,10 @@ properties:
   reset-names:
     const: audiosys
 
+  memory-region:
+    description: memory region for audio DMA buffers
+    maxItems: 1
+
   mediatek,apmixedsys:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: The phandle of the mediatek apmixedsys controller
@@ -95,6 +99,7 @@ examples:
                       "aud_dac_predis_clk",
                       "aud_infra_clk",
                       "aud_infra_26m_clk";
+        memory-region = <&afe_dma_mem>;
     };
 
 ...
-- 
2.49.0.805.g082f7c87e0-goog


