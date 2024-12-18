Return-Path: <devicetree+bounces-132141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC409F5FEE
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:09:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10B4F18971A5
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 08:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D26175D35;
	Wed, 18 Dec 2024 08:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="Qz1JjhHV"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB911158538;
	Wed, 18 Dec 2024 08:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734509101; cv=none; b=Hb/Lae29+bqNokkNF5Qgl5hxgv5ofYadczZeVN8aKsHoELeY5VGJ6T1/bCG5pBiMHc7IKDuEQxga83eHhrIk20/boHhuung7PwpKb+g6sRH+gEbdgTID1rYiygN4ilU9oBYrGqjIWuzgGX2htYO0/AcKqxtr0MEZZL6B5mG+lDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734509101; c=relaxed/simple;
	bh=qZBieEGoPvE0k3haQfSwJRuoNpJhZOeLhQPi82vbd60=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=HCq3hAqZvHwQfaTyn7EN6chLrJXbaJMm/GXO/78UyimGNIIQRWHdKGZHJ6YTtZQmWpgUnVjJvJRewqMDLf00KfbPhCvLxKJk2aVOkJbaL/NoCJ4HbnXHkgWptN/26OGS4Tcj5eujX5wAjLQ71Zk3bsRDRA2TP2ZfUVhZ6oKG5EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=Qz1JjhHV; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1734509100; x=1766045100;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=qZBieEGoPvE0k3haQfSwJRuoNpJhZOeLhQPi82vbd60=;
  b=Qz1JjhHVCh0/V5uKvzMhJTeZNM+haF+fFjvuW2Mc9zFrHRgqoWUunWKc
   5BRmlNXiXY6Uum4s0mk/ekGUFl8785jonUDmNy6wBUArBxDPoF02mo842
   Xhhqz+09GSeb1kLsL8Hr2C38dJ1pZFojQa8F8SCbuGu6gcM33dH+HRFeH
   Bup0b53AnTOUR2LKFD204zNJ6LAFVNeN9QbK8Bi8q65svnCBZtXzXV3WM
   qiz8w/f0/2/y3lbP+yfGPDe+tnouM+C3LxNSgww2qPrhGughQHNlBhVEr
   5tAcSgsjD4KGXwznGJsqMVP7Ahj1xNy9Aw/HggsjMznb1ht+C/gEJrFdX
   g==;
X-CSE-ConnectionGUID: xTeLUC79Q52BURM6x9sMBQ==
X-CSE-MsgGUID: xpQhf9t/R9+vDKVXZvKcSg==
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; 
   d="scan'208";a="266906839"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Dec 2024 01:04:58 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 18 Dec 2024 01:04:40 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Wed, 18 Dec 2024 01:04:38 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH 0/2] Add address/size properties to spi-controller nodes
Date: Wed, 18 Dec 2024 10:03:31 +0200
Message-ID: <20241218080333.2225-1-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This patch series adds common properties like address/size to spi-controller nodes.

Mihai Sain (2):
  ARM: dts: microchip: sam9x60: Add address/size to spi-controller nodes
  ARM: dts: microchip: sam9x7: Add address/size to spi-controller nodes

 arch/arm/boot/dts/microchip/sam9x60.dtsi | 12 ++++++++++++
 arch/arm/boot/dts/microchip/sam9x7.dtsi  | 12 ++++++++++++
 2 files changed, 24 insertions(+)


base-commit: aef25be35d23ec768eed08bfcf7ca3cf9685bc28
-- 
2.47.1


