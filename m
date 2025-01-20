Return-Path: <devicetree+bounces-139858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B98AAA17317
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 20:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB5793A6EB6
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 19:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7B51EF0B7;
	Mon, 20 Jan 2025 19:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aACyl01l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6561EF0B2;
	Mon, 20 Jan 2025 19:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737400991; cv=none; b=Q993zd/OLb/5P31Q9zzzAe6b8lW5S3z+yEUdibCmWK0zDfmiLT5AynS+vZNEd953TeloPo4RvBxI79j5qD2p5dJRFIsdL69aOu1zVyvzhnbHrqxrTd+1w//sKiIVZDnkR4dfV69n/Z3b3Q1ibbODumEeQ4dc9n4i0mMIO6HAEiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737400991; c=relaxed/simple;
	bh=GT4q+7Oh5vTPRM/jyU6qeqv283kNMR9D4hEHBzqc+gM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FxzLr7k85/3vOXlV0a8dJSxyDuOCCvlBAU4QUQk/Ot3jfJYEezTlyE75mkRpwN99ibdhfkEtRDWfsJjmOlSvwfGzQz5gCW+5oxSiirbz4ZbEsCnB13m5VxXtiX/knrW9A8aewuIiBqsU09256T+0A4qfQ3Wgl2YlZg8VJDUfjpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aACyl01l; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so5063967e87.3;
        Mon, 20 Jan 2025 11:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737400987; x=1738005787; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I53LaBUu8Ez10WiqpcVihTs0+/nH9igaC51JF98rWw8=;
        b=aACyl01l4PQfGZ5oj2txQROoZnLnDRqI0BxYurtkcz4XBCagvT4PUlMujqwsBvTq72
         DFFhg07jeUGht05XXnRK9BWzCKrhyA/4Oegk6ZB3HE+hC5e5DUeaCcxeSxjaSINmdmvD
         TNqeihcHYrLyX74fMY5p7sgzB2xZcR1l7YajGMFcTUgvr8yNRvOrsAPUmUJWKhMTZ6dO
         P95QgfDhFmgDvpbrBI6pPUhtX33KHA66kSxolj8eEnd3dF8kiF2srZ/dwknxFq3Rt/cX
         CMlfKXZxkF9VVr+qBqFgbSX4K/mHohM2VYG0Z+msg7x5WOR7pcicYQX+YjSg3m2LZ/hX
         xG8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737400987; x=1738005787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I53LaBUu8Ez10WiqpcVihTs0+/nH9igaC51JF98rWw8=;
        b=ti/dW/MrLSlcdtXM/BOcoqf7YU6U9fVECb008zOI53/WAGIKZYNl+5HRiCOWgQOhx0
         VaDU37mjLBeaAESTj/jT4QPtHzA9hBahOE4M7Bmol0rnXXQvLfTmg3e3qbUe3nlwZJgb
         U7793cJpM0/d8WvWbReokv7zaTZCTZumEoF4aEofTxDRw4ESKhK4fpEP66xS000xPBcd
         eqM2czqeScoie85JPEdSSa2Z904cGGDzmvxfD0BeTBDhWJSeyTJQ7+vF8OCruDZKQSI4
         4+sf9hyw3rAmG1MuPT/LQRkk5DC++YmMBjIhvGKk0yQLdmvND2XahTxHZBxjt2YCQ5kM
         xyTQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1WgLjWKqnkOk6DvQTxN2FD6DFAI1gHMzoiu/jxWN3IF9sAk38FjsKDDzPcq98v4AYcMQQBJuf/hho3u4=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8UXpxR86OGF1LxwKMwfBwhHOfz88hhLcGv2oScu/F/SrfiEBA
	ZWGbd4ek3VzRoe+PBOs84o+96BH0mvJZd3FMDUhSM+Xv5bxvm5q3
X-Gm-Gg: ASbGnctm7pcRdGay2Xtj6BJnMAS9jcoyvMxIpcRVFf1ewyQbU6BSji8cU32jUGcvjaQ
	PNNbirQqVyd4neRBym0q+rKrVC1UVOvEeg/vb/c9+hxzIopfrvaxRWW/Lt3oQBEZ2N4C+o+u9xY
	VjerE4WNAjF8UJbGzTw+gyPICMjsuB+6snVHjW9ihWUKGm1nSU0LrMUJa0Dk2BrvSu9/6V0jeLM
	xrIgO3qXF5HTCIyDxasH50QHOW7zKKwsDl5qRbfYHHXeuEzYdregOBXiLvuzDXMPP7Exhw=
X-Google-Smtp-Source: AGHT+IElRyKrCmUt6OC6FXnu2gsUAFzklkHyKtm/jFhDVjd/e3YzmckkNbBqhhmnxdhf9DgrgRUQ1Q==
X-Received: by 2002:a05:6512:3989:b0:541:3182:4578 with SMTP id 2adb3069b0e04-5439c224b0amr5131344e87.15.1737400987194;
        Mon, 20 Jan 2025 11:23:07 -0800 (PST)
Received: from [172.30.32.150] ([185.204.1.212])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af78fb0sm1460156e87.247.2025.01.20.11.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 11:23:05 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 20 Jan 2025 23:22:46 +0400
Subject: [PATCH 1/2] arm64: dts: rockchip: Add finer-grained PWM states for
 the fan on Rock 5C
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250120-rock-5c-fan-v1-1-5fb8446c981b@gmail.com>
References: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
In-Reply-To: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737400976; l=1368;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=GT4q+7Oh5vTPRM/jyU6qeqv283kNMR9D4hEHBzqc+gM=;
 b=aOYxsb0GguYiX9tTUBCfaWsXYlypAboa2Ll0IUMIBVy0nqbAZ6B6xIG8N65VHw+89tCFLiNwZ
 kzFt+v6yAw1BDcmFu3M7dWP2vt0DhlsVNsdRi3f/oyp86Rj0Sb7H9nn
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=

Radxa Heatsink 6540B, which is the official cooling accessory for the
Rock 5C board, includes a small 5V fan, which in my testing spins up
reliably at a PWM setting of 24 (out of 255). It is also quite loud
at the current minimum setting of 64, and noticeably less so at 24.

Introduce two intermediate PWM states at the lower end of the fan's
operating range to enable better balance between noise and cooling.

Note further that, in my testing, having the fan run at 44 is enough
to keep the system from thermal throttling with sustained 100% load
on its 8 CPU cores (in 22C ambient temperature and no case)

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9b14d5383cdc16947c955b1c6e2a32a50c5df3e6..1b66a69cf0f8795d7305852fa7fef3d0672ada7f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -71,7 +71,7 @@ led-1 {
 	fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
-		cooling-levels = <0 64 128 192 255>;
+		cooling-levels = <0 24 44 64 128 192 255>;
 		fan-supply = <&vcc_5v0>;
 		pwms = <&pwm3 0 10000 0>;
 	};

-- 
2.48.1


