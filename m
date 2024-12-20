Return-Path: <devicetree+bounces-133124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E27219F94BF
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EF6E16B2DD
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5011A83ED;
	Fri, 20 Dec 2024 14:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZpJ3LNu+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA5C208AD
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705960; cv=none; b=HA3tdOoC6EveS/j24QN8DsnJzPwHe3um0B+4EbTOUDxKDPIPfVMrl6LpLAke0qcXECwGcKKM8Ghj5CFEi1OiKOLANOkgd2dVbFKk76lZlKREWqVY8zu85FqleHW22KnUXEQoFyC15WolXvzbepwOyI/iq/i2G9IxyyJhgw5mpOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705960; c=relaxed/simple;
	bh=qdRRh88PR8yD7/wyF9wDElmu1pjR7jVhv88q1onGcQ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fxo7tjsBLrbkQm0Yr2W0IzjaVOAWzmPO1qc6xTor66MDw92L9p/s/AHWHWfKp+0tzOcJKXEEWhI+Wa5OOxiQB/NEE6ecUQiir9ey8Mq7bCc73FKy+M9v62SXAHnFl7LbONbwBdxV0+vl6J2381RcjkuhRTwSD/jKr5mDyhZHc14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZpJ3LNu+; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4361a50e337so13930605e9.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734705957; x=1735310757; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dxlvhrB2wJ/WWWheikQ5QToLAAhXYBUjgjkO3/zz9l0=;
        b=ZpJ3LNu+qwXh2i2szrYc1eptCSl4UYmozyrW8XmW5E4ujuEVnAahPAqW6K8lDW7lb9
         p28XuiQ8kMH2NNU3ZqtWXjEyWqiBgB1fQFOrk20tLP4iibFvEmQIJgK775y/kR92UnsC
         BIgmkZpQ3rcklf3EVreIIf0AJIrynRsoDFzUeO+47htuLhy08fD0pGY9QZ1xKqROIxau
         PAoCCfZuuezDnfvalx2H/5JEJQQrZEVduQ6T0le3iQvjpfUQJst9Qs9eGIG7NVbEERzW
         UL7+PwkLKytHfVaa6LAbxxjh99bZlJ2X/8+2N+m419SXIcVuZtqBSlIGwpE2eb7gisLz
         oXsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734705957; x=1735310757;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dxlvhrB2wJ/WWWheikQ5QToLAAhXYBUjgjkO3/zz9l0=;
        b=semxiVZLDvQ2h+K1L+msAuPqegTQxYZEQxKLVtBmRasCN50LkC7hxT1lvVe2IauqSd
         vCRpdlniTHUpB4YLwatFSFanGXIyPf+Uon5GYYmWPPmGXveJUj0Po2wm0nC6GH7GSzhl
         VSkMho9+UMn+1KZQlffl5oyYqSYBlK5GLX5k9ZntFysDCQ/svoW76chh3qxKv29d5d0F
         ZRtapHMbHKurtyUI3IPE3CsJWje/qfftA3NAvnD4KLc/5quU2n+QKSNTvdaQ+PZqfLf9
         gyEGO/Y8C3SEsSJGZ66Jy6V0W+vL1ZBjh37V/PAn4a02uJOdIxnmZyVr7HyznBMheWiw
         DTvA==
X-Forwarded-Encrypted: i=1; AJvYcCUHJz8AXqXWOIKe99sG+aY0IOnQQHv+jZ4gP/RaALxQAbDJfj+kba+sqqUfOllqgaO8uylkXbT+YhHj@vger.kernel.org
X-Gm-Message-State: AOJu0YwuFox1CeM0aN/ZkLjtCF1LslES+B2OYnotKQ4a6X1jaqRJUz5t
	Nkwv0rol4TJ24GSYh/KCRxblEe4Y4MuOdlFAZf/CV740nxvHku5Y1SyxDuvuRmc=
X-Gm-Gg: ASbGncsSAsOtQIQo57v4VzNPKvJ3LfZkM8Ks8KK/9kogOmNrAK4cB2YR1nN10ePsj7o
	h/zy7aKT0TtJVoCy9urbSgbb4pidpFqEqf+0RVG7iEVNp8QnN3Uzkxj/UlJ50lC4or5PACoKpP2
	vMBFXu7mAA0TyeouSr7aRN4E1j/DFNt6KVv0nWm1wYRFuyQgvFddo+gQWasix6sp4496elXK9m3
	0zT/Za/UwSOJ6/JvJyHNxRUzaV2zjY30CImXnl41ekiDSV9xIZiY9VnlfQL6bEXAFycGNP8NQCR
	9/LCQgGJjbsKjiMBi4QeQJgB4wHtUFCKYyls
X-Google-Smtp-Source: AGHT+IFba+pNkn8Isx84tR/ymJ6eBzETARPGC5nX22IMj3yT652dRqMPFdZu5N8UjiaoJcOax0vsrA==
X-Received: by 2002:a05:6000:1f88:b0:385:e22e:288f with SMTP id ffacd0b85a97d-38a22200c0bmr2682435f8f.31.1734705957077;
        Fri, 20 Dec 2024 06:45:57 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c84705esm4227874f8f.44.2024.12.20.06.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 06:45:56 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 14:45:44 +0000
Subject: [PATCH v3 1/4] arm64: dts: exynos: gs101: add SRAM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-gs101-acpm-dt-v3-1-642d64daa5d1@linaro.org>
References: <20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org>
In-Reply-To: <20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734705955; l=979;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=qdRRh88PR8yD7/wyF9wDElmu1pjR7jVhv88q1onGcQ8=;
 b=xgCFIoxvhBDc1QD+CRRVZZxpOKdMIoc1Iu8Bt6N5fkkcbFjSxXufey8F4ncY4KX1msxpc2ThJ
 hl2m1ZchsxRAcwd258Rs9f//Ez10uF+otAbE26Mog4rxirg9m0+rgjY
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

SRAM is used by the ACPM protocol to retrieve the ACPM channels
information, which includes the TX/RX rings among other channel
configuration data. Add the SRAM node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 302c5beb224a..1441e9a252c2 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -269,6 +269,14 @@ bldr_log_hist_reserved: bldr-log-hist-reserved@fd900000 {
 		};
 	};
 
+	apm_sram: sram@2039000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x2039000 0x40000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x2039000 0x40000>;
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;

-- 
2.47.1.613.gc27f4b7a9f-goog


