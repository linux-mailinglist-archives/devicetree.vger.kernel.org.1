Return-Path: <devicetree+bounces-248091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 050ADCCED06
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 106DE30542F7
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C073B2D8DDF;
	Fri, 19 Dec 2025 07:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fFXA/nIJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019901A267
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766130162; cv=none; b=fwZOAchOvH7CQ1ecEQyOWCsceNs3v9MJR3dJjer99HClOSD28gAOUXeXrg372W7yO6SL8VUZy9XOurPHme6UVy6dt2YBZ45Ed2deWcwMbOycxaIcQRBGbnqH1jZunFRZzYfaDog6LvMs1/RmuGItNnbVoL4YFxaN9gD2bppkfuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766130162; c=relaxed/simple;
	bh=/r6f9IRpVGju3Ryu7UDsRNF+0ADreBgeJr9SFE2YWMw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lq/3iI7po89N3/xzNa/HseoMF36K0HcLOjR0ZjTFR4WBPwYFZ3JaaN8wGtaTwn/WrNxaIWJGZuphrxXLZHuJkcmvh1KX78yov3uIy8yAITQz7B9+bgFGr1DjMRRbk1gre99piHr1MYN1cemJnSF5bnfMm3cv0kpADG+Xlo4Guno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fFXA/nIJ; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7b9215e55e6so991800b3a.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 23:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766130159; x=1766734959; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A16mIOMQmuaHn2+TKOnGQUAwRDMDtpdj4WXcnB4hmwo=;
        b=fFXA/nIJNMyDxLN6y76x45iqbwiPnUPtpbX9K5TX4lQb79luW+UrzuEvMCbSC7c9mj
         /O17ojgRW8Pbmd2nQTR2GFnKoJn2L/aQKZmt+Ob/XqarKATXsfmMxxwypXVzC94riMLE
         hCVjVAK7Jccqtxctt7HGpKpWNpxEmIg9DHFB8Onb7DqjVlPGzAWbm8lrBJBauuXZUGId
         LL+q/IYRYFve9Hp18pHM6zm3X0XoWbBYrwC1U0k52kRhFb0AHvLvVXGPrbeVg3WzTzG3
         zBEopyiBLS+Q1lbp8TD1NhljCqjCZZbjDOpRlGUGrXXzB4ilmg79R8anj5UpToyFkUPg
         J9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766130159; x=1766734959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A16mIOMQmuaHn2+TKOnGQUAwRDMDtpdj4WXcnB4hmwo=;
        b=RHcu1qr/EhxJ78U7FyOWAsRz6IS+HixlrHdyrD3f0/SZOPARpF3h2yjGmNnwpMUNZG
         g3ckbv4VzmvC3zIR2gSgj8w5sFuzY06lEeDuRjYQjRz7x5RBJtA0ylQn5s50j6gihVqx
         Bwp05k7SUEZpbGiNe6I7igCzan0IeGbSibVZEPg6WkhP0/g1XoY+JoKbqOGJ5/3xfwRU
         kFlFUOAcM5NoXYn8MK30jGunl2qTgfa6QniqZg7qjhNMArWcEsMVUQPQISpf/pSkpQCt
         ZEUbgUdqt7Z8cdBFH58k4H8Y9crbUlqBs1dIQ2KFLIri2Ve1pulnetcyb6tsDBbHDCdM
         VhLw==
X-Forwarded-Encrypted: i=1; AJvYcCXVFIFaCyA1RNitXc1sXmWaE1aGSPR89U3vhz7dWczow96cfoH/JtHGyC1hR99kb85D/bnUj8xqxFoj@vger.kernel.org
X-Gm-Message-State: AOJu0YxiP4o2VAyStGAx/5WdnZRKvH936JnlAqvJUPQioK/sx0mPt98V
	taMpDMzRdPPtuCxB1eg87s2Mcp6PLgHNJcRmg35VHoi9Tj1ej+5TmSsx
X-Gm-Gg: AY/fxX57/Bwwet09cfc6kg1IDuhbQ4oPF+hFwXQf3ZatijdiXRd/4dMy7cyxyvMXc1Q
	iU8+OxykfMa/yE8C1HA9KjOYrmWzSwHML0ueTimlj2Kq8OSG9XaKCo4z/fsRi+n4rtM3xhw4x2t
	FZ0fzyTLAjgCjIYhvW1RZm7sF1+22ZXWiJxLzC5NTkwgCbEUVFzymCMDZN24Q7hZHK0sGrhSlR+
	EZX25LC4kJI9J0eEWgm573VkFZxctbaELJz72Jy1YwEIIt/ldU6YTBQh7rl+3gMsmF7vhVkxxLl
	rbMPpZOPfK0i9yAQB2whYtspprWMl23b8GGUH7iiMR62cRISNk5odg2JR7E87yg0q57XMwsOiDA
	1lhR7brYazkNvBNDcdhnrZHFFG/uZ9UsyeBZL96pCqg3XFKiqEgnr
X-Google-Smtp-Source: AGHT+IHMDEZLLOxw+3dAFpieF2QA1Yfe4kaK1QG7vQqgmnkvKYHURHQzbX3y21w9Lj3QQl7AzO8tFw==
X-Received: by 2002:a05:6a20:914c:b0:366:14b2:30b with SMTP id adf61e73a8af0-376a9cddf9fmr2091296637.62.1766130159109;
        Thu, 18 Dec 2025 23:42:39 -0800 (PST)
Received: from localhost ([221.192.179.86])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bd602desm1335791a12.21.2025.12.18.23.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 23:42:38 -0800 (PST)
From: Encrow Thorne <jyc0019@gmail.com>
Date: Fri, 19 Dec 2025 15:42:20 +0800
Subject: [PATCH v2 1/3] dt-bindings: i2c: spacemit: add optional resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-i2c-reset-v2-1-ad201a602e74@gmail.com>
References: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com>
In-Reply-To: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com>
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Troy Mitchell <troymitchell988@gmail.com>, 
 Guodong Xu <guodong@riscstar.com>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Encrow Thorne <jyc0019@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766130147; l=857;
 i=jyc0019@gmail.com; s=20251009; h=from:subject:message-id;
 bh=/r6f9IRpVGju3Ryu7UDsRNF+0ADreBgeJr9SFE2YWMw=;
 b=wvV25q8btJ4G30xXAzQfVKnpzsZrDgyjSlGnmi9bOhuNQ9Aeuh6j0rLJZZ2UdmpI8Wk3BNmIX
 Bd8J5IqmhlsD4ZMfSltfVzsoWEpZ9saVGE6AaJqKlfN0k6035M6lSH8
X-Developer-Key: i=jyc0019@gmail.com; a=ed25519;
 pk=nnjLv04DUE0FXih6IcJUOjWFTEoo4xYQOu7m5RRHvZ4=

The I2C controller requires a reset to ensure it starts from a clean state.

Add the 'resets' property to support this hardware requirement.

Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
---
 Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
index b7220fff2235..1290106e28e6 100644
--- a/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
@@ -32,6 +32,9 @@ properties:
       - const: func
       - const: bus
 
+  resets:
+    maxItems: 1
+
   clock-frequency:
     description: |
       K1 support three different modes which running different frequencies

-- 
2.25.1


