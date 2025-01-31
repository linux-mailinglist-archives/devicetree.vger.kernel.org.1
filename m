Return-Path: <devicetree+bounces-142130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74244A2444A
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 614813A13BF
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 21:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF611F2382;
	Fri, 31 Jan 2025 21:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="iEFH02mB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC25413A3F2
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 21:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738357376; cv=none; b=GjiICYE1f66VC1palBreZog9tOHGGTB6typM+1PtrqJq/YqiKGEdcvKXOjSdnV7K+Xk034N37otS16xd9KttPng754PKkWBVcjQXMUHAw5n7y0iMkNx13iljzkpUulotuJ70JZorEnIubjYcsCUu+XzxFvAyFdA+tMw2FmMXDsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738357376; c=relaxed/simple;
	bh=Ng7Xu1+C6TScGxNGp1HWzNvsK8g1pGnGxAnouv/SAaQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r2CwsyEmAzTJIgcdMz/xe3dFW4YellAEPcPEXXtRtQGxhYKkFXJMrNOMnP3VJTIGsAiL9ydl35IuUpz5ylwIcvslxds21GkciCGp0BbpScPhLNp9yWX2bxnJJoElb/uUi+PuAtVvd9ydLqkVEPn2J9n+hxfp1G0TZP7aVYVlIWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=iEFH02mB; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=lx+lxbptc3ElIn
	I5zGm1mKbu0LmgncMfZ9ZTzHnQz60=; b=iEFH02mBNfZHfCagQfCkrwGh7oo3w0
	9i5oqK3FhPmAr8IgE4wiCIZ9xM+LgWIKUHp9DfdeqDDTJ51+5JKWSlkGnIRtMG5I
	6ce9zTpB6QG4E8xK9TG53QAnT2hE8H30zcvj3IV51ZKKc+H2OIFAVMg6nnUrZfow
	RF/MxRIFkk6L4IYWszMo1iWUl6Y32zfS0/0u2kkpL4FhFnEv2nLgVCe59tN/fZZA
	WvH4grwSFgbsjS7NF+SutlS8G1wXbLGBXblicXHjTq1hnVugutMg26oLOUonJ7yz
	lxvlKpcO2AFuZH084WyJ02DS+YVT/zg15uDnCvXtKz7avy5FnmQSzKGw==
Received: (qmail 1801959 invoked from network); 31 Jan 2025 22:02:48 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 22:02:48 +0100
X-UD-Smtp-Session: l3s3148p1@7Zxs3QYtrH3Uph5e
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
Subject: [PATCH 0/4] ARM: dts: at91: calao_usb: fix various naming problems
Date: Fri, 31 Jan 2025 22:02:35 +0100
Message-ID: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Two patches deal with the either missed or mistyped vendor 'Calao'. The
other two patches deal with improper node names as reported by
dtbs_check.

Wolfram Sang (4):
  ARM: dts: at91: usb_a9263: fix wrong vendor
  ARM: dts: at91: use correct vendor name for Calao boards
  ARM: dts: at91: calao_usb: fix button nodes
  ARM: dts: at91: usb_a9g20_lpw: use proper mmc node name

 arch/arm/boot/dts/microchip/tny_a9260.dts          |  2 +-
 arch/arm/boot/dts/microchip/tny_a9260_common.dtsi  |  2 +-
 arch/arm/boot/dts/microchip/tny_a9263.dts          |  2 +-
 arch/arm/boot/dts/microchip/tny_a9g20.dts          |  2 +-
 arch/arm/boot/dts/microchip/usb_a9260.dts          |  2 +-
 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi  |  6 ++----
 arch/arm/boot/dts/microchip/usb_a9263.dts          |  8 +++-----
 arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi | 10 ++++------
 arch/arm/boot/dts/microchip/usb_a9g20.dts          |  2 +-
 arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi  |  2 +-
 arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts      |  4 ++--
 11 files changed, 18 insertions(+), 24 deletions(-)

-- 
2.45.2


