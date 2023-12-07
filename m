Return-Path: <devicetree+bounces-22572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 700E780828B
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A19241C20A21
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A991E4A3;
	Thu,  7 Dec 2023 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JiFlbeyN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17FE0A9
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 00:05:30 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-54dccf89cfdso282205a12.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 00:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701936328; x=1702541128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2MNjE3SeFK0nJKBmYRJMHyr7VIIHtok8kfFl8JThkGU=;
        b=JiFlbeyNZXlnUHs/vQrfeU8rOJxEOCjuUkCVxIKZzDMki8vYd+EHucX67OsuSq0oup
         JKPuJ/Wz20WxJvDo1swi75XK043EvPd94nuVkjxlfteIL/MURHWaL/RNYNyVIwbSs2HG
         AcwZzOWRAiBMmZo/JCXbEPwZux9OYZ8BEe3aeqOmPe/BI93Hm322mzQUDd7eSLqpGjc6
         h1sQZUPua1FiQwYzkUXBta0L45ocEzr2iZR/+3o3tKx4jUy2D/zg3Yflwiy/Mtridgae
         F7Ax+61Ybb5+uSnbB6wniJLh8NT/6z6bHqBjKVIo3Q8WZH/hDxt+MJWFQhcKvNAXGDiM
         e31A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701936328; x=1702541128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2MNjE3SeFK0nJKBmYRJMHyr7VIIHtok8kfFl8JThkGU=;
        b=nYVsWqD7dKynQU+eZr+P3RVUQqwwwsUPjr3zKsNTOXj8Ddu1kUvYQZCV2wl7ILyGux
         dI7+tpal9WMJkZzGZBZYw7yDYKLdzqZWlvyUznC7vi3z7OPWk1Sc8RIcxC+qFDB4ciuX
         SxsSteLRJ9rw0qG6oiuflYapEgOqaYSIqdqhGN/lvgOX6tI7l83Rk1D4IGqMCcAxJRp/
         4l7hSAxrw/gC5b2BNSfNFqK+iZOC8swU7Tt1Q8/Bj5pgXNsV1StWyCfcGBBSra3qgz7S
         92pTZehsZcBH2kWUDPaBYSrbZoc4gVAUyU4Nao9PdsAz0CsWnaC9AVsjvBHnubKO1zTX
         skrQ==
X-Gm-Message-State: AOJu0Yz0+D9j17kuoURHN5qfjl9i9ZunSQG3ZXCODEbb6SJYy1Bl18ka
	TNJijpnCzaAaAx9fhFCifU0=
X-Google-Smtp-Source: AGHT+IHGExzVJI0JNZnzMpnT/zA2jwAajmSzwuoeAVX2qr0OGkYdXz3xEXI4GuL+DpEEhlHCu53vFA==
X-Received: by 2002:a50:baed:0:b0:54b:5f8:2df with SMTP id x100-20020a50baed000000b0054b05f802dfmr1333854ede.9.1701936328261;
        Thu, 07 Dec 2023 00:05:28 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a28-20020a509b5c000000b0054db2b5cd30sm480133edj.38.2023.12.07.00.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 00:05:27 -0800 (PST)
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
Subject: [PATCH V3 1/3] dt-bindings: vendor-prefixes: add acelink
Date: Thu,  7 Dec 2023 09:05:10 +0100
Message-Id: <20231207080512.3688-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Acelink is a Taiwan company providing network products (routers, access
points, switches, cameras and more).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 309b94c328c8..503a3caf6fc9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -39,6 +39,8 @@ patternProperties:
     description: ShenZhen Asia Better Technology Ltd.
   "^acbel,.*":
     description: Acbel Polytech Inc.
+  "^acelink,.*":
+    description: Acelink Technology Co., Ltd.
   "^acer,.*":
     description: Acer Inc.
   "^acme,.*":
-- 
2.35.3


