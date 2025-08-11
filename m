Return-Path: <devicetree+bounces-203417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E40FB21481
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 20:37:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F795625854
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 18:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9D42E2851;
	Mon, 11 Aug 2025 18:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="KwaqRMnf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4EE32E2833
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 18:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754937442; cv=none; b=AxZi4/F+ykg/9NRITmgKNJGCXAsyiwzStXyF9ho3lmKjguFD7eybCR6yjMc9yhmPm+410qgabsVkDV9sMZeMMXfEZ1bC1ylhBqkP0fq/11awmQP6jMGb6zF7yJ2fTHHbC7qQw9Svnu5AD5kUuB3g8ZtuDrjLWTJ7b/MTxE4pk8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754937442; c=relaxed/simple;
	bh=HlRt5tPbZVxfTnGV73TDX1aUMA3EGECj7c41yGliJH8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RC0X/cfoiz5nQFZHZQFh+y33V940NiwZ9teUslgC2ck58scPJQMMlQkkVjtB4GxBeQzpYEeOkJos2JDfO+it2KHXPHgoRf86BThbJ3MjZixHOu098rvXcm1Tc5+26HgiWGdRHHV4Mu9jv9jg2exVgzrUAYO/94rWHe7uDPwgtbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=KwaqRMnf; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=Kb2EaVu+tw3z9feWzOl0s5q/HEzQlpZTiYkpCG3fyT8=; b=KwaqRM
	nf7axyBgTeTi5G7/1w2DSy71cJt4GDMckSdBtUkX32c6ImDU1y/48WPAUy2L7shS
	4hb2I10+7lJIcDxl6hn1Jdka0zApAQKg47XZkr5Do83CHAS73dAR4yZMCuhoIvF7
	Wcy3ko3mVLxXwftDYLuZF5o1eN9YF01ilr5uqP1hN1Oc51ylvZCvFgzsr6UGK/kR
	/dv2s7D+diRvTJQpG8qh0Z/4pYxsVMqGjbRav/Ov+lqTEKgS8U7xz1I0LjaLhZk/
	qIM86M6ifREeZnewrDPI1MJCyevUpZ8jj+INO0PQ4Ki703tYSeaAcDOE4Lo/KgrB
	D1V/6Tzp3S9MVciw==
Received: (qmail 2896171 invoked from network); 11 Aug 2025 20:37:16 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Aug 2025 20:37:16 +0200
X-UD-Smtp-Session: l3s3148p1@3FtzNhs82OptKLEm
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH RESEND 1/2] ARM: dts: cirrus: ep7211: use recent scl/sda gpio bindings
Date: Mon, 11 Aug 2025 20:37:10 +0200
Message-ID: <20250811183711.8980-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811183711.8980-1-wsa+renesas@sang-engineering.com>
References: <20250811183711.8980-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have dedictaded bindings for scl/sda nowadays. Switch away from the
deprecated plain 'gpios' property.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/cirrus/ep7211-edb7211.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts b/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
index adc74243ed19..0b15ccaa762e 100644
--- a/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
+++ b/arch/arm/boot/dts/cirrus/ep7211-edb7211.dts
@@ -46,8 +46,8 @@ timing0: timing-320x240 {
 
 	i2c: i2c {
 		compatible = "i2c-gpio";
-		gpios = <&portd 4 GPIO_ACTIVE_HIGH>,
-			<&portd 5 GPIO_ACTIVE_HIGH>;
+		sda-gpios = <&portd 4 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&portd 5 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,delay-us = <2>;
 		i2c-gpio,scl-output-only;
 		#address-cells = <1>;
-- 
2.47.2


