Return-Path: <devicetree+bounces-250118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EA8CE657C
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B25330057F9
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48C13272E6D;
	Mon, 29 Dec 2025 10:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z5M2HxN9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3B4212F98
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003144; cv=none; b=GMNTXyJ2N3uFe5OZ0+oNv2h20iAZMbB94yiiQUa9Js5wOQFeIe+DYyy2pK6xN5KWZupicBjH+WttQWPDs8trbyyTOJVpYJrjeHWRr2Rrca2poX323lZuUerRH9OSqXw80fbsbKlMTqxcwc5Apva4T6CLL3i4nXF1P6qB4YH0ORc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003144; c=relaxed/simple;
	bh=LCiGByx44aPo6I9zaG1ReBsxglHofWHA8KNEqBtCywk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KHHnRXxqpciKRhxfVPL8Lekbx/wFWdEsUz+12Hvx8tg0nvdFFPGI3RQ6P3ppR4CImEFLG4lIkJGiRoRaAlScfGTeFahv3LvJESyMT6IrGDeHnQGDmZyCmnAcVZssDdXunleIRNG2BzMwq4Llhq+4HSduU9ceAB4tp35F11zoteY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z5M2HxN9; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47a80d4a065so44329615e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003141; x=1767607941; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J1vSgRP+Bs5qbIakzCpHlzr7o7ydag8RKKrO3j8O608=;
        b=Z5M2HxN9yV2atm05wilpkDGHYQ55FvGyBBbpFGyeQ0XscOKTfKPdZovM0quqtiumDo
         wkLJY9NQ+8/2Ny/h6mfPogEI4+P0o099kTWnKS/aJ0cSJy58GFvC5wKClFTFqZuVjZ23
         o/jPX2WhZOkzQK5+rTFyZ9kak/oHi8+XO5p87EQnWmMldaF70m1tZEx+/awGSc//el8U
         cdpPSqAdoFrEmU2oa0g/X/C+XJsB26ioXaBTieXHZK08gTLWrsPPRh48pOw3RgmBVhov
         QO2ywaNFWSwOxxWYuLbbmBBh2in9sK/sZT4yf3krDgbh+XPpilQ/8vHWYOrZMZogXHKE
         9aFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003141; x=1767607941;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1vSgRP+Bs5qbIakzCpHlzr7o7ydag8RKKrO3j8O608=;
        b=pjjtQZid16/t7MtS2aQ1CADfx0YpQrT/iUmFx9P3sietdrqMVoUGRkTImvEH2QBuft
         bWI15LA7cwpuICI6Y7FRXtvxmhQG8S4McJrd2zYOVoPd53kD+zIleXLTheXZkdOxqbdh
         uq/QmYBhx3K/OP0TpF63a+yBCp99C8o2VyW2O/zUdcsZJk3ZuF2SbTlQsvmiAL0RjzTM
         YCLKG+cD1rYHsg6OUiSsl1cK/jGPo3sSHQLflemW2QOZnzuVFF5lYpRRSkVr1AVn2cIH
         5Jmb8xDdqFFi5OO7TlUJQFbT/gl2a/D9PS9DHSZ431yTXbF6OZHL4rdKSlTSwShnYz27
         VtZA==
X-Gm-Message-State: AOJu0YxNiXEOSwMgugwpwdk3FGrpyyEDKwI/hv24b343c+AUC4eZI1TI
	Q2aZ+Cfem01VWfoW0o29Il7X7rXDG/0Qew7kTNdYBuOk5YI2DlLvUWSD7HxYzz3A
X-Gm-Gg: AY/fxX6je2uHrsC8soKCESJD0s+tLjO8f+9Y1KgOCxef9pjt5nB+XSJo3gaYB48OfL1
	gPoMSmHHHOI8oDxOPpSpf8HntMOTw0dRlkPzHGlwfA/QW2oxq9mqZ57ZPLJ8T/U29ST3quRR992
	1fylHCDAb4DDGHC7VmG0wxZuelGENyY6nfS5zTCr0/oswIISaeoFD8kTrmF3BE2xJJkhfFYRp6w
	2DqwwsH7UQe726HrGNJfDWEKtUVFi51LAJ2lKW5YVuHDHfTw7juWwI2Z5YqH3xup0wo2h6oON1Q
	3/Qt3QsCdrtP2sZTMTputRbXyOcGLWHY1gopycHo2fWJUEqbw22SLOHaguL+b5NuL+ZV/985EV4
	rH0cgPHJ6RrS+IsvUQr9PM20vxN307kVX20N6EPtkmi8R0N+43wikbRbYYj2P3eXjT+yKYXB7X/
	t9fOfC4iCIM+nWm5fGWptPrdsY73jtBcOlK2l/2+sp9rnK0XEeQ8bePPi+K8LY
X-Google-Smtp-Source: AGHT+IHlR0aXhu72J2TtWwVekmyRrRkDyvgOTcwGHqcoRX7TNY17EGN/wNGjrSuW2cqNhsN3lSNTHw==
X-Received: by 2002:a05:600c:444b:b0:47a:8cce:2940 with SMTP id 5b1f17b1804b1-47d195468a6mr302386315e9.14.1767003140541;
        Mon, 29 Dec 2025 02:12:20 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:19 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH 0/7] arm64: dts: rockchip: Sound fixes and additions on
 RK3576 boards
Date: Mon, 29 Dec 2025 14:11:57 +0400
Message-Id: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO1TUmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIyMj3aJsY1NzM93i/NK8FF2DZCOzVOMkQzNLIxMloJaCotS0zAqwcdG
 xtbUAxT+MhV4AAAA=
X-Change-ID: 20251222-rk3576-sound-0c26e3b16924
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1436; i=alchark@gmail.com;
 h=from:subject:message-id; bh=LCiGByx44aPo6I9zaG1ReBsxglHofWHA8KNEqBtCywk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTCec14dG1Mwy2Gm4d01F2qTdhQ7tHWq/Y+L73eZK
 Rwj/YCxYyILgxgXg6WYIsvcb0tspxrxzdrl4fEVZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNQx1jFi4OIUgKn2rWf4p5r7KSIt89RE3i/cnJ6Kggsvrjovefym0jzN6p+BblfftzD8Yi76xBR
 nNfHq4VjPX09OdLDs4fW4Oq3/zsbqY7575T/PYAAA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

Here are some device tree updates to improve sound output on RK3576
boards.

The first two patches fix analog audio output on FriendlyElec NanoPi M5,
as it doesn't work with the current device tree.

The third one is purely cosmetic, to present a more user-friendly sound
card name to the userspace on NanoPi M5.

The rest add new functionality: HDMI sound output on three boards that
didn't enable it, and analog sound on RK3576 EVB1.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Alexey Charkov (7):
      arm64: dts: rockchip: Fix headphones widget name on NanoPi M5
      arm64: dts: rockchip: Configure MCLK for analog sound on NanoPi M5
      arm64: dts: rockchip: Use a readable audio card name on NanoPi M5
      arm64: dts: rockchip: Enable HDMI sound on FriendlyElec NanoPi M5
      arm64: dts: rockchip: Enable HDMI sound on Luckfox Core3576
      arm64: dts: rockchip: Enable HDMI sound on RK3576 EVB1
      arm64: dts: rockchip: Enable analog sound on RK3576 EVB1

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts   | 107 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3576-luckfox-core3576.dtsi |   8 ++
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts  |  22 ++++-
 3 files changed, 132 insertions(+), 5 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251222-rk3576-sound-0c26e3b16924

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


