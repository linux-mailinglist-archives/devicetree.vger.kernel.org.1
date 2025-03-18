Return-Path: <devicetree+bounces-158776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DF3A6805A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 00:02:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B90DB189F30F
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 23:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586222144A2;
	Tue, 18 Mar 2025 23:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UqMxC/Ws"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DAB214216
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 23:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742338862; cv=none; b=jGzBJrKZLHHoYxoJdG7eKh1KVCY7ePnu+KH3vLMgaBNze8H9JTMubXLLfQX0w3cPBfEa9EHQjnWwrFXg9bHxpMylz/oMQbRI8mHtRzueVhTi3aG6U+fUKEW76lUNMICqZpZ/t7E+CpBrU02oAciPUUgdaMOvt89XZ0r0EwcKZ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742338862; c=relaxed/simple;
	bh=Dlk5H4z+VhU5Q7nLlJ6DokEx98BkmTjtJY03Wn8wrdM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lcs8uK8WxK8rk5JvfBEYsm4aubV3F7RezVa+TXe3zNxFZDQXUJfjLTsLUmCm4s1SDWnJEHxNifamYKzsNl5CQw6UdDnSI7O1mbCEhPQUUykwv2y9HElXzIHk0uLA+5mHE4CU2of3NHpThJ1D+X5bWX39SmnXIiaKl++nW4pWuM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UqMxC/Ws; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2254e0b4b79so17800285ad.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 16:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1742338860; x=1742943660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fmCr9y/zny2ubL+q+EvXUgJdImEUCfchERMe1C0cWbE=;
        b=UqMxC/Ws/KRLfEqF7NZkXoWc9+4bWSLVKult+CEP3cZQKHDNcxgcGaMLZyAsprJv/w
         O/Vwirgo8gX8ZZRjDWEjEhmgB95VCSMAySKO3BG8vZvJtBDQp5mL8JwNbx3jJOmZlO+a
         FvOfoEprIdD7T7++LJVzBXQ7yh8iMWlIfzt3cIczoUXx38zovzMIHouaWMtvvmK3d4aJ
         XuxJHLP8OgcoF9gCq4giyW4Gi7l30uK2d6RcHxqLAbj1HcyA10BCGqA/+vJuqcPRSuLy
         J95mQP3CtDh1H7lk+tZrGuVpF3Pw3EAs1/lvGa3w2BOy51HzRzYfBayEUVnpNKtth5Pu
         VejQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742338860; x=1742943660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fmCr9y/zny2ubL+q+EvXUgJdImEUCfchERMe1C0cWbE=;
        b=TRmxKT4RZgvSQ2YOfLGxZrC8M+x4Zfek8i8HlW/AaktphgCplqE6V/y7v97e5s/H05
         CnLI9dgIpiw2QpwOwhUlwgOJZEYcoeG1Lydl9NYah5hoWQDBAl3R0ZEUkxJV52mDka1B
         YBd0e6JueImOmBpAQf40KpE3Ga/56q/p6vOJ97zFvj4PaRcQtcYx/kGiEnK64IzHOxAW
         X59HYxwQBTY3GW02KiC6xuA5LQpMxPXCG8zns4tnhYg9X7oTZFdXvNk4m6JEQCpHHL7m
         vimiM2q/GJTJOAhDdiDy5rWUCngjLnGA8F2qcTiCqaBFjE8wG1nIvSv132zHFcVCOBiI
         uKqg==
X-Forwarded-Encrypted: i=1; AJvYcCXHZ3hv8OOVLUD4V/u8zS25zBT+eRWBRUiuT0T7ktXgOFOqGFZwP4KIXAmzJPhEBT+/K2usq04qykvq@vger.kernel.org
X-Gm-Message-State: AOJu0YwWxEzInj8nAE3LgsOd7n5tDx9mO/dRMf/8WYM+s0LcvwkhR17O
	sXD+vmdB2ZKYNhDhSZM+CFh3egLcKnknAGzL0DxX09Ogftu/BXHPWXM/bR0g+uA=
X-Gm-Gg: ASbGnctJdvz7+8DFx8m2BP2zPNsx1+pi3phbbRRQBcR449pw6dgOW8LwTYjvFoKdEav
	3HGVyclECFG/vh4kM5c+P7Qc4Rv8JNu+YYUA/fANYBFa16B+m9AYB6qNH2vgjFlaaHpIEij67GC
	y3pUo3z7hrK5DP/WzA0pytBJoxipLWxyui2omeRYq8+47g9bcXVFgX/+FgoYMtQtdkcBfoIFakl
	/AR2d+PZFfk3y4XlEH793YpTB3/8bxM+vuoIerTgLLLJbEtG2LJydoHlVlkAvYgFIQuUjKzv8lT
	1k/7jwu6YhmWqpMpxZj9cfQbENspfyR8VZIw1qZ18V5PY33N3J8eQT+fIWVGwNVtx1eZ3o7XdmP
	DItoMI/dhQHJUmAPhGQ==
X-Google-Smtp-Source: AGHT+IHoN+lflWvy8IsxGNjvVcOT3P03WGhfooUosnPSGHOlgyWeNcf/Uk7lY1kmD1/bWRv0OH1Aeg==
X-Received: by 2002:a17:902:f647:b0:224:f12:3734 with SMTP id d9443c01a7336-22649a43b2amr6644945ad.30.1742338860084;
        Tue, 18 Mar 2025 16:01:00 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6ba6f14sm100739465ad.111.2025.03.18.16.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 16:00:59 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Kevin Hilman <khilman@baylibre.com>,
	Russell King <linux@armlinux.org.uk>,
	Rob Herring <robh@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Roger Quadros <rogerq@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Bajjuri Praneeth <praneeth@ti.com>,
	Raghavendra Vignesh <vigneshr@ti.com>,
	Bin Liu <b-liu@ti.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 3/4] ARM: dts: am335x: Set wakeup-source for UART0
Date: Tue, 18 Mar 2025 16:00:41 -0700
Message-Id: <20250318230042.3138542-4-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250318230042.3138542-1-sbellary@baylibre.com>
References: <20250318230042.3138542-1-sbellary@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On am335x evm[1], UART0(UART1-HW) has a wakeup capability.
Set wakeup-source, which will be used in the omap serial driver to enable
the device wakeup capability.

[1] https://www.ti.com/tool/TMDXEVM3358
[2] AM335x TRM - https://www.ti.com/lit/ug/spruh73q/spruh73q.pdf

Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
---
 arch/arm/boot/dts/ti/omap/am335x-evm.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-evm.dts b/arch/arm/boot/dts/ti/omap/am335x-evm.dts
index 61bf8bcd4c4e..20222f82f21b 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-evm.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-evm.dts
@@ -388,7 +388,7 @@ AM33XX_PADCONF(AM335X_PIN_UART0_RTSN, PIN_INPUT_PULLDOWN, MUX_MODE2) /* uart0_rt
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pins>;
-
+	wakeup-source;
 	status = "okay";
 };
 
-- 
2.34.1


