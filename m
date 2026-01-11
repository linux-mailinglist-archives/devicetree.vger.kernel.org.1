Return-Path: <devicetree+bounces-253649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC90D0FC51
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 21:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BCA543030232
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 20:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B452023EAB8;
	Sun, 11 Jan 2026 20:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z/iIUUwR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DB323E35F
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 20:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768162267; cv=none; b=QoK9R2MFKwVme86G4T7MIkYakG35onuy7fzcP4ce9o1S1rMZJgS4l4zRorauKRY63vl2Dyo5md9CVnBB1tcQrAUazeYA8q1cSi8wlr07QMBCFYEfCTORDBaQ/I657CNHCfsC0DotKfxcgWZYb8RNs2qZkBS7238PaJEU8JnXa8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768162267; c=relaxed/simple;
	bh=ivHKoSsMPpBPSbXdhGEQYV3TOAVtmJza24dx4MP6K6U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EF2N+zN2tHsFUsmAvrmwv4fgeTFquVFcKiThj+X8qkZ57RTnT+z1rJoJWQBzKL00oDBBL9QGyMvu1OnHr65UdDh4YkE2KBJEYzX6xl0zQbdo3c7N79lRG5pEDj97Zh/me+RqMMrCXQfN2ebOJmfJFACPEBd5oh2CqNNK952oNzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z/iIUUwR; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-78fb5764382so61353017b3.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 12:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768162265; x=1768767065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3WjMx6HuwU1Wy+8RcNWFYu7YuaIy2oBjUVHx01Ru4Xc=;
        b=Z/iIUUwRlmZygzJehPDFg+D0t2VpyvlyubLgwtKgCRcojLvkPmuuhigkS2DcinhFlZ
         6Z23h3tW5uRcHRK7dcN5YGCFt0AJbsrUqmQKQs40iJUfnTNnsMuCfcFGYeoh8Xc0aCK5
         Ggmv/ABhcAOTzbsWhh9D3AQLmTyA6hXgiDi0hjz+vWP5JQr3/bc4WNoeeFLbeowoGImL
         lTAHGn8VJOinBrX/6+JEzMI4gSyQAqzUxpBVrcIBt7bVH+wdl1Fpfu1CYSB6Bdyynds3
         8evGtPo3g9b9sQCGJy+CLh1iXurtR8ZgzRjHtOqCPml9Q1ojLvnkZQ9BHzTbLlYThrpj
         3MdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768162265; x=1768767065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WjMx6HuwU1Wy+8RcNWFYu7YuaIy2oBjUVHx01Ru4Xc=;
        b=gkDtKQrGQk1deZj6fiEiq+7ZWkmB+YLpHzWSF1/JGFzVZPxclV8hG4z3eNIpGJm4aA
         8qB+BhXadTmeNW5OW+0FGo/Vdsh4L1CdcXwqoB/VP08AAtYDw7jU2KwummMYsJXYXxGO
         nq7ui87TmcyY+0ka7tAaoqHCRsIL2Uv6APwzOFjV4TDCGUpNRggCa5pXPHaVs6soVqW5
         9pYasT9DNtUYf8si2YykQXylq8ffy2pQtdonNH8qE6jpv8Hd9sxT1JWfikShxOhWWMlx
         jPQc2l46WgkOzf46eVgRjHnEIhsopYDdpksCh2U5Ng5lGj2vSUdP8q5JUuMQRi1X9cX5
         cGrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWV5TB+70av4qFRPXvG6YQBj1NbwgJbpTpc6bSMgmnC2hcUL51cS2FF3cBQqz5XYMxMDileuqqDPaFr@vger.kernel.org
X-Gm-Message-State: AOJu0YzkR70iRcE4/+wleUkTgK+u1M2p3wlP50omSt9I0DQQo1P6M275
	fJJ0qi14COpwKOEJVPzKeTgSuEc7rCTnafLYl/Q5b15YNenpvjMdxM2teCMoFg==
X-Gm-Gg: AY/fxX5UC2pYkDfOOljWgrSDfMyCpiJfq7fU6L/ZbCkNRHiq4AX0pfbg30fBxmWe6ST
	tId2/qmj5YsdDBCCZVKAWXmGPlPX1rI94wAuzrWjD4NV3QmMQGXRfDj+9cFiotytxVCru0H0Ocj
	GX26mP1Oe/9LxzTrj1f+R12u9DaFyyDxMjGKov5IC6XzcumyssftnP6BrBsfUnS+4fmDHPHpEUH
	F5hOaOFqGOe3aiyzSzSDW1nrjet/9vcDL3yBGZs2i+6rxBjiA5X1TVyFU44ScRLxRd78o3e373i
	0zt7e7Yts6d2m45wLvYn4N9KxD0Y1D1CXKz3+/FLR9cd00DTMFo7aW8/abNpyzWAfszVFqyVSu6
	2ZmQgN5lFaojVMVvrPxRUhVi1sDP5Rhau5lwrhc0uWFSWdAdCx4lhfq7R576lPX9eFVQt
X-Google-Smtp-Source: AGHT+IGtpefdIwaz1zrj3LX0ANB3EkQVjPbjQhL8KzEpUBfzS7Z79abIt8/S9RwcfiKfM++zWNHWgQ==
X-Received: by 2002:a05:690e:12ca:b0:63f:b410:e93 with SMTP id 956f58d0204a3-64716bd1ba8mr12791408d50.42.1768162265218;
        Sun, 11 Jan 2026 12:11:05 -0800 (PST)
Received: from toolbx ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 00721157ae682-790aa5762f6sm62175717b3.15.2026.01.11.12.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 12:11:04 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: anirudhsriniv@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add device tree for Asus IPMI Card
Date: Sun, 11 Jan 2026 14:10:30 -0600
Message-ID: <20260111201040.162880-1-anirudhsriniv@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds support for Asus IPMI Card [1], which is a PCIe card with an
AST2600 on it that provides BMC functionality to any host without an
onboard BMC as long as it has a PCIe slot.

Currently supported functionality includes UART, NIC, booting from SPI,
KVM functionality(usb gadget for host, reading VGA framebuffer from
host) and LED/Power Control via GPIOs. This functionality has been
tested on an OpenBMC build available here [2]. This requires a modified
u-boot device tree [3], which I can also submit if needed.

The card supports some additional functionality in it's stock firmware
like fan headers with fan speed control, host bios flashing via SPI, PSU
monitoring via an SMBUS connector, a custom ASUS SMBUS connector to talk
to select ASUS motherboards that support it and exposing a IPMI device
via PCIe to the host. These are unsupported at the moment.


[1] https://www.asus.com/supportonly/ipmi%20expansion%20card/helpdesk_manual/
[2] https://github.com/openbmc/openbmc/compare/master...Genius1237:openbmc:asus-ipmi-card
[3] https://github.com/Genius1237/u-boot/commit/1b1b7daa85f6c998e5f404296b3da43077a2758e


Anirudh Srinivasan (2):
  dt-bindings: arm: aspeed: Add Asus IPMI card
  ARM: dts: aspeed: Add Asus IPMI card BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-asus-ipmi-card.dts  | 137 ++++++++++++++++++
 3 files changed, 139 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asus-ipmi-card.dts

-- 
2.52.0


