Return-Path: <devicetree+bounces-6688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F467BC76D
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 14:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0E3B1C20A70
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220EC1D53A;
	Sat,  7 Oct 2023 12:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S/P+7xiV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8331C6B3
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 12:15:18 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D15DBBC
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 05:15:16 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5046bf37daeso3929711e87.1
        for <devicetree@vger.kernel.org>; Sat, 07 Oct 2023 05:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696680915; x=1697285715; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7kEHNJvPKWv8XNjyeX3nY116EnimxcPcEGqPtaiNXIo=;
        b=S/P+7xiVNtc/nKID/zrG7Jt9SqLztdvvT2gRq3Ya+Ztw3Lf9CrI5+XSqamX6yZryJQ
         eVw0J3Ibuwlo3lhT/ShuvvFkHcZ/IqLE/5lOHlLXuVbo4vi5aO3fWeaIt/oUZzVvOtjG
         GF3iLFoNQFw9KHIoIKzhnZ9apNY6dI1ZbR6AK6EMLuXh/8UFOdJ3E5c5KY5eSO/+Y2fM
         /EmH9qiEt8LTtKT5W6AP7e35VUOWaNoTYOa5xy9ujUNVKkkUxmRu6MrsdbeU4kt3UpxE
         S/AV5nXuUQAKbv5x/Eqb5wkvGsMbIcXiGo3p3WmWU0xDK4wBhcul9nKU9mnfF0cROsvy
         S5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696680915; x=1697285715;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7kEHNJvPKWv8XNjyeX3nY116EnimxcPcEGqPtaiNXIo=;
        b=oxjlf2v2dj9CsMZ+q+8o8NLBR4YU9hLppnSphYpMwwA6iFJcuCjfeK/n9p8GR3nVnI
         1Tw6BlA9GWsgT4/+Kkr5s/rllVfza53AJTucNcAS5oLhcRaJRnLplX0qAZm7rgCHaoEY
         /J2AoK+9CpGtBn0/qWmdzh2XK1SJTwYhqYADd9uBK51nZ+er69sMG1lVeXKkvKaHokYH
         +rnwty9ww/90nBBkhOE94RwWOdhY23VVFokyf/U5LzNjo/rTth0415PMesSvpRo0EFtF
         czm76AEWp7t2aqd1g872l8rrfh+5SJ2U6qIOCyXFMuEwR5dYUOuMStSs3SbOt4GVcP9t
         XDyw==
X-Gm-Message-State: AOJu0Yw3Y9xQmA6iYD6x9O1qFnVh1Z5paOjHEZFvaG8JLTNXFdVNpo6V
	Qd9ZKY8HGqMSJkGqPNkoXFAh3w==
X-Google-Smtp-Source: AGHT+IGL6xrPOF0OW1OqGVQfMw5YXl8JIwk68mSmtkxLrVy06QExxK7ZJBlT/pSrkF5zI+9wF0pbPw==
X-Received: by 2002:a05:6512:68a:b0:502:d743:9fc4 with SMTP id t10-20020a056512068a00b00502d7439fc4mr10626922lfe.37.1696680915132;
        Sat, 07 Oct 2023 05:15:15 -0700 (PDT)
Received: from [192.168.1.2] (c-21d3225c.014-348-6c756e10.bbcust.telenor.se. [92.34.211.33])
        by smtp.gmail.com with ESMTPSA id v3-20020a197403000000b00502fe164ce6sm667819lfe.204.2023.10.07.05.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 05:15:14 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 07 Oct 2023 14:15:12 +0200
Subject: [PATCH v3 2/3] dt-bindings: arm: List more IXP4xx devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231007-ixp4xx-usr8200-v3-2-ec46edd1ff0e@linaro.org>
References: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
In-Reply-To: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
To: Peter Denison <openwrt@marshadder.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Krzysztof Halasa <khalasa@piap.pl>
Cc: Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The ixp4xx bindings are lacking some of the devices we have
out there in the wild, so let's add them.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Skip the crazy triplet compatible. There will have to
  be one device tree including the other if this really
  has to be a unique compatible for gemtek,gtwx5715.
  Linksys will clearly be the most prevalent version.
---
 Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
index 553dcbc70e35..d60792b1d995 100644
--- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
+++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
@@ -16,12 +16,28 @@ properties:
     oneOf:
       - items:
           - enum:
+              - adieng,coyote
+              - arcom,vulcan
+              - dlink,dsm-g600-a
+              - freecom,fsg-3
+              - gateway,7001
+              - gateworks,gw2348
+              - goramo,multilink-router
+              - intel,ixdp425
+              - intel,ixdpg425
+              - iom,nas-100d
               - linksys,nslu2
+              - netgear,wg302v1
+              - netgear,wg302v2
+              - usr,8200
               - welltech,epbx100
+              - linksys,wrv54g
+              - gemtek,gtwx5715
           - const: intel,ixp42x
       - items:
           - enum:
               - gateworks,gw2358
+              - intel,kixrp435
           - const: intel,ixp43x
 
 additionalProperties: true

-- 
2.41.0


