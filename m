Return-Path: <devicetree+bounces-18155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A867F579F
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 06:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE8EE281721
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 05:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9B617D1;
	Thu, 23 Nov 2023 05:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cqotqj76"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0986A3;
	Wed, 22 Nov 2023 21:06:22 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-28014fed9efso466582a91.0;
        Wed, 22 Nov 2023 21:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700715982; x=1701320782; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=06y6U8sIEAJcocDpDQt1xUv0207pV5nMk8x8doEVyR8=;
        b=Cqotqj76ZhLq/Ins4afohCrpz+TydrcypZ2HbMtXGkMHL1kFpdBUgXjA6FzYqLsHk5
         su4rEQ6obHsd/HmynKcsBXB3W7ZgJRLXwBHFs0f2XqLtwB8XVnqUlyfMCNdBTcMKZsb7
         UGqpDzl01+kc1g5J75vGANCGOd/PY7qvN8NVKpsfCa4gOn557toK3ITS/ptqS6+d7LSX
         EcaYz5XpoVdUKIjjYSu+lDeyXw0Z2Ee8NLiJEApx0Usr/9d9rYIu0uxWY+58/rsBZpwJ
         Bu7aBV9+BSabnlC2yZboL8dvOOq4w47HmoCFnHb1gUy8KbmBI1OffnmTpDqD+gHBGDp6
         w9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700715982; x=1701320782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=06y6U8sIEAJcocDpDQt1xUv0207pV5nMk8x8doEVyR8=;
        b=E8MEDhTIH0p5YnHh6ZbAfFiE/oLh+Isq4ZWH68WustxqkxSU6NwhM4GuGHe4CFf7nC
         zXrqtUWJ8svWTrXvp6lUsnv1CCjdHrMZzKAyZo4HVPKpvYZtPGr9TDb5+TtZ4TrUgOcS
         BNZn/bAxQ3MGkXJK9yJ6YQtTcoEm8FyNUzTcZMQWIobkFcMz9VcWNpj3UoIdkhoL3Ald
         tJUJpVNZcbpZGxDA1alTbEV4grEtHxlKBBnvdkEVgtCtDbfEMz64//cRdUGYF+5mAnvp
         2gBPZPSYI6zMlNN6anM5CCEUbyau08uteKgoxirbfROxz7OVzG4xdwAyXkpZkUPwpF+O
         lojg==
X-Gm-Message-State: AOJu0YzClyjP0Ma6iIvGeDl0RN3pC1yq1qapg4qMkMOccmQHOJeOAS+A
	tz1C3QO+VfDwfBjN09UgOl4=
X-Google-Smtp-Source: AGHT+IE2oDgvfrZRgLZA8qhFqq7AjitHcEDeG6RL/YuUGyIcWL/Ny0EQ1/k8fM7YVk/DBcEcZ6Y2wQ==
X-Received: by 2002:a17:90b:4f48:b0:283:27e0:652c with SMTP id pj8-20020a17090b4f4800b0028327e0652cmr4547767pjb.43.1700715982406;
        Wed, 22 Nov 2023 21:06:22 -0800 (PST)
Received: from peter-bmc.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id 4-20020a17090a1a0400b0027b168cb011sm413101pjk.56.2023.11.22.21.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 21:06:22 -0800 (PST)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: patrick@stwcx.xyz,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: arm: aspeed: add Meta Minerva Harma board
Date: Thu, 23 Nov 2023 13:04:14 +0800
Message-Id: <20231123050415.3441429-2-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231123050415.3441429-1-peteryin.openbmc@gmail.com>
References: <20231123050415.3441429-1-peteryin.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the new compatibles used on Meta Minerva Harma.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index e17b3d66d6e5..20e3be8d8c78 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -79,6 +79,7 @@ properties:
               - facebook,elbert-bmc
               - facebook,fuji-bmc
               - facebook,greatlakes-bmc
+              - facebook,minerva-harma
               - facebook,yosemite4-bmc
               - ibm,everest-bmc
               - ibm,rainier-bmc
-- 
2.25.1


