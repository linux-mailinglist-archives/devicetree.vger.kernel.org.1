Return-Path: <devicetree+bounces-256334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55513D38B3D
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 02:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C7C383015162
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 302F0285060;
	Sat, 17 Jan 2026 01:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="TvWb1U3s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87720277026
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 01:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768612918; cv=none; b=HjWmFTKU4Tb1svE1QmztIKe+7pXAvw7Y30Bfu6MNtGL+XMdkH1BfJwOZdsR0YMRU8fMFbvwYMm/NHz4MOFyJ7y7ntkL7jaIe+zc3A5yAVF38/FVfeIrxzwS9hJe12Lz2r+09l6KJKMKDy4EXTLoDDKIMYPz3f0gAfXh+ctMV7Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768612918; c=relaxed/simple;
	bh=JYVo7nUGr4sfiI4JHulrwy94BfbUiXUSmDrNzijCMwg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N4n8FTndiHdu8jFsmuCOYPS7zOp1SBfF1NaAWTIbIDF13M6059GISQYEnWFDKI9d9wV1DVD5QJXAB1To2/04XTIr3zVJvGzyssv1S6r+7HV6s+5Dq1RhIyZLpWSBMgied3NxLILPM3aRq/XSFW/Fav+upPfYKduKNF74nbTe8NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=TvWb1U3s; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-11f1fb91996so6262488c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1768612913; x=1769217713; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cxRAE+6J1/VR0TMOgZgPO8SPeLk5GzHQqIi3etGBIWY=;
        b=TvWb1U3s0E83Zq4jmD8n8+0ABQw9CaipDfzkue4pJqB5kjhI9nhJqbSTJP2NQxVKjr
         d3Y0NrtH9oOGiCT7DlEEYhSVgUBZ+XSvYc6MZtpzXAYMpAtSQeRTIG1zacWs5QNAUvV1
         Q/4zPinQCUM7cABz60etKt2jnB2WOC4oswko0/fc98n2lGpy9HyASDvNaJK9m0ED2Mkn
         gilE5qtLp2JmZiNKUGKQZ3JnvlhudbElxKyM9TAaqFFroeBBR3yEJjAHfz3w2lSSDSLi
         nc/vAQ8hHB6UliT7v+4zgFgfZIVq4R5K7ZL0lyryVYjMUs4oBN8rZDYbqELtcPjE4/qB
         WLvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768612913; x=1769217713;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cxRAE+6J1/VR0TMOgZgPO8SPeLk5GzHQqIi3etGBIWY=;
        b=obOyYjgASeh2KT18EFU9RL6npOSJG0+N5WuApdov+aRo07nS2vRUNdOUyu67vjHPd5
         cZC890pdTzWICNUF6HYuAWEGv0ytidRibhWvlyGftCT6WOKOF6BUaXOe/0Jd790EMGUx
         xO0YFSzN+EGmv4FCQCV8PUX2a6bRaMBqdUgiolGsh7tXd3Wpt7uq1bJpqjHqVT2J0oJV
         IOmmNrI0O8BEpfkuxBMzNNbphVyWqPDJRvFstsDWhGY19nwH9rSmJY1glAbyx0LXNCB4
         c8Xx4jQAAeEy9XCEgMsP62nacVJ+eJRhCyxyZFN0rwZzWbEQlWMPmu2lWRSse7bxb+N4
         VwIg==
X-Forwarded-Encrypted: i=1; AJvYcCVAjasc8rPOuAJIYIDcAeXh7HyE5hRYSHtBs7ic6UWaShJVS0PbPfpg48InsLK+G4c0KXzfD+wucA8x@vger.kernel.org
X-Gm-Message-State: AOJu0YygtuhNm1A/gXG0Pt2GBXnxuhx5jzxNToREl5ZU+B/KFmX59NrV
	FIHx7ZiqME5G2rS2Ij40OHWXuhmzpRL7JvvURZdLQBz0sHfIJK8mD98Fpps6yALWRuE=
X-Gm-Gg: AY/fxX5ljMTcw1uUJT5wzaClzPA6zNKjVOlEsO21hVE7N/FmMslaQbmDXGcyAJoeJP4
	cBhhy9LsIAHUjBA3r+7GV+oozjzc62r+UtARVH1bgBe5H0cvmME/QWiYU9RfPxar3v9jcadb6BZ
	H66FOXhXUuOX9iPBJVm8sqxyDgn50WgE1PqO/S+r+euYNNJgnWI7gT+YA3dNL75cSPymaTN4kJR
	6thd/mF9Vxx3WJUe4vskEzyFX9cPCgPpakgMGTAAfVZjm6oe0l7OBX7KTo82nmBzLAkB6cDRJBm
	hq1Zyum9D8JidW3DYaYkoI/+8oMvNXLxz4CJPA1IcueM1dVQuWRNwnVEoN4riWCierurgXxdnXg
	I3WTvixZ8jhb41uDoOp+b4xne5CsHC6s+Qh6OGF6b3389fomMQ5RmpxCBPeTFiJCaCBoJBdPqdX
	aBJvZcYqBM0Zc=
X-Received: by 2002:a05:7022:322:b0:119:e569:f279 with SMTP id a92af1059eb24-1244b3802e2mr4430875c88.34.1768612913075;
        Fri, 16 Jan 2026 17:21:53 -0800 (PST)
Received: from localhost ([50.145.100.178])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac6c2besm5370810c88.5.2026.01.16.17.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 17:21:52 -0800 (PST)
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
To: Mark Brown <broonie@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Andrew Lunn <andrew@lunn.ch>
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Abdurrahman Hussain <abdurrahman@nexthop.ai>
Subject: [PATCH v2 0/3] spi: xilinx: make it work on non-OF platforms
Date: Sat, 17 Jan 2026 01:21:33 +0000
Message-ID: <20260117012136.265220-1-abdurrahman@nexthop.ai>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These changes make the driver work on ACPI based systems.
Making the interrupt optional makes work on systems where interrupts are
not available or broken.

Abdurrahman Hussain (3):
  spi: xilinx: use device property accessors.
  spi: xilinx: make irq optional
  spi: dt-bindings: xilinx: make interrupts optional

 .../devicetree/bindings/spi/spi-xilinx.yaml          |  1 -
 drivers/spi/spi-xilinx.c                             | 12 ++++++------
 2 files changed, 6 insertions(+), 7 deletions(-)


base-commit: 944aacb68baf7624ab8d277d0ebf07f025ca137c
-- 
2.52.0


