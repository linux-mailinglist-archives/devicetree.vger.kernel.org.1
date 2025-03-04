Return-Path: <devicetree+bounces-153758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B556A4DB47
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:49:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31E383B0135
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71C91FE455;
	Tue,  4 Mar 2025 10:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ezjyld/P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9C71FDA86
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084926; cv=none; b=KFGQX1ms+kvuHrjowPKpRQIt7MSSm4x65vYj/YwkSgxvFF9z2OXT/BWI151XDivponpDdGSsBKFUmmxFpjMKUq9g8m4tovothUaQt4uBwK4QS70fgB4JTf7Gmy74zacUgJLC7yQv0nCTnL9LgvU+n4/ZtqY4Dy4Hssdcop2xLYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084926; c=relaxed/simple;
	bh=oVGnr7AhMY5erBxqjABx8O/86uJFOwPvuIi+4qeKs9c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EB10mjV/omFSame6XImkzEHJpVC15V+cQYvw4pFKZrCmRvFDO95RbNntt50HonHloOJRQqhprnOLE9H0sayLneSmGbivIpNSBzxSHBHv2kitIVIxp++voeOenRwQtObNTBrcGOAINIlDYFP3LVCf0usB9NHivxPLR3aXAuUefv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ezjyld/P; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43937d315abso5819975e9.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741084923; x=1741689723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fRLGX0BSFbSkbyHv+vppZ4+v0T0SuHCAkvGOI/AsUU4=;
        b=ezjyld/Po0DBBS33OGbpPq2KWd5zp0hrut2NokITOhhYkq1a2+1sHwo2pTqm9rXipB
         fNEk6XCh9hWYsUUXkinZ6Haf27GFmHVijkdoxJ9Dv6b5EQDtIHFXQA/OjNMLKrr/H85l
         8K5xJUpiEE9yj1N1wL8hyhz/yPVELfrhlcl1oBGVqc/71zHklWt+doZHIOQNf+/232df
         6YSMJOF04oy2vH18VW4spWfYLE/X8HVSvVYffwcnXU4F0DeCHvA0wNC3csakqip+MZZc
         FmHnGiOjSHnatY7VV5lQ5L0hWszK23GiwfBHIagC1S+QAi0MYAltBbRk68HWL21e4ZFX
         WSjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084923; x=1741689723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fRLGX0BSFbSkbyHv+vppZ4+v0T0SuHCAkvGOI/AsUU4=;
        b=G1Jl15qLeqQgXx1wldi5/QCp5I+0UElKoH++l3ErALzZxcPoAgBs4yojqyQqmBB1wN
         tPC0+4GaDMXVXHWkxneJDOK/edC7b9NkcVkJPnTDiB7RIqQa4bkJPI1Z10/wk1YBrq/v
         90woPBEv4okxR0o2xEFyIMErsGm0yFgzx8fb6dQLrxLsBQx7QiUQ75a4AWLhoN7j6+Ru
         pNyH2ARZsTYf9QDs2Ef6I88TxWGo0R11a6rPdBf3lCUbvQfaKJPH53UBTP8rmw4VnC3k
         OgisWHLnzvRrspM6crGmyNUsGBB5oxVpwQsE9SELB/tE1to8Ho2+n3kZ5BlDrqYStTAd
         kXIw==
X-Forwarded-Encrypted: i=1; AJvYcCWz+Cm/VHg/Qg1hSjo2S4NpuAzxrW5DLipzVw6ADHK+p6AkCfINs0D6fvugWqXUGLGNzq/bw6OUoyNG@vger.kernel.org
X-Gm-Message-State: AOJu0Yykv5jDMnKLmka0OVDwGkyPp1WsWZJ3DrPa/9JhPZgPnqwYk1UN
	oRB42cnL4Zykl5h2q2d/IWtJkdi9fPpUKFi4+Cq2WHRgZSaXiv21tYtLzRblZGw=
X-Gm-Gg: ASbGncsz9+4Q0vlckpZg0CBdhic1IIgush5B2BVDzNERjbAytbyCqSz2qKCkNxRJT3+
	mcHrqoS633QSvOdO2/P9po4Nlf994JcX4WdNDyS+dTm3HU2n6W+hlSiX+uEbTK5cpy5Pb9f+Ec2
	2HxAWaBmYKy/+34Y2ClI1kKzL3bTZO8/JHdb4s4CBUf4xFO9VPrHV7klLFbi+NzTGLczTTWqSBi
	9DmsCikXQoPsT4XY4J1/KVq76vZBRvLByLvM8pH96KlsICLjzQL+0qDTzmFoXiVVlqnDPOx24/5
	9FQIQa3yEJRF/zImyeuu0cqgSOpihJr98Bc9IgNCZK4WM6qLzgf6csXQChw=
X-Google-Smtp-Source: AGHT+IFu+lUWQUJTNva4ATWrG4BJPlHZWRTzwg/XUajrbEnxSw1V0tjsJYbZeKjxr47p60rztgJf0A==
X-Received: by 2002:a05:600c:1d86:b0:43b:c0fa:f9e5 with SMTP id 5b1f17b1804b1-43bcb969548mr7400795e9.4.1741084923281;
        Tue, 04 Mar 2025 02:42:03 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b792asm17202257f8f.53.2025.03.04.02.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:42:02 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: Add ES8388 audio codec fallback on RK3399 ROC PC PLUS
Date: Tue,  4 Mar 2025 11:41:59 +0100
Message-ID: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Devicetree bindings for ES8388 audio codec expect the device to be
marked as compatible with ES8328.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changeset depends on bindings patch being accepted to ASoC:
https://lore.kernel.org/all/20250304103808.75236-1-krzysztof.kozlowski@linaro.org/

Please take it to the same or next merge cycle as above ASoC binding.
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index e2e9279fa267..8e3858cf988c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -112,7 +112,7 @@ hym8563: rtc@51 {
 
 &i2c1 {
 	es8388: es8388@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		#sound-dai-cells = <0>;
-- 
2.43.0


