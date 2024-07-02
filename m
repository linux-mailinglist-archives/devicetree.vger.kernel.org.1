Return-Path: <devicetree+bounces-82485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8951792486E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 21:36:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD6EF1C22ED2
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D9BE1CE08C;
	Tue,  2 Jul 2024 19:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B9NeqPln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9231CD5AE
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 19:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719949001; cv=none; b=In0zfKmHsExrOpJwtoQEuR21nr7NHUw+IqTcC+gSnNKGUdDVWHn01Cx5xPpFy5Cvl9xkLb5U7ktXgEJavRngxccbgTlR/WTXs9+xFURK3FfDHbkyyZb056caUfZzGxsiJbvVqcxBNq0SQgJAxdfC1NvaWP5cQZA1uvY9jzUBic4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719949001; c=relaxed/simple;
	bh=6F/yYAXpim102SmVbMot8UkS6QxBBy7dCwzI1lmzSBA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=H4iBw1coQHeaBi+ucv1a1Vr7QF62I8rTUpaJVKl6T8WG4z+zpvYAmxPNGHytWwCn0i453WKwiSwk5/Yod6H53AdTGe2ELT3XDH6sRCcicAfyySXd7ovN6S3rtgE+KyTjGns938KhKkNGHcJPWUMuVAwQXU5/0lr2VzOG9KxXkVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B9NeqPln; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3d846aade6cso731549b6e.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 12:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719948999; x=1720553799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fUg/GMMTHwTbyX+1UW0yeugszpa82EFk6gc82tEdMkc=;
        b=B9NeqPlnAHqsIxG90F37vfNu1aqSofXn3GGmvFkPQDPu9M32biuPZ02XS5rvaoHyUh
         8J8NqEKccGv9J9EoO7vLzkgc2WqM6OX6ghFG7I1Hgli4XiIuBHF6Xp4C8PtRBbA5uhDN
         OGPeXWndGMaWx2U0pPGWd6RkplzQCAJoGK/I1/nurHvR+Gd7unmeLHHCV+Ai5iTW1ZP+
         L/t/LuKK208ymy+QRGpXfm16yW5J6JEz3BCmzJ9+xfEGlqsJ7cSJxoL/BCXzU4C6aMBj
         I5aG83fIzN7Sh0R/JDR2t4ZCG5FV3m4bW4A1Jua8RZohYruBDW0fK1BRxQ0NNGPaWxMT
         FTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719948999; x=1720553799;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fUg/GMMTHwTbyX+1UW0yeugszpa82EFk6gc82tEdMkc=;
        b=Y0aMgT9wKisudCXwAQ8LCdJ+Vk57hwy7MZOLVTrmjCyWO8wj2wZTC30gmtO3GY2wNW
         SB30w463LewM67BmeiwXHeXpofKd5atuPsFSKd0Xl46EbY0hwwFtYh3Iwl5eru6MtOmh
         A9T54jOogXoeWhf2A1/Y8SBJlcSGnTGWGeQfmqmMklssScVZ1AQHQoMOBgBzN/aEiIBI
         J+AkT6XknbXhXeTBAAm6GZiu4pq1hLKGeB0+uekbxcKB5o1KENmSbDrRyv4CE4AbhzpI
         pwENiZ4rZ1O6MaRYg0p5HSYuatn+rJBhIxq1EAGu9is0fH4s/qC/kNgKpfP7lWbFMc8h
         hsEA==
X-Gm-Message-State: AOJu0YxFbk6vY88RcXv93IARINv7JWRcUCe0SL8/wkcBGtqXxoR1LZAe
	Wuws5ICG+PPdW+imHZoDPsJu7B7PfVIyKSC0lewYLy35TIMubnpm
X-Google-Smtp-Source: AGHT+IFegFBCrzeJS5wdY4aeYQ5mes3mmw95KRr8F2nl55Zcguhyb6AqDWyzYWZlN0FAyX5b8UWWtw==
X-Received: by 2002:a05:6808:1814:b0:3d5:55a8:3637 with SMTP id 5614622812f47-3d6b55908f0mr11048391b6e.55.1719948997350;
        Tue, 02 Jul 2024 12:36:37 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d62f83c92dsm1831335b6e.0.2024.07.02.12.36.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 12:36:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/4] Add Anbernic RG35XX-SP
Date: Tue,  2 Jul 2024 14:34:10 -0500
Message-Id: <20240702193414.57461-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG35XX-SP handheld gaming device. The
Anbernic RG35XX-SP is a clamshell device, but hardware wise is very
similar to the RG35XX-Plus. The RG35XX-SP has a lid-switch and an
external RTC that necessitate a distinct device tree.

Changes from V1:
 - Switched all RG35XX devices from the r_rsb bus to the r_i2c bus for
   the PMIC to keep it consistent.
 - Added missing pinctrl nodes in sun50i-h616.dtsi file for the r_i2c
   bus.
 - Modified devicetree documentation to keep definition of the RG35XX
   series consistent with other Allwinner devices.

Chris Morgan (4):
  dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
  arm64: dts: allwinner: h616: Add r_i2c pinctrl nodes
  arm64: dts: allwinner: h616: Change RG35XX Series from r_rsb to r_i2c
  arm64: dts: allwinner: h700: Add Anbernic RG35XX-SP

 .../devicetree/bindings/arm/sunxi.yaml        |  9 +++--
 arch/arm64/boot/dts/allwinner/Makefile        |  3 +-
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |  2 ++
 .../sun50i-h700-anbernic-rg35xx-2024.dts      |  6 ++--
 .../sun50i-h700-anbernic-rg35xx-sp.dts        | 34 +++++++++++++++++++
 5 files changed, 48 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts

-- 
2.34.1


