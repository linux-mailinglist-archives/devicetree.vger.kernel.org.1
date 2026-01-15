Return-Path: <devicetree+bounces-255348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDF1D226FA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2941A302B763
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC3D28CF77;
	Thu, 15 Jan 2026 05:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iKy/Up5M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED77CA945
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768455095; cv=none; b=EC3VSKeHpqvZSkPM+jc/4oaL8tOt8GCtiozk4inf+kt7DZ63Pyap1mlnCLxSSJZDiI/BvNuJcItV5+Ea2G2RdvH6ssIpDYaBHhLJsmoKYoGyLqunyf+oOjPGcbHIM+fZw9JLe4fDapbrA4H3BwfKRM+XQWxVCXxlV4nfKoibJhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768455095; c=relaxed/simple;
	bh=7p47K0t05CLujC5tLMQEYSQbrxge3KePKhzKN1Cxm4c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F2VNV/DpUjv8umuYOshb/+JO9UUOKF25FMEKTqiO1PtJaiC/dAlRwH9NRZ0pEPNsLrSeFEDulzCJ7r8ZUMDFQziHjgPW+9i+jXgC2cuOwPEBh9T5eiCrhTrhJOAwdV7UCHazCgDKKGhnqXajkkpxxgmHoLt88J/qC/t5pja5Py4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iKy/Up5M; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-78fb5764382so5635707b3.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768455093; x=1769059893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CLWjl5YE/BZTrCnvKQJ3D1RjaRhW5vGK+LI2NZ6PC+I=;
        b=iKy/Up5MdPOmMdY9On5v3/KOE7gpYfbiupxPf+9GmTHMscm2XYGHPOKnFizZH+2NFC
         ANMta96lRdBTfAP3Ne2ClbytKcTC4/DHNz6IhMLKVYe4BaAFMxfKnUtwr7upuSm1fOBP
         DsEe3xppbr5Uqr1e+2myC7OCz+ed+YdCq7qUD4sPT5StU+6hzCq2x+BUDwna0r+9dVxI
         +xSzbh2pgy6U8lMCoG5N19giXBzsrm9Z4qxcyOVt7+lH/UiLzL8b/MV/ZjJDHbBuSY0p
         7miUSIFYUYyVjIeHI873/Uof5I6k47SJFeV+SP1mDbF0/CS9OC4vUn1UoyaCJM9xRyKI
         KdvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768455093; x=1769059893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CLWjl5YE/BZTrCnvKQJ3D1RjaRhW5vGK+LI2NZ6PC+I=;
        b=jt5WX/8glBzyAEMVkt4Rynu053WzJG4z2U8M5czaiSQR7z1P/SGRasI6NtQVwwoELL
         6aV9jn4EviUwSSDn91Bo7VA39qQg48UXVto0zbTRiCyoVBd0a/YcKg1pfB7spzM2XAfD
         2Kp0ohvecCk9JgO06+8j5JIYPXgDbp6LpMK8mr2cfsQ9VCQp9vPRmecWnmGsNuT1NmlC
         asaEq5N7BNegy7CK4WJ9iIj9G4REJqMOeFI9oToJrDpYwQma/xRaHF4Tv2jsBUpJf/SJ
         wem5Jx+WDpnahVQFtaCcRl0a0gjzpqvarOcWpuRcXTcUfMa0pkNMtgJ7IcYA9NxoKaP3
         UR0A==
X-Forwarded-Encrypted: i=1; AJvYcCW1Bg6BO5lH3VIXo9wPL+v+15G33g9KzKut0VUQBSkGg6xiKztQlT0Br7B9JLLikbxnhvHvR9l5nSvA@vger.kernel.org
X-Gm-Message-State: AOJu0YxueuOeUWBZijVilPbBGlUoo5GruGisrgwcqPbRvh/GH+bolWra
	xxqtgpPEgSxTY7PBNeywzOOncgSwpwL0Etew5LdTTpDD0i3FvPhmktbH
X-Gm-Gg: AY/fxX6RGod5IwMSaPpHbQ6V+L5OdfLuudkGAQDyQ2aROi2yCQEGAi1//rS5xSGuRip
	qTxW+KKeHnLK2jqCW1jQEby1YKc5yy1efFWUrrwY9MEf0kxe5pcI2GoAg+iwPq40I/4gpYUgkmq
	Go3jPZOB7GgHPW2yMpmzjMwyiwetfZ82j6EndwSvhPstBkkqv09BFd+FENbgJGqPKvWzpn3jwR+
	VpfcGkkk4H2e/2kbGnwa2i+4TwrCSmL7Id/p1WZK3dH6Y57KEEFNHrQhc2AEoGOhETxOYFaxeF4
	crKzFXkbXzAJuw6oaZMWMVh5sh9TsJXdOluJ2vpguGMWzU6iiM22atqvPr6s/rAFPxsd4yocjqZ
	dDkwpXBoZXvxgFhuM6hG0DkoovHW4z6uRuW0PgMVhTgLidivo4G34suc6nq+9x+XWbpwPnSDyLn
	V1KH77
X-Received: by 2002:a05:690c:d8a:b0:78f:a616:7b99 with SMTP id 00721157ae682-793a1d9c70emr44480757b3.49.1768455093187;
        Wed, 14 Jan 2026 21:31:33 -0800 (PST)
Received: from [192.168.2.165] ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 00721157ae682-790aa553172sm99259437b3.11.2026.01.14.21.31.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 21:31:32 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Wed, 14 Jan 2026 23:31:07 -0600
Subject: [PATCH v2 1/2] dt-bindings: arm: aspeed: Add Asus Kommando IPMI
 card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-asus-ipmi-expansion-card-v2-1-12b72d20a9b9@gmail.com>
References: <20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com>
In-Reply-To: <20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, Anirudh Srinivasan <anirudhsriniv@gmail.com>
X-Mailer: b4 0.14.2

Document the new comptaibles for AST2600 based Asus Kommando IPMI card

Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd13b447e5ddbc64c5e169dcd08fb15..2d5bec22387be59737474cb04d0c5f7bd589d1fc 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -79,6 +79,7 @@ properties:
               - ampere,mtmitchell-bmc
               - aspeed,ast2600-evb
               - aspeed,ast2600-evb-a1
+              - asus,ast2600-kommando-ipmi-card
               - asus,x4tf-bmc
               - facebook,bletchley-bmc
               - facebook,catalina-bmc

-- 
2.52.0


