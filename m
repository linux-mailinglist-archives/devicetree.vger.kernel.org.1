Return-Path: <devicetree+bounces-252499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C93DACFFD4E
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 057AF3042759
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 19:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC322737F4;
	Wed,  7 Jan 2026 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="EUlpZrTH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76631F3FEC
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 19:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767815153; cv=none; b=Qn4PFwRJz10WTX4yMO8/etgPGbmnvRA7/2Z0iWDieBcdsomP4Xezk+9okJJCV8tRLApQIZrNC2O3mld3Ue7hDDsRCwMhsHbaWN46mbEDjLZP3PCJqwulNQOEQFRQktDZ6zZxQGCBWh9oi+Atu/LSDEf1moKujz6w0fDK22jesoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767815153; c=relaxed/simple;
	bh=r/BIUPGN491wq1F9jJqPvZ1mtqt+apCeT/v1SoEWJy0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gsgwRtjBSsLd6hSBYuBtLhy0jG+VQdYtw4XWpSQTvl4EJP+wnzspAj3KMilMVjeTBqGqdOzGvLBTFM20m9tO81W848i+EjVAu7lme/hwtrgjd7uhIu6t+mY9MV9mb8xZUO4Ij1rnaIGDqYnURB4b05llTODK2aq0lK7EqTu5Xjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=EUlpZrTH; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7eff205947so332650766b.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1767815147; x=1768419947; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CE3ABoMb+Vlizhz6kCziTM3FHPDucALbbiym7WlJ74E=;
        b=EUlpZrTH8cvMvUNXT5zJHtT4mC3dIeXYAgPW1t1V8EotWfeQwCCt4EYCRK2+sbZT8a
         nUe0VUStziFyPMcIehybxn3osvicwf0zdrxITfn/qev2/4rcfi5Hkl8mBas3u0wsGaXJ
         j7H0Rrk3y7lHmxe8BwOSdA/r5wA63h7sdZxgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767815147; x=1768419947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CE3ABoMb+Vlizhz6kCziTM3FHPDucALbbiym7WlJ74E=;
        b=EboFSdDgWoJuuSPx9z382n/0N+1LnkbTfKwnp4Y/OooWM8bYDZ/st4bfzLy7u1aRhE
         52r3Fqn04OeuItGb9iIP9ZqpYJd/8sCnRim0RobfaN8Kgt6aFY471e2Q4LKU6vDPKgTD
         /B48ZWdaDn8ms3/ZPwkuoS8JXlVylQV9pEWztr/Jz/3Djk130cwBaD3TIOJJRnHGjq9s
         J361BsobvarfFWVpigW+8yno09eUgWJU6TajX2//g62jpj5SZ/JTZ+jlocNij1g7tRI+
         gALFS7Nf/QZakFZ7t4ptJnYN2cnIN8a3259dD+TEYwQCtpvwdotMGqDRASYh8Re+IuJB
         GqJw==
X-Forwarded-Encrypted: i=1; AJvYcCUg0TT+qfrRdz/aDcqbVfmreoqGtdMXsmkpxDqtZ+Pi8uO7R/qWwgWihiwhb3eNUu4JnDvmMHcM853n@vger.kernel.org
X-Gm-Message-State: AOJu0YwhtXJ0PsJ8oE9VGffCYgYgzLG7YQ0ca0o/K+pgBFh0hE/OdOqn
	V78WmQNNKa2380d6t8KSSLcTzODr2Fb0IyuBsDruHXUL0rZi/+eKuFeOYlMJcVTCYu5nPn3yd7S
	UaBrR
X-Gm-Gg: AY/fxX4A+anxYRpZ2Ew7R+vTx6+O6LJtxYp6dB02q4Woy4jwo8KpRuttprVBGcTXORW
	E3nULeItey0ITQTf6jl9Zzjw6cXjSnOjvAyZkWQZzZ3KM1F9/XcplUmMiL4lgqHhfpt6OWHuedC
	N94VlLt9zjCdfY35rm4X+uePnq07b3LdoLRxy8GRjmYxShpbmYslnt5siZXf1nOHbJ1rQBI6F6X
	cA4NUBd5rSk+dGMIL580NZna5kdneaBEgxNoYgLKRn/YO/9tJJTqkXiY5dCTH5FVSzlqaCasMZs
	wyTg5iKoSaRcw16+dxVFEH75PNaIYpoVpEJClspJ7xhPjU/4tNor7udccRYGR609vDBMmd7Pvpx
	+OhIuJ2fce2VAsLyP36YqywFs8vNXL89emwwuRPRlwLzTdaMILNqlxPJMwb5TbRmvk/Ubf/im3S
	ucnIG6F9j+NjSklLf3GwGsyGm0FPe0vkfCtdc8Co6GdNgvFnFreaaE6vnIX4m083+1FKir4vYY6
	vGfJj5jjzxWHTO+fiD07JsFCjzm1l2KTGo=
X-Google-Smtp-Source: AGHT+IFQ1zeeMjHCI/Trkv1q4PKObKTS13+fRskV7eQs/QQ1YzbP9PGEh8tMjNP2uYGa5sBa/tjusQ==
X-Received: by 2002:a17:907:d0a:b0:b76:d734:d459 with SMTP id a640c23a62f3a-b844506436fmr387336366b.57.1767815147362;
        Wed, 07 Jan 2026 11:45:47 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.41.122])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a233fb3sm591201066b.12.2026.01.07.11.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 11:45:46 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/2] arm64: dts: st: add TAMP-NVRAM support for STM32MP25
Date: Wed,  7 Jan 2026 20:45:33 +0100
Message-ID: <20260107194541.1843999-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260107194541.1843999-1-dario.binacchi@amarulasolutions.com>
References: <20260107194541.1843999-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the TAMP node along with its NVRAM child node and define the
fixed-layout for fwu_info and boot_mode registers.

The TAMP (Tamper and backup registers) block is a system controller that
provides access to backup registers as NVMEM storage that persists across
reboots.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index a8e6e0f77b83..c7839e732f31 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -2084,6 +2084,32 @@ rtc: rtc@46000000 {
 			status = "disabled";
 		};
 
+		tamp: tamp@46010000 {
+			compatible = "st,stm32-tamp", "syscon", "simple-mfd";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x46010000 0x400>;
+			ranges;
+
+			nvram: nvram@46010100 {
+				compatible = "st,stm32mp25-tamp-nvram";
+				reg = <0x46010100 0x200>;
+				nvmem-layout {
+					compatible = "fixed-layout";
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					fwu_info: tamp-bkp@c0 {
+						reg = <0xc0 0x4>;
+					};
+
+					boot_mode: tamp-bkp@180 {
+						reg = <0x180 0x4>;
+					};
+				};
+			};
+		};
+
 		pinctrl_z: pinctrl@46200000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.43.0

base-commit: f0b9d8eb98dfee8d00419aa07543bdc2c1a44fb1
branch: stm32-tamp-nvram

