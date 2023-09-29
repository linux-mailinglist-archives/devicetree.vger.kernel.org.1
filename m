Return-Path: <devicetree+bounces-4472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 276AC7B2B7D
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:40:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CB448282578
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1EA187F;
	Fri, 29 Sep 2023 05:40:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486433D78
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:40:21 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61BF61B5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:59 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5363227cc80so2033007a12.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965998; x=1696570798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=up2XNokZoiA5TPtK9O+gQhlckgwCOolxXgSc1vLyaO8=;
        b=YknDKgl04XH/fGUl3cvgX27rH4ko0OA9ftaLD7CgqH6+DtQASHK/hWamd29DMk6O4u
         yP17ENutevN+8+7RAaJyzS1rvaNr5k/gZCM8g9+Rb4QA3qA2QHzewSIurB+++KbkDjvi
         iQLL3L6PyDmpmOIqpucAxPZ2+WrE7YNWtSymIcaAoHjhxDtVN8g+Ys2lN+dP8CGkENN+
         Faxcoyf21DvMFS/j9BJ97CZpSbRkLbYrJ9j6UZrVcJJFmkGtQOujh6eMTlO7b5v9VALm
         2xfrm1yZ4AhnQphANBOicIZQ9wXjXnFfXwe4oSQ8VukitbLtPTyoNvP5szo9Bt9w7itc
         MMCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965998; x=1696570798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=up2XNokZoiA5TPtK9O+gQhlckgwCOolxXgSc1vLyaO8=;
        b=nGEqkD3N9gzH37QGNEBshMPUmZoJg7980D7VpXpwKeaoz/MoCTKeGL1/Ptjpu75XLH
         tMXlB0BU4ttq+9NZaEGH0CPZUQeHvKShLEws4XcS7unZdS5YUMGqrlycoSKjRqfjOrIw
         TNdNSp9MaY2wCqkKtAMl/U6X0PiGAPywHvw0MoMfc0xrfMHr7genmWvdTehMTGysSYfW
         oni/yOw/0Jk2Kld2mvbA/S/ilHp7ljOyzcmfWxeWaVXXolLBIKrUIPcOn4CdHCws5W4L
         N/jmRx94i6B+oW5QzWc2HLlO76yZ32yDx7xvwIZlTLvfl2HTcB/o6Cl3Dojefj2+jsiW
         xC6w==
X-Gm-Message-State: AOJu0YylzaHYu19GsIhz8FoPTeqgAIV62RbxsKAkH/r4JCaPvIW2tman
	6vlBTfhnoz6lwSOC5ftrcGLgHg==
X-Google-Smtp-Source: AGHT+IHWGRdKt18vqmb08FW6Gqil2AJFzy4wYogTFWvh2EtAsEFK8s2z8hF1JCvsa15u5k7BOdpWVQ==
X-Received: by 2002:a17:906:cc1:b0:9a2:28dc:4166 with SMTP id l1-20020a1709060cc100b009a228dc4166mr2898785ejh.75.1695965997654;
        Thu, 28 Sep 2023 22:39:57 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:57 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	quic_bjorande@quicinc.com,
	konrad.dybcio@linaro.org,
	arnd@arndb.de,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 19/28] dt-bindings: pinctrl: renesas: set additionalProperties: false
Date: Fri, 29 Sep 2023 08:39:06 +0300
Message-Id: <20230929053915.1530607-20-claudiu.beznea@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Set additionalProperties: false.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this patch is new in v2 and added as suggested by Rob

 .../devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml     | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
index 4782f96feb7e..eb726770f571 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
@@ -106,8 +106,7 @@ additionalProperties:
         line-name: true
 
     - type: object
-      additionalProperties:
-        $ref: "#/additionalProperties/anyOf/0"
+      additionalProperties: false
 
 allOf:
   - $ref: pinctrl.yaml#
-- 
2.39.2


