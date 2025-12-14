Return-Path: <devicetree+bounces-246323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7195CCBBE4D
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 19:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4EE073007DA4
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 18:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6BAE30C63C;
	Sun, 14 Dec 2025 18:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U//lDwki"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FE9265CDD
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 18:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765735338; cv=none; b=hhcQ5ykLCRml83ljOMek4Ps+2BVW9jGTq4cOHhuhmMD9wVJqOU2WlVrA9h1beZo7HLClOOla/98yq/7k7oVvgfw0itCSGzhq5r3gcqestLvgv9i4Dir6LgXQ77xEr7Xsu8d8BSNffta0GzTJso1qT7IVQ7h1XFH4nAAk3XQUwYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765735338; c=relaxed/simple;
	bh=RGei/f5SwSEa8t13vkw1SgXDIi55PhIypHX3O9WgkHg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XFiTVWxP8DPkbZDGbWmywQqulZJdh59ye7sf5gL7p/h+PQmfjebuZLgvAY1NoA98tp5zMgF1DBMiiYapyqvAPmyYlcORv/FSKcFbfVUY+MlDfxArmGOuV+lEdJd2S05ooq2bmiyzqPpaZklbu54fFxXZMvgO3H8v7EcYyRzHvqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U//lDwki; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-430f9ffd4e8so140731f8f.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 10:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765735335; x=1766340135; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IxEDIovWgG0RAxcrxkL5LpkDNxOzLaNzDMcC6W7//Xg=;
        b=U//lDwkiHxSjJvR2ScYBuTZH3Fba9Ch2Im0tfUvYLRXSXdjgITVstiwFYQFe/y7Bh4
         Y965nnTcLIQmc62e3OvED8aEgWvP9D7f+BSjiUS2VgqTZJun5GlJ1cR+SBRevtwo6bqu
         trWz8oFgb9ASSwaF7Za05VD7gDM9XovdojVDJSPtTNuuOR9uZcka1IOYPZP+x/poKXjD
         Q3nqf4G5PSydItvGBlb1p/1fexhKkDGIPbtFzaly/aBszmhYGLBBVa2UoMeb7zCYaXaP
         Z+6SDpGBWq5FRpEHlzg6L6FJp7g97ZuLudvpjTCdaKshgFa9TT4EdVBtHfLHAgxsZUGK
         JMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765735335; x=1766340135;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IxEDIovWgG0RAxcrxkL5LpkDNxOzLaNzDMcC6W7//Xg=;
        b=AnpHWPgmWLuRcgUJwYVBY7FP0LILnm0rBC/vcv/eRdBuEhhseeGvYO9X18lNjeOMlr
         HSyjDhT/WFkWN7NjVwCb5U+tSoBfeStIUVIFb1Nh+gKw13/ev7RtFhx8y9x9sP8vCJqf
         DTE9QKvOegKOwzjpDYT2idiflPo5Y5bRiSqh3C48aS1S2Emchg+w9WKR0IP9iV7z+0Vq
         jmbdDBU3SLWSOlGkGtxZm5EjCTbM/32nBhgNYQ19tIQdrqYlYMsc2GbAqHgT/+iyHYZ5
         d/cJ/7R59R1HXlOnjyE2baul8LohR7UptYqeGFaMm1ZAb6QUS6ru2d/hqDDwtoSAuZsC
         O9Yg==
X-Forwarded-Encrypted: i=1; AJvYcCVIccdnz0YWV6P4sAouS2YGZptzIzYKDB4c2HlyFDLATbLuJf3Ct7D75Py2gHJe+c9DjZZVHJf0Eq5X@vger.kernel.org
X-Gm-Message-State: AOJu0YxG1Tn3aTJ60dBRiLL98DRBg65AlmB8yRqSsSD97VeZBH/DkzFv
	7l6UeKTskv3anmuAsEC3Uelmdq/tgyQuJisxoK2r8BDyyJbbHY1wqS+U
X-Gm-Gg: AY/fxX6O8umisZbvNR2LSgowB4o7pLpA40nISukDEVOHT/n8PbE93ED9FVYEdWA8o6i
	WJFtszfHtUmefaaeC3bPzTad/Viu5AlQuC4TICVgrYe18LndHHrj7zXvWCX2mnKcrZGAkGsDVj5
	s0WlReMXPOtfnxW99eeIYzr+sUrbHsNITy7XdnyQYqD/SrqvnC6HguoxmRU2MxqFSz5b+DggfTf
	YOvCkFswywyV7ARC2Ay4QQmMNnnxvNusYsNXunjdBgKcBibVL5Z8fzaHc33LA3JBcaME1uiO7KA
	L2uPgB4XG9diaxP85A3913K44mJRoNEuC0wN7AkV8ucKGpjSqa0nz7psvpYhC6uD1aIL/QOO1sK
	BOCw2s2rBVaIu1yvImHHX+OJT0D9YMgspDpR3+aobaOGoBgO0kV10ubHr9RuBUyvppcVcBYCpfJ
	fv3bXQ8N//+uXWBIOuP/Kyhn3ItPi/NAEI9lq1+lbD+cFIQ0FDFfQz+2zzfJGHBRtDE0RC4VwMG
	P3dxtN7OpkVfA==
X-Google-Smtp-Source: AGHT+IGgbzrdWAmi3FTKqIKUB2VW7lxYhNhaEz7HG6Q7Cw6Y9LlDIr+hAvgQGiySJ+2joVDShh4tzA==
X-Received: by 2002:a05:6000:2002:b0:430:f975:addd with SMTP id ffacd0b85a97d-430f975afc3mr1930973f8f.5.1765735334845;
        Sun, 14 Dec 2025 10:02:14 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fb7118267sm16191030f8f.27.2025.12.14.10.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 10:02:13 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: Add compatible string opencores,gpio to gpio-mmio
Date: Sun, 14 Dec 2025 18:01:41 +0000
Message-ID: <20251214180158.3955285-2-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251214180158.3955285-1-shorne@gmail.com>
References: <20251214180158.3955285-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In FPGA Development boards with GPIOs we use the opencores gpio verilog
rtl.  This is compatible with the gpio-mmio.  Add the compatible string
to allow as below.

Example:

        gpio0: gpio@91000000 {
                compatible = "opencores,gpio", "brcm,bcm6345-gpio";
                reg = <0x91000000 0x1>, <0x91000001 0x1>;
                reg-names = "dat", "dirout";
                gpio-controller;
                #gpio-cells = <2>;
                status = "okay";
        };

Link: https://opencores.org/projects/gpio
Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index b4d55bf6a285..0490580df19e 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -23,6 +23,7 @@ properties:
       - ni,169445-nand-gpio
       - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
       - intel,ixp4xx-expansion-bus-mmio-gpio
+      - opencores,gpio
 
   big-endian: true
 
-- 
2.51.0


