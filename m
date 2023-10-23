Return-Path: <devicetree+bounces-10956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC61A7D39A4
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9752C281347
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41AD914F79;
	Mon, 23 Oct 2023 14:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ikL9dK2W"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F4A12B82
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:40:54 +0000 (UTC)
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34DA810D1
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:47 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-779d603af2aso75738185a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698072046; x=1698676846; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zXrQ0v5fD2lZpUHoVr89BN0KsiA1JdGijnakOGhbvJo=;
        b=ikL9dK2WSR7HXOo8i04hhl7jTb7v0kl0vkrN3nbZzuE9u4lgVRMx6i3WrzyEfeYttg
         KFr9AJPJXeH2lRl6Yyg6vKlFgdH9wkNm83KIWtCIaIvDEO/Cu8cRDONEskKYS9ShV18L
         eKm8qJ3pfRcSo3FfMKLftCrCEvGH6vd+BiGC8MyIO3Cq3y9sEzjHemj8z7H3WZZSJABY
         +98jHt6wh5+VahMEhWUXGT0KVMfbBzCH95DftkSvQRRcWho+XI9ICNZhndj/YQ7oN5pZ
         wMLgkk9uyjBga1EVkwYKZAHoBeXHIgg6Mm6Q6KKWXNwjsJhmY2Zw5PhtATAFnFPIKbP5
         4mDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698072046; x=1698676846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zXrQ0v5fD2lZpUHoVr89BN0KsiA1JdGijnakOGhbvJo=;
        b=cDGuT1Q07k9ooOGwuJK+V9uQwapilTnnpBisYQ1t7T4adH1xxgkFSAzUfYdn54bt8H
         cg8iX5ElJD3+erppr5RRN7JRQaYdu55T32r+gWg9XoNHONqAcOEDl+pf1zV3Dz+HFtmY
         NnyFj5VmJeUqo1Y/J37hXQAyvKLA9QV6D8uZIJd6apgu02CPxe/G8cTIp5oTw4q9PwF8
         JVk8uQ8EnBhWQAh+Su2WQu+EqDoeXTa071pk3pzPwyCEhpjhowLPpmD82oW1/GvvivPP
         s898kolcDYbpGdHOW/RfkuSCUKqBYGDv1bZ9mAZDL96v0dkXIEtxhBHw6XfFSYFhla1v
         Pb/g==
X-Gm-Message-State: AOJu0YztCpKlZwpik3UjIrmXFLj9R5Bwwz3Z2SpWwf8KFjz3cxMKkl/V
	f8uMIIuOncfcH0YPGeIxjo2Aiw==
X-Google-Smtp-Source: AGHT+IEkEU6nuvyYg1bDt8UbuCs4r9wvONRIxcXy7le7F3scWSafhsyS4RhIdhies0FoEz8LuDnOPg==
X-Received: by 2002:a05:620a:27cc:b0:778:5736:6573 with SMTP id i12-20020a05620a27cc00b0077857366573mr10157809qkp.31.1698072046662;
        Mon, 23 Oct 2023 07:40:46 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f1-20020a05620a408100b007789a3499casm2725020qko.115.2023.10.23.07.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 07:40:46 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 23 Oct 2023 16:40:08 +0200
Subject: [PATCH 08/18] dt-bindings: display: mediatek: gamma: add binding
 for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v1-8-5c860ed5c33b@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=927; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=hW7CMZcG0C+Hg+3PvnUAIZENabLnRa3N/UE7I5J44y0=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlNoXPEQMUcJaJNgJr3/lL5DFQPL4QTvWap+9SYsL7
 GBQJdOeJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZTaFzwAKCRArRkmdfjHURZZmD/
 9N3k86URyJUUC2IPzR/C/E06OuIfEdO/WWkaFc6N2660KaCRzYBuOxzm+5WTjHcQH12qnokpsIan4i
 UbvSoS49lwSoAdA2lOMAHUQG2iVnSiLZkIk4DQVuCWR3KKKaiT4axb+gIwNgwudahNgnGjlRGJBSb4
 idDjG/7kpcFUaMobATpLY1cJpvjquWo/J1ItJLvO/I+FX0lbJlysMwJrjWFh5UoEa/JoTrX8jqpAsR
 PVFdrFMFsVckUZ9k40MwwZ6el2829PmGPymCSz9qXhT/9p1LexRpMD6oAO0KlS/wC7kDG3QMYfZIQN
 36jlHWwE4lMDOvMt8LE5Z8Epo2fASlTYIHFnxyaupk4DEl0upHREnx0nHOiO1ap6gH1QIfqRtvIeZ5
 /FO9tZXHFCRFHMvP0I0yBvszwaQFhOdxmzYyJyiDeQYo2j7L8mHDKWse2DLb/DnOgiBAK9BW4g/9Al
 1tRFHGgS5gnGldzq34E/8Fs2IT9IAarAAKISEteu1g8y583FKR6RYttn7ci7aELb3rENNaGqqXtqO6
 3XO7jIXtZ92IzbpuH0Dqyl73qBqBIrwSXDRpsA1RNJnM9XRWYA438HTXoWRULyjPksmURYnOplrAz8
 N1RKi8Sr7TAccueYnMTnO66rtxOgPGthiJUujC/+V1TToV7cGvIyKKZ7c8lw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Display GAMMA for MT8365 is compatible with another SoC.
Then, add MT8365 binding along with MT8183 SoC.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
index c6641acd75d6..f447f4320e8b 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
@@ -34,6 +34,7 @@ properties:
               - mediatek,mt8188-disp-gamma
               - mediatek,mt8192-disp-gamma
               - mediatek,mt8195-disp-gamma
+              - mediatek,mt8365-disp-gamma
           - const: mediatek,mt8183-disp-gamma
 
   reg:

-- 
2.25.1


