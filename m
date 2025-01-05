Return-Path: <devicetree+bounces-135693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0AFA01B55
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 19:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C029162FC0
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A854B1D54CF;
	Sun,  5 Jan 2025 18:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cWfZ/uFe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919F51C5F25
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 18:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736100943; cv=none; b=PDInA4meeB/46a1ILcEqtca05bSWzjDR9LXBd7p7WaIFDRyB6uckSRPGaod7qyI+mI5+QFkE9FUL+pnoJY4mzT1DD98fVTP4lAr7c6fm81CeKCN6NsAn7t7v84ks/F+pCLHLQfcBai0/g+Dg4Vvp/wBPxvg4DN3u5TtV3jE3i6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736100943; c=relaxed/simple;
	bh=Se3lRcHtGRPWwwaNRlFMfAK7boLIp7LH1AcyeBrpWOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uxuD3sDceVSb5m3610CRX0S/3+ebQJXHmgYZqkFS3ezXOIWOrdsVFhUiAZIzIEzWBT/Dh8E8AoztVEWlMWchmeIaHhvHtUj7AIxTiCVKB8mHvnL6KnazXYGDDMKxIM0OjGjfA/9JTV25pfTlIj2afEiDX4aRPSreVfJgPpo9tUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=cWfZ/uFe; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d3e9a88793so24978044a12.1
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 10:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736100937; x=1736705737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ngcCwmTO+RIG/baergO/2VLeRq3P88V5Zllx9oRRwrs=;
        b=cWfZ/uFeICDU2d/sXMHN/dNDs4/eXGx2egMZd1fG5K/l6XltE00PAsu0VN88OiToPH
         OKWpiDJdqF6/ZHSXggVPq6zuz6SMMR4cGUrN/aCJPirXi6puvS+wDlC+pMWjDWuQtwF+
         dM82cDZRvuR433yBveP8tzU1HOfrUD95LkKhk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736100937; x=1736705737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ngcCwmTO+RIG/baergO/2VLeRq3P88V5Zllx9oRRwrs=;
        b=AEg7ilc/Nx0sJuGtrauak+JShbDSMG9cOHHfRu0/aweWyTCsAL3i48nbCeRQtsmQ0W
         joRwCBAtQWWILLnGLGwdmQXLs0UsrC0eLBRVNJjMZgutRVD/yS9a3R81V9vQamaucyFY
         HisYyAebRklCqCj/zJMzbb6su0V5fBS9dW2/WjYfgRoI3JuFeNAxUqDmwfcKLPPLUQxo
         g04UQTAZSbvSRHYXwYe0/ieqdGtJKxhabB2HwZNwT7nwM3eUln/PMO/Spzj1g25yrJrr
         oZyI/FmleAu41fy01oellcSJeZFf5C0xlMKjvNKtCdmsWQoPP+nrpFXYRjORrnhiU5yi
         3QQg==
X-Forwarded-Encrypted: i=1; AJvYcCVm4abPc/VAT5Lyeyi0fcq59DsO84KT6YTi73wzFIj+pFY+ljGEo0HJZmzw+U2Tm2Yn3SDBJcx0cPOe@vger.kernel.org
X-Gm-Message-State: AOJu0YwEbPbxqG0YoBHfgmyvT45fIOhZsHFF/nWbWU1JJ/s3RKQ6C2Px
	SE6fW4zjx/ksPvUwet817PLBlpRvQWtdg4MKWCejawG93WXCYda6ISnROH+BCAk=
X-Gm-Gg: ASbGncv0Vh4SzSiQgaNs9aQsFUNVrfGKBvIWa7/kJAARvkxqJuE+KjH5dzpJJQMiSB2
	j5BllFwX5bC8pyZHbWLgHfERRrfKnxIFjHl+Z2IwXr3aFXJ3MeVQLHlJW+CsPGTRdOILmUPuHGj
	iD7Ia6Jjizeot0E1ymCgFXvNxM+GUjWFl5FRGNUe33Q8Xd0KV2dqQzbJlO51RB74N+Hd9vhvDFI
	E26iocVc5RXxZrLA6evOIKCylJp3he+1Ws4Y4NVD0thiMallA8+LozTjB+zRZ6ld656jBpo+lDp
	4C2s2XoLfoDrAp09ida61bSeUdpfCJWHrQPj2jCPinB1vCl0+dksZoqkDw/PrYsz9GMiLKnbrk2
	iGC04DBgeoDS31caPCg==
X-Google-Smtp-Source: AGHT+IHxEDK9nG2Mi+Pm0wOh++nf130PTCB6/hhMGClugIlI0HI6FjgJGvhFReNL/vJEU6H89u69cA==
X-Received: by 2002:a05:6402:4305:b0:5d0:e014:dee2 with SMTP id 4fb4d7f45d1cf-5d81de160f9mr56356151a12.27.1736100937450;
        Sun, 05 Jan 2025 10:15:37 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-41-6-15.retail.telecomitalia.it. [79.41.6.15])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f178sm2138185066b.38.2025.01.05.10.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 10:15:37 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 3/6] dt-bindings: clock: stm32fx: update reference due to rename
Date: Sun,  5 Jan 2025 19:14:15 +0100
Message-ID: <20250105181525.1370822-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
References: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With the conversion of Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
to JSON schema, the reference to st,stm32-rcc.txt is now broken. Therefore,
let's fix it.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 include/dt-bindings/clock/stm32fx-clock.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/stm32fx-clock.h b/include/dt-bindings/clock/stm32fx-clock.h
index e5dad050d518..b6ff9c68cb3f 100644
--- a/include/dt-bindings/clock/stm32fx-clock.h
+++ b/include/dt-bindings/clock/stm32fx-clock.h
@@ -10,7 +10,7 @@
  * List of clocks which are not derived from system clock (SYSCLOCK)
  *
  * The index of these clocks is the secondary index of DT bindings
- * (see Documentation/devicetree/bindings/clock/st,stm32-rcc.txt)
+ * (see Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml)
  *
  * e.g:
 	<assigned-clocks = <&rcc 1 CLK_LSE>;
-- 
2.43.0


