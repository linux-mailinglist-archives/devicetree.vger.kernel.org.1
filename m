Return-Path: <devicetree+bounces-6048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5127B9C33
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 11:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id A9E0A1F22E8D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 09:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8E5A10796;
	Thu,  5 Oct 2023 09:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V4REbNl/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560E25690
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 09:32:53 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6DF7A5E7
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:32:51 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-533edb5ac54so1290727a12.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 02:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696498370; x=1697103170; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qNwLLYEchjqrT8u4dds+22/hvzzwVkXCbPu7CyE+3Mk=;
        b=V4REbNl/YAk00RXPG9rZxg5pwJCWIBFL6E5x0WAlIICbPHdhHu2STeD/ZWKy739zw0
         vkfNqbtr7nun1bxGzAJMLOzce40sjFpy3nJoo+lkuG7rAKzsVGkVPMpG9TpBE8/7f9+F
         K73Dq2cz4suXtGGUuAJWN5jpwJDATKp3RJU3GdLFSYdK4WK6G/+4Bx7Z1N6dgi8nkxdL
         kkDfq8pWYK8KkIQ3X4j6fNKKFrp3pN09WSkbjd0ci+2H/7sA/EY16yplSwsIC4lUVSQZ
         m1LBONZfdebCqNX1+FKtzMmqkvaXg+jjzBmuh5hx0N/XYvuiqNG/9dc8calhLVhl3WM7
         ORxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696498370; x=1697103170;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qNwLLYEchjqrT8u4dds+22/hvzzwVkXCbPu7CyE+3Mk=;
        b=MuFchKDba3EYr4X+z8rGaBeDzb3v2h3lQ7Re25FKbcY7vQ+ENoZc/lHwMepAKH0861
         +yXsCNXflbovphFuOrPahX0swvcPq89pB6Xqa7+WalmbBcI8if55u98NSgtkpLkt2QP2
         gr1WLCU/iYEfSnTDnFqISnQEttySDg/RPdQAkbZc0+lyvTzPrDy6ffxU0L4sr8XyVjoN
         MBbpvecbE//oClHPIze2Wj1B0dvwGkZi4/b/lA2TM150QIpNMgBKi7hRmpN4cTRUOUbr
         PtBGZKU2ks95aK+cISqToiGGvmvLt9xijN5P3s5Ygxpv7eHFZ3YH1AJP7BWibL8O8Kj8
         qgyg==
X-Gm-Message-State: AOJu0YychF8C1EeeqUCmi3Kt2GcrTTxiDzGsVa2NyMGXO+0PKAhV/bLF
	UNWoC4iqi/UI0kGLpE70CdUv0pMv9UigVEp5idAUAA==
X-Google-Smtp-Source: AGHT+IGGASEELZoOzZ6BfyTzvlBZV9PBihNgej7jZay1gXGRYHNhNO+WGFiREWZMmxKPAgpv4B/eZA==
X-Received: by 2002:a17:906:310b:b0:9ae:5765:c134 with SMTP id 11-20020a170906310b00b009ae5765c134mr4869914ejx.15.1696498370178;
        Thu, 05 Oct 2023 02:32:50 -0700 (PDT)
Received: from krzk-bin.. (5-157-101-10.dyn.eolo.it. [5.157.101.10])
        by smtp.gmail.com with ESMTPSA id rn4-20020a170906d92400b0099bc038eb2bsm863893ejb.58.2023.10.05.02.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 02:32:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH 1/2] dt-bindings: serial: fix regex pattern for matching serial node children
Date: Thu,  5 Oct 2023 11:32:46 +0200
Message-Id: <20231005093247.128166-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The regular expression pattern for matching serial node children should
accept only nodes starting and ending with the set of words: bluetooth,
gnss, gps or mcu.  Add missing brackets to enforce such matching.

Fixes: 0c559bc8abfb ("dt-bindings: serial: restrict possible child node names")
Reported-by: Andreas Kemnade <andreas@kemnade.info>
Closes: https://lore.kernel.org/all/20231004170021.36b32465@aktux/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/serial/serial.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/serial.yaml b/Documentation/devicetree/bindings/serial/serial.yaml
index ea277560a596..5727bd549dec 100644
--- a/Documentation/devicetree/bindings/serial/serial.yaml
+++ b/Documentation/devicetree/bindings/serial/serial.yaml
@@ -96,7 +96,7 @@ then:
     rts-gpios: false
 
 patternProperties:
-  "^bluetooth|gnss|gps|mcu$":
+  "^(bluetooth|gnss|gps|mcu)$":
     if:
       type: object
     then:
-- 
2.34.1


