Return-Path: <devicetree+bounces-250864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11719CEC9D8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 22:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A7F03008FAD
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 21:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D7330EF88;
	Wed, 31 Dec 2025 21:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="sbcNWmBY";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="sbcNWmBY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAFD12CDBE
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 21:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767218300; cv=none; b=FvzQL1zxOLIdtkNn3kiyJq837gTu3pwNTU7GxULphyih1kNaKfvI1u+G47t5Xw07vetcmt1Mj7a1J1g3RgCMie8fn8juw6bKXDKQHrU+Z9jR7BvSY+GcTMytR21SHRv5Vv8Whl9b1SWphLPvCtQn6EnsyQDZD6Ck6lHY+ZNqRhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767218300; c=relaxed/simple;
	bh=2fn1G9/kTdcOLJ2E5DlSdCC8IejFxaTXVYVDAn7wO2M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VsCQtV8JcIGogSvGglc2pzDRTuxovAFu2lLeWQ0UHdclPImfG/8OUdD19ra+SmfHNesreLPFdTFfENUPcSYwb8utFyHWL/2bf2j5apjlj7x2lM9BO0T/PPcU/chlqHX6Z115JBWKwGuABYUq9srA/e5OOwtP7C8Y9hpToJyirg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=sbcNWmBY; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=sbcNWmBY; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218297; bh=2fn1G9/kTdcOLJ2E5DlSdCC8IejFxaTXVYVDAn7wO2M=;
	h=From:To:Cc:Subject:Date:From;
	b=sbcNWmBYxRwB+xVOuxtbktmXTtlSZrM1yhchXq0qbkk1GOqzbV7sRhmFhVkSV0MMF
	 KU3l3O1iRBLAoBQMRHcnTmZmIG/ZlnMR4ollC1HaYphLKt1Znfmrw9Q/h9OCSWBq2F
	 pJ3bHzZinBqXRZxfz2Q2jHT8UJY5Y4z+twZo1u7ov0Ko+WLmPO4M0oWmcoIc126T0a
	 HVLWRpst48OdEI/XHk/eZsgLTyyDt6PIljSRYyJKk1pTIG/zhdZSZKh4b9UxRhwCOx
	 usrSHceX30f2YeJ08CAHdHu8d8yn5hre8dEXHoQH/QqmdBd7bfolOgJ2XQNLRzTtjs
	 UnJUzx6YoHGyw==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 533313E98AF;
	Wed, 31 Dec 2025 21:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218297; bh=2fn1G9/kTdcOLJ2E5DlSdCC8IejFxaTXVYVDAn7wO2M=;
	h=From:To:Cc:Subject:Date:From;
	b=sbcNWmBYxRwB+xVOuxtbktmXTtlSZrM1yhchXq0qbkk1GOqzbV7sRhmFhVkSV0MMF
	 KU3l3O1iRBLAoBQMRHcnTmZmIG/ZlnMR4ollC1HaYphLKt1Znfmrw9Q/h9OCSWBq2F
	 pJ3bHzZinBqXRZxfz2Q2jHT8UJY5Y4z+twZo1u7ov0Ko+WLmPO4M0oWmcoIc126T0a
	 HVLWRpst48OdEI/XHk/eZsgLTyyDt6PIljSRYyJKk1pTIG/zhdZSZKh4b9UxRhwCOx
	 usrSHceX30f2YeJ08CAHdHu8d8yn5hre8dEXHoQH/QqmdBd7bfolOgJ2XQNLRzTtjs
	 UnJUzx6YoHGyw==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id C275D3E97E3;
	Wed, 31 Dec 2025 21:58:16 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/5] ARM: dts: lpc32xx: Add DMA support to platform device tree
Date: Wed, 31 Dec 2025 23:57:49 +0200
Message-ID: <20251231215754.2222308-1-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251231_215817_356454_52732E9C 
X-CRM114-Status: GOOD (  13.43  )

At the moment NXP LPC32xx has basic DMA support in the platform code, it works
well with NAND flash controllers, but it makes sense to extend it to other
controllers.

The SoC specific dts changes were extracted and updated from an old
unapplied series, which added better DMA and I2S support to the platform:
- https://lore.kernel.org/linux-arm-kernel/20240627150046.258795-1-piotr.wojtaszczyk@timesys.com/

DMA support from the original change was dropped for a number of controllers
due to driver related issues, which cause runtime regressions. While the .dtsi
code seems to be correct, it cannot be tested and verified before making driver
changes, this concerns:
* ARM PL180 SDHC driver does not support a single 'rx-tx' type of DMA channel,
* ARM PL022 SSP driver defers its probe instead of bailing out on DMA issues,
* HS UART driver misses a feature to support DMA operations.

This patch series obsoletes another and smipler one:
- https://lore.kernel.org/linux-arm-kernel/379f38ac-ab4a-4615-894b-e404bea4a6a1@mleia.com

Piotr Wojtaszczyk (3):
  ARM: dts: lpc32xx: Use syscon for system control block
  ARM: dts: lpc32xx: Add missing DMA properties
  ARM: dts: lpc32xx: Add missing properties to I2S device tree nodes

Vladimir Zapolskiy (2):
  dt-bindings: mfd: nxp: Add NXP LPC32xx System Control Block
  ARM: dts: lpc32xx: Declare the second AHB master support on PL080 DMA controller

 .../bindings/mfd/nxp,lpc3220-scb.yaml         | 74 +++++++++++++++++++
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi        | 41 +++++++++-
 2 files changed, 111 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/nxp,lpc3220-scb.yaml

-- 
2.43.0


