Return-Path: <devicetree+bounces-135493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCCCA011B5
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 03:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC2751884D43
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 02:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9452635280;
	Sat,  4 Jan 2025 02:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WoYUKkXp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B983A1B6
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 02:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735956382; cv=none; b=eLttFc2nPfhxbUrGm1PtkoP9q4M95VO8GRZlRqkyLZaAk9S/AwYkPU3ozFDXS+FbDmu9K36B6/l6Biu+GLdA4SWkmtAHBY/5c7ub8LKkHa5Z+yo3y7odnqZmmUO2A+Bzi4Jc/ZodnnNXkSz770DBcRib0cM0mckIjKRDNjlJ2pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735956382; c=relaxed/simple;
	bh=sneoKYbk2+BCZOEsHOlNEalt5Vr1F2uXYyBlsT1UmA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CM9xJcNhzu2dNkaADdYrPDJfJyCQP+mdvKayezWW5NJff/u+euAiYbTCSD3K9h1uAay84UviKbGlPrzFATCAQ9L2TDO/d5AhlDHH8Hdei8uR9zbyPYBor1dLI5VPhQuWiVv8YGKc1fQVLAmwOHlKSCrkvvDfSsW8pV9hr6yQoRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WoYUKkXp; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-71e2766994bso6568053a34.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 18:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735956380; x=1736561180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zcYlsUzO0vGDNcLCnF4KdwOB7P4WtjzUTN//CHxhAU=;
        b=WoYUKkXpxs8Wn3aCUVZ2a+NLi5LkGG8gjQredNwIbN27lnUkI1Jb1dPnwLPhCwavoD
         +9Rv4fPSa3I1teN3JLrDhlrhjqc6fWmT3B/v0Lw8q8UhMN5Y2Xk/p3hgmd2dOJgAZKxZ
         GUL7o2kRm0nEENW0LWfRLumH9VBeXFHUUt+lu+GvPCivxFeUNFZl2hL7xJrhn+pS/TVG
         wdVgDcIN0khbfOWM+gLRX927u9BWSxB5hcumncC+GL1SQHNgQThVTj/TfNZRUn1moHcJ
         W2p9+zpm1fLFb/9PLLsDpDpTSKZ6oAgdGkeIi5rDnr61+PeywAuLsgwI8hmoSX9t/7t7
         nNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735956380; x=1736561180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7zcYlsUzO0vGDNcLCnF4KdwOB7P4WtjzUTN//CHxhAU=;
        b=F8v539tjc2FbVqUJNmsQP55iprHW3idMjodI6U9LFqVz72O9HsiikA6eBZH4cnyRDx
         TKeqaTRFxAyozC4W1VOgeoWjB/q6fbvuTccmqTHsfVPp9QOPCxVQihPP/6HFxUr45UdX
         iZ7Wfe8mC/vgAOLtRbh+UTEh/pO7ZVP0VthGMUwQd10tpxqfsNCqnaBxKFWaahLa9W03
         sDqUNGwvzchq8ITLUzvKu/8qXLZKmZRGuzy+qDXSxxdwfM0F66O4dwh00uCzPSx+uRvB
         jEBZ90tVbeSRh7EZWst2ae9y+wviEaulErPqb+PQp6+UnSEX4aNHshxBb49HdyJN2lQH
         XTFg==
X-Forwarded-Encrypted: i=1; AJvYcCW1WJCvmUxYZ0S/NQ1WAGih0Z+QgdoMU9sK4Jmpqg+i8UU6IG7+1GB1eWk3OOLOoaErKw4iLKZF3bak@vger.kernel.org
X-Gm-Message-State: AOJu0YyCryNXFG9EI+BiWdP7mrH5LKsbgjyBSTnurjqdRoi5p0ez7qap
	fWzqGu9MZsMCTzt4VKBbpkBIe5IcWpav0Koz2NQ6i3qqVsPS8Toa
X-Gm-Gg: ASbGncstQhi8dwUtl+g5x9oO2kPd8pB/YTQin0UjvmPUgKDV837K9YRuy0fcXivN+Mg
	O51Z6XjNrVTyKjxOb4HRt0/SW9OMksO9rMM5VweWuNHM9ZJNG2x30dzruIQ2Lc7iNUkejO+Zk5+
	5T81UZQwqCJnCSc6OnQTVq4EPQQrloJNNv3on4bFo9RD1eaY9J8Sy8TEM1EQWZTEzFuRIrPDhgy
	pRcvb01z29ND7OIY9lJA/7udPof086FPzK2c74PcxmqD5X0BqWcCLASJSbLnlEZQw==
X-Google-Smtp-Source: AGHT+IE/2+jMijdOYVEVvO8+46QwEZ7Z/87bamhEOT51H2VHUPwjZ1xZR8+yStAmG0wGQFcV1mweRQ==
X-Received: by 2002:a05:6830:3c88:b0:71d:dda1:210a with SMTP id 46e09a7af769-720ff9137admr22752526a34.30.1735956380075;
        Fri, 03 Jan 2025 18:06:20 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:7057:8598:1940:24f4])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc998ef6asm8406568a34.50.2025.01.03.18.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 18:06:19 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 2/4] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Fri,  3 Jan 2025 20:05:38 -0600
Message-ID: <20250104020544.6777-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104020544.6777-1-honyuenkwun@gmail.com>
References: <20250104020544.6777-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588 similar to the Orange Pi 5 Plus.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2a141d99c533 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1075,9 +1075,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Plus
+      - description: Xunlong Orange Pi 5 Max/Plus
         items:
-          - const: xunlong,orangepi-5-plus
+          - enum:
+              - xunlong,orangepi-5-max
+              - xunlong,orangepi-5-plus
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.47.1


