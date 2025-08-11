Return-Path: <devicetree+bounces-203416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A53BB21480
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 20:37:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4E14625026
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 18:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B522D6E64;
	Mon, 11 Aug 2025 18:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="gameY8ru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854BF2E11B5
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 18:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754937441; cv=none; b=MK0oMsCxDL1OatCkH+4dD4WhedM5vqJGdhldEhnbVPpUHeuoSq74rrQ5UD9hdd/XZG5h1a5xBPR/Xg3f1ujnhuAfkl5Xh2h0KeWAQtw20BQne+JFFBnBcU4j5jNDYRg3hRICoNaUS0YQVVIXHT4Oqtc9zrfylC7t0aud2N4g7Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754937441; c=relaxed/simple;
	bh=jJSc7B6DA3n6l5eS7S01apK/kC+AvnnbYJSJx6b4Tsc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d399dr9pfPSjYQtX0eiRhEb554htN06RYzqe2vOQujYkiqXIf9pRf9LEbvGad3yqzuwEJL+BwFNCQT9pAoy9/EV/u78SV8A3QzRhsANc8LRa0bTKtsKQDwMlfeQfd8fqK+kMUnSEa9THMXdIA3BaM+DijNjSZZ3SjhH/dd8DdR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=gameY8ru; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=DUXruvI6dh0KtB
	jZolwndMpL8EUTZ9m+PxxTCcUYIlk=; b=gameY8rukG96GHwQ2/tKFWfUQjUQhr
	h5uUc/8UyPAEIhW0UEp7OZwdt9xQCHZ0o0eiguJH34dTaq7dYEOhtqHkANmRCRff
	HhwUyMuUJPSKZsuR8TKzyofNOrAxwT7WpMd9dA21+pTAbG8g3RnIJogVeR3zMuww
	LpTOShc2YEr975tazmjBtpNnCkkoS8tA/EeuHKfA5yVrDjr5xBI4Mqu4y2nbuNpe
	yXaVo+aqZnYoTBbF4g518I6XGvyoZE4pxNqoyD4EcE1GfDlMDpS1CK2Wisgh1nUS
	j6y3/Aw9X9A9EESydrp5x6MV0/Gs7aCGgMygP0NesQGexHFQ3BM04bag==
Received: (qmail 2896133 invoked from network); 11 Aug 2025 20:37:14 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Aug 2025 20:37:14 +0200
X-UD-Smtp-Session: l3s3148p1@UqhXNhs8zOptKLEm
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH RESEND 0/2] ARM: dts: use recent scl/sda gpio bindings
Date: Mon, 11 Aug 2025 20:37:09 +0200
Message-ID: <20250811183711.8980-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some ARM boards still use the deprecated 'gpios' property to describe a
GPIO based I2C bus. Let them use the proper '{scl|sda}-gpios' property.

Based on 6.17-rc1. No dependencies. These patches are the leftovers from
the series for the 6.16 cycle. Please apply.


Wolfram Sang (2):
  ARM: dts: cirrus: ep7211: use recent scl/sda gpio bindings
  ARM: dts: stm32: use recent scl/sda gpio bindings

 arch/arm/boot/dts/cirrus/ep7211-edb7211.dts | 4 ++--
 arch/arm/boot/dts/st/ste-nomadik-s8815.dts  | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.47.2


