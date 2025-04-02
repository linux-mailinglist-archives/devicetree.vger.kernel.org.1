Return-Path: <devicetree+bounces-162688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A95B1A796D5
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:49:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68A4C7A422A
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEC71F30AD;
	Wed,  2 Apr 2025 20:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="g3QXX7sG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1191373
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 20:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626948; cv=none; b=V0ZF7hs3txV0OQsq8t+GICgR/fTbPciF3vVh7FERTgguJKwH7+F4RrqczTlqlFYTGzIwOoznhDr2IQx640uBlTabvq6ehQIry+4ZPsgz4RbZ8+kuuq/I2/Eaqdl24FHdxYxbTiI+JukaTIQOTDxwNengi2OfSgZaH5PHgDhhoK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626948; c=relaxed/simple;
	bh=4NjfIEuXSZ0oZQmQ1Im5ftDD3J+L/LudGQUzBk95JN8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rBl8Xd63X83kzSSDzX71y33cJjYxGdWVhav9wTS4YZG62opgfYUogjPGHMP2N/LUxv6LEKvfI/TOquTjmU4O5Tq+D4WPt8wV+rVtwmVATPgbf4nWdadcJcyZWGGJQtuO2rWPeJwc5DKoBWxdi7Pt/ZKBf/1f4GBYVUafElRD+Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=g3QXX7sG; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=AmK0Ra5TtcArDa
	UJ5j2HthYPux7vb8lZx0CQMomz70U=; b=g3QXX7sGr1UFWA9SFcTc+t3BbnssU1
	HasTLnO16m46SagZYhurhFerLE3kmEd/WIKsr4UeuUJJQJV5LLOzBW3KEYjafF5b
	ti4L17qY4H0oMSzkOLFEUTnaRIc2NiysypsHub1v+sycPF/g/v+M1+rJPtoWBDwL
	BKrBLlceFUgqK8pgOZ42VHd/HELjc1JA1B/agM0YzEhEq6ziW7JKSGQXfWN/5zJP
	CfxIeYGhVcmkjPV/qrPREH7N6Q8dUFF50kN87n6ybOpBWuGBaLNLJf8xkRoXB1as
	C5ZhZRjdR6eUfmxwgRHTzEUIBERC4jk75GxnfWuhK6Yq/0p0C6hJwdCg==
Received: (qmail 2132784 invoked from network); 2 Apr 2025 22:48:59 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Apr 2025 22:48:59 +0200
X-UD-Smtp-Session: l3s3148p1@YjRUyNExGoYujnsv
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/4] ARM: dts: at91: calao_usb: clean up and remove usb_a9g20_common.dtsi
Date: Wed,  2 Apr 2025 22:48:50 +0200
Message-ID: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

My USB-A9G20 definitely has no external RTC, unlike the LPW version.
While fixing that, I noticed that this renders the whole a9g20 include
obsolete. Here is a complete series doing that.


Wolfram Sang (4):
  ARM: dts: at91: calao_usb: simplify memory node
  ARM: dts: at91: usb_a9260: use 'stdout-path'
  ARM: dts: at91: calao_usb: simplify chosen node
  ARM: dts: at91: usb_a9g20: move wrong RTC node

 arch/arm/boot/dts/microchip/usb_a9260.dts     |  8 ------
 .../boot/dts/microchip/usb_a9260_common.dtsi  |  9 +++++++
 arch/arm/boot/dts/microchip/usb_a9g20.dts     |  3 ++-
 .../boot/dts/microchip/usb_a9g20_common.dtsi  | 27 -------------------
 arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts | 10 ++++++-
 5 files changed, 20 insertions(+), 37 deletions(-)
 delete mode 100644 arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi

-- 
2.47.2


