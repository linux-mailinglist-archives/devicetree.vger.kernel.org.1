Return-Path: <devicetree+bounces-134519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF2E9FDB08
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 16:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE0651882EBC
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 15:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABCB3165F16;
	Sat, 28 Dec 2024 15:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cFBfZGGx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09727C8DF
	for <devicetree@vger.kernel.org>; Sat, 28 Dec 2024 15:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735398051; cv=none; b=Y7S3qKzK0tKPxpsXzqkbKsy6M0R2x73yPe4i8X6JWHN3SEnyebDl+Yf2a1nMetjXoS8eurw8QIZ///a/daFUyLkqFOtr5nqeYERVpyS6W5OPaxCOLDTNsIxY4CliSr/zIZlsSxAD9uPKht5f9USjq8MCpl8wG+rP0VOhnOyx/Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735398051; c=relaxed/simple;
	bh=HZrKwGABFp+Ogm7GxQAoxAVc1kEUcbISp+LEihPxfA0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=E4gpUGIqTTHCxpmyhHwXD2nI+5ajB2CW1tKFWhc7HMPWDHaqfs/ow9Hwl1oxNU+wMHrLhYL3zvqWIxSc7IjTDZPRch0sE70Sy6BkyDEIJuoDKFxkzm6O0nyLL2ZAzImNN0kuxAe0dsQEIOQXM9lcA7B3YJKAONckryWOB0eL5Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=cFBfZGGx; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa6a92f863cso1272580166b.1
        for <devicetree@vger.kernel.org>; Sat, 28 Dec 2024 07:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735398047; x=1736002847; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zGjy0+pcVkOcyNsRikjnUlsDE+kBpL3hB1hR4GAE8IQ=;
        b=cFBfZGGxihfMqlXsouwHtLnHtMxmLrJVUW17TQL60AWH1hgjWmp+GEtvozFBJ92zFV
         3bZANHW/dHX497kdYmQzSTa4JdipKSrsw4t8OZEz8d1cq/ZNoOPgWpcTSXiQwWqOcPn/
         16BMnZID3thXKyrV4sgyNsuQ8jiAPrv4AOcIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735398047; x=1736002847;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zGjy0+pcVkOcyNsRikjnUlsDE+kBpL3hB1hR4GAE8IQ=;
        b=luVCO3KKglEh6zV2KSGXd1ns1JZprAKbCkrjDeIQ1Gat/tl1XINIyMd856qbj8A+4V
         hCrl6a3H40RDZRAs5VvVczqgTo2R+SocxXP54KRn4BvWNI1udvfmrc2Fa8PfEoAHfNUF
         Kez8L+lOK/ZLCneN7pPOkLE0wVKzd+ocNum91mhZjY53Cvy6ulY7B0gWqkIJIserL8/R
         FwxACQ/OrbhD46FImgb4StTlidED0z2F4LLJqyLe8Ox/AG5W/lrUKzSt4G/+zg8dJ/oU
         GIj0VAoWGVvC0QZBtBTg9XCrv9AuSoW5yB8HGJYy8MK3PsgOdgc/Ln/AQqaXCWJ7Je4o
         ayFA==
X-Forwarded-Encrypted: i=1; AJvYcCWLGeykKl0rvAnhc2ekcysDO8ODiVYDNEzdrpCidKNNoLHjtQnl6UgoR5HvpIzEB98wrbOsRGrdN9tR@vger.kernel.org
X-Gm-Message-State: AOJu0YzqggPuiOjd9KlLpFSChup02OEbKnQLPm+BdhIjrSBslumfAZwC
	fAeXbOcjDdO+fN9Bux1eZFYmOpcgkMBWkazxIuanbP/BlntqjURlpVsyi3YxlmU=
X-Gm-Gg: ASbGncvE9nE6mJAwYnMrwuUoQ4YmR5VHnKij5qi952ljFekLUAb8ZYMqbl54FqVl24C
	STasqNCVePUE7h+sRj+AeYE5VwKBuYwc/dgcJgzVi+fz8eOA08s77awQSl0j90LHEEeGkb2LvP2
	sXc7c8cl7Dhd+7BmB2AL1skD1oRvHfE+pQXFfAvBsuVFXf3MUostujn+4wj+zG5D2H//mv0aC6f
	aNaI9L9K4jKCdO5mQO/cn+yjcYCzEfm5qMHrkiHQ/LlbRJaIN2mZfgwpd1hfOu9Et/Sod1GiZOG
	5kk7P4FYO2lEiVj4qa+IYQ==
X-Google-Smtp-Source: AGHT+IGn+STomeh91UKdY7nI+qTGSbWPadCuY71lDdmY/fsFuuR1EUm5XjU/DazYxX+1lVKGryxiiw==
X-Received: by 2002:a17:907:9621:b0:aa6:6f92:74b1 with SMTP id a640c23a62f3a-aac2ad7fa01mr2850887066b.13.1735398046567;
        Sat, 28 Dec 2024 07:00:46 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e89514esm1258974666b.74.2024.12.28.07.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 07:00:46 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-can@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] dt-bindings: can: st,stm32-bxcan: fix st,gcan property type
Date: Sat, 28 Dec 2024 16:00:30 +0100
Message-ID: <20241228150043.3926696-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SRAM memory shared pointed to by the st,gcan property is unique, so
we don't need an array of phandles.

Fixes: e43250c0ac81 ("dt-bindings: net: can: add STM32 bxcan DT bindings")
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 Documentation/devicetree/bindings/net/can/st,stm32-bxcan.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/can/st,stm32-bxcan.yaml b/Documentation/devicetree/bindings/net/can/st,stm32-bxcan.yaml
index de1d4298893b..c7510b00954a 100644
--- a/Documentation/devicetree/bindings/net/can/st,stm32-bxcan.yaml
+++ b/Documentation/devicetree/bindings/net/can/st,stm32-bxcan.yaml
@@ -63,7 +63,7 @@ properties:
     maxItems: 1
 
   st,gcan:
-    $ref: /schemas/types.yaml#/definitions/phandle-array
+    $ref: /schemas/types.yaml#/definitions/phandle
     description:
       The phandle to the gcan node which allows to access the 512-bytes
       SRAM memory shared by the two bxCAN cells (CAN1 primary and CAN2
-- 
2.43.0


