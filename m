Return-Path: <devicetree+bounces-247793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCDDCCB8EF
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 12:12:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60EE5304C9E8
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 11:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB054315D32;
	Thu, 18 Dec 2025 11:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ie6/aq9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F50C315D3C
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766056000; cv=none; b=p/QgyEKqhOuh2xgtRfcALKr4QTYZ9LTLZm9zwJjjEPaCXjuWPT3+Kfcc/yP7YMxVF1jY5MjDAtfhdF4hbVlsfLrkQXpJcFeEbqS0Kp0+V1xZs9o0Wifop5moji1dW7+10j5VN11j1ml79ePeboufN+ByqgRv7U6kFYFbbg0VqfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766056000; c=relaxed/simple;
	bh=jpJiC1NAA3UcO6WzGzdzxkgVyK4EFuEVAXha3I8x7h8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LGfvsg+IxWDsj4kmMj3w4rtvpuJG10BdcD/j3L3fEf8ggrRQldV4LACq4yhJCT/n40CPWGsmkNhL88cQ5ps9v+kjfa+fCT+8JfK+XDPLK3TDB7hqSzX/C0o6co9gPYHnwnkdx96SdWgt+SmlFcr1HYYmsjYjZigdCM/wnbiPMUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ie6/aq9Z; arc=none smtp.client-ip=209.85.215.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-bfe88eeaa65so366010a12.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 03:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766055998; x=1766660798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cdFvIevr5mzdhvM4kgzjZ8E4ELvYJD6tAAyBvcsXRWg=;
        b=ie6/aq9ZnIkbeAEwy7i5oAuthh2gRWQs0rIPZ54+4Md1gaT+g284iqCKqlpYAsj+MP
         Qgar1GCTiBHIks25UoKbmabZRjleW0cAzjOuE1ewOlhb1gk3s3+uhpGo0pfWNmnJZVoY
         OlOua3ZDSiA2llBRnsTawGwvubU+wnzDDyJ5p//jGPWxTJ6P74OfMFrqaq9S1F5SXNpg
         FcL9C2EjIfBElbqvComCogLlI79UTDo+CkC3cBy7zi0VsiL4XPQUHsEa/h/0QIUBQpiJ
         oDQ8DhzWA5tOTdXMx332EZ/WLrXzuX7G+bxlmxtF48POMVb3ioVlgCwPIFoYK8tVPlHQ
         cxpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766055998; x=1766660798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cdFvIevr5mzdhvM4kgzjZ8E4ELvYJD6tAAyBvcsXRWg=;
        b=cMYl4o1BNkv3IQwqXAJQz+meOIotpUzG6w/En2k/7iNaVL9tyOfOdg0V+sYoe6KosP
         sfy66VR8YsubJHvv8SL5JbIza/FpNKKsuTQxRnkgxB286Pk4HZ1Ez0xSe+BEjm1O7IpO
         63yWStp02bSeXkXtmAN227n7/yV+engqON8U9Utuaiu+G76wx0LcBOQ6TY63LojfqFz/
         dkPnvACmjYRkzvNzj2M8/PSncuuaKKQqJM3zEM/FSQOyxqln2zR6orx3kdnAy/9tJGyQ
         PU6RBaphtkUnJcIi7pWMHzAX9qQIe4XLKvqBBtekpS6bnghOXCvfYI0EpdcUFGy4CWnx
         0xHA==
X-Forwarded-Encrypted: i=1; AJvYcCWLFukFiQes9ykagaga/qquRV8zeV+EWMFFjPC8IIpumAwKwg56Xbvnfg2ygUTQEd7mm6o2UnJLRyvg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy01Tol8mZ3kQr29t+R4UouItPoSq2pGkogPiLAVGgTK+WfxDpR
	UNzPqZGNI84uI2fQUUs+mruLATo8fjhHel7GUp8J0bRP+a1Qw4xMLYVP
X-Gm-Gg: AY/fxX6ZR4525Nwv+r9JFabMvCvZyVHTeQ963cBXNXg8znuMl3hhqBW7nLP5l0f6OZO
	YUnjDOg5WJEEhpCuWDeJpB9lbNkwJsI5s/AXNj2ubiZ9L/YUzDjheR/1OAhlyeQYG9WSnnq8V4K
	ATTUn0yJWfv/+1O8ZX0qOU87PDOrF/zMmvYnZ3fWTgwD4bBTJ6WrAYKpyNiFxlSf99kBXWaVk9n
	CMQfdezV2HJe34k3+qFVqH7HhtQlc4RhtvIiww2NiMByY/nJSqe393eSkMu4arufr948PU6pGAp
	7zCjmFOpbybqnUsIMIuLRpjpihHkAMR57AhpLyPVta81FrSR6R810CTLnOO4iTdH7UlDgRO3jqn
	S57UgYsOJyLiuPFJItaQNxBaBP3Mmt9cFiq9CweaXqjCZDbZTIowL41onOBiifE0AB6l/as2sVN
	KaE5eZBYRK28XnHARulOiNAEcs
X-Google-Smtp-Source: AGHT+IF41D7yyvkcVx5kn5auvMy6/Ayzmq08ms+IqGXNGWux8FOs5d5+Zz3A8dNim4TaMeJx/DkzQg==
X-Received: by 2002:a05:7022:3f82:b0:11d:f441:3ae8 with SMTP id a92af1059eb24-11f34c49569mr14945053c88.43.1766055998138;
        Thu, 18 Dec 2025 03:06:38 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:cbeb:945e:cfcc:849a])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12061f473ebsm6896718c88.1.2025.12.18.03.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 03:06:37 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: victor.liu@nxp.com
Cc: marek.vasut@mailbox.org,
	neil.armstrong@linaro.org,
	dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH RESEND v2 1/2] dt-bindings: display: bridge: ldb: Document nxp,enable-termination-resistor
Date: Thu, 18 Dec 2025 08:06:25 -0300
Message-Id: <20251218110626.605558-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the optional nxp,enable-termination-resistor property for the
i.MX LVDS display bridge.

This boolean property indicates that the built-in 100 Ohm termination
resistor on the LVDS output is enabled. It is controlled via the HS_EN
bit in the LVDS_CTRL register. Enabling the resistor can improve LVDS
signal quality and may prevent visual artifacts on some boards, but
increases the power consumption.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
Changes since v1:
- Change the property name to nxp,enable-termination-resistor (Frank).

 .../devicetree/bindings/display/bridge/fsl,ldb.yaml      | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 07388bf2b90d..6bc786204e65 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -35,6 +35,15 @@ properties:
       - const: ldb
       - const: lvds
 
+  nxp,enable-termination-resistor:
+    type: boolean
+    description:
+      Indicates that the built-in 100 Ohm termination resistor on the LVDS
+      output is enabled. This property is optional and controlled via the
+      HS_EN bit in the LVDS_CTRL register. Enabling it can improve signal
+      quality and prevent visual artifacts on some boards, but increases
+      power consumption.
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-- 
2.34.1


