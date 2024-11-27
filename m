Return-Path: <devicetree+bounces-124967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D419DA66C
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:02:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A875F161E7D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05261EF093;
	Wed, 27 Nov 2024 11:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XvkDYawG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AC11EC011
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705306; cv=none; b=W67mZhVZf+2tBg+ZYg5niXuVRU9RHQGYAO3boHr7XxVi+vyIGns9dYEWvN51n/K+DHw0guTDDUOF7jaknSaPWP72q7RgR/7B4uZ7MpFt7o4iWm9KKX+3i0IE41VShqmve9vlya7Xbfc6sXAyzqJa6+4dXVx17cHNfgN/hKZrlC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705306; c=relaxed/simple;
	bh=wuW9dlmQHK3i/Jcfb0eJR/IK57A7oEJMFzUPWXw07Qg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MI5PMscf+OE9FoxGr+LoBlDXGO3uINwpFPfb+g6gslrHw/EUw2JlU0oewaRDbk/W4hWcTlWuLXtnJP8g973+HF/4D9azccWGHca1ZJMF3e51LSD3AGzaTPA4DsTrLyA/jHBi9edqJy8HUiRm2XV3WWK2DcQivMPyfgIA2J4P1rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XvkDYawG; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5cfbeed072dso8576893a12.3
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705302; x=1733310102; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sFCCGNoly/ihHw+f0V0Z4F6JNgdV9f0RgxXs1v/pmwo=;
        b=XvkDYawGO4rLrHjuOYqc9USC/olOKHS/kuwzL+WCClMn0MJZNMsdLdBV9UsdlpJ+VR
         k7Y/yiMQSafgLrRjR6TY9QSkcPoPbg1Xh6/kEW+CpusbIvHPPvo5FfuzQLGsBTjyQWw2
         8J1v5O8qutOM1weFjrexJNNAwTsr+WpmPydiQJmoqlKExoqHzTiP+yTvUiU+2qWUJQAQ
         p0Mn3lMQABa8ds7dgIpAQoCSNmnEPWtnKdEC2YaIOGU+unIW9wsYEWR6+/ftyBXzhylo
         5wNgj9vv6Mfy7YYGU4OGXmvRSPqpoxFG/ILn82gJwazAuHJPZExOoG4p2+hjqFmBtggK
         h7AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705302; x=1733310102;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sFCCGNoly/ihHw+f0V0Z4F6JNgdV9f0RgxXs1v/pmwo=;
        b=vtz1x5sq6emK5njGaKk7J78s8bK9EUsio2LfmGlUMs1Vui+Tt+jnkqoT9pecaEW6Ix
         a0LFC1hIFVIuy0oTV4dZMNhtoFYainmMKHSyKKnM4/McKlwgepQSEkb73iRJc15pCI24
         57VK6+9TIZdoB+k4LoArsWYP3TkgdIpgwyV7gijLwqxDCKrwnh35VFrJp2OvlmHee3re
         MbbqFaJ/kNPo0i7LSwM6EUbMDQStSk/teXxjETLW12YA1c9Pz063Bjk5CQu5CjaZWATv
         xcxFbegDv4I7k5v/wnFIBdogUraMrgIn5d9pul/YPnzypkf0sSUA9Q7O0EgYuyiZezzC
         u7wg==
X-Forwarded-Encrypted: i=1; AJvYcCXVPhML6AeKIHabffmwI8NKLnUWZVw05ay+/SIWDXO4O0f3rlhWrAuRbyihZhwrT6HZvrIRs9Ts+rX/@vger.kernel.org
X-Gm-Message-State: AOJu0YydN8Wo1EfxVi6Rcj4eY4/TFV0tF3OVFQ4WWb0nEm+qAdk/4PhT
	dxi8gCO7sJIwQWIrnuHivx3Q4f3m8zkFbDALgB2p9c9PSesNE+BYKFOWfrpoYZk=
X-Gm-Gg: ASbGncshAflvKnoRwS7oRDZYQ5Sbh9bmH9zZU0VJ6Xoc68VlXDZCr8Pc18B+wwFE1pC
	CoGXv9+2OWdnxb1/uSsI9fBAo+X1xqKpm7n1AfPdaDLES146p5HztRDQPunTEGx+1GsUYPSWgPf
	W2GNBm8elbIiMrQgb5+WTtFCdUmwhKD1BHiFUctlyH8pB65G7K6GIUJF8sLZV3dZe5WG3bgLzaD
	kVCzknxKxgIXIrfqip66DVne3EVXOXn8MN1fnQHqHOeK14OvVSOaHXH0Ce2/4eh61BnSsAliChI
	PZvDczoEQytLE/tDNSH1C486O9WSM9bbRA==
X-Google-Smtp-Source: AGHT+IGf8PRBbpu00lqdlanskxanZwbdL0mBeUOVNbWHJwrX3n9oj1hwGayugKGWxCGG58SnT8c/lQ==
X-Received: by 2002:a05:6402:2807:b0:5cf:4687:b816 with SMTP id 4fb4d7f45d1cf-5d080c64a93mr2444477a12.31.1732705302188;
        Wed, 27 Nov 2024 03:01:42 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b339612sm693762966b.84.2024.11.27.03.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 03:01:41 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 11:01:41 +0000
Subject: [PATCH 3/6] arm64: dts: exynos: gs101: phy region for
 exynos5-usbdrd is larger
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241127-gs101-phy-lanes-orientation-dts-v1-3-5222d8508b71@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagan Sridharan <badhri@google.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Turns out there are some additional registers in the phy region, update
the DT accordingly.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 302c5beb224a..18d4e7852a1a 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1267,7 +1267,7 @@ cmu_hsi0: clock-controller@11000000 {
 
 		usbdrd31_phy: phy@11100000 {
 			compatible = "google,gs101-usb31drd-phy";
-			reg = <0x11100000 0x0100>,
+			reg = <0x11100000 0x0200>,
 			      <0x110f0000 0x0800>,
 			      <0x110e0000 0x2800>;
 			reg-names = "phy", "pcs", "pma";

-- 
2.47.0.338.g60cca15819-goog


