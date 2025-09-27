Return-Path: <devicetree+bounces-222086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 91103BA5D5D
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:20:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 91A944E1376
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 10:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E863A2DC339;
	Sat, 27 Sep 2025 10:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VCxh5mSX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F922DBF52
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 10:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758968396; cv=none; b=qnEgHW1sC69bfxkJ35s2f2K23DcNqakGb7MYNoEG52+7vdTDhtbj2dKjwpLQQ26mwYKpScWak11uAIpuygGdQxlIenCTLWnRHuPrdeZbVUXgfcQi1PW4WvoKnk9W82lSQGfQ0PRMZCCXTmW0opZzZmBXaHHpn0aiuIK6FVAE1kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758968396; c=relaxed/simple;
	bh=Ll33ycNIWhblme6tiFpLduL39Kk1FOG/s0GEQJ/3Kkc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uoem/85W7JMAOdUziPYkLWZJejvT9IlzJ3n+AOPmDN1vA/pImZqiCG/1t+1t0Jut0TNPFG3LOuqsVVamUdOE+i8hT+fT0uCNJM/ASn4jTM8g00rnIBgqH4sfeQ0WqbmsdgmvT2ugrXf+YrNDVM4uwqLTQvDTQytdbOxdAVNRRx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VCxh5mSX; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-46c889b310dso23894865e9.0
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 03:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758968393; x=1759573193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MY8qwrmK4KpRQmuFNf2j7FLHohlWWrtwD6aQcm5+d3A=;
        b=VCxh5mSXp6YFxWxhvZF/eXOvLoXZVPfzEUnhEWCA+ZGlWotT5GxjwOnkKcuLfPfpjt
         APgGQOZnGidI9Ksl8b8BisH2rmD2jCwODIPZKd//hiNfL3tszjPphKaqQKQPeAIWBRBU
         8mXhmXW/EDo2Dg5NLoQVWFKx8pyNVKg0NiS1S5UfflGEgQH3TGM+0rJA7u3T1UI8jVt0
         QyzJfZCoHU/toGjg2fZxuFKSlLMHN9gwnylXBR3BWL8P08PTdqBC1JGwa2EwgItVKt+B
         gBoFaDgOoRP+9hmDHN4/hDRZqLlFNCo2th3T+dOBjqlXm1woAhkj06wVmW9FPnLXbbhO
         QLhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758968393; x=1759573193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MY8qwrmK4KpRQmuFNf2j7FLHohlWWrtwD6aQcm5+d3A=;
        b=slEijv1XHfXRr2rH2cUUhtBulhbMlXYcRot099u6RhHG0YG6HyGz5ieBV2HSfTB23I
         P5a8s4hE2Oik3qSH0xXTL/lCSw0W9n1mt1b2yJQKu5/UQl/txGNE/tTz02u6oY2O8v0r
         /yKy9/VLnFE3K6I4P2Yx/Z3MtST1PS1EOfNhIfohRjF+lLPBQF/9lQO1XSFEi+KBqyzi
         PFK6yCdAqHbLYZVNLtI+ES/6O93EtAzrGOHpofY143ueM+aRBG4TewYKPyGLwfK+n05N
         8IKrPVuAT3ThOi1BvLhb6lh5dFkUguuZ4CMnwyzcHd5bMFEtRieOJZIlretwuXzNrdFg
         fQ7A==
X-Forwarded-Encrypted: i=1; AJvYcCUTbiZBWArZHgVXYzmj6GqkezqDYOhXZF5DZXhx8RYKDERIAzTYudbyaB4gbza5QuTiMh75cbmBYT5B@vger.kernel.org
X-Gm-Message-State: AOJu0Yxpe0Z3dbzj1E4xie806EVjMwFIVukjpg934q7PDOVcCSeoDFpZ
	B+PFbRP/pfsUsJS8posruEJUpJyHJLA/UOyQ9PkUBhZD0Ouv5odtgst8
X-Gm-Gg: ASbGncusQFjzxG2ram5K+bdoDx6vWF/seFiBajknqRa20fUG3y4Aw7L50RWF2oImxaL
	hCWnwe/tQk6Nf1GEYwtNO9GNZsKPZJK8cIHjRNzw/M/HSDZQ3KM1L+2mDC8kg9yOGdaq6d+8dTz
	nw+PNA9OVrK6kq3eUEFCML8aMp74Y6UBl0q01ZDkDF7b3aVxP1nXhOGhX14L9tZIKGW1QFojHQu
	3TPaozwlIOCa/yLkTCI/jvv524J0RdwkVxmxfJYaN1HApbQruUZmKRyu+sIdOXwD/3xMiAiorgu
	SWGalCSt587UN+ZQQao8tH2gDlBxBBMRIseDaPSRQohmnsSwf9lJIAlFeHK4zt4nAq4COfhNZHj
	nu/1oEtRXY2g4UzsBonhegzbKFA==
X-Google-Smtp-Source: AGHT+IFpE7u1hb0c6ERBtQLksaMcu5MDMAPKnwbnjik5UI72iAiOV9cKZ6u9YBPwPSSZTgtI/keoHw==
X-Received: by 2002:a05:600c:b99:b0:45d:dbf0:4831 with SMTP id 5b1f17b1804b1-46e33e3e4b6mr78278235e9.0.1758968393264;
        Sat, 27 Sep 2025 03:19:53 -0700 (PDT)
Received: from builder.. ([2001:9e8:f11a:4416:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e32c31df7sm53416435e9.4.2025.09.27.03.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 03:19:53 -0700 (PDT)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Stockhausen <markus.stockhausen@gmx.de>,
	Sven Eckelmann <sven@narfation.org>,
	Harshal Gohel <hg@simonwunderlich.de>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v8 2/9] dt-bindings: i2c: realtek,rtl9301-i2c: fix wording and typos
Date: Sat, 27 Sep 2025 10:19:24 +0000
Message-ID: <20250927101931.71575-3-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250927101931.71575-1-jelonek.jonas@gmail.com>
References: <20250927101931.71575-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix wording of binding description to use plural because there is not
only a single RTL9300 SoC. RTL9300 describes a whole family of Realtek
SoCs.

Add missing word 'of' in description of reg property.

Change 'SDA pin' to 'SDA line number' because the property must contain
the SDA (channel) number ranging from 0-7 instead of a real pin number.

Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Tested-by: Chris Packham <chris.packham@alliedtelesis.co.nz> # On RTL9302C based board
Tested-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---
 .../devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml        | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml b/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
index 69ac5db8b914..274e2ab8b612 100644
--- a/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/realtek,rtl9301-i2c.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Chris Packham <chris.packham@alliedtelesis.co.nz>
 
 description:
-  The RTL9300 SoC has two I2C controllers. Each of these has an SCL line (which
+  RTL9300 SoCs have two I2C controllers. Each of these has an SCL line (which
   if not-used for SCL can be a GPIO). There are 8 common SDA lines that can be
   assigned to either I2C controller.
 
@@ -27,7 +27,7 @@ properties:
 
   reg:
     items:
-      - description: Register offset and size this I2C controller.
+      - description: Register offset and size of this I2C controller.
 
   "#address-cells":
     const: 1
@@ -42,7 +42,7 @@ patternProperties:
 
     properties:
       reg:
-        description: The SDA pin associated with the I2C bus.
+        description: The SDA line number associated with the I2C bus.
         maxItems: 1
 
     required:
-- 
2.48.1


