Return-Path: <devicetree+bounces-247043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9783CC3471
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:40:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB6C9306342C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1D43BB836;
	Tue, 16 Dec 2025 13:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="kRuqErbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4813BB839
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891998; cv=none; b=kCdmAuQN27wMBghbeAu21b4Y80ro2/23WP+MRZWeJhijzFVaavliWoXNlmoyOWrv1Hpfjl18NkbPFMBRGyEWyNFo0YhEXejIVsLxc3BaBz6qT8EUz+kDvXRdKLshWOE7re7kXHJy4FnhlruhEj2apYBIhagSUwAXlq2u07aWSJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891998; c=relaxed/simple;
	bh=EoM0juMOXjr6GR2unrjDT+d+btXpji6LDeK28LHuz0o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VKAE2CjqLhQo9PNWEVEwueQkUTd3pRqc0Q+gkBPeQmAtu8dA5zFyR3FV9tupnspnxHn0Pjs5cmBpztkLXIbJOx1G6o7iZ4x61xfSBQ55ozfT67dXsgn/865TSQORlBSXM19Os1PcEbB0N8EB01uKiJqM7RYscKENbDWz33Kdci4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=kRuqErbj; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a0d6f647e2so36560825ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765891996; x=1766496796; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YgtnPUK83eGnHHD4+3Z/OSGEDGJ36/32wtdJor/AdJU=;
        b=kRuqErbjUq1rzVSv7GtPcYMkrYen8WqrcsNGrK4H50LOwLyc0+/0jcmdQKqmYmTgxp
         KsxQ48tWaEhrbpPbDn1hmzD/AQ8vonB0+Jtvuktm48zRKx7xs/JGVcth7O+WB2l302Uh
         cUupfiQtEO0uwddcxTn01tQDv2OW6eVNLnTK12jmaI1w+swgnRQCRfs4F+LjhR2xcnGS
         WH7hCUzWekHR7J7ss0WAO3cSCBw8oB5/DIJPk+2BW0GLHr46kBEKqNjjE8Mi7tGJibF0
         WqV7DgBY+uAn3JyjuoiJQ6ug0OMkCKNMV3Kipgw0Ft4eecv+YUVuBERLca9FGvqHNhCy
         0Mtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765891996; x=1766496796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YgtnPUK83eGnHHD4+3Z/OSGEDGJ36/32wtdJor/AdJU=;
        b=DHNdERBFnD4mLWOC7tYLtDfXmnWmAMq5NenSphXyQftMZVM/PwO0dmD6BZVoWWdh4K
         fN1xwq6xJTvLlfVeZmuTPHoNV+Yx+HcVnJRSULcc7+oPMer90tlQHJIlV6WkHS4ZZkg0
         9HfsYotrRpE6MNrxmY9QOUBZ4/Sx503IatIZ2NlYfbpFIXRolcS98daOPbS9mxlbC1fe
         YKT5tE7Tk7Cp1GP3bN1gFvhsHXzIgCp5e+vxKClOmCSTxrZssrCzV4UJzD0gBmVO58p8
         vvZIiFAtdrv7OgbS/e6rs4uQvhDJbn8pHxGdhg9CEXtQgS1PlKEMSRdNQTKvsp69kTOM
         vn9A==
X-Forwarded-Encrypted: i=1; AJvYcCVV6g19lQAG6s3y0XClJ7YzImZ+opek5E2CSs6iTdhLsT4OG3BHXTImbH0+9NF86KhZk2xtTwuRTbc6@vger.kernel.org
X-Gm-Message-State: AOJu0YzV8QVP/0iuFFBz2P39ZIkZ/pI2RPYFjLTY269QgAYJWHaycPQ4
	+vnAg+kXQh3msLDGByFqG8Vz0lqfldQJvfG3Wz5cm1vY7nDi1tBxdaI7UhqqBz5EaXY=
X-Gm-Gg: AY/fxX43DX+km72fTJEQTQ3K3nglr3VK5v+RSKxeJ1ZAKR7FsdcpaAGRpeN/c5Kga/R
	g+rwkIuUbZJvnASHlJL4BePXPVbsqLCame1uUWcbcpf6YZgIk01s+GKUNitwhntGmMxE55lk2ro
	cYILKWovynfEXhOqSXpCoO1SejbFLR42K5VWIHlHGCnrc1flHk1fVsNqo2z04fVlpsifXdendYT
	BSvUreulE6O4gyuPbVodOUS2/Vctt2kZVjfT1ZOVYmJbVjVldsSEHBiHAr4qAuH8xJXn+8G8jHs
	8d4KT/JEgGA/3SqigfxSzJpAfV1/tdy7h66RalFClSXkaRdlSPXWW+Lk3szoVc66Fw9kLbI/df2
	lyJpycZyNjcu9HYpcIStjJOzBM4M4w76YBUT6uOaEuYm/jp+0SmfH3wdgCYXt3oG3scWU+JsKWf
	aCt5HGYF7nfWOa5hix+i1sDKVyxu5WKwk=
X-Google-Smtp-Source: AGHT+IGY3Bl6L/q/ucq2o7krHMUCV6pUZcjqotL6XoN1XRPjp4aSVY3JMf/8mH7J80vFyBB1R/u+VA==
X-Received: by 2002:a17:902:cf0b:b0:2a0:c5a6:c8df with SMTP id d9443c01a7336-2a0c5a6cccbmr98731775ad.21.1765891996120;
        Tue, 16 Dec 2025 05:33:16 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4029])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a14625add8sm15829525ad.61.2025.12.16.05.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 05:33:15 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 16 Dec 2025 21:32:26 +0800
Subject: [PATCH 2/8] dt-bindings: timer: add SpacemiT K3 CLINT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-k3-basic-dt-v1-2-a0d256c9dc92@riscstar.com>
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
In-Reply-To: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add compatible string for SpacemiT K3 CLINT.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 0d3b8dc362ba7e8d0ca6d0cea692ceddc5e1f89e..3bab40500df9bc2ba4f7d6f1bf340c8cbc06f9de 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -33,6 +33,7 @@ properties:
               - eswin,eic7700-clint     # ESWIN EIC7700
               - sifive,fu540-c000-clint # SiFive FU540
               - spacemit,k1-clint       # SpacemiT K1
+              - spacemit,k3-clint       # SpacemiT K3
               - starfive,jh7100-clint   # StarFive JH7100
               - starfive,jh7110-clint   # StarFive JH7110
               - starfive,jh8100-clint   # StarFive JH8100

-- 
2.43.0


