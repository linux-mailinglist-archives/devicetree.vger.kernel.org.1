Return-Path: <devicetree+bounces-207312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C789B2F257
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0BD0AA74B7
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC7228BABA;
	Thu, 21 Aug 2025 08:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ImV9UPN+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC3E2773E9
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755765050; cv=none; b=Ynj9wesjiyX1/hn0KTkY5F1M0nuDuzPAyDuUajfFP8p3V7eViF7yUKx2hslw8aYgC5pjL3vIzYgN3oWM2UfvkxkXSzU58lDmVV/6k4/1/MdbYMn+WA7lDJoon6N0/f5I69Cd1DAPjafl2XwRvB0a4BdNTMvUGn4qRmuHdwvgvT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755765050; c=relaxed/simple;
	bh=ND4zh8X94+77oWXwlUcgY2jHQfPRnpcNlAA0j3O1hvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qrR1/tU9IhWMBnKXa0KKZKSJXZqXPZtAV6iwVll3aZsmxDYUHcHxEVks6EHAA+7xjlwNKguETCKA70zdtutQsz8aUeyvUgHN+AHedYErq/RNlv16TcZ5f1v95dRk0bOaUA02DYVetZimJ95VwjuPRaZT3M5FMp9gc83l2hhnx2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ImV9UPN+; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-afcb7a5cff3so11379166b.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755765047; x=1756369847; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vEcS9kmFNroiJfhtAKIlLkk9PCfkgBUnsKq1fC1zPFg=;
        b=ImV9UPN+PNo3Zq9O5vxLaeMO3Moc5p43WWpsYxc4yLvgYP4OwbbUGTEYihn/fYbZDO
         Vx0Pd8IxG6YoKKZQc39zV8OKFZXFCMNp7vCJK75hjZxRHAr1IqUCplypE6a4F9p7zTaM
         9ORwlFw6VZ89fw5eLQ5e9YZlseFKzDeXLtT+poFp9tQESNU0myJFPDaEvcxWdl/+jZwQ
         oRWBMLhDOP8UYmjnsCNsnCNtPkb23qbr/elpZtXfYFE/dVJsjiHhKBxaLQWaM4y67M0f
         cJbNHZFYxbclt231kS/dqJSH35C1lkqtyPc14+od62GgyNThCMKVWXkOdyyVeWAReTye
         fwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755765047; x=1756369847;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vEcS9kmFNroiJfhtAKIlLkk9PCfkgBUnsKq1fC1zPFg=;
        b=lum7NyyyQvKTKN8amo5IW5FHqgPkkvfZC6A7IoE/J2HEBRyIRyGoaE4OMv6sqLTH4w
         CFf+igUE1LSAVbqmRCy5j2knTqmSurHrI+vYvlPD0scQkjwHMDOwNLYuAQlUE57XlBqy
         gwZcLALf+dRyfI8aDtPXDBSQNl6jIqQebZaC4YwepSjMMQp9XSZzHpBmKi7ODHlxJQKY
         nqEPcuWal3jf/lsTBCKEpVPnBPEf1yEuUBaCxrnRIo6tLl2nVQwiO7w/CARfcowvYTMM
         GwZQLB0m6lM/dkMs75gdnoxDCL6LqMqhbZD07klNrZ4JLoOfRnldmlXzyOQg4MyiCanW
         H55w==
X-Forwarded-Encrypted: i=1; AJvYcCVt/YS26M2XOuwxkVZTJKX+ygkTrrEKlPuBitsaUcXvkeefi6A24tMIIXxPa8dogLqRUOPaqGBAR9AJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyXyK37rhCwY6YjqOGnNj+HFQOo7LH4bbkd0wkNum1aYUKZb2Qz
	Wtk2ZZJr6j+2JoeOtcpTISH8eM2dJ4wOweT0EuiKka2E0Tuty3nt9DJojcpYASW1h4CIy+/zCkr
	JATJ5
X-Gm-Gg: ASbGnctQVk5faErgx/MFy03h8D2MjwLURqOKbW98NcyTqhpAVVipvHoZzXDRlU0jKYp
	RhZ2oqTZNSn6SalGwV4AiJD+TK6W4CQIMykDEEdJ3ta+MyHwwDuDSRTAGbyF9zEo4NSDbDE9Kab
	WDqpJqOKlS2SKK9VogrQelolV0DIat5O+ry3bGr5RMld3uUbBvlX3C1qg4JbaAIQEzp/akU/iQ5
	Qcv4M9/5mwYnnQGroyiJiTOsRKoTUSyxt5r1rFJl6oTeZ1RkhTM0OQB0h9U6zyPWBRwH6ERcKFc
	pGMqMgW7Sjp6gyOBtxuvZjitX9j7os7p5dMweU1ZBlIIWfrFs8mMaMhuifR+IbzpIHGX8VJiNEv
	LLyhvGygUFkcmXD5LjM1lmTIIFemHkBlmbg==
X-Google-Smtp-Source: AGHT+IFfK7KR9dULQ+eb5pquxlByOYnBMZWeZhLR+dgCavIt1FucW6E6r00iBOgiXFI47XtRb0RHAA==
X-Received: by 2002:a17:907:6e8a:b0:af9:3758:a85a with SMTP id a640c23a62f3a-afe07a1f85dmr80547366b.5.1755765046984;
        Thu, 21 Aug 2025 01:30:46 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded355489sm349014166b.51.2025.08.21.01.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:30:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Karol Gugala <kgugala@antmicro.com>,
	Mateusz Holenko <mholenko@antmicro.com>,
	Gabriel Somlo <gsomlo@gmail.com>,
	Joel Stanley <joel@jms.id.au>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Lars Povlsen <lars.povlsen@microchip.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: net: Drop vim style annotation
Date: Thu, 21 Aug 2025 10:30:40 +0200
Message-ID: <20250821083038.46274-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250821083038.46274-3-krzysztof.kozlowski@linaro.org>
References: <20250821083038.46274-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1240; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=ND4zh8X94+77oWXwlUcgY2jHQfPRnpcNlAA0j3O1hvI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoptkv9iG6FsH4MiISPx4GR5gayrwH/aJQg3dDl
 pA50kxO8HeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKbZLwAKCRDBN2bmhouD
 1wh3D/sFpXXif9I0uZB2iXFPLlCC5wlPui68Fk6vtcGP5KMEIZUYTBqI4tMqX5EOZSgZM8Cozri
 iflai5Ao/Nrgn4+KHzgGfbwgeStGH2ylgZ+6O3v/uTCz5rcGKlUhezIZ2gKGgXQlLEc+6DTDMlq
 yTyfzKEz52Y6uzynfvYL6ro13xevfQFRV9o96Cl8ELwuyBn9tuVGy9Odc/7lRgkS4A02rSNxS3G
 SXRo+MmopPrAI7Gh1K+yG0uEXebY6omw43uzjXeCDYQ+XaQ+r+jVWpI8nNfXC2U7+TDlKtRJ/5f
 khxZHQ8bAlMg1rfRnjvaQn6DQs2YoPZlnvEaWpk8r7l1POYieYwujIWqcKYOW4DjgAZBnXhVRe2
 /0zx2fI8HJ6hdJfXrnOGthZiNPgGJHz7kxxiU9UzrYxi4fmRbL1aYrZOo2MqusjMQjYCrTR+R9q
 plKS4NZDqimEFhhXvI1DpDw4kFn75sIalTS+TIrxY3rQl7YdP9OeKcoIahORG+YdxlzPRF/WD5P
 t0hE3+67pfSobjD5SUsGh0lo5vv6SK3H6IXwOGca2rBDh20yTUrG7BjLRFWfQchZln4wWERfo1w
 mPVO6dpj6VvRHmdqFFDle6yhcAuQKKQBN8vND/BCA9uqeYQv/yEeokzWi9svny74uDwOn1zHppB aZlrJs5rkosb93g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Bindings files should not carry markings of editor setup, so drop vim
style annotation.  No functional impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/net/litex,liteeth.yaml        | 2 --
 .../devicetree/bindings/net/microchip,sparx5-switch.yaml        | 1 -
 2 files changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/litex,liteeth.yaml b/Documentation/devicetree/bindings/net/litex,liteeth.yaml
index bbb71556ec9e..200b198b0d9b 100644
--- a/Documentation/devicetree/bindings/net/litex,liteeth.yaml
+++ b/Documentation/devicetree/bindings/net/litex,liteeth.yaml
@@ -95,5 +95,3 @@ examples:
         };
     };
 ...
-
-#  vim: set ts=2 sw=2 sts=2 tw=80 et cc=80 ft=yaml :
diff --git a/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml b/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
index a73fc5036905..082982c59a55 100644
--- a/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
+++ b/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
@@ -245,4 +245,3 @@ examples:
     };
 
 ...
-#  vim: set ts=2 sw=2 sts=2 tw=80 et cc=80 ft=yaml :
-- 
2.48.1


