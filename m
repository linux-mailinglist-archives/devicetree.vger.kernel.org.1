Return-Path: <devicetree+bounces-84814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC6C92DC89
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 01:19:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDFC01C2265E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 23:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C403C154448;
	Wed, 10 Jul 2024 23:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lWBA6jgx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5980D1527BB
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 23:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720653585; cv=none; b=e9gkOFa1/PJQfnqpbC4bKKQxAIaIDIrDFiLtv4kV3MMLN3ktYT/2cYVVgxdnq7RUOaqOCiToiys54iG6bHhWHhTPiOyLEjuY1F7aB0G4pBYtrZ3r1UlibsQkJ4P/fwAKmSrtcq6DPHdXnFaMKJoRVrldxCBgSsHpPOhBd5aY548=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720653585; c=relaxed/simple;
	bh=+FKjWDiNgaHy9fLfBfpcBC74w8PhHDcYW+XBxh8Jnr0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bijCy7xatE4kaBHdJ5ScCh4TN/TzU9jqwyMAHzlN/HVBu39TUbB6Hyu4gNOZ3zEX6HOORNX5IRaxaDYIle+lQZt34CAO4sJwlmy17Cil8HTda1pdY6txTGhyOwMxzQKF3+Ubj9bN2JwZjwpjqzEjxldVZQsQ3atHmaKUXd6xf/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lWBA6jgx; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-70211abf4cbso139842a34.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 16:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720653583; x=1721258383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y314Z7Vzvt8PrAmNPY31holwonLU7pTRRaXSZDySjFQ=;
        b=lWBA6jgxhs87Nt5UMydsIQAGmNFtj91y/j+UVMG07++sD/xME5piEeOQN11AzTwcii
         Dq8967AoZUfDYUKZ2prL5K1DHmVjg05nKluU8AcbbNwCMhw5f7WWcywhdhDgwOVFpFly
         t/lS9BJro3kVBBxFkklQsbcSWL/6YRB5TunLR+eamGHsB1V099n0aJuCaaA5l434m4U7
         N4ts0cptc3krENsfn2AllbQAgGjq/+o999OQSynCg+gkpAFv6fP9DHKeJyRHAEelJ04y
         b8D4aYbuoDhySXexp2Wn+xzskadzoown9rzT1yX67HDjGeI58VXX1+/UESuzw9Vs449e
         kPmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720653583; x=1721258383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y314Z7Vzvt8PrAmNPY31holwonLU7pTRRaXSZDySjFQ=;
        b=NKQDbhyjJ4xVjo542qgQhAb7pAwJyd3AhIImmxyR6zujV0HlAXp4UXQTPM4M3OkO+0
         AjoLM9AAayeONP6qLlJwMpO4C0nun+/p6J0XyD2dSlpsMhzigERosj8ik7L3aBYv8d6n
         cPhx4zOweCBIu4YYJ6d9AUrRKLYxb8h+JGOSMB1NjQz7y+ScQYMmLjwEP3oMsSHwuyr1
         /KRGXhK5QT1N3rys+NsACoUZWkojCxXggFju0aCmJ2gIR+WgLyJRKcqWRtNh0tgxwEB7
         tUmlR95SBQCkW8XaVG/dX0hG6heuDMLCJYghHDSDs6tkWaovzo4AX4BDbguJAe2/MBED
         jvZQ==
X-Gm-Message-State: AOJu0YxJFI2AZKyqrcOrE4ZQQYLKAHOdMwtr1KmdhOwpumh0nReLXGGQ
	+1tgmFYH71oEsT+HI7PoD4ZT2g946MFoXj+L1bU8aiMukSaW0aXF
X-Google-Smtp-Source: AGHT+IHmwSe4bdJhOWOP8J3PkJwQwzoYrf/O01qICcc9ry8ninlp/ZHO8F74Aifbtz1WcR6j80hBoA==
X-Received: by 2002:a9d:62cf:0:b0:703:7978:3cac with SMTP id 46e09a7af769-70379783efcmr6305329a34.3.1720653583299;
        Wed, 10 Jul 2024 16:19:43 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70374fcbf30sm1040207a34.65.2024.07.10.16.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 16:19:42 -0700 (PDT)
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
Subject: [PATCH V3 2/4] arm64: dts: allwinner: h616: Add r_i2c pinctrl nodes
Date: Wed, 10 Jul 2024 18:17:16 -0500
Message-Id: <20240710231718.106894-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240710231718.106894-1-macroalpha82@gmail.com>
References: <20240710231718.106894-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add pinctrl nodes for the r_i2c node. Without the pinmux defined the
r_i2c bus may fail to work, possibly if the bootloader uses rsb mode
for the PMIC.

Fixes: 0d17c8651188 ("arm64: dts: allwinner: Add Allwinner H616 .dtsi file")

Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 921d5f61d8d6..e31945c3895e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -837,6 +837,8 @@ r_i2c: i2c@7081400 {
 			dmas = <&dma 48>, <&dma 48>;
 			dma-names = "rx", "tx";
 			resets = <&r_ccu RST_R_APB2_I2C>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&r_i2c_pins>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.34.1


