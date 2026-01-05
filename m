Return-Path: <devicetree+bounces-251378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF8ACF2873
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 364523002870
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 500C932861B;
	Mon,  5 Jan 2026 08:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dtiUjjqX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CB4328610
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 08:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603103; cv=none; b=iX1RXf1DSdNGgeea73Cg1ElOni7qbrmo2dPn1Bey3wYimyfv8sZnwSEjGnimWCZhDKndDTgIGLypIp3835a4Jif6u2mhOQK2bOcL9wVA6F6TbAwi2AHSUzX/ZkIg5dPrCSLO83PJeBvn+mD+EQjDUysiwH5cswWvAHWAbb0iwZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603103; c=relaxed/simple;
	bh=SVJlcDayOcdOuFmlxFZIJno8JEUkvS2rwI28zFq/GdM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sXqQXSxG2bIbdkbTG/3OZBI864qG+IE00LALkTIt7w/PAzDNGxwjevMH+GAszU2X+D0PBRr6QH8+AbyY9qBt85RqVtKL/S9Wr4LuI6PKbsMNymwyFDbfaxqiwT7Nd+ltpKlD9gJYiDFw2t0/8mcSj/RfhvJ/2aSq0tRDnL4cbQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dtiUjjqX; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-8035e31d834so11380530b3a.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 00:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767603098; x=1768207898; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSJakbOsK6HuPfvndjr4pklixI6V6EaaZEWI2YnlWqA=;
        b=dtiUjjqXbW5jdbL8VOlxiuTtQUfEyMJBuZMuwbZ5AP9HI++LewDfGeIciBkMo97qLV
         k0p15eG5aY9g1rbscY7h0juJw7cKsewiUL58yWyB0wh/r+uJIFC0luGbgIXBnJst9bXm
         kcqMiCHDatExkU3ZQwDIj+2wRdBuXPmxPxxLW7IHyWcQeLIvCk0A025Qz2SIVy+vBGr4
         XMswSvZMCJPmUoJK4o2H+WZ8YbfLfvSvongu1fX4RdUdKorVROsOei/2kvlEclnG9cmb
         4QsTQ5fPWxFV5vFztXowIYQtjU41uFmoSXpJi/okhjDnYd7QFqqyfj+7pYuZyMyK6x8d
         mxGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603098; x=1768207898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jSJakbOsK6HuPfvndjr4pklixI6V6EaaZEWI2YnlWqA=;
        b=Tkg9ObWAfUeCFGHh4Wt9C7H2XCCRnmE3e0hTUSk6vyiP7xwNDBisXFXPJA5DJiRBJo
         gpH0imJiXVCX9n2JxEoqfXW3cqG/34eph7UIjxsb7ItKObxTtGLwzJ8w3JaDDWrl5IqA
         OkK6Gr73Jf5JLVFV0AOI/vvujVKnfKw1HmmtowGmLTD0A6LEOnrXP/wLq1dtoQx7TyFs
         FWezORwQqXAoKWUz2VR8RZR6Em0jVglGPUCmb/01N4NDiuyLcJpbzmf/mzHfrIQ/FK8a
         L7Tz9SogBU75EXhF+o4Dqo/ch26B5o93KNxKHyyr1+iYxpcKvXGnY9x1fwoySlrx5A3J
         tfIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO8mFP00rhgqYVLp8Vij6syvUxfkduMKtohJEkSGPEBuq+jXmfq9hlFtWavnXz0LbownCZ3VcPgG99@vger.kernel.org
X-Gm-Message-State: AOJu0YzEQTga3fSKiipmEcbNCjlK4Vrj//N+UMSIuWPovNIPqm2OcKE4
	8kj286jnLn/viuBBFSuf1EB/ggaPHgtQjuqsbdMHlPgXChqPQMA1WS53
X-Gm-Gg: AY/fxX4wbyRStpFZPDSi4cwBbRHzohUKzuWAOJk5MRvWd4XMaEhYir/TLXpzXzQong/
	RTRziAfZhFo3W0n7FkfNQn7zI27BfIfFNIhUzGn4Uv57YPvw6W7lrG8gWrHC5ScdWB9M0flHYMg
	2Lqv3aiplwo00gGmG+oKzdCpJfNanm6JFJpbBBmM3Na9Opb3aw0H/5tR61IBmgkXfb0jCCNux4n
	uADioOOcEPSKxMIsU7j/IhvQiDQ9LyGsurtEpgE8VblaHDXdjZgkap8/D9UUG6Dd94am3/CHLhp
	GAjnWF08Jqs+6hIglJitboYrnVhJJt5BGH9HBeTKYFxShI5OKYZaDjU1zGFmq9cVa4AE2q6Jv+A
	HV/Bj6CTV0BK5Ah2KAEFAz11JhX6sfSfgeJaknFED6jGvIBh5DgtxDj/GUKTyxKgnhkCuc4KkGF
	FB2KEr0ntI9rrF2mc8WauY6+c2RrYZHEu7AnlF
X-Google-Smtp-Source: AGHT+IGdSTNTsFlnHGoKbBjCGcgH0vsgwPkGV6SlKLkkpRQlPt3vpratMO2N1qpXOb9AsWAQeM28kw==
X-Received: by 2002:a05:6a20:3d06:b0:350:7238:7e2b with SMTP id adf61e73a8af0-376a81dc150mr42017932637.16.1767603097900;
        Mon, 05 Jan 2026 00:51:37 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476fab12sm5631951a91.5.2026.01.05.00.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 00:51:37 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: lee@kernel.org,
	danielt@kernel.org,
	jingoohan1@gmail.com
Cc: deller@gmx.de,
	pavel@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v1 1/2] dt-bindings: backlight: gpio-backlight: allow multiple GPIOs
Date: Mon,  5 Jan 2026 14:21:19 +0530
Message-Id: <20260105085120.230862-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105085120.230862-1-tessolveupstream@gmail.com>
References: <20260105085120.230862-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the gpio-backlight binding to support configurations that require
more than one GPIO for enabling/disabling the backlight.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 .../bindings/leds/backlight/gpio-backlight.yaml      | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
index 584030b6b0b9..1483ce4a3480 100644
--- a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
+++ b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
@@ -17,7 +17,8 @@ properties:
 
   gpios:
     description: The gpio that is used for enabling/disabling the backlight.
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   default-on:
     description: enable the backlight at boot.
@@ -38,4 +39,13 @@ examples:
         default-on;
     };
 
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    backlight {
+      compatible = "gpio-backlight";
+      gpios = <&gpio3 4 GPIO_ACTIVE_HIGH>,
+              <&gpio3 5 GPIO_ACTIVE_HIGH>;
+      default-on;
+    };
+
 ...
-- 
2.34.1


