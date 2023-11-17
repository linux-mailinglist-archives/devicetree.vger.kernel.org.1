Return-Path: <devicetree+bounces-16607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9F97EF0C1
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 11:41:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5AA10B20B4A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04A312E54;
	Fri, 17 Nov 2023 10:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VdzKGDr3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9849FC2
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 02:41:12 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9d267605ceeso247122866b.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 02:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700217671; x=1700822471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HJ88IwdiOvkbHJtvRBlItyTFrZZfFt5aS8G00MHeueo=;
        b=VdzKGDr3NJuZ4lpNTAOSA60annzpPLstLs/BS05ARAc/1/u5eT0kLsydAiM+UwF+wa
         2b4Q57ewnOtwOTgwUZpwVCd0KESYZ9ACQqV0AoBUpn9NR5Ocbe1IoET2jPrtA9y1cPpV
         3mpP2X/onMPOoPf+N4CVy1gs1BmGxRqXi39sWwA3BSQbRFIZp9WyQH/kr9WCREBIZEqe
         /meHNf1PIwqB1FrABHXK2UeeQWlz8pjqRtMr0RUjVT0JeIAaq9EYgy+Idowo7GFOZ9QF
         UqkcsoT7BjgywGCj1+ATUa7M9INLjleQakVKNwNS2ShOXjlbMJxywUiC03lfAFrY3ZcX
         x1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700217671; x=1700822471;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HJ88IwdiOvkbHJtvRBlItyTFrZZfFt5aS8G00MHeueo=;
        b=CIEn2KPbTi/DzMwVH6rkUtbwO37WUsMhcrKMwDqDwn3GRehPVv+kmSz11p4epk0O3S
         xME3o23tSHXpxv+TOTrEJggkMHPbvDoFLj2L162SMjaJEvsU3hLzoHSAe5WREiM5hf4i
         LJw0MRl573+a+nFupv31I33IizQAY7ZQ4yiLJOHzQiDEpry+nBn1qdawbHsU9JdK67T/
         c+ohyGG97L0TTA2s/ArnMSdAxkXsYEmCBpXlEaTTFaHKcHe+U6vqQdDWWRhMikRi4tT1
         jQsydoFHswMgr+MAqZuqjR2Wqd5AxjL0mZ8yM/4/MDSDS1tC5Y/kP064wqfcy4A6O2C/
         DuGw==
X-Gm-Message-State: AOJu0Yw08D11N0AVAlrqn6uPFWFCFSWLaDhcYwEQ4O4dwZSO4yXfF1O/
	AZ7G+VIfKmlthC2+N9d3Sx4=
X-Google-Smtp-Source: AGHT+IFDFSZuerVdE87A34NYgCYoDzSsFybwYsehWhEvfGBZXxYMrZGjwklbhgsWcBs4n+AbYXMHOQ==
X-Received: by 2002:a17:906:3942:b0:9e3:b88c:d735 with SMTP id g2-20020a170906394200b009e3b88cd735mr12999101eje.61.1700217670799;
        Fri, 17 Nov 2023 02:41:10 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id ox17-20020a170907101100b009920a690cd9sm639868ejb.59.2023.11.17.02.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 02:41:10 -0800 (PST)
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
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add acelink
Date: Fri, 17 Nov 2023 11:40:59 +0100
Message-Id: <20231117104101.9374-1-zajec5@gmail.com>
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


