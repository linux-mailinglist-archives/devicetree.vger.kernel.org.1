Return-Path: <devicetree+bounces-10459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D342D7D1476
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 19:00:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81B6F28257D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 17:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DF5F200B6;
	Fri, 20 Oct 2023 17:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2BF1F940
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 17:00:37 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC76218F;
	Fri, 20 Oct 2023 10:00:35 -0700 (PDT)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-57e4459aa29so537574eaf.0;
        Fri, 20 Oct 2023 10:00:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697821235; x=1698426035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gzgDuBFq97Xw3QhiJlj4wHN5k/h9ggUGNAdZwlEm5kY=;
        b=WD5kBW3EzWl+4QsIBxzDAGjjNu/8dJf/9LEEuDWQW/KiD/sGMfrYMl6mO2vNtUfj0d
         sdJqta0knaz8l8H2V1Cm+rthGYSfJPDtw4S3oeQqRKSTwQCvedngd9D9UvmPEO9y5fpl
         XjVoW4mGgomqZ7TwqK7qrdwtPz/iTArl6olnc/nk53fo4fhaMUi8z+ZDfTu3l01NcBOu
         WBQPqCtUuhRQQDxsAboXSX077J7X/XjVhfYgPT+cnTDzT0vYbt1ak3ISyKSyHn6zLiL3
         XlrEDmu0aUU3Hm96J/pK+Ikvutcz4AmWf4qn4OoiFTvVWcDq96qZqXkMGFGsUFyD+3uj
         bQBA==
X-Gm-Message-State: AOJu0YzWHeHeY3ORzF6nFP9jtjY8f79NS+YFO+sT3FP8WNLPl8fsWjgd
	LxTAyHRMU7j5sJJAT4a9dQ==
X-Google-Smtp-Source: AGHT+IFG7MQg/Qf1uISRBgyZiD5wS21l6aF1H40nmlPqP8OxAlGR4K8MKN3DrHBYbbg49jFjRIE3Ug==
X-Received: by 2002:a4a:c4ca:0:b0:581:f262:dde0 with SMTP id g10-20020a4ac4ca000000b00581f262dde0mr1202983ooq.3.1697821234626;
        Fri, 20 Oct 2023 10:00:34 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id ce12-20020a056820218c00b0055975f57993sm409614oob.42.2023.10.20.10.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 10:00:33 -0700 (PDT)
Received: (nullmailer pid 3613652 invoked by uid 1000);
	Fri, 20 Oct 2023 17:00:32 -0000
From: Rob Herring <robh@kernel.org>
To: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: pinctrl: nuvoton,npcm845: Add missing additionalProperties on gpio child nodes
Date: Fri, 20 Oct 2023 12:00:16 -0500
Message-ID: <20231020170017.3610978-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Just as unevaluatedProperties or additionalProperties are required at
the top level of schemas, they should (and will) also be required for
child node schemas. That ensures only documented properties are
present for any node. Add the missing addtionalProperties to the 'gpio'
child nodes.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pinctrl/nuvoton,npcm845-pinctrl.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/nuvoton,npcm845-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/nuvoton,npcm845-pinctrl.yaml
index e4b9f3da2cf0..3e8472898800 100644
--- a/Documentation/devicetree/bindings/pinctrl/nuvoton,npcm845-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/nuvoton,npcm845-pinctrl.yaml
@@ -35,6 +35,7 @@ properties:
 patternProperties:
   '^gpio@':
     type: object
+    additionalProperties: false
 
     description:
       Eight GPIO banks that each contain 32 GPIOs.
-- 
2.42.0


