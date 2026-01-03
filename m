Return-Path: <devicetree+bounces-251181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 302AFCEFCCC
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 09:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77A69301226D
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 08:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C504C2F5313;
	Sat,  3 Jan 2026 08:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fyl7+60J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068E32C0F6C
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 08:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767429205; cv=none; b=ENOk6topMERq+u/Q1XHSHuB9dEmW8CcjbjoioK+jG6+TMKnsjQrYbMHU5NWvL+DKLGaUa8uItLKXU8zcfsUDZAtvo+SRLzu782lEYGdVLERRgM+kRPZ7VNb5EHSnvz2FSxW5eKezVzQUoY5BBQqmaEtiecMc3PKbiMHu+Sqp/8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767429205; c=relaxed/simple;
	bh=izi4VvU/qHkp/nGvi/OJ7celFPcbQBwlswNh4vYfIMk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CYCeZ5AB+nkJXda4J1RG1oc0OuS0oc+AwyHko5oXG0vrO/gwb80dJ2BA2zt//i6M8z61yxE+rKQMGiqhHuG/z00Ir0iQVDcc1GW6XqkBIpU4kOpQp+4tAKoGw6WBmVBhBHqx+GXIRkfFYBn+9PDo4EbuLtZVIL5Lt5lRz76xV5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fyl7+60J; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a0834769f0so123714295ad.2
        for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 00:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767429202; x=1768034002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29VsiJqR0uFBbQHYC75VBavG4DpR3+cDRVjS52nwMSM=;
        b=Fyl7+60JpdPVFOBSwjT60+F8rl1CPaxLMz1yXxZLezLVX3nANOrDhW6yB21uyG42kS
         RiSgzPOiB3iwMKeCtBZSOmWhjkEcbuTqbABosuEn1bU0AFLy4A7BDp5klMKJc4/YQL3y
         9hlGLrhfEvmnH23G69GPULiG/IuHAUOZiTl5d9p1Uv81PeaaoR9hPCfrp7kyRZzli+/p
         byPdaNHodC9QNMeg8ETBmX7jIr2aA2Rv4Hz6soGXJk3DB4CKsj7zsOChbLfvHTp/BaTa
         1QYKC7RaLqOjLLq3qrsyMaLIyDrGiQlrWFZ1utYhtUKiMW6ZvrtiGn9JceI3PBs52nrV
         oh9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767429202; x=1768034002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=29VsiJqR0uFBbQHYC75VBavG4DpR3+cDRVjS52nwMSM=;
        b=MkroMktmsQU04knPllXlhawUUmu6P+RIcDdUU3ZOzYNuwe+IQ0gdd5BbU9LR6tuMVJ
         GvLJwqqnaVIp4cqwHiO8oqfHgTJCNm1SiKKy4ATQAAgSxdwvm3wNqJ7MEdgwa0b04tin
         UPEockKhngk9otoWpJOTHWTD22KaOYqnf4cru4xsHt/hB10uhbgWI+YufCj4hdmK7/u3
         MWpp2OifdagYFAilOSXEOsFqP5hAntNqsO6avT9Ub9aC/G/2ulg6kPHdKi2Eve3JPATa
         A3K+LsQAKip2Sl/4Xdv8L69vK+rsrpayyxDGlFQ2AaxMns7eS8oF1j+6kScWKOlz+pjl
         Friw==
X-Forwarded-Encrypted: i=1; AJvYcCXURN0KSIsKrtjtNkBiin/C9c8MygMgQSKe7qsz36fMjUAzysJ/uJA3NcbAh4JkCP5lVokw+ZN6jR11@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6j0Og52cVW9kxP+03YlIwMxC4tmt9OrqKZFz9sV8gmXIdiSRI
	oCVu0xhTZ4uQjmQUw/O2GH5NlvEI2Xl+c8Bh4DA+gpkF/GS2FjyubaHQ
X-Gm-Gg: AY/fxX4B3gYFjhcfMLqdF5seNDyT8I03KyToSh/lsdydsjrNdBAfaNUf0U1ram153U0
	tZhgQuOLQWQdlPVliJWluN3BNiv8h+g/46k5Fznw2t56bxRJGkoQ5M/oFTEn8XWBTm3vqsch8II
	5eiFPsMO20ea8R9zbcyMQ602GoHPlktji6wdPb5ok4JxMdGINvkWye5XSCD3EXjo456x8F0ASXt
	qGQlQnBsE6Y+6qJVRPaLixwAmc2Xujtw6Oi1UR/3qlLzMryPgl/U33cgw+qoKbwKekq6tPUqP9F
	FgFHylRc7797b4KMo/vmxDZpQ7C46VHMdV1KY/9ImcRArh+CsRoOh2JX6rEeawxjVn1Dp2iUQ/h
	dIYFcdYm4wPBQOs4nUazUmCU6eO/zi5MtEqCyWy9eO6Y+pDST9uAX4EG13EVkTZtzU9TH5a5aEa
	yE9J9rAg==
X-Google-Smtp-Source: AGHT+IEdATA9P7k2n5CWUx8yOsmhm/F/9su5pYtPk4wylobkfRFEAHqb0+3yD3t4l4QDFzSZPoWtgw==
X-Received: by 2002:a17:903:1c8:b0:2a1:3769:1cf8 with SMTP id d9443c01a7336-2a2f2734d5emr447661885ad.33.1767429202381;
        Sat, 03 Jan 2026 00:33:22 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm391700365ad.21.2026.01.03.00.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 00:33:21 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Yongbo Zhang <giraffesnn123@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	linux-usb@vger.kernel.org (open list:USB TYPEC CLASS)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix USB host phy-supply on Rock 5b-5bp-5t SbC
Date: Sat,  3 Jan 2026 14:01:18 +0530
Message-ID: <20260103083232.9510-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260103083232.9510-1-linux.amoon@gmail.com>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The USB host USB2 and USB3 on the Rock 5B, 5BP, and 5T is powered by the
USB_HOST_PWREN_H gpio pin which is used to enable vcc5v0_host host
regulator which ensures proper power sequencing and management for onboard
Double-USB-HOST.

Update the u2phy2_host node to reference the correct phy-supply.

Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index 0cd8ac7bf538..886d788572fc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -981,8 +981,7 @@ &u2phy2 {
 };
 
 &u2phy2_host {
-	/* connected to USB hub, which is powered by vcc5v0_sys */
-	phy-supply = <&vcc5v0_sys>;
+	phy-supply = <&vcc5v0_host>;
 	status = "okay";
 };
 
-- 
2.50.1


