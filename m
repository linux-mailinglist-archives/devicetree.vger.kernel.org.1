Return-Path: <devicetree+bounces-97453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 841E396241E
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 11:56:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6CD91C23C9F
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 09:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487E916728E;
	Wed, 28 Aug 2024 09:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CrMiHS4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBAD166F14
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 09:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724839005; cv=none; b=smv78j5RRAiHWFGHXGgztVvppXaaE0oCQGLdNTwCz952AMhK3nbrs7rSUpNtKJEPRf0Fq1UJl383oE8Ohuhdy+3aQ3TGrUoIZgzApeIiMwGTV5kLMUraPM3KP0xHeV5wBm7HUcBeJpo7P+2lKc/rMiyZD95RSfzNdNDwJ7x35VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724839005; c=relaxed/simple;
	bh=/q8OT1FWSBwzCT//B0br1m39zEk9o8WylV6bm/hG5oA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Insj0BjTIoZT3QNLwiTBcRLGIY9LImdA3bLg2Rcg7rZdNQRH+Pu0NeO+DjgFzePWja+V06ASKGx53RW4Do8QulAQhO3onnqO6Lj4WhKs+h5VQfAD4UvA1uKxzfXaWVJF/l6nbBzA0wZ+e0O8uaIPDzmnYwyLgR3wizF37tvWNGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CrMiHS4w; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4280772333eso9283145e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 02:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724839002; x=1725443802; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5WSp6pvJuIICtYedmtvSJ2tIfRwNKUKk1n83ZQ3MQfA=;
        b=CrMiHS4w/8VZuXEyr41zRfequUJhkHFWVhqMMQEEBWcS9Jm2XMHR6LK4LroupvGCEA
         LMXYVmuKV32dNc/sxclW7nJu8aWx+8uHU79cdE1M3TJ5uNzZWY5h4JNX9GsY96A5kdaW
         ng/9mSiqdsSODASyZPTGjTSbNThn3SGR+lLeShENJH9rap2qQ5EDqRSdQiTWmmqINIuu
         yaseX99cu/47F3M7aya3vNBYkzpEElr5C/MrG9HyFMK90MYmr83ToQ0+8lXEe7Nnel/V
         vjZId53Wr46G01Dt/OyT4aT3Xarmh6D3Z53RdxMACdm4LrwLpKxQ89UiGEFpq1FYJ7zU
         dkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724839002; x=1725443802;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5WSp6pvJuIICtYedmtvSJ2tIfRwNKUKk1n83ZQ3MQfA=;
        b=GLVY1eLmmLssCjR7spxzN5nAilJpWPIUhIVRA8VStDBFDCipyJUqG7ACyq6Pm5gB20
         zdqWz9zdg5YRkTViaWMl6rJV7ZMPW9raAZQJL/FxZSnZB30FFA/fyDy0njJHKbsnu353
         S4K/q+ZxVs0Dt2iwrjljklyfdYD/UnFaC+1fgeXZeg2ww8JefY8kBarOwDuNZhP+8Zd4
         BSYH4LIxgByhbuVXNBN3cQYR6rOL0j6stCZnyRwU0KvYWeyuK8Fnca6DgNhsMOYfVyU2
         xHfHUK2R/hPOmP1Ncjx2ydh5kItMqtTuvgYQYZhwTywJhVWQ7dDQPIvc6RqgnQeJ0jJq
         S6ig==
X-Forwarded-Encrypted: i=1; AJvYcCXCw4R/aTtoeAsmVSuditMV8Ma5itpaisq9XiYDXJKfu1rZ+la3kn5TeamK3a4/pac/G8KZORCeTIYz@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg/CdtAzItHng0N2naq88PiyCMEmCeA0UPhaXq7YeRP5fAoylg
	Q30QYdfjxJNuPrfyxZ/vBFuAo0JvFYhCaaRrw1ylt4fIezcKknaVKKZ0aODYie4=
X-Google-Smtp-Source: AGHT+IF+144nf5k6UKXIDPS3oYva4FiN2THGmZe68YwifvRzugslieNG8gx/OXdLJ66KxDFPkZTvgg==
X-Received: by 2002:a05:600c:4445:b0:425:7ac6:96f9 with SMTP id 5b1f17b1804b1-42acc8a55f3mr70266565e9.0.1724839001611;
        Wed, 28 Aug 2024 02:56:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730810fb33sm15067077f8f.13.2024.08.28.02.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 02:56:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/3] ARM: dts: imx7: minor cleanups
Date: Wed, 28 Aug 2024 11:56:35 +0200
Message-ID: <20240828095638.231569-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Few simple cleanups. I will follow up with imx6 and others a bit later.

BR,
Krzysztof

Krzysztof Kozlowski (3):
  ARM: dts: imx7d-zii-rmu2: fix Ethernet PHY pinctrl property
  ARM: dts: imx7: align pin config nodes with bindings
  ARM: dts: imx7d-sdb: align pin config nodes with bindings

 arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi   |   2 +-
 arch/arm/boot/dts/nxp/imx/imx7d-nitrogen7.dts |   4 +-
 arch/arm/boot/dts/nxp/imx/imx7d-pico.dtsi     |  20 +-
 .../boot/dts/nxp/imx/imx7d-remarkable2.dts    |   8 +-
 arch/arm/boot/dts/nxp/imx/imx7d-sdb-reva.dts  |  30 +-
 arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts       | 608 +++++++++---------
 arch/arm/boot/dts/nxp/imx/imx7d-zii-rmu2.dts  |   2 +-
 arch/arm/boot/dts/nxp/imx/imx7s-warp.dts      |   4 +-
 8 files changed, 337 insertions(+), 341 deletions(-)

-- 
2.43.0


