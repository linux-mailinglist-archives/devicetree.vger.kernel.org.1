Return-Path: <devicetree+bounces-149873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD60A40AA9
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 18:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C1221892FC2
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C241F1506;
	Sat, 22 Feb 2025 17:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IbitMuKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FCD1487ED
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 17:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740245319; cv=none; b=NO2MDnwz37FOl0MkZhbcYzvKJM6r189olev6Tep+O9wEyXwcgvnjyv1BVdXZzvYeyxH3gnnjBFv/g+zc1yBJ/ZlX+P2MAJKCHEhKhbsCtyKdEg9CDFy1dCUkFrnkkF3uy7SBM5gGJE8qowD4CsevWq9GqJTt63StqJOfT+Ki/iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740245319; c=relaxed/simple;
	bh=QT+tTfv8WvbkbkVHFzZVxqJM0URBlFvHxgMCS/wyP3g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mEtxJ9CgLgEH/8Pd3/MHrdLLaC4r1ait1lP7egaBYFIibD73/q/x0lAokMRMbuI05IiGZPaASfTb9wOQePH6iG+YHJVlXzXePBovS+5nw0rpLRmi43/AcL5RCb8xvQsSwX8ARwViXTC0eOhmdS9+qbBqxc1OsK7HjyBTbMxAFY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IbitMuKf; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-726819aa651so1490074a34.1
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 09:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740245317; x=1740850117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/RDwd1dzgwI+i7ONubzdJYvtvlrF6300doLfGnBg5ak=;
        b=IbitMuKf1CyIIXWctJuZaHAsXvPvVuJ6nRL8WAOQMJPs53gFGh7RbZppm3HXkgJ33A
         stKK/ymoxo+Gf5q0EN5udW3dHRBwvsPxU8cNkE/uaQjy9mp9neOgF86TAAXEZeVITKXQ
         1UPjZQZld/gkUK0XW4PxPVhJl3qvES6TIPARIBSvO66sLm9lZCf+16lMTYFrgrRa5d9y
         LnU+Jd1qPdrXAls3WNUAj2RczTLu2KxVuKNqY3XezBbyq2S4QG+KsAwz77BXCSEUa+Xq
         ldp9BWHxow70cE/3AYaqsSFNyljhLHGpYLz9c4N9BEXVzN+UYdCRRNh3Kke7w9uvPdus
         YXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740245317; x=1740850117;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/RDwd1dzgwI+i7ONubzdJYvtvlrF6300doLfGnBg5ak=;
        b=QtdeDNlQG94UJ/FxokAlRjmUyg8de+HjjQSqme7iUOBKTVhtFJQnpHflHzZQgwunjn
         gibqec6PkN2QllUkSIKPAaQnu8nc/LSaqV+LY4UXXNaT3EZPd9/34x9EtKv5BACkP65z
         zOuZP5md8ZmuE75+0lvygatHRT9VoviFBi8smlpthZ8DTiwMFtOz8wTgBD+nv9sIRyWG
         4yqw2JXbqqyny5vwBYIsQMunaYs5CDjuaTei+X2TWEqdrPpBZsMTRwFpnxKcfVgaosdl
         9qGLLd9D+OPCpM3NDMHCB9zEH8cgEtLnqA2mtXpUIwTl8kWtu4XPxQiiaxoAO7VeRW3e
         L/MQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCVYzvA1bFMih5DU5oh/TNw89rmkeDc8HPF0mS18ucE+QWc1YYkRGW/t6d1RjqBIT8Xb/Pp3NgQ67a@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn3ayzzspwDFDsvxQ4A2BY2WpzG0uk7q1FMweb5snfhm1cAI8Y
	rTD/7UDB5EH7NGZUwPz6r+B3XUFiOj42EZS/RMENxHRGbsUluIFH
X-Gm-Gg: ASbGncs7QXDGCei6gs69mMbmis/9lfgiRQrHBatqbcU7F/dMJmJkNsgfVj/eS+ZpW72
	kNBN6yzNzl4tsfyLYTIcJTuyXvG9RVT3ihywxzIvVmFXPNG0TSYZ5aBVxrXKmRCJrRUBhyf7KCC
	Ca0cYG+RoVELhpLiv9oFlNBTMRNhgNmJIHScYk0JoC6+yZM9TG93pHPiUTsWqNcEiqalq0ddzH2
	GcF38Bz06XLMOdng7ReiPJdm9Uk+gMTzmGZRgBz40MOz0Hbh/R+wCOUg6Jr0QXYPUHSq513SA+P
	7igPIJpxlfKElgUgcfEZFfEUYmdkCmWd6AI=
X-Google-Smtp-Source: AGHT+IF0NTsU8DfMoaFZ2lsiXddsrGmALe0QLSbx/QBGxRbH4pRWZ/f5aNtmVBWOMYxv3yoy32tzkA==
X-Received: by 2002:a05:6808:1815:b0:3f4:1197:29ba with SMTP id 5614622812f47-3f425a5fa53mr5553662b6e.2.1740245316893;
        Sat, 22 Feb 2025 09:28:36 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:996a:132b:43a2:f7b0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b963a0ac4bsm7244238fac.47.2025.02.22.09.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 09:28:35 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v6 0/5] Orange Pi 5 Ultra
Date: Sat, 22 Feb 2025 11:27:47 -0600
Message-ID: <20250222172752.6254-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device-tree for Orange Pi 5 Ultra

Thanks to Johannes for testing

The schematic has been published for the Orange 5 Ultra. [1]

It's a sibling of the Orange Pi 5 Max [2] with the HDMI0 switched out 
for the HDMI RX. As a side affect the pin for USB_OTG_PWREN [3][4] has 
changed.

Also, the Ultra's PWM_LEDs have the polarity inverted

Patch 1 can be included in 6.14-fixes
Patch 2 and 3 can be used on 6.14-rc1
Patch 4 can be used with 6.15-rc1
Patch 5 is waiting for HDMI audio patchset [5]

My testing branch with dependent patchsets is on github [6]. This now 
includes extra patch in clk to throw NOENT [7]

[1] http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-5-Ultra.html
[2] http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-5-Max.html
[3] https://github.com/orangepi-xunlong/linux-orangepi/blob/orange-pi-6.1-rk35xx/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts#L306
[4] https://github.com/orangepi-xunlong/linux-orangepi/blob/orange-pi-6.1-rk35xx/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts#L321
[5] https://lore.kernel.org/linux-rockchip/20250217215641.372723-1-detlev.casanova@collabora.com/
[6] https://github.com/jimmyhon/linux/tree/integrate-6.15
[7] https://lore.kernel.org/linux-rockchip/2425191.NG923GbCHz@diego/

Changes in v6:
- Add R-b from Rob
- More differences between Max and Ultra
- Ultra PWM_LEDs have different polarity than Max
Link to v5: https://lore.kernel.org/linux-rockchip/20250220041010.3801-1-honyuenkwun@gmail.com/

Changes in v5:
- add USB 3.0
- add HDMI1
- add HDMI audio
Link to v4: https://lore.kernel.org/linux-rockchip/20241229184256.1870-10-honyuenkwun@gmail.com/

Jimmy Hon (5):
  arm64: dts: rockchip: Differences in Orange Pi 5 Max
  dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
  arm64: dts: rockchip: Add Orange Pi 5 Ultra board
  arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
  arm64: dts: rockchip: Enable HDMI1 audio output for Orange Pi 5 Ultra

 .../devicetree/bindings/arm/rockchip.yaml     |  3 +-
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rockchip/rk3588-orangepi-5-compact.dtsi   |  9 --
 .../dts/rockchip/rk3588-orangepi-5-max.dts    |  8 ++
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 83 +++++++++++++++++++
 5 files changed, 94 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts

base-commit: fa15cc73121279f93757ec76312b0d0b73f7462a
prerequisite-patch-id: e7cb3b62d173506d38a10a8e71eedd62ba6a1bc0
-- 
2.48.1


