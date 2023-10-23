Return-Path: <devicetree+bounces-10953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB4E7D399A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:40:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD65D28133A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54DE01171C;
	Mon, 23 Oct 2023 14:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fC6Y/+Se"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D61410A22
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:40:39 +0000 (UTC)
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7BE510EA
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:36 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-777719639adso208449285a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072036; x=1698676836; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JHlKinnyvGcWLyX/UpwiSi0uqGe6vbSuDhHVYP6fxiQ=;
        b=fC6Y/+SebrdyEuuC3jLT/ZpbED6NfyvqVidN/TzwBNafxRB5yAmIGZDVt7q4pQzUH0
         paLe+Tic9vhivjmhw30FbHVIAP+tp+sGn9epPxmFIGJH1Vp9+WiFR20b1Sf+Eyz6Qq6J
         OuERdp3d0+Y8nPfZqiLANsE9dSwTk8sEDwX0sFbxYqqW5qe+S2WlIp2LT+ld+YbpOzDi
         2yNvQ3XtBsfJ2txzxRe1cr9XY2BCNJ+lidXdZo6KTjIRVDkhm8J9w3tO1NkTiN2kM08n
         3OXIMCmAfzbFfdJYZoKGXZjTld1XkWrRqqo7OCyekH38hxqq446w6mWBOUOydt+wGh7a
         umDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072036; x=1698676836;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JHlKinnyvGcWLyX/UpwiSi0uqGe6vbSuDhHVYP6fxiQ=;
        b=FWI2mZP87c78LOjbwN9bNy9vc8APan0kIjhLRcPqd9eWGYS4vel7XwbnJew3R9pGqs
         6fsRe+mXMT5CBbwBQcncqPYqoV+Mq7qQsUN2HC40+wlhdNqE4vTYFsDRV3nzjFhGwS5M
         Mpb3IsnuiksFduF6BBokUtHIdM73Xydo1HMmI7HMyuWZSBExozm9pN7wUnLK1rhig8Zx
         f94UoO7ZgrpllH5UM8vW4OEDux6normnL72PVNoPV4UfCK/K+FfC2A6+X8WL3uSTyGii
         +dNCVhKOZ9Biti3jer+WjQgdP6qJBkYyd8WBCCguUx697HV8HynvtSCIfl5DY9APgjj4
         Vtnw==
X-Gm-Message-State: AOJu0YxJEpQtCy++Uqb734kgovuBZLCZBzmds9r92PZMh9JVyUu2JInl
	tvGLMI2zLH1SLKnF0UJv1dp7AA==
X-Google-Smtp-Source: AGHT+IEiBk1UARjKqcmuU2E5mciS/+khU+Ezo/QX4nadgM/Ncz49UAdPF0+0FFE8lX/iNwYnZl5nXQ==
X-Received: by 2002:ae9:e912:0:b0:774:3235:4e6d with SMTP id x18-20020ae9e912000000b0077432354e6dmr8721774qkf.21.1698072035914;
        Mon, 23 Oct 2023 07:40:35 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:40:35 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:05 +0200
Subject: [PATCH 05/18] dt-bindings: display: mediatek: dsi: add binding for
 MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-5-5c860ed5c33b@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=898; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=+OlEWEvMUxFbKjJVjIiLf0e0kaqCLKK8Af5H5ievjhM=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXPZJ/cY4ERZiiSBfVRRGRyTqsN8HRcTtNer+op
 /GLORxmJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzwAKCRArRkmdfjHURV0oD/
 0VXz2ryPfkA3GQgZfBGaQjZnLlqT71UDJqxrP4rzcrY58feUXLCqvam9ncDhmdgUSBM+aphUEBydzM
 WJH8b2LKpzmJaj5S8Wqz5jyP/D0snP4yShSpzIKA0W84vr969DljY9A0mz82JprPusmwLUWBpr873x
 iUD+sj9hNpR9mIu1BN+rAFj3se1zGrhWPAk+djg4GQC9Tlg3UAUwS87Qk3jA2xTlaeCRgv18Jngq0S
 ar9r0GTuD5IwHO4szV96F6eF77D6EWrNEcTHm6jbcdSEfQP2ecIjNOuTt85fAwTjhXqzXIby6ng1U1
 wdeBarMnV+qZIaOTiwl/3E3/+LnkQ2zZR1t1mJ6EyaQtWiyETT5bkYubyh5XsUAO1069iV+6uA3M8q
 ucsPRUSAqTSZ2fKX0yK/gwnSj432MKNFNMBnL4hPOGQcznyrlQpqZadpPUqvk6pCpGNDcvILphvWQ0
 AKifv6jwJLQfWb3FTbAtPoa9uRffmwzNlaub6T8EwrebyoGUFyIj4769lqi4XlYSHr2rk9hYlyQBYo
 vAxhRBm3jOkj8U2LWqL3zaFMr+epUIWc5htDqbxnXwi3apKidDY68sPFZ98mk5xBmITeY+ueR/Rry5
 n4zO4J4zgWT5Ss7YzL7jjwLr3MVXV8PDgniVA2BSyJ9UDXJM/TiRtPE3v0DQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Display Serial Interface for MT8365 is compatible with another SoC.
Then, add MT8365 binding along with MT8183 SoC.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
index 12441b937684..2479b9e4abd2 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
@@ -34,6 +34,8 @@ properties:
           - enum:
               - mediatek,mt6795-dsi
           - const: mediatek,mt8173-dsi
+              - mediatek,mt8365-dsi
+          - const: mediatek,mt8183-dsi
 
   reg:
     maxItems: 1

-- 
2.25.1


