Return-Path: <devicetree+bounces-243276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 393AFC9638D
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AA173A1EC8
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E00F2FD67F;
	Mon,  1 Dec 2025 08:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lf+SxDLD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4674A2F5491
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 08:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764578509; cv=none; b=EkDMmHP+o1K314nM50wsyAoOOLrKaQCuPAmctbLu5OF9Dmr+AZ4fncVKUkFdcfAaZeCcls+wXmbr8yfRFjAvkVPw9Akl1roYb8ycyXgTpDmqvkQq6Qjq8cF5EgueUJVmj5bB0Saov87OC5/MGgmBAbYXebXA9qHdsQ7S8H40S5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764578509; c=relaxed/simple;
	bh=cP9ldUvBoRJV7n0qPcQbeaaUhdHAmZeDOafv6SmhAp4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JWD9F1CxbBkxwKrWLFOfwABlrqlhe7gIF/8eUUlC/oMX2Ni96cbyejaeRQv4doKVBRRNb4zmpjxy8M4/QXWCawsBOICEV3kYTw5nMSkOkLIOjbq3vQucSzZ0fcudGxBFX1iVJVClQwvJtk1fenS7Sh58LN67cVOie/fdO+4zEFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lf+SxDLD; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4775895d69cso16133505e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 00:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764578507; x=1765183307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pFWvZEEhiAwGjjJdNwTTNPizb/BR3jr6ZQBEE1XeAik=;
        b=lf+SxDLDKvNBmHgtrJrYQb/HrRL10Q13BfmCHg/Az9wr5TYXvI6B7QjhRuf+4j1BKc
         f0fkcJnW1yiulk+ZKJGyYG/d3McialkIHIlOx++80vTb2uglxlSxz+EDlCZYX9nwlHKU
         nLlYFvinzV+/2MIahEb7Wp3IfbHkjJGwRYti6H+t8mXX9YgA3hDOgZSGqfj3OL08gTzB
         yEffn28ewnu7PBqRgNDRRtNEy7KzDO/PE7O8rFrjgdc6pqHoyKE7HuyUNXgr6LnjjSGV
         Jow2srNZqCeGJMz7Z9Qju0hWxLtnMK6yplHNCh/B7cP0RnCQAgAOZCsVgOK5q6369bfS
         Lu+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764578507; x=1765183307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pFWvZEEhiAwGjjJdNwTTNPizb/BR3jr6ZQBEE1XeAik=;
        b=iJHVKymdSS/5ny9Q01v/T5+0ae1S67tmynNuB73Y6xWxhCk80FqaZEYAUta8GNDypu
         IquJ/bKD2qWD1dKcSUgsvhAYOo3ZgilDHPN4rOHapwYLQabSnjXWldsw1tB8aEYQ2Nh7
         gf3CGRiKVsOeQjGrllL08rTHN7CRWuvUxBq/nWI/SF3Z94M6ocg7fzwTdwEQSeJqJmXt
         SQr9rFxOMX700hrj2y8fqRero28gL0rl+0LalK+Bt6bEfTqHWifloYTaMQNXf5KMuXoY
         t/1231HM1Rh++Zv/2fpHU+t9CNJhXTY7WlctZrhLvYLs2ERpUruvpgF8Y2FBwJd5ynrM
         bb5g==
X-Gm-Message-State: AOJu0YynhwzqH78nw5YfY4+l0ccyC3isu1RGKSkJCyd2L0R2tHBUuBuo
	O1Hhyd/CwDketHWOXRjn/YAWbKGThmeQsuid7RD2cyDf4YglfQ14n/P+kW/Z/A==
X-Gm-Gg: ASbGncs5OUUR2TKPhl9YLdDMBWnTr5UuVFuPah8vZAWer4uLp2ruCWwYr6uDJ9s8N0v
	zLF0dU9CZgRffHx7WcOh8NQ9oN2SvxoD7FUw/ZQDmRDR04ZwsqvfkVeOEjIhI22xS38t5lT8yzD
	ekkNxXmC+CYQsDYy6h3H/8WZdDrdZryeH36Mqiq6uTw4dpPhhh5WWLUNFqX0Vd3Jv3ITwVCie0a
	K7VcvymTHaS9fRBKv713VtfC4MUPmwHFtXPzBj2wZ1eqe+g5vS8BzMsrcS3/HBZ+E19+MpmhOLO
	yqgKX2Yd1/TIOhSD2QsbuZCsdiV7fY7xX/o2XIxitiaqRxHzN5ALfzflnk3866AU+Jk7/nXum8j
	vWa/HeIbAUBIUUmTptX291dEymen/rxNtEB68SAowX/Cr2uWvlXy2Pv880xW69Ol1YUu+fggqj8
	qwfNlEg0oZJN5vD9hkEKw=
X-Google-Smtp-Source: AGHT+IGhs6p/Px4HSRx+ii7ASQl1YviEAStwSJLBm22f5Y1vrBH6D+UflFBC3i3z+pJ6RqSaeOB46Q==
X-Received: by 2002:a5d:588c:0:b0:429:f14a:9807 with SMTP id ffacd0b85a97d-42e0f34fadbmr26557716f8f.40.1764578506601;
        Mon, 01 Dec 2025 00:41:46 -0800 (PST)
Received: from owl5.. ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca1a4bbsm24186087f8f.21.2025.12.01.00.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 00:41:46 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Gary Bisson <bisson.gary@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH 3/5] dt-bindings: arm: mediatek: Add ezurio,mt8390-tungsten-smarc
Date: Mon,  1 Dec 2025 09:41:38 +0100
Message-ID: <20251201084140.376058-4-bisson.gary@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201084140.376058-1-bisson.gary@gmail.com>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings support for the Ezurio Tungsten 700 (MT8390)
SMARC SOM [1] + Universal SMARC carrier board [2].

[1] https://www.ezurio.com/product/tungsten700-smarc
[2]
https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
Cc: robh@kernel.org
Cc: krzk+dt@kernel.org
Cc: conor+dt@kernel.org
Cc: matthias.bgg@gmail.com
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 301f9a1e041c..cffb0f6ac690 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -438,6 +438,7 @@ properties:
           - const: mediatek,mt8188
       - items:
           - enum:
+              - ezurio,mt8390-tungsten-smarc
               - grinn,genio-700-sbc
               - mediatek,mt8390-evk
           - const: mediatek,mt8390
-- 
2.43.0


