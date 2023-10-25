Return-Path: <devicetree+bounces-12020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D078B7D7732
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:55:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F3509B211E5
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE3137159;
	Wed, 25 Oct 2023 21:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EPdFLlPw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BCA34CF1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:55:32 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 837E39D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:31 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-6b5e6301a19so219317b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698270931; x=1698875731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NHcNRy2/Nv0NAoVYg7R7CrfDmOcMA/mofPCoLqjIELE=;
        b=EPdFLlPwhAORuiDF0keK+heq4Pq0YIZxZbn0t+jh3u3rTuih5nT3lhksviLr3875Kv
         xdWlWYzLxRpv0uReFcLrY8w05+ZET2v0aZV0jki4hTePmiusZ1wvDWwFg1XWcKwriTdo
         SCA4PcCN96ER8t5j+hhMkygXCcwvuCPt3wfiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698270931; x=1698875731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NHcNRy2/Nv0NAoVYg7R7CrfDmOcMA/mofPCoLqjIELE=;
        b=wJwQo7iDJoJBSrysQSzWWLOdufNYgOJ/XyxPIXZ+8JmsaJz8KoRqTYxS7TcWWyVwdz
         TYq+V36WRIyUSMOyYsDWzRRSGYHsteV74vi6pnuIgd2Y5sIxiXfWtAGBY40JrzL0cM8a
         BGO/JsP9xpmbfN9N363TkBOKWRaBq5fMAltIyFlbwmPMcGEZGp90hJb8uFfdpunkbAGL
         fc2H7XmwG/dpAMPFnbpg5BYF3huzkMK7Buh6+BH3lSrL2YO1vtYqsu7W6/prx2nPWiL4
         rzaCqu9Aovk3c8brcVp7oc+3L2gt+N15PrQW1rkk+DkxzM7yOdq35CCRI8WxGOuycYXQ
         zu1g==
X-Gm-Message-State: AOJu0YzHvygMNvAb1qAi2uQ1Rc951u5f5VhKKo1qvNXKM16LI42ezb6Q
	NQ3lLKRA7ZD02PVo2aD2wNGGSA==
X-Google-Smtp-Source: AGHT+IGVzOhxkSH/VY3HPPr3z24MzSL5wB6xSdbuILvtp1/p10yq0YsamgCEg9vTwFlTID+c+9Qf0g==
X-Received: by 2002:a05:6a21:120a:b0:17d:ec93:6a86 with SMTP id oe10-20020a056a21120a00b0017dec936a86mr5973524pzb.19.1698270930923;
        Wed, 25 Oct 2023 14:55:30 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id w14-20020a63160e000000b005b8ebef9fa0sm2994943pgl.83.2023.10.25.14.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 14:55:30 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 6/7] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-pico
Date: Wed, 25 Oct 2023 14:48:48 -0700
Message-ID: <20231025215517.1388735-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231025215517.1388735-1-hsinyi@chromium.org>
References: <20231025215517.1388735-1-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pico (sku1) and pico6 (sku2).

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 54141b9bb714..bf793f644e6d 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -258,6 +258,13 @@ properties:
               - const: google,makomo-sku1
           - const: google,makomo
           - const: mediatek,mt8183
+      - description: Google Pico (Acer Chromebook Spin 311)
+        items:
+          - enum:
+              - google,pico-sku1
+              - google,pico-sku2
+          - const: google,pico
+          - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
-- 
2.42.0.758.gaed0368e0e-goog


