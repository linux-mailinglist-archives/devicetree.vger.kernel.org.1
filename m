Return-Path: <devicetree+bounces-149888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 108FEA40B71
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B38D3BADA8
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 19:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740EE1F541E;
	Sat, 22 Feb 2025 19:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FLXWY96x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1D81422DD
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 19:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740252853; cv=none; b=PAuUTKlnfLZc5Fqh3jRm4i2ndlCSp9tXYMHNPKMfBLEcpHd686LyL5gqxmbAozmUeIuECC8XqtFCSPwZyyQ/E3H8MuFDbDYfWdhKkoHdBBMsylCvquxkQddzQVIzzq6Pdmqgq10v6Lme07cY7a2Jp7+hQAqO9tPjgqpvVJkRiG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740252853; c=relaxed/simple;
	bh=pXRTDJruqLO1LOR3AEuSmmZsmD2t1z+mrrqpD1mZ4+E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ixowagjvSPg4zQypxWGEvs22XRuWzzYdPIshBaPykx9fxWo6SFTYUbXgtwfvQa9hPk7scnnTbyh5Ze6yEG6++cspLYt3wA8W4JXM2UAZa3iQMVQVC6mBEZWhn1lDaWKHUqVQUWVyOMtuLL70uPhX9fgq7rNdNR7KYgbZziaHtYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FLXWY96x; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5fc016cbbe8so1949546eaf.0
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 11:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740252849; x=1740857649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pd43a9MHVoICh4a3HzPPv+MCm5aOiuEViUTV2lQ3hCA=;
        b=FLXWY96xHnVk/ivwJ36daAghs9goZ6SeZb8pvPdv1nO1LHFYbE9keKX7tz3idT32G9
         Qwwg7S7BdiiuJ014RbNbcJild5zRW3aC/gUWX8osVLFJW+w+4jFYrE0t6ZmXVpp6fhmr
         n/vtcBj/b5zxrz6dhOb5KU8qDnH1pMpa3RqGnxGl9nQsWAl8A9mCpPp/9FXvDHmSGGWm
         IwOk6/u5meCyN3OSQwNZq9VAPnvEXhyKwuwXWB/j1qhtL+C07/1pqXU+5t6sTsbYkDDo
         kVz7xhmEymup0oqHVVesHAKpA/7EzmtBFPdX5ZMvKlihtYx2LuRrAksivRC5lCyMy+Ur
         iVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740252849; x=1740857649;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pd43a9MHVoICh4a3HzPPv+MCm5aOiuEViUTV2lQ3hCA=;
        b=wgmsXIoBgcggF2Q4PqVli03Z9fJjQ3zrRf5AWOuYJAjt/36tBv9f2K2TLcWqrri6ic
         kPV13teICS9PgHxfSh2APUSEhNY4mauwyYHBZjvTNMFLpee6ZMSOaXLgzv9odiFlHzPI
         cAUlL1s1EN1RR2xenZln06KpSqhCBBkFiLsb1LaH/y9ziurcEcGh2NnDZSm92ifXk6fx
         w3zZuGSuFZRjiUW9NtmEH8yExb8ys5XbhS25p3O3y5AcUmulcfT1zDamxjbggJU2r8Ds
         hcv5bTv5CzPCDmSd6VFpYSpCEzz6dMQuR/M04pSfj1gReQA4lI9c7ppJLKukvsUBkymc
         moLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKpA6hRdj9IEPCtVrdzoW/PYRuizVqGqQVHIGazYUTIU5e8bhDbheus3XnEHY1v5G1jmAQuN3QOXDD@vger.kernel.org
X-Gm-Message-State: AOJu0YxXh222HIKarXqlTrRSvPa4xb6G9JRFyQccQdEXhfyGxqRl3buI
	qMwC9y2o/ji3LTWnLg7cWat20u8W1kxriLZ3s7mjPuyM99HQBZGh
X-Gm-Gg: ASbGncsjbDWfu+eGp+V18jrvIyXjs/k4/4PAVF4/At6Q/sX2kUqbWj7x8yDbrqkWjNM
	XO03jCZ+WCP45LV15jb4KEg4vIxTWjR4jPrHbdzgCTHZXB5IG0NQhRkQpaXBGph1P9ry40H9t8U
	B5cav/hMxT0D84YO7zTcumrIKsxOmIY2wNOmuM9H+EMNW3OynYqadIN5A3rJeJi3iaDRKAKPns0
	ZUgb97brj9yddceNlwxjkc0uOEyMQ4UPJZkb96KVN0UwopIMscu2GgcI8QaKqnq5nKxUeBfbIYY
	ILOzeXfgn4gBqtfbmWd8hoXLcwVkKfBwJw==
X-Google-Smtp-Source: AGHT+IECzTbYt3NmTrSq+8RDe0MmHfmCsANljrYV/iu6RSScvtdnp87PSX3HecDEFNEkc/hybrkhtw==
X-Received: by 2002:a05:6820:999:b0:5fc:b418:8cd3 with SMTP id 006d021491bc7-5fd1963475emr5853290eaf.6.1740252849525;
        Sat, 22 Feb 2025 11:34:09 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b69:ffa3:9d4e:2cd7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fce7afabd8sm2724012eaf.34.2025.02.22.11.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 11:34:08 -0800 (PST)
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
Subject: [PATCH v7 0/5] Orange Pi 5 Ultra
Date: Sat, 22 Feb 2025 13:33:27 -0600
Message-ID: <20250222193332.1761-1-honyuenkwun@gmail.com>
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

Changes in v7:
- Forgot to commit additional include in Ultra dts

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
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 84 +++++++++++++++++++
 5 files changed, 95 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts

base-commit: fa15cc73121279f93757ec76312b0d0b73f7462a
prerequisite-patch-id: e7cb3b62d173506d38a10a8e71eedd62ba6a1bc0
-- 
2.48.1


