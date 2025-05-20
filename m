Return-Path: <devicetree+bounces-178644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01814ABCC04
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 02:33:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C3633AAC65
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 00:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0751DA62E;
	Tue, 20 May 2025 00:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W+exx0lc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D75BFC08
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 00:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747701227; cv=none; b=gxfOsExVzzU5+mwTxdcUh3XcM9h3GgEr6PiSZmgxN8LDCnaWr5fLf3fKaHBAxR/K/yMedpiWbKUdHm3Yf3XQ8uMDfaRF6V63IfXGzyZNyKkke2x+c5WGu+920qPONwkGZeTrmjuVHScdlvZrsDl5ZClTw1WtpBgeptfaisRlGYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747701227; c=relaxed/simple;
	bh=2coypO+lZl3E2Tcb+oRwcoGOE1SUB8/+V80t//jeUOM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sk653wCzWqPYErJXSSfPplQloyKfe9vUnE/aSW4CdJlGwihUZ10w6OO/CMKDIjLQbXlW0vY05y1OZmRmEWgvAovFxlSJ1FxarAQyEriA8f7fnLbnwpIfcT6NrN0xW0/fyezpvJQTzIp/pRwSeDe2ZBOKyDWmnyx4kSYXz6QoAX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W+exx0lc; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6f8b27c2d7bso47451776d6.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 17:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747701225; x=1748306025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HRIphWRJ6yxqwHo5avSEOKiJvJFPrkseN7ZgeLPZB5Q=;
        b=W+exx0lcDEMIK18ioOrhtBFk1Yv+wo8LwzbE8iFWF8TkI5Gt0IwPYWys3w3x4jMUZO
         gPyHGQXWXx6Mr7lmPsA6VBC5CjZzTZDp0djnwKS9uOgJVDH7fp7wi8SbYtDNSB19FRg+
         rqcpljI6LthsSbZW45e2j2s9Uq59ElvSsxQefD2qi0UgcI8OOIaLVycgSeWMIBNrdbmw
         34P8gA3TB67F8VRvwyzcK/pGs31Je55WYGRXhvgs/4QY+yS8USA1H/ul5Wv4F4YGz7G1
         eMBAf6xbgjbh70EAfjzsrdFTGtIm5Zy533MVnfnMcG2c4cQ/pHNwhK6CVZ+6o9NnPjJV
         hNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747701225; x=1748306025;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HRIphWRJ6yxqwHo5avSEOKiJvJFPrkseN7ZgeLPZB5Q=;
        b=uD1L8QgUAAhAW1jSTEUZQVxAqrTkiBMDPhLoeCaKwItIG6G1zsstuI4fSmG1u7bUGV
         l7sS2wlvJ5Md3p4OzZtXAT7NtqIBQ293Lv+enWMUdvMlhXjPVFS2uFp9m+Fnvj1GpACN
         v8oTR0dBUv28tUas461wFM2FSgRZmqd6EQEgsPQ+SmSqwv+nnfWKgMn4VXUWpQXVPopd
         BdKcnb7lO+gqbQ56cxMVVeHh2NIKL//Hc+w7qrU9HaNID/AjkqLDF12ZAm1gE2kED+HC
         Pho3rZojIyyQQhqi5MhRTacYZXUlaw+fOu+d2RzzT8c5WemcCUoZlzWxDCSXU5Km+AEE
         8bVg==
X-Forwarded-Encrypted: i=1; AJvYcCV5U2T7jElGd+2iM5u/uDitqBha39JhwqMRS3nB4i/EW6yDQHDMBrImyYGAkJlGZ98pBaCqKomnGRED@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0NuklobmYvp0SegESK5MhjPfLxs6BQvTehn7HC5nAawGj8GPv
	VnQftGwY2EqJVbJ2PdV3P3AL2cyeJLgv9o4nZgo8umbdwTlcBag5dl5S
X-Gm-Gg: ASbGncvkggtBqcoWotFRiXGlsN3xBAW2XhHg/a8PdKs4lIRbNIrAQ+JoPFfeLpor3wV
	NXTOqvm7mIy6Jtk9Dak33HNzzjRbkLnEVCunmNRiZRTQrZU/JExmmaRPK1f2I/l3zKYUjFppP6T
	CwD6PkBlP/uRNd/F6OgUVIYIVz7/5EQanqh+JVA+U+V36rxsGehjcvRvWYO0OqV1/HxJt0kitJ9
	lku45jGn7iYdE+lb9hdNp3N8NajolYxFVVD4ugAGXWp4B/DfYQw0BzOHV+A+7CM6dhZu0d9+O01
	AKWaUyLmL2SFz+EN5z56yKkKsjtOBEQ7rUD5ZMk+3li+ajwXhPM5fVQw8jxWuaQ=
X-Google-Smtp-Source: AGHT+IGiV7pijz7nvI/loSmEGHbHPxhDuQhRSnkTls6HLJSpISucF/2MKr2dOMkrTMEVSR2T2vf4Hg==
X-Received: by 2002:a05:6214:248a:b0:6f4:f458:7ef2 with SMTP id 6a1803df08f44-6f8b2dce6d3mr219912446d6.43.1747701224942;
        Mon, 19 May 2025 17:33:44 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f8b08ac4c7sm63479556d6.45.2025.05.19.17.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 17:33:44 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: nicolas.frattaroli@collabora.com,
	detlev.casanova@collabora.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH 0/1] arm64: dts: rockchip: Use standard PHY reset properties for RK3576 ArmSoM Sige5
Date: Mon, 19 May 2025 20:33:31 -0400
Message-Id: <20250520003332.163124-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch updates the RK3576 ArmSoM Sige5 device tree to use standard
Ethernet PHY reset properties. It replaces the deprecated Synopsys-specific
snps,reset-gpio, snps,reset-active-low, and snps,reset-delays-us properties
in the gmac0 and gmac1 nodes with the standard reset-gpios, reset-assert-us,
and reset-deassert-us properties in the rgmii_phy0 and rgmii_phy1 nodes.
It also adds pinctrl properties to the PHY nodes and defines gmac0_rst and
gmac1_rst in the pinctrl node. The phy-handle property is reordered for
consistency.

The changes have been tested on the ArmSoM Sige5 board, confirming proper
Ethernet functionality.

Signed-off-by: John Clark <inindev@gmail.com>

---
John Clark (1):
  arm64: dts: rockchip: Use standard PHY reset properties for RK3576
    ArmSoM Sige5

 .../boot/dts/rockchip/rk3576-armsom-sige5.dts | 35 +++++++++++--------
 1 file changed, 21 insertions(+), 14 deletions(-)

-- 
2.39.5


