Return-Path: <devicetree+bounces-4792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E847B405E
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:01:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 62A96281D3E
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 13:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AAC863A4;
	Sat, 30 Sep 2023 13:01:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82E29461
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 13:01:39 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58BA0E6
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 06:01:38 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1c746bc3bceso3520815ad.1
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 06:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696078898; x=1696683698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LmYgX7BL5Yak5oQpgfXtsfulm672VZZiBhNC2u4UzfY=;
        b=lCWcVyp6r5VLD8gOlwuJiIZhZd7kP2ke+sEekT88TnnJxTCql7J+KH1jdwqK9/OWZA
         ON3VKqhZnu0Rf08WNzjCR/WKZUgQRG1xD9G59fR+ZFfP5nQFOAWQ7yaHcUV9PQz2BfD6
         daiBjeJ7CKZ1BgirL9bZmca5bSXyyf5tuN7jnPwoCLvAKUDNl5NjHjBJmCYAWuFl5hIO
         o1XEfteG3k+9JbNkuWSb9K0UQ6IdWUPF8ykdMjCpxAlNHKZuECDbE/1lPBrcgJVO0W3F
         g2X07isTPiqUZAn0YDWgsByN8Fe37PH9jxb0TFM+etybhY7azmLD/m1qFbUPXMJs7nrI
         xVsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696078898; x=1696683698;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LmYgX7BL5Yak5oQpgfXtsfulm672VZZiBhNC2u4UzfY=;
        b=akWw/4z4moDMUkZRJKeeH52dTaEscfqhsUFD+UnWCi9QoJQq8kVb4b05/FKXlux51q
         A96dYHA7vXLXfyVryo9V1jT5/ATuUFVbuog1YQm8tacWzxkglaPGI4s9bbGfKLsPpXeY
         h3yXfH1YCa9gqQXC4ozeEuKBOmEucZ6aMioXg6WNWhaPMq4gEOkLb01YdOefxT6BsqwD
         zJZ8WaI6LgwTvZ+iJstWwmg2BYHnpL42CUTZK54qSrW9dvprYiFs36JUYd8xd7/yZsSP
         NOtnR9SO2ZGBJYu8K4ULmiq1xWB4Vb0zVmkfKdH/aW8NRjY05nH4zcHvgNI5Rd5hzhgF
         hW9g==
X-Gm-Message-State: AOJu0Yz4cbOyiprmP5Z2XrbaGSL0IjNQDdRHqisTv2zo7TGbVMDZVxSj
	wt1oTkhCgm/u74BGcehcpM0SnqQr4uE=
X-Google-Smtp-Source: AGHT+IHqZJT/snJoVf0cMhy8miKyFmGz3DHF93hzHe8fMGXyWWeqhhz5lpLolovaudCzWlT7jWWmzA==
X-Received: by 2002:a17:902:b618:b0:1c7:5581:f9c with SMTP id b24-20020a170902b61800b001c755810f9cmr2008137pls.0.1696078897620;
        Sat, 30 Sep 2023 06:01:37 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:ec70:c4d5:afd8:ac4e])
        by smtp.gmail.com with ESMTPSA id x10-20020a170902820a00b001c1f161949fsm18577513pln.96.2023.09.30.06.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 06:01:37 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: p.zabel@pengutronix.de
Cc: mripard@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: display: fsl,imx6-hdmi: Change to 'unevaluatedProperties: false'
Date: Sat, 30 Sep 2023 10:01:02 -0300
Message-Id: <20230930130102.798822-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

fsl,imx6-hdmi.yaml makes a reference to synopsys,dw-hdmi.yaml.

The 'interrupts'and 'reg' properties are described in synopsys,dw-hdmi.yaml,
so use 'unevaluatedProperties: false' so that these two properties can
be accepted. 

This fixes the following schema warnings:

hdmi@120000: 'interrupts', 'reg' do not match any of the regexes: 'pinctrl-[0-9]+'
from schema $id: http://devicetree.org/schemas/display/imx/fsl,imx6-hdmi.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
index af7fe9c4d196..7979cf07f119 100644
--- a/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
@@ -87,7 +87,7 @@ required:
   - interrupts
   - ports
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1


