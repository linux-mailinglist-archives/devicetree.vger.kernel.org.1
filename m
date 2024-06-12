Return-Path: <devicetree+bounces-74888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66817904E51
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:41:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FD561F21673
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10B3C16D4CF;
	Wed, 12 Jun 2024 08:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qBqOf6iW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D829F16C6AF
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718181656; cv=none; b=h2EhmsyeYda3HYJ5amgxgHjfGJRlFQjPtQfu9M67trL44LeWLcZVPNHd07ieczOg2bKjRxzBkdf7XrDqRIefv9dU/eWAU9XNqPngSapQtkb52IUKosQvGY43fYcmbQr7oZvksCpmM0Po6qme24r/ZfpuM6FpuvxbOu8RWMexzyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718181656; c=relaxed/simple;
	bh=qEiGeubKfIJ1/Zrhs+Ufn5xyc38Z8AX0c5pM0ZIohaU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=psmEHE7BbASCjd1QvJGB9GlJVESPkjKiJ9pfqxidQUHVCoR4F92gT9wyPxg8vmAuexMhG2THze8/leswzFP9hyzNKPvW5DpcTyLSXn2xRLeFr0D/zGZ/o16UwGuSTXF7FRX8Ds7mXNcJXt7lBC31asJKLDSVRm8w445nQAfiZOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qBqOf6iW; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-57c5c51cb89so2641767a12.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718181651; x=1718786451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5WiwpAVIIzI25M3vt4yA+PqF3qDsIr7sGRJOC2cnv2A=;
        b=qBqOf6iWgcxm4nXjNM4SNMYOW+uXRLy37yRB7qcV6cnOaWjzp7jdxD6E9RwinMl+tM
         qpW6stDC2eLYLTHZdJ+TXBTKYXz8WNcQR4VRZXqNc00HYDw8GT6IuCSuLQaYbUNMI3ic
         Rdiw8wBInfJEQQ2XVSTRcsRYxPLAAm33q/czkXh1fOmF2wgkVDddLPA8DJlvsucxU8Js
         aPNF1ryKee1c1CSK/oXkveIVCjt7xNN9CnjNnCePn8hC5inSmJQvWEI9nkvUIVsihdvQ
         KtEwIyabeBY6SCGMFEFVOhNyGyULV/GTFU85UhJfcZ5DrABG9I7YFON33GRSYRmGVyYM
         Lw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718181651; x=1718786451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5WiwpAVIIzI25M3vt4yA+PqF3qDsIr7sGRJOC2cnv2A=;
        b=w2+58cODsdNWaAkfLk81GduN4C1yREXBANxUoJ01Yny7pb3rpirKZmnzgz/AyvED0G
         faPo2hEyWVL4Sg5A3iRmju1a3353y/Md1Nbh30nqQbrOPQ8ulipG13fD+45VEJEyIvdE
         cEN24fUQ7ndOx/jgjgA0eXbuciukWtZlg1xFyKmjdo9bf00kl/1ZWDqPNl1H4Fyj6wn2
         3M9u75AVzSBk00sWbQsmo5aBS2J5CuBy3mzGzgj+0SXBwWfJeytuarD9Nw9Y+ldtfW4z
         V+GKZoiFzf3oTIJAl5dBhKhc4tkOJZi+eWqhr2X0nQrb08bDV9P+l/CeObHCU5nbObrN
         QZIw==
X-Forwarded-Encrypted: i=1; AJvYcCXc+Z9yHRl9zRTlFdP5/+HxPO2/ivSlLzv6bXOZqi6qQAy4oNRNRy7h79v2MSaWdQ33LZkrQMLWsFmA45fabPjEVwgUG8ZgqeShMQ==
X-Gm-Message-State: AOJu0YzHb4N4jby8C0MLqVp2S8e436UJ6nTtsdeKPDr38ZiK9PORGm9I
	YM8NXEV1TAaCGIoH0D/V8xPTXOJSDe6aY68EU5A/jiol00BYwMLTAW0Do9WRuME=
X-Google-Smtp-Source: AGHT+IGAvQiUcW8VL4sfb0qoE6C7is4cXciMhqvZWnwVopNLvFYJ8YfuyjbzeXxY/mf4M9KlfYPkjg==
X-Received: by 2002:a17:906:190e:b0:a68:ccbd:bcf0 with SMTP id a640c23a62f3a-a6f47f589d8mr87717366b.28.1718181651095;
        Wed, 12 Jun 2024 01:40:51 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6efbcc252esm604812366b.143.2024.06.12.01.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 01:40:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Antoine Tenart <atenart@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	arm@kernel.org,
	soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tsahee Zidenberg <tsahee@annapurnalabs.com>
Subject: [PATCH v2 2/2] amazon: MAINTAINERS: change to odd fixes and Tsahee Zidenberg to CREDITS
Date: Wed, 12 Jun 2024 10:40:38 +0200
Message-ID: <20240612084038.18519-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612084038.18519-1-krzysztof.kozlowski@linaro.org>
References: <20240612084038.18519-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Last email from Tsahee Zidenberg was in 2016 [1], so move Tsahee from
Amazon platform maintainers to credits (thank you for your contributions
and maintenance!).  Stale maintainer entries hide information whether
subsystem needs help, has a bus-factor or is even orphaned.

The Amazon platform still has active maintainer - Antoine Tenart -
however there was no maintenance activities coming from Antoine.  All
my patches from last 4 years related to Amazon remained unanswered - no
acks, no picks - so document the actual not active status of the
platform by changing it to Odd Fixes.

[1] https://lore.kernel.org/all/?q=f%3Atsahee%40annapurnalabs.com

Cc: Tsahee Zidenberg <tsahee@annapurnalabs.com>
Cc: Antoine Tenart <atenart@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. None
---
 CREDITS     | 4 ++++
 MAINTAINERS | 3 +--
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/CREDITS b/CREDITS
index 2721aa9122bb..93c05f1884f8 100644
--- a/CREDITS
+++ b/CREDITS
@@ -4369,6 +4369,10 @@ N: Haojian Zhuang
 E: haojian.zhuang@gmail.com
 D: MMP support
 
+N: Tsahee Zidenberg
+E: tsahee@annapurnalabs.com
+D: Annapurna Labs Alpine Architecture
+
 N: Richard Zidlicky
 E: rz@linux-m68k.org, rdzidlic@geocities.com
 W: http://www.geocities.com/rdzidlic
diff --git a/MAINTAINERS b/MAINTAINERS
index 0a2c9163933a..63d991d95c73 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2001,10 +2001,9 @@ F:	drivers/soc/amlogic/
 N:	meson
 
 ARM/Annapurna Labs ALPINE ARCHITECTURE
-M:	Tsahee Zidenberg <tsahee@annapurnalabs.com>
 M:	Antoine Tenart <atenart@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-S:	Maintained
+S:	Odd Fixes
 F:	arch/arm/boot/dts/amazon/
 F:	arch/arm/mach-alpine/
 F:	arch/arm64/boot/dts/amazon/
-- 
2.43.0


