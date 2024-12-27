Return-Path: <devicetree+bounces-134391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB779FD5A9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 468D01662E9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB661F7089;
	Fri, 27 Dec 2024 15:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Dm6DgmM2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71B6320B;
	Fri, 27 Dec 2024 15:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735314161; cv=none; b=n0iPRtz87d3OcyrcGVNWGebtRknItnu8JYvRFFqNN3910jDbvyCow07D5lynSzD4nB6djjkgoEsvxStA4bs49IWfF9C1qRQUjHtQc+ovi+MrDO1ZUo9g+1ksdSEZThrXFIYxJuNIA3ixhsM6zmBqVKJbTKzzTx1hV1D8feNSn5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735314161; c=relaxed/simple;
	bh=IvkSOL347Q3si9FjTIhwYgXVTEnGGe5Q3kV3D0j8uGc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=utK3mtkqFtv+dXAWuePEPKbPuKNHd32DNUXn1C64bseQbzqFwZKaiWkQ9iFQYZ4OPgk6oxlWRF2NghCOAv3Qyip/B/DgHLuD9xOcr2380xun9/eUZZWwLGPZPIRl7ClG8Y8O469f9yQZExNri3nq7+tz3pjswu3IyyxfMpDcZeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Dm6DgmM2; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735314157;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0ckPKI2CzNl8cXjKXbJSAVhCafvKRom8xvDMX56khao=;
	b=Dm6DgmM2IrUPa8Y/F0BZEcRPLmWcHzL45sjvfHuEtuK7JEZvSiUaHjBAvman5526ClumwU
	lfK0BQISduryBcYuWfxXuFpU3InamGDnnkID1EMbTNpkX6U763CM7gyJ9w4avRwEvZZit2
	ScpvM615aSSGFpmM0Pk6If6lx1Es1ifdfsN7A5sHhIpo2x9kF113K5hEkk1Gj0ci3umjIx
	kCbrjOX+Qzr09IvYM3H0W+LKLC70GvyuG8Y8gw8psNYWO2tODCwjYYlfgsteAzRd9cCk99
	GRDmpytFVF1hyOtIqcgINJQu/37QhfelAgIc1R5BT5RSmmAQ1bxgleRZfx9UMA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	maz@kernel.org,
	tglx@linutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/2] Use "dma-noncoherent" to handle Rockchip RK358x 3588001 errata
Date: Fri, 27 Dec 2024 16:42:22 +0100
Message-Id: <cover.1735313870.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

This is a small series that makes the "dma-noncoherent" DT property used
for handling the 3588001 errata for Rockchip RK3588, RK3588S and RK3582
SoCs, which is the preferred way over checking the compatibles. [1]

Older versions of the Rockchip RK3588 and RK3588S SoC dts(i) files failed
to specify the "dma-noncoherent" DT property, so checking the compatibles
remains required for backward SoC dts(i) compatibility.

[1] https://lore.kernel.org/linux-rockchip/86msgoozqa.wl-maz@kernel.org/

Cc: Marc Zyngier <maz@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>

Dragan Simic (2):
  arm64: dts: rockchip: Use "dma-noncoherent" in base RK3588 SoC dtsi
  irqchip/gic-v3-its: Make "dma-noncoherent" preferred for RK358x errata

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  3 +++
 drivers/irqchip/irq-gic-v3-its.c              | 12 ++++++++++++
 2 files changed, 15 insertions(+)


