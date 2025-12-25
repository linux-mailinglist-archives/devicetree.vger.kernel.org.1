Return-Path: <devicetree+bounces-249681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 980E1CDE038
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 19:02:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4FE1B3000906
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 18:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E449267B05;
	Thu, 25 Dec 2025 18:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="UU1zN9nT";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="UU1zN9nT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452EF3BB4A
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 18:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766685756; cv=none; b=MeU0PIwR3mg25GGWPdu7dKMZ9qDEN7cl38Vp6iFk9jJlg1pPJgKJLZ5Ert9rRKRBgptV3gEoWkg3rmHqJWGccTu6BfuseMw/oD7yriuxP9caHad4QB53FJBPP1XlHhqrkGTUQFhxPd0NItymP5mgprOGSKcNVVnmRdpFimPM+Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766685756; c=relaxed/simple;
	bh=0uIOP2d1K39ver0zrOqJGlcKmYPuhaFswWbrSxlNcxU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uKxCHI4bOInZpSCE7zsoehzrhw5vUvBem8p8FViRnRoq1PA6fa3LNEhY8C9qHaNvVsBqkd76WNb9Ka63Av3hAw5tHgeKNtJQzQzGA4xdtq1BwQBcdc/nDeApY7YScmrdy8sG4vSbR+mEW3QWWoMCpsT2oF89MmRLvk1yHiAh2Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=UU1zN9nT; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=UU1zN9nT; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766685752; bh=0uIOP2d1K39ver0zrOqJGlcKmYPuhaFswWbrSxlNcxU=;
	h=From:To:Cc:Subject:Date:From;
	b=UU1zN9nTVFVy/lzIqZtyXjL6aN0tIRqsFWlGdpAn5hCIKy/nPuVQkDgFLXW8WTVmr
	 HQHT7RcscOrGR/Ilc54u6Z3/0ijsVZ0v0PtDVSZvdnoB+b9k4k8LnTS0qwxog8IdDC
	 VT2esX8ksdgJtVOJUBS6GJLWb9vPHaUvBWFW9A3V5cQ3eD1kEGqoYQ+qorQ5shY2Iz
	 yd1FfrW2SwdQElJ/erwS+vKxT2Z6Dy7EabiGv7Y+Wp+1S5URh9S8Esce5++3wW2E7V
	 aB10BUctrsB7DzKEKn2dZrXvmAHyEZ4KFiyMejnCFxDuI5w8g2T2tFLywzavbtw5ij
	 jLGZZ0AQc7QaA==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 96C3A3E8C62;
	Thu, 25 Dec 2025 18:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766685752; bh=0uIOP2d1K39ver0zrOqJGlcKmYPuhaFswWbrSxlNcxU=;
	h=From:To:Cc:Subject:Date:From;
	b=UU1zN9nTVFVy/lzIqZtyXjL6aN0tIRqsFWlGdpAn5hCIKy/nPuVQkDgFLXW8WTVmr
	 HQHT7RcscOrGR/Ilc54u6Z3/0ijsVZ0v0PtDVSZvdnoB+b9k4k8LnTS0qwxog8IdDC
	 VT2esX8ksdgJtVOJUBS6GJLWb9vPHaUvBWFW9A3V5cQ3eD1kEGqoYQ+qorQ5shY2Iz
	 yd1FfrW2SwdQElJ/erwS+vKxT2Z6Dy7EabiGv7Y+Wp+1S5URh9S8Esce5++3wW2E7V
	 aB10BUctrsB7DzKEKn2dZrXvmAHyEZ4KFiyMejnCFxDuI5w8g2T2tFLywzavbtw5ij
	 jLGZZ0AQc7QaA==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 1A55F3E8B7A;
	Thu, 25 Dec 2025 18:02:31 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org, lists.infradead.org@web.codeaurora.org
Subject: [PATCH 0/2] ARM: dts: lpc32xx: set DMA and NAND flash controller properties
Date: Thu, 25 Dec 2025 20:02:28 +0200
Message-ID: <20251225180230.1400420-1-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251225_180232_634919_822352C5 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message. 

The changeset adds a numbed of necessary properties to ARM PrimeCell
PL080 DMA controller and to SLC and MLC NAND flash controllers, and now
it obsoletes the platform data of the controllers populated on boot.

To respect any probable users who does not update dtb on the boards,
the platform data cannot be removed instantly, but now it's time to
declare one year timeout for such a synchronization to be completed,
the platform data of DMA and NAND flash controllers will be removed by
the end of the next year.

The changeset is based on top of the previously sent changes:
* https://lore.kernel.org/linux-arm-kernel/20251224165845.1261926-1-vz@mleia.com

Vladimir Zapolskiy (2):
  ARM: dts: lpc32xx: add DMA controller properties to the device tree node
  ARM: dts: lpc32xx: add DMA properties to NAND flash controllers

 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.43.0


