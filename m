Return-Path: <devicetree+bounces-79139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A93F29141ED
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9FD61C22C04
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 05:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B362E17BA7;
	Mon, 24 Jun 2024 05:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wKghoiXp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4212118E25
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719206954; cv=none; b=RFfrdBlOilSpW67coWWZu5NwR41PEO+JG1rLD+vpRpagJ1ayibDX3DAXqwArp992ymRZaudEfySFhl8Lkl4qgXxUqj9+ElOPWhKeeIicHv8Yeflx+eMuv4gDUpjyIdwOax59ZPX9dxwGxd8i3UexFwbtp8DdvYg2YxFEgSsuZT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719206954; c=relaxed/simple;
	bh=CfPZiFmfp0Qs9eggBxskJJLc/pbaINcjbBZ7ulzGj0w=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=pb41t0X/Zc0djXePLs5dG6TkDcoj8Pv6YVcVZxbzwRYNcl8u7gIJ1QgDHXafM8HjA6QxtorIXh47kYSqTMtxqXFtORpeTPFEe2pxzXdIFtoAJifOLh9DI+mOZFzskg9nyf7pomdZ6+HiSKFgKONmJgraFM4rBw7SWp8AppdIH5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wKghoiXp; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e02c3d0f784so7583692276.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 22:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719206952; x=1719811752; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=xRFts49NKsibYysZG1mN4zOHSnI8JrcU21XVbqexR8c=;
        b=wKghoiXpi08EVp1V0jFehKzn5khACAp0ZlqZEoyhaLFuUKRSDcEo6BuJ0nUf4QwBUk
         atWdDw0ZVoFkaqu60HBarPcaN1AJ+AJmFRZp6K9pQ3ihzQLAnscjuMf5IlXulYZkiPTf
         SvMp1BgZWJ6AGCvnUovk5igM6s+HI413qF+FxTWAzrzxEZ8ZJvAGTCpZ+KG59X++QxEz
         EJZAU1soRSglgNFNh+fn0lK9ttEH7nzI+jf7WjLxdjQ7szU9U22XeTzF3PrmKwjNNIc1
         JAQgdF05g9U/Hf0oKv6/gsQWb0Qqz8N7H19SLgSETQ9Q2NpvrSFQ+CTAi83/0WPwml3I
         xwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719206952; x=1719811752;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xRFts49NKsibYysZG1mN4zOHSnI8JrcU21XVbqexR8c=;
        b=NEnj0+5DoQq2q6I536WCz718qFG1q2OAwYNhZ77gf0Kt50i3Uv/BZlAEdhfyVaGnu4
         UT5pxw4SVAxDo7T/Azp/7csLafDmxfvGWogi81sCRTt4i7JtAwQpkt0Uf9D32bh+sanH
         0SmyhFRqinPQWWWtxnD31mGGwB/0KsXU3EH7R8TnVAD6ZBTZl/OxoDDFDThhbPZZnfew
         8amKQ1CCYr6w68/Rczpyrxqtly1MsSAnWN8Zj5+9/gwzyckGRcA4JOc9u1mD9aHsK9XL
         E2o0s4Yfo2y9rWqTQhIToxRPCW3hjiNaT6xfczQB3WCMaIJJDLUEBQO5qQqKXr2ylsYd
         Zn5A==
X-Forwarded-Encrypted: i=1; AJvYcCViWzdvuYb16WB/Fpci4zXU/qrGZk+TqqnHZZ/HUmZq4afSBUzyOsa8RLCqSnGs3OqxN+dN5Sx2wGWdQuG2nzp2G9AInXz8LsbTDg==
X-Gm-Message-State: AOJu0YzcBSx1IAGCDoI2SAldo25Mxnd9Cu+g0BLRc7RnwZ6AIBGMyCmp
	MSKxJjj9UBnG+zSdy0zEtdGSIcifocPHce66Uofz+aeqr3LVoiOGhlmzEvxO+xbC3TCjhUFqhlC
	dhnTNPymMGbutLSLz/Ja7WAnNUw==
X-Google-Smtp-Source: AGHT+IEPFtuLDU7qM5B+Hh1VvGYKz7iFDuXzYucZ4EYIl/bThe8hJCvlk8EEUhg4hesztK7Po0cAT9oQQFYv0eq6Ez0=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:6902:1006:b0:dfa:59bc:8858 with
 SMTP id 3f1490d57ef6-e0300f01d20mr12307276.1.1719206952193; Sun, 23 Jun 2024
 22:29:12 -0700 (PDT)
Date: Mon, 24 Jun 2024 05:28:49 +0000
In-Reply-To: <20240624052851.1030799-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240611171600.1105124-1-aniketmaurya@google.com> <20240624052851.1030799-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Message-ID: <20240624052851.1030799-2-aniketmaurya@google.com>
Subject: [PATCH v2 1/3] dt-bindings: i3c: dw: Add apb clock binding
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

Add dt binding for optional apb clock. Core clock is mandatory.

Signed-off-by: Aniket <aniketmaurya@google.com>
---
 .../devicetree/bindings/i3c/snps,dw-i3c-master.yaml   | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
index c0e805e531be..4fc13e3c0f75 100644
--- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
@@ -20,7 +20,16 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: Core clock
+      - description: APB clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: apb
 
   interrupts:
     maxItems: 1
-- 
2.45.2.741.gdbec12cfda-goog


