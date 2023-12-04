Return-Path: <devicetree+bounces-21521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 506BE803F03
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 21:09:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C2163B20AEA
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 20:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3ADF33CCA;
	Mon,  4 Dec 2023 20:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OaPuZNEO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9424CE
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 12:09:38 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a196f84d217so500384266b.3
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 12:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701720577; x=1702325377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2MNjE3SeFK0nJKBmYRJMHyr7VIIHtok8kfFl8JThkGU=;
        b=OaPuZNEOkDL9RXlZqC3wwWoQx7AJmQStSf6YrhLZOAbWc+6lbTyG8n8t+7CF8SP3kG
         bKgH4NBPgSSoO2KefjrnTaShcGiY3a1HufjansWkmQVp6wm3SHdbsd6R+3pURIpgZNqd
         HrL+25qRVrGsn3nIL3o5X9U/cQOqQSBwzJosM7OKqc8o6Vx2/BSbrJ/MyNYvIS0Lwn1z
         yvvwmhYQR8pCkOGy8NJKF1Fzs2qjAP9M3g+GENNPh39UEiFg0tyuGG9w4RcgmmFROCGX
         hJngoFXMp8aeE7UWsc5MSf4RWJdQry0QR0f1cU0NcufDW0Mj6UDX3wj93kCtxirFG/Rh
         mvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701720577; x=1702325377;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2MNjE3SeFK0nJKBmYRJMHyr7VIIHtok8kfFl8JThkGU=;
        b=KxHyt1Es2o0+pn9Wevq2KSmINYG6uTmw4MpbpJsXUdJvF4VV/p+wQoksJ3fND3D8IQ
         7vJ8pMuRotI6Gw+OqMQIDz2xmsJ1hdlXal2yH/Rm4QZz1yZSEvxdNLL0U690Epp8GFOY
         eCugSN+0cOznC4adR71Hl5vS9jgB4NR+HeIP2RvHgK7cFkfSbqdZtUxvYwwePUUxYF+K
         JizNlRv3Jjesac+P7WSts145O/TmzgYCp3gbYhnZL4rsuexTJBefe89UiKBgvlKZnMqt
         pIk3BLEXpPPlaUF72oacyWKMf0BsPSASxJJgocLoeedrGoQ+Gm+hE4Z8sic4GdmUvya9
         H5gw==
X-Gm-Message-State: AOJu0YwkrY4fb9TT5Sq8M8pH6VnBtnQZQkPaRrmeh6oUdXSaRi2SAXPY
	6GzD7eiEMgEjZ0J2xoI6nEI=
X-Google-Smtp-Source: AGHT+IF6M+0ELigfCC740vzy41FYXkfYexMnqkneCjUbUz/KI9vUV3njKfj0W8V9eRTA3Zygn5UL4g==
X-Received: by 2002:a17:907:3ad1:b0:a19:a1ba:8ccb with SMTP id fi17-20020a1709073ad100b00a19a1ba8ccbmr2852108ejc.105.1701720577156;
        Mon, 04 Dec 2023 12:09:37 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id lt12-20020a170906fa8c00b00a0290da4a50sm5620666ejb.186.2023.12.04.12.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 12:09:36 -0800 (PST)
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
Subject: [PATCH V2 1/3] dt-bindings: vendor-prefixes: add acelink
Date: Mon,  4 Dec 2023 21:09:05 +0100
Message-Id: <20231204200907.5687-1-zajec5@gmail.com>
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


