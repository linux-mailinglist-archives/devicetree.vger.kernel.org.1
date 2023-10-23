Return-Path: <devicetree+bounces-10872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C177D2F9F
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21546B20D3C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5BC1428D;
	Mon, 23 Oct 2023 10:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Zg1PMzYS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA031427F
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:22:54 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A23D73
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:22:52 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4081ccf69dcso23339915e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1698056571; x=1698661371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pww7da1n7UWS02L2LkSYEEM6OsT/YObeILUz4Nv4Nyo=;
        b=Zg1PMzYSY/svIeo1uSb0GBD5CVAGdmQ3IvbbI7HUGWnQbWtwscgLGpPJ/zgrdWv+sV
         tfPBRQBTFTBHpfQcUWgGQcaLydfbPwhNrkTqF8KG9ZstcnmD+Uuwu1r0Za6dp5Ez4Q1v
         oWkmRNvMNu4+LxeHmXxvPrKZlWa9UYK9ausu8lAcEfumSaR9LuzOYiYdbJSCzyafo7uR
         MdHs6yF3z7JKhk0WxyN9SvLFx6tkXozwjyC3dSD1jp1yN8d4JhR2OXN0nUuze+y+aQdG
         bozQ/Q7ltCmwda4+b0nryhPC7GHli4+BURsbJy10uKe2Xgd06j9h+TZndOhnKR9IMcns
         vLpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698056571; x=1698661371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pww7da1n7UWS02L2LkSYEEM6OsT/YObeILUz4Nv4Nyo=;
        b=oj22yzUqCEbVjf9JvecgYBrco+hEr5KcBJeLbQ6sRkq/z313HayKtA9w08tZ31/4Wk
         8seVuDZsyLd0oWa2EZBvRtGdpXbWOCFazFEnrcvkCGl7zK7EZxZeBgzQGQb4/c6/a7XU
         /3jHNPIwcWv2sjb6k51VFUy0+IqXQ50xbc5SfGTmCyLVq9mqZuFSPGSv6TI198tDyQ4C
         lGV16X30Y86GGCiWx0hEFiMIHRtoJqECxEPyvPeR4FRQ8Q+2jTLzDHb6dbJe15pMTrZZ
         69MAFbPTp3cULwdDP9v4bxLor4tDIJpTogUay+uJsPzt81pCpg8ubAYvsHyN8Nm3R+tH
         UDZA==
X-Gm-Message-State: AOJu0YxNb1sRpQqfSO5N32mQsUzcXPXNwem+I218EerhXQ6IF6z8/FdJ
	4yMo47yiYHMRxukS13M30dC7Bw==
X-Google-Smtp-Source: AGHT+IHG+ByNpckXdtbAjkLS73leG1MuuYY26azOQjkLbervqzdsRg3e+b+9MLQ7/FEaNzlIse/tiw==
X-Received: by 2002:a05:600c:4fc6:b0:405:19dd:ad82 with SMTP id o6-20020a05600c4fc600b0040519ddad82mr8563116wmq.16.1698056570768;
        Mon, 23 Oct 2023 03:22:50 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.185])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c228100b0040596352951sm13593275wmf.5.2023.10.23.03.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 03:22:50 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: tglx@linutronix.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 1/7] dt-bindings: interrupt-controller: renesas,rzg2l-irqc: document RZ/G3S
Date: Mon, 23 Oct 2023 13:22:17 +0300
Message-Id: <20231023102223.1309614-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document RZ/G3S (R9108G045) interrupt controller. This has few extra
functionalities compared with RZ/G2UL but the already existing driver
could still be used.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 .../bindings/interrupt-controller/renesas,rzg2l-irqc.yaml    | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
index 2ef3081eaaf3..d3b5aec0a3f7 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
@@ -26,6 +26,7 @@ properties:
           - renesas,r9a07g043u-irqc   # RZ/G2UL
           - renesas,r9a07g044-irqc    # RZ/G2{L,LC}
           - renesas,r9a07g054-irqc    # RZ/V2L
+          - renesas,r9a08g045-irqc    # RZ/G3S
       - const: renesas,rzg2l-irqc
 
   '#interrupt-cells':
@@ -167,7 +168,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: renesas,r9a07g043u-irqc
+            enum:
+              - renesas,r9a07g043u-irqc
+              - renesas,r9a08g045-irqc
     then:
       properties:
         interrupts:
-- 
2.39.2


