Return-Path: <devicetree+bounces-250121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6056BCE65A6
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0A45301D0F7
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C6D4285C8E;
	Mon, 29 Dec 2025 10:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XxB6jUjn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5AA212F98
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003151; cv=none; b=Xl9pbP1tG16ccQ2pSdA18HsUPnWifwVKgteuye/up63p4wvmdLAcZJxZPZe7y6MO/EgG0CiPOIlDZwe1PXZ4x+uOPBD2PRl+rLHL/9NlpGKJDTGPKau39SywjkeKIVP00EBQpCzzWOhouNSVFVN3hScwsog6lr10lP2/GEq27ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003151; c=relaxed/simple;
	bh=IZ3AVgWYvTdySO+Vv8LVtcMCFTcRCnO6smmAHUEAJNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LOTUqJaU0KadaRKEkAHbpv3+hNm5UZgbbgRkqVLfrquYvf48tGB4SyuQAsicnzRkj5jAD+OfPasw6v/NXy9PApCbqy3XWeSjlknOqS9DiOX6b4JWfur6bi4PKELCDfPjwUle7PUPQBYd9vtWl+xeMUsH0AJgHvBj1vyvE4PHGmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XxB6jUjn; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso72188035e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003148; x=1767607948; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0KQX1N4PTxY+t5EzWtf5I/WpJGig+aqgTok3R5+tPF0=;
        b=XxB6jUjnhSVJbdl+QFOar0QtO9bdrXJWYoenDGbUeDsgKH+lCCTXsxuYLyoXAhTPW0
         9WV3o5UBc0f9iEdASoCa7je5ATF+gW3OFEIFTx3dI8yFNSf9uMuFKteV3vm2vfU/bsFt
         IfniIqLrfcIGHZj2GlXRwV19Sd3UO+dZiKIlTAfRL/fDDn9fZNjsJtL8NJ24Pr5E5Tej
         77tOK3qN9OZh51WUbjurzMZYgsDjRsaSHM6rJ8T/GwUQmFn8Eec9Xm5t1HIP3W2UwCpl
         epJY5F0OWI4KWydFPX/hp6FtY8qPaw6pI6aa6beqQDGodeiGTvfkRSslLfjlNVJVJ3SU
         D+pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003148; x=1767607948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0KQX1N4PTxY+t5EzWtf5I/WpJGig+aqgTok3R5+tPF0=;
        b=gjpDcDcE05ySjdbeZ6QD+cCnV9fG+aZjsZb1CmDZlHB3v8xBX4/dXfH2OMc+7fxI1I
         /p7lCH/W7rWI7PAjPaXghVKAo6/gnlc0MbE5oFFuuC7X8UXOv9ZeG2ANByvi/ItzjoTt
         emhUhQodb7fwL/ggzq+r1SQl0dKERF0DbNKsDuEx5o0e++Svx+IV5Vd9MZBnusODyl/r
         6bg1BDofeeLnRou1Q2QvWohbvO9Uo3Bvmj11tOeCwwbtht5WDKtKgA+pyOqXPcd96C+Z
         FiLDrPLxOa9vVY6jnZsL9sG9qWhbzWBj+SnSZoN2QZMnwNe8zJUj36Szdo1zO1BTrvt8
         31dA==
X-Gm-Message-State: AOJu0YzIC0OKrM6/w5DxUWWhmNWeQE+VJoESxDGXQHp95GU0GHw6hIuV
	+feu3j1oclLbprOxCQxrRMW+Jmig4bSLmOS/1BdS8jNE5cDLp/UeEatU
X-Gm-Gg: AY/fxX4CWA2Ky91iOG/elRcfCHsdowkMxyzeGb9pl29/T0K9sEaubtHj44qvM9rEDXO
	5xMuVUdFfS0VAxGujDz13OBmuYgvtDwq9UR3Mb3vw42Pwbozhjo6QjZDz6zMJWdAOCqf1oAJA2N
	aJ5NOIZohlEfGxKUbMYjFDCjsdIqIvxNV4YABGNKpGqU8xvkUkmJPhXXI548RZMX3cDLnh71OsF
	1sXBxemCsrluAwwNeAihxIo+n55svmy9FRtaxLGiHuSuYtnxRn5+Wy9SGSYGOcj1J9Bj/4ypcas
	1KMo4OJWfvah0+5j5GeB99FWXvBNr2KFRx0dj1KlHLuEHTaSriIQGXEt0MDwRdBHIG9R19ojnJr
	9W2llmlVXZThSvr3pHVtqhLCsOtShMtF/iIggfKyvBMfG7nZrTILJel8rxQD4jhG9UgVl5uhQqI
	K+CDjSsEhoN5oXJffc8/n3G3qf9gkfk6Lgo6We/prHfhqsfQToxCIeQWICdoHL
X-Google-Smtp-Source: AGHT+IFzPWEKjCgn1cex4DN3YQtL3UA4lmL5/FyneCn+bTC8varFe+BsYL95fgaGZl5mVOxg+IkOsw==
X-Received: by 2002:a05:600c:608d:b0:477:93f7:bbc5 with SMTP id 5b1f17b1804b1-47d195667d6mr331876045e9.10.1767003147844;
        Mon, 29 Dec 2025 02:12:27 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:27 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:00 +0400
Subject: [PATCH 3/7] arm64: dts: rockchip: Use a readable audio card name
 on NanoPi M5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-rk3576-sound-v1-3-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=948; i=alchark@gmail.com;
 h=from:subject:message-id; bh=IZ3AVgWYvTdySO+Vv8LVtcMCFTcRCnO6smmAHUEAJNI=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTBOd/ecL5Df+txkt2mA1YTHSZn9V8zbj/zKKjyiU
 KjyuulYx0QWBjEuBksxRZa535bYTjXim7XLw+MrzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKhjrGPEwMUpAFMdcJvhf43v4T3t7U/FFt/dyhKcbKEddMKhw8vnN4eTyat/FbcSexgZzmpMyNf
 Vs/q+YafsOsc4xdSbG4+d9e1PL512dq7V9WhfDgA=
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

'simple-audio-card,name' ends up in user visible places such as ALSA mixer
names, so use a more human-readable name instead of realtek,rt5616-codec

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index bb2cc2814b83..f350e96de1f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -205,7 +205,7 @@ sound {
 		simple-audio-card,format = "i2s";
 		simple-audio-card,hp-det-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_LOW>;
 		simple-audio-card,mclk-fs = <256>;
-		simple-audio-card,name = "realtek,rt5616-codec";
+		simple-audio-card,name = "Onboard Analog RT5616";
 
 		simple-audio-card,routing =
 			"Headphones", "HPOL",

-- 
2.51.2


