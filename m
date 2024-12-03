Return-Path: <devicetree+bounces-126582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C4E9E1C5A
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:41:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4557D167077
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157831EBA09;
	Tue,  3 Dec 2024 12:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zf9mUE6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E871E8832
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733229631; cv=none; b=MMp3ga/dvYamzLaF0UqQat+SxZzG6CCF0frq9Lm6SB4O+k5L5+/A7kLfNZ+eSliGPge88p3C8BpMwEg6KkDQlW9gDoev74oXILNLVJ3vwM3kjvYj9REPbtJeqvUxhxPRmud9rWLTDme6txIzxXY1tRAybgSPoAFVILbJHfRAhLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733229631; c=relaxed/simple;
	bh=MeivqaG+kYdxtEaOxl3RjvFIax6Vzjmq5wL7Dtno7yc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bbjvd7PjdqCR2uWlRipg1Xd5b55GpJt2qm4ruLvRK7PeFoq44I1Ta2j+Rk390TH0CWnJKRxkjHQHr2A2HsHnYa8G68F0nUZSiQNyn8+Tq0V4gBOdQTqXs5bwIQ0wIV/eu76iFa7Az9t8IBdRHx6RiUBW0OaIb9NuCXMC7D2lUDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zf9mUE6q; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a9e8522445dso775862966b.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733229628; x=1733834428; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A0SZ3/Zuy8g3IadhgXaPB8LqQDO37Mo3P8H3ntaK+Bw=;
        b=Zf9mUE6qpPYuvcUjP1R8BFWlRgL+D95iIwQv2hjcHb4X9B2iJ1GULYi+619BqpQ/q5
         A0rIe1r9Hhzll7OxKFjubaakp21BcLgr/46Xdmid1YxGo54R2AJo4Z2csqJyoSKRndKI
         fZzgRmtwytM/8//OcjgnyfdH/oHHPmYQY4LWXmAVHjwcWY8dABpKalNy32354fBv2/Wd
         5kKKkZkM055bXGap3csfFsQNDztMDp4lcUZdWnimcuEWuMr+cdnMg2UhfCkLGiEtUm0n
         NLI2jtqiIrFZn82EGyC3BcW7spCJ38NJqWnlMVrYn9wCWJ2H4Zv56/N/Cd3BcWhjTdu1
         ZvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733229628; x=1733834428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A0SZ3/Zuy8g3IadhgXaPB8LqQDO37Mo3P8H3ntaK+Bw=;
        b=K+KADNIkOZ2rbXEl6MUIyBU8dsW3s96VhW0l3/zvhfYRekbLyuq2VrvnXV5A/07/6G
         coWZX20OZfKzeX6lJj79hjF9k/ShwUw7yQbHmalVE3LC/zhkiWBfXtaqOtBXY27l1jG5
         LVRI8wqru0LGiRdwGPXc9++20vAUZhFPNIUfPACUbyIzhx9BoFwFFxev95Pbg4AUr6Bd
         nZZ7PGdK2jU2WkAkKVT34VRJcdaF5J+MSTtAfqqAkiYhwAXQ5I2I6OK/4I8hFeTKHbqE
         +DVpRsOyBBcq2kglkatPI2yzm8YfDhf89dU2liw50e5RugqylG1tqY26/I5Q9AgRqI7J
         2Uzw==
X-Forwarded-Encrypted: i=1; AJvYcCUqs0l6qLDdQGkmwsmfflCJVBqwg/1GZU5HK5vT7BWNzeccMffZEt8HQ7O9vMEX4A5sl2/AIqYykyWT@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb34dROxphjiI8gIWXfIdVoZ2+QYLBCZrljXdsDgWcXyqk8b3F
	WicaM3jVshqQQcAYMJCFVR+uo6eY5/K98PptUcqcOqsN7397lWOgeVbGdix+0OE=
X-Gm-Gg: ASbGnculwour43XTXvbHBTtQ/WelFHztBq1Wredl7WWHu8O1FyptUF7CVJKpZJWvSkZ
	NH/KvIlJ8vnZ88HossYTMQG+iGqKNi3uHKO9y9yvoPMjSJ3H2hAtD/S4TKYv6eFYgUUFzqf+tjt
	JeLVKQJMQiarTcb/M1kyi0jt6ZXTq4A4zAzYK2BEWPZdJ9CLnEY9G8UHc/kVbbe4NKytU7JPcXL
	vCGgkLTRBE+CM2zDZ7aCgdbVnKAkbp5xdWwEGy4beIFc87m9ZU6a6vT7vAkVNgcVfbrPwQrWRTY
	CDgFR6rmSup8+WJz5EVuhAfVQgpIOTymvg==
X-Google-Smtp-Source: AGHT+IEtOgF5+Pd8GQXG5yAk2/ZT7iTApOoCMzUviVqMUPCGmvDJSENPWZg/xy3RM4OpVosidZ2alA==
X-Received: by 2002:a17:906:31c7:b0:aa5:3c28:e0ae with SMTP id a640c23a62f3a-aa5f7d1b599mr200040266b.15.1733229628143;
        Tue, 03 Dec 2024 04:40:28 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6a4csm616809466b.106.2024.12.03.04.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:40:27 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:40:28 +0000
Subject: [PATCH v2 5/5] arm64: dts: exynos: gs101-oriole: add pd-disable
 and typec-power-opmode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-dts-v2-5-1412783a6b01@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

When the serial console is enabled, we need to disable power delivery
since serial uses the SBU1/2 pins and appears to confuse the TCPCI,
resulting in endless interrupts.

For now, change the DT such that the serial console continues working.

Note1: We can not have both typec-power-opmode and
new-source-frs-typec-current active at the same time, as otherwise DT
binding checks complain.

Note2: When using a downstream DT, the Pixel boot-loader will modify
the DT accordingly before boot, but for this upstream DT it doesn't
know where to find the TCPCI node. The intention is for this commit to
be reverted once an updated Pixel boot-loader becomes available.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index a5cbf1e10c7b..e58881c61d53 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -107,7 +107,6 @@ connector {
 			self-powered;
 			try-power-role = "sink";
 			op-sink-microwatt = <2600000>;
-			new-source-frs-typec-current = <FRS_5V_1P5A>;
 			slow-charger-loop;
 			/*
 			 * max77759 operating in reverse boost mode (0xA) can
@@ -146,6 +145,12 @@ VDO_DFP(DFP_VDO_VER1_1,
 						0, 0, 0x18d1)
 					VDO_CERT(0x0)
 					VDO_PRODUCT(0x4ee1, 0x0)>;
+			/*
+			 * Until bootloader is updated to set those two when
+			 * console is enabled, we disable PD here.
+			 */
+			pd-disable;
+			typec-power-opmode = "default";
 
 			ports {
 				#address-cells = <1>;

-- 
2.47.0.338.g60cca15819-goog


