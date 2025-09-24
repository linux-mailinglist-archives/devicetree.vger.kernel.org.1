Return-Path: <devicetree+bounces-220674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 234C0B99368
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 11:45:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA6431691D6
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B02E12D9ECB;
	Wed, 24 Sep 2025 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="krFXQDtg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159F62D879C
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 09:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758707094; cv=none; b=GpPICfPhb6qwYBs769yQWHVndbPYy6ENCRK+rXHBSh+aHbE8+Nh3xLvAycuRF7O6tniCT1nMEc3DEuyySgylxGU4Riv5/qRwxMGR6ScyLzHausARRUwSGC6GrlHuzmmo8l5gfTQqgeU4sO5L8n4J+ODCY3WJm5kvfOOdbwcTAK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758707094; c=relaxed/simple;
	bh=uNHbTldTgM5pqxwOKdBk8x8AHCvIBLnCk7TiJXDtqYQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mr2EcxX7OncqgfBt/vzTm9GbaRZ/EvshFXpghBbo5rOLVR+eGRKupf9GcMyju0xfcOzv0Rx7WMqKT0xXigXndJ7+7TQR5NMFadZ3RpjT6NYuno2p1qDVBkRANAaS+nX8Lu4PfdzKDpmcgSxdAnJz9jB8Q0GmEVcv01gwD5QJ8HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=krFXQDtg; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4060b4b1200so1429803f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 02:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758707087; x=1759311887; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aU7V00+zuQKk7Voi/XulM/d8ejeausZ1gHzc4r7h4R8=;
        b=krFXQDtgAZG5jnbZZz3P/FP+fE33B354BvXGKiYozhv31VZGHxUyoSZbnH5ucQDpmz
         6b1uDINDLm+pTs4PezRYeLXSI21ZXw3qkVHxbIfJ8wCe18ZjC5bjxzfP7AJEHF33leh8
         TXafhIKZPYIeJN+hM0ksXSQIM2PIIyAk1gmFjezNwC8PkZ+UkUFxqpuGAcDAsYUvwBiW
         cIFirnU9TjrIrGB+i+KQGGgEJtVNmQWxKNSeUIX3lSYxv50mmJTe2ILDVHT6cX//R3SK
         ignh9t33vKOB1uuXr2QRt8W8DYrq70Ukne3WMXyU+/SK9PqIwpNOOEKirvB/840Er+8e
         hk1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758707087; x=1759311887;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aU7V00+zuQKk7Voi/XulM/d8ejeausZ1gHzc4r7h4R8=;
        b=JBmg47Rasq9b6/LK/rEIDa3UpXkin1E2QHKPAymWUc23qy1fUBWFyzcFU6mZjUAnCS
         I41WD3EmTnp/IM6a+g8zwkT/PqOC691XS6vrNqOVEwIl3qFetSkyL71B282hGoS5YBCl
         /8qZYjy0h3dz89E6SB935bdeSs2gOQt23WDuJPgqfqUTbibx7PR8WHgefdWN/qhqbdYR
         LgJGuaXSpZGk8BGgzSjkO1YrOd2RVmGh1dW29cBLqcIunWoMhjK/tsfSLxcBf8SV7lrT
         ZtQS6q/x7jTKn1FGE2QwmtJC430LhAqU2PquN6WneG4+sK4xn6gjqhAQUpVTMMP70B8R
         PH3g==
X-Forwarded-Encrypted: i=1; AJvYcCX+vEGgAjP9CU1pYeT7K2I/aZEs91znSvhA4IFDz8B68xO/K7z7UedPhHYtJWzBL53TDc46EcPipg5P@vger.kernel.org
X-Gm-Message-State: AOJu0YydhBeGem2umF94yLBCwivOQ9e/bVo9N8ubNpFFj/NphOyQyiTW
	sfDhSY3ulLyCVMIcOOI5I9j6etMAOuV1+B5U+WXpmU+h8EBpMkdm08R+
X-Gm-Gg: ASbGncu4ad9NO4zqxG/f+7MtfKocLG2FZxnoakkqHlNT3i9sRGIz56iwYzrvYjq1Bcc
	MATp0LCeodGB8Vfmf65UIzn3YB2xF+c3W3U2h4L7Y18cXvcyE1k7qkkiq9WMokUQbcycCoEwaDG
	ysDFRiz5Bejt75l3m32CtET9YcPu35AEsH7VyDv64V3VFim0yu1cZeJKpVIBNQ1eU7xbtyiS0GN
	w2/XCzxeUNnaW+SVA+FxTMFz+z+HzTUBd88kM2s+jsxD+XsvOqKMAHgIlsX/7jNzk3bCjb6LiCt
	I1a7/bzN9zkyWhHD6TR00wZ3trHS7daNuo6PgsY2RJbJn5xbp4vxMCtH3ErLQEqMdnm7LeEwmrf
	AW59t1YLzlZq7N6A+HbsNe51RMSyfpiGvxyDeL7PPqHxRpKgDrjx0ohkPm0xhcATdMOzXteknKe
	E/CklODEu2UE4rsg==
X-Google-Smtp-Source: AGHT+IFpHasan3pFJOdP5ZGB5ynPDa66E5OeJLF7PLwNIJrHXHfWU8ia57w+wOsWZehdESEd0RRK+Q==
X-Received: by 2002:a05:6000:208a:b0:3ea:6680:8fcd with SMTP id ffacd0b85a97d-405c49a250fmr4780811f8f.13.1758707087081;
        Wed, 24 Sep 2025 02:44:47 -0700 (PDT)
Received: from localhost (2a02-8440-7503-805b-0076-f865-8f03-23d3.rev.sfr.net. [2a02:8440:7503:805b:76:f865:8f03:23d3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a9ac55esm28446145e9.6.2025.09.24.02.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 02:44:46 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Subject: [PATCH v8 0/3] Register the STM32MP25 RCC driver as an access
 controller.
Date: Wed, 24 Sep 2025 11:44:41 +0200
Message-Id: <20250924-b4-rcc-upstream-v8-0-b32d46f71a38@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAIm902gC/2WP0Y6CMBBFf4XM83bTFiiFJ//D+DC0M9oERFtk1
 xj+3SoPa7KP9yZz5twHJIqBEnTFAyItIYXpnIP9KsCd8HwkEXzOoKWuZauM6CsRnRO3S5oj4Sg
 sWsIS2aD0kK8ukTj8von7w5YjXW8ZPG8l9JhIuGkcw9wVsiHdoFembFtk501b9pSfKdVLz0imJ
 GlUzfAp1BWfOhwi/eAw/Dl5Jltbi1qx7ZYGXh6nkOYp3t9Dc/US2SBa/9u0NEIK7dlVJJXlSu6
 OI4bhO0vDYV3XJzN1wsI2AQAA
X-Change-ID: 20250916-b4-rcc-upstream-8a8ea3af6a0d
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

The STM32MP25 RCC peripheral as an access controller is allowed to know
whether the clocks are secured or not.
The STM32MP25 RCC peripheral knows about the clock secure configuration
of all non RIF-aware peripheral.
In parallel all the RIF-aware peripheral configuration information
are known by the RIFSC peripheral which is already an access
controller.

Changes in v8:
- Use uppercase for peripheral name in commit message
- Add the '#access-controller-cells' property to the RCC in
  stm32mp231.dtsi
- Link to v7: https://lore.kernel.org/r/20250922-b4-rcc-upstream-v7-0-2dfc4e018f40@gmail.com

The v7 is a subset of the v6 and other prior versions, split to simplify
the review and merging process.

Changes in v7:
- None
- Link to v6: https://lore.kernel.org/all/20250909-b4-ddrperfm-upstream-v6-2-ce082cc801b5@gmail.com/

Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
Clément Le Goffic (3):
      dt-bindings: stm32: stm32mp25: add `#access-controller-cells` property
      clk: stm32mp25: add firewall grant_access ops
      arm64: dts: st: set RCC as an access-controller

 .../bindings/clock/st,stm32mp25-rcc.yaml           |  7 ++++
 arch/arm64/boot/dts/st/stm32mp231.dtsi             |  1 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi             |  1 +
 drivers/clk/stm32/clk-stm32mp25.c                  | 40 +++++++++++++++++++++-
 4 files changed, 48 insertions(+), 1 deletion(-)
---
base-commit: 07e27ad16399afcd693be20211b0dfae63e0615f
change-id: 20250916-b4-rcc-upstream-8a8ea3af6a0d
prerequisite-change-id: 20250916-b4-firewall-upstream-dfe8588a21f8:v7
prerequisite-patch-id: 1ead960f405c7a2dcc9111acd0bb4c95ed33954f

Best regards,
--  
Clément Le Goffic <legoffic.clement@gmail.com>


