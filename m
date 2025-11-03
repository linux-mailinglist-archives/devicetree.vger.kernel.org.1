Return-Path: <devicetree+bounces-234290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF67FC2AEEB
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 11:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 301691885B90
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 10:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96F12FBE1D;
	Mon,  3 Nov 2025 10:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PVRBuVGr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AC32FBDFD
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 10:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762164652; cv=none; b=gBbvXvS/Gqw+MZGT1sWaK8KPpXBCLU8kuuey1xA6kpJMRyIqqCnc6Tm+fmkGF77rKHEFYcPWZ1wKcoYwXymUP9eFSJPs3Iidpf8VrfWDKRxfLP8tTWcStgulns+9sbo6E81vuIZI4D9xXShmdC9BlQ6vu30mBZhoFwyELjvjALQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762164652; c=relaxed/simple;
	bh=YZ0ojGYt3eCDO/HUdW0nz88xzXZshjZON5FlPoSKhHA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rD7kOuEie9mlQTZgt9eEza/0t1zhsfI5nlohLrBzZzdvZhgoQqjqzxRhbI8PHckntTsdBb68PA/r5KthBbcJ/3M4kjK51laz96qgYYVfPhLoTqHODwYmd2aDXdEx7EzewHipINsXwGJ9bQLLy+soLWG4MJQ1cmgssusubli+AG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PVRBuVGr; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so780421466b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 02:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762164649; x=1762769449; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zV61ssPxcQ80Vn+xuEZISQ1ICnJDQBimD7YTtlxO9tk=;
        b=PVRBuVGrCo6+wB6+92zX4VJMgPZg8Ywd/lAhbQjKEZNzQTuGgykh+Aywe7s2m36Vae
         qUVteaNnnqddaXNLTttHHBgVFuKIg3ub9ZjJ5i1zJt8BZ4FJndCrbg2jifKRQcUdaFk/
         7lB5q4yvd8viX+nx2fhYYBETx5sXuK0eN3We/HTRkdbkHItybm5Ze3cZmH4ECD6qlYDf
         mWQ3XSNOgruuAeppE1NjIvmaRjsFgGiQry/vamuDy1im5KzSkOR4ndUyh/W1o+5rYv7v
         BM1SBVNVTjOysmnXbT7AQPzApJiT0y3mIoRc//C1P/BRuz/EobplVbBHBWtwlrJtGpaD
         QXoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762164649; x=1762769449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zV61ssPxcQ80Vn+xuEZISQ1ICnJDQBimD7YTtlxO9tk=;
        b=tFG9szXidcQH9KympWtzY08Muj9dLg8WPz51YMIQ/Cd1JtdNgihJy0jNVE5cK3sTbi
         Tkx2JP5arEigodI7qKbnGTCs4EDTO07ANAfSAiFpdEULgDAmoKgqPiIxane7XSCZ+Kyq
         v+cf0m8Mo58+tKm5jnmXvJh081mgK+EdY1KTqB09VXsBMjWrvXKdHBM75bW2ewpp0ARv
         4Raxop67BswVeodAsh3S59a6zhBOnakZfo0DXdBO50ZTNO391thETbot9oa6fZD17eSG
         fOROhZS5Sk14YPKp+CQM9nsHtm9dZxRHM9cU641aZE5/rBWB5Wb+cx09RVdQYa5bmgQF
         6vvQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+G6Dz+odbNloNGuXOGYEaDD+H4fpoqFOGVpHmqYmJt+/EhHWqButs21LYFAflAE/8IKe1tLB1M2gj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz42wM4GNmn6PHxvKpjvl7XOlyDS0JbeWr+3COSq8rEO7vRJ+q/
	cseC+8VXrwAEJPlKaAbZxWO8PNkcHGfgWJ/cRHwG6ectPb5v8dwS4KVz
X-Gm-Gg: ASbGncskod1KMf5YI24sKVwwMXW6TZ+D5uvipuyzBHu9vuzDCsfQUPgiHPcyp7HNYbV
	cJVNdW8AFhVvxFVJ835lLXGGEWyfdaQYzTLIP0eR68gCt1GTVdmmfEWaYgsexqcsvk77JTyyFYv
	bV68YuS54eR45t8P5dYWX+UodqWGYYcU/0zkZPJBW1cXp0ZknVNoVnvZbAszDWanjFlCRl2FtZ8
	ldj0V/uYWgJT46aM32DZ3443OhqWUbsg4vs2ukUH+6J7Qy6R9qP3DSRZ5+tC3JXWhavel2J4h7N
	+Pt4JMq0LuH1qIJB0VECnI0ppSiRKi+4sh3UMpgE86UjpTQi2XzJKQeK+Z3ebFuHJouTcoq1vbZ
	U3cW9+yRPFiNYKYcSb3CwQW3GKaZVCW9otTI88CQbAmGB5jlfaUO6asWFwJgB089FxQR6td7ZZi
	KUh/ppbwCHmX6fkEMDN0qrh0oY1X0FGvZkjqxKBZZnK7XSuliqVod56w==
X-Google-Smtp-Source: AGHT+IFp+T/Nu357ftkE83jIAMW9+xcbhTQBIaVYYeJtQz1ee/caz6rCsgqFAGPZlpwzilmbvSJQ7g==
X-Received: by 2002:a17:907:2d25:b0:b3e:5f20:88ad with SMTP id a640c23a62f3a-b70701c3f34mr1227300566b.28.1762164649077;
        Mon, 03 Nov 2025 02:10:49 -0800 (PST)
Received: from EPUAKYIW02F7.. (pool185-5-253-81.as6723.net. [185.5.253.81])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b718f8b52fdsm66758666b.18.2025.11.03.02.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 02:10:48 -0800 (PST)
From: Mykola Kvach <xakep.amatop@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@collabora.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: orangepi-5: fix PCIe 3.3V regulator voltage
Date: Mon,  3 Nov 2025 12:08:14 +0200
Message-ID: <9232ae8cc8e7eb4f986734c8820f44b7989b9dae.1762161839.git.xakep.amatop@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251024173830.49211-1-xakep.amatop@gmail.com>
References: <20251024173830.49211-1-xakep.amatop@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The vcc3v3_pcie20 fixed regulator powers the PCIe device-side 3.3V rail
for pcie2x1l2 via vpcie3v3-supply. The DTS mistakenly set its
regulator-min/max-microvolt to 1800000 (1.8 V). Correct both to 3300000
(3.3 V) to match the rail name, the PCIe/M.2 power requirement, and the
actual hardware wiring on Orange Pi 5.

Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
Signed-off-by: Mykola Kvach <xakep.amatop@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
---
Changes in v2:
- add Fixes tag and Cc stable list as requested during review.
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index ad6d04793b0a..83b9b6645a1e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -14,8 +14,8 @@ vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
 		gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
 		regulator-name = "vcc3v3_pcie20";
 		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <50000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
--
2.43.0


