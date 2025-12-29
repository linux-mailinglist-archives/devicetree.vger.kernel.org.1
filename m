Return-Path: <devicetree+bounces-250120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9BFCE658E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94FB0300B687
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C040286891;
	Mon, 29 Dec 2025 10:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PM6RWlZh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEB8286425
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003149; cv=none; b=WRbaBEK0Aic3BKYCqXC/qYpyQDTtsHG3JhXw343JIj6vuoMRc9esMmXINfPRkdLw/ZbEiSBrdz8hHWGDp8RKeuNzK2sK4cUWGbthFnWT/srDpmNhMwNgfkT59C7LMivnot7+kc2H6ZSmDK9jss8QCmk5Ke46ax6sg/cFLB2Zzb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003149; c=relaxed/simple;
	bh=kx/5/gOv+LNdWrQToOMBSk2+QPj07MLFLi9t/6wsj9I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=smsXRCAyxYIR3kwfN4X54iH/ji/Ub5ryIUU36hLbN/8RaCE+v1NmC12xXutzhiv1mueD27VQtGWWTtb4th0GxO392Jxd4RCeRrgkNb7LkR91dxC+fWB5GHUOxJkVe5qNcZ/v2k0b8Rol36YWX2ibToEstZ4wlv8y1yUY8yhA9do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PM6RWlZh; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-477aa218f20so52890925e9.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003146; x=1767607946; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hmvq8IpMPngxZJ89oRl/9976MSq6MvT7IIFrbZGP6LM=;
        b=PM6RWlZhURa6CUNEkW/ThGoGtt52JmiCJFQBBzkqz/mrKxnZmvyUyw/WKV7JhDI/6E
         BHDF/hvxtXyNn+2h286aO1T7HXANgD8vjINs7Jgt2PwLVBe6ErVkFfbPM18AfyZYasDh
         068GVv9TjiOWKI3zh8AUjBw3apomJ0ztzZOYKtreEBULaJB1k0HgMPh8niMm0Nz4ibEi
         t4ZES7YPsJSsmxleEtXYgAa3LPJLoayV919fiz93940n7LydmLGs2A04/os5l2cgNEOF
         ArUvlcBEMVoQ5so1tBAx7hd7oAPZRadWHLG5XkQasaJlqkhzHlWnAV2d+vPT87baCWXs
         ImQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003146; x=1767607946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hmvq8IpMPngxZJ89oRl/9976MSq6MvT7IIFrbZGP6LM=;
        b=K62q5fy04syAldoka9qPCgjKNMCp04GDw6lYvYqm4xgY6OHXkYYXwFvfqv/dfnUT8B
         mfoWEfGgs8S0ZRlOaxQbhVG8yo5T1lndK9GjvibYmdJ7rYSHsWJNThBFVz2hh03uj/Pb
         5GbdtJ3ZnKS12niiuHStD0PHojvPc9/CcJuPrbsBF85Aj504yzfeHep1uUAvn/tnUfoP
         VTsR22JbQX2evYE8RVGkUXxj5WalNS2/57o9i/IJv3rXVRiavk2Nig3JBXLsFDXO3EGB
         OWBOeyeYyBlLvti6rkZemXCC++GH4ZyROjdj4gOksSwNk5MvweQ217UyfQVV9MNlR7sr
         TK5g==
X-Gm-Message-State: AOJu0YwDvIiUZAbk6kd7kcplKdMS9Fwp24mnZCLp5bcptcSSMbhX+WZk
	ec5E1cbLqQAmFK6kI3xZv3GSNKEUiqoHtA3EvfqrvedHZg7drbmfXFUo
X-Gm-Gg: AY/fxX6X3z22cM+Ws98P0bPlNHRiJfayFvIE8l0JduXtj7BQvoLIJm9u+/yI6HWBBJa
	nQZOuPhOaUM/G47ctC+K7LuofzN4qhiFvnjxcNkP9g7CLfBJiZ7ITRRLeKTNeWQuHdJvR2e0TLd
	KmZDyLSr8IvnZSpqKeyXf2C90efAbWhT0mptlsrtGDGUjgWhE8/nGubfvjfLf8LtLMvs/LaliZy
	bj+HUNOrmTbB2t/e3r0P1No0vdN6uY2Z28wjwMxxJz1Qcp/m8nh4Lbpa+RiSL1UKaBTDcO24LOs
	He1Kpgs8AVaqesCuS3JPAE/FUk1ShUNnBlL9tw0rwTQ35evu9PhAPl9PX3D3qkYPu9oRuxEF1aW
	+xg82Uz6AQnuP+u7PTY6t6NLblax4FULMv4fVwUKHmbAOvYKO+/3p70b0oOq6kWJbzjFUQkM7uV
	ckLaaF8fk7v6KRT9zdzuk1bRJs9OuSmMh5RuG6dHdbeZJyM16rndaMaq3efBd8
X-Google-Smtp-Source: AGHT+IFAiAe+PhS2idEv0Ey0iDrFQE5elTI+8IG4cgjiYqs9uTdQ4Loam7NpxEwNgCGYGm4L7lRjHQ==
X-Received: by 2002:a05:600c:1d1d:b0:477:9dc1:b706 with SMTP id 5b1f17b1804b1-47d19576d2cmr308387215e9.19.1767003145527;
        Mon, 29 Dec 2025 02:12:25 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:25 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:11:59 +0400
Subject: [PATCH 2/7] arm64: dts: rockchip: Configure MCLK for analog sound
 on NanoPi M5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-rk3576-sound-v1-2-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1919; i=alchark@gmail.com;
 h=from:subject:message-id; bh=kx/5/gOv+LNdWrQToOMBSk2+QPj07MLFLi9t/6wsj9I=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTCKJ9zceEbqxZ/308R56qbLu/Ra14Txnm7u0bLLq
 2y6xZrVMZGFQYyLwVJMkWXutyW2U434Zu3y8PgKM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GuoY6xgxcHEKwFSfUWT4wy8fvvBDn9NR65JzTw3m7Ar2a3y/fg+HZYS43d3Za85M+8/wT+nqtWu
 pwToNs8I/tjzh+vay0GnLrlszBc92pK9K+TBxCisA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

NanoPi M5 derives its analog sound signal from SAI2 in M0 pin mode, so the
MCLK pin should be configured accordingly for the sound codec to get its
I2S signal from the SoC. Request the required pin config.

The clock itself should also be CLK_SAI2_MCLKOUT_TO_IO for the sound to
work (otherwise there is only silence out of the audio out jack).

Fixes: 96cbdfdd3ac2 ("arm64: dts: rockchip: Add FriendlyElec NanoPi M5 support")
Cc: <stable@vger.kernel.org>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index 37184913f918..bb2cc2814b83 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -201,6 +201,7 @@ sound {
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_det_l>;
 
+		simple-audio-card,bitclock-master = <&masterdai>;
 		simple-audio-card,format = "i2s";
 		simple-audio-card,hp-det-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_LOW>;
 		simple-audio-card,mclk-fs = <256>;
@@ -218,8 +219,9 @@ simple-audio-card,codec {
 			sound-dai = <&rt5616>;
 		};
 
-		simple-audio-card,cpu {
+		masterdai: simple-audio-card,cpu {
 			sound-dai = <&sai2>;
+			system-clock-frequency = <12288000>;
 		};
 	};
 };
@@ -727,10 +729,12 @@ &i2c5 {
 	rt5616: audio-codec@1b {
 		compatible = "realtek,rt5616";
 		reg = <0x1b>;
-		assigned-clocks = <&cru CLK_SAI2_MCLKOUT>;
+		assigned-clocks = <&cru CLK_SAI2_MCLKOUT_TO_IO>;
 		assigned-clock-rates = <12288000>;
-		clocks = <&cru CLK_SAI2_MCLKOUT>;
+		clocks = <&cru CLK_SAI2_MCLKOUT_TO_IO>;
 		clock-names = "mclk";
+		pinctrl-0 = <&sai2m0_mclk>;
+		pinctrl-names = "default";
 		#sound-dai-cells = <0>;
 	};
 };

-- 
2.51.2


