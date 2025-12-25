Return-Path: <devicetree+bounces-249694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C86CDE134
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 21:32:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9A0F83004CA7
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 20:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7A0239567;
	Thu, 25 Dec 2025 20:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="UAaPN5xi";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="LagQb2C1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CAC3A1E70
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 20:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766694728; cv=none; b=Deo6jQSE5X5XjNOuJZUmcOZ8yI7+deQXQXrXBHR0S/BSBgHjnd5g6Aoa0UIbrABK1nDJhKs/qgY2DFdryunAEI8mVD5wumgFzkQPQd0zsirORf6qdFjW5YK+guJZZ173w8dR4s3w1t+7UouL3n41dPbxZnl7FH5//7AD/5FzLIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766694728; c=relaxed/simple;
	bh=S0w/9HqFtCT6W5zDOTTgsmPCo9lfguBHpwSfKLUfdJs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UcBcZDIMH0guzNCPhHSC/IqJWzFvE6uWACYpxmobmilbkD6zNmFlhhj1Cvcac1itHIAU/0nhcp3jwTNyeGOvVtzLd+tBBEWhjlVyRjis5mpgqXjXRjN6S1OUsyuYhMb9gKO7y6AJkXmF9RWUaQZvX2SKcvLtMPTHAcSBSDJJmgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=UAaPN5xi; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=LagQb2C1; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766694725; bh=S0w/9HqFtCT6W5zDOTTgsmPCo9lfguBHpwSfKLUfdJs=;
	h=From:To:Cc:Subject:Date:From;
	b=UAaPN5xiTvJ9HroIYPvn97wsctUoA/OwpX2AsS/NUt+jFyv5kXqbU77U6MG5ZUNrw
	 OEeGLfol6vFIqjlrOBNcc8Tw3WvfDzEa3H9x5njAqLBTlHjx0/p4PG8MpCXc9p1Fl/
	 xqtKt5uti422d0xsk7UE+HPyuLIJAd5szdZrCHMmTwVqF9s8Uy3H6SpInl7/1aLYhT
	 SfK9ETLkVrpzMJqZjzjKPfn8k9X1UYnqqUNPNz06jhU2XjQ2QDGLORkgqX1RMBzEqt
	 MqHxrpkhZL7tN4dhsMJg9OLpGGlzzUcFQYOYIr3ZQk1AKY+Z6GBfK5za/5ih/xqcF/
	 +UpXI5716QZzA==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 00D033E8C62;
	Thu, 25 Dec 2025 20:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766694724; bh=S0w/9HqFtCT6W5zDOTTgsmPCo9lfguBHpwSfKLUfdJs=;
	h=From:To:Cc:Subject:Date:From;
	b=LagQb2C10K9s2pP0uLaeeEF3oKdAbR8W1aNr4h3SMiRtx3UHNGa/HLJGBZZq5y3gb
	 SDjsxPYLdEQ/AbaWVhCCihHcswnURei8pOSAz/LJpTMC3jSxt9QvK7mGg9Hg2igWGz
	 mNxvLifqD5CNGzcN3OmVw76s6YJmCZTuXuSm2AXV73luVC+ILAjUAzsq2+NhztProH
	 Z0AagjstdaGbfpeLVXgWgr1ntBmfBf0WcvSmcG/LtpLuZ9vCahtmNTQdKP2SGdka/X
	 P0chX0tQxwmLE5agKWgVincqas/+oa863WK0JkB+QwU5xeuyQc/+TvqRKBzy+cYb+/
	 fg6v1TRRFipEg==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 7ABC13E8B7A;
	Thu, 25 Dec 2025 20:32:04 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND 0/2] ARM: dts: lpc32xx: set DMA and NAND flash controller properties
Date: Thu, 25 Dec 2025 22:31:55 +0200
Message-ID: <20251225203157.1414349-1-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251225_203205_018990_3B04BD54 
X-CRM114-Status: UNSURE (   8.46  )
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

Note, the changeset is marked as the resent one, it's identical to the one
https://lore.kernel.org/linux-devicetree/20251225180230.1400420-1-vz@mleia.com/
but now the changeset appears on the linux-arm-kernel mailing list as well.

Vladimir Zapolskiy (2):
  ARM: dts: lpc32xx: add DMA controller properties to the device tree node
  ARM: dts: lpc32xx: add DMA properties to NAND flash controllers

 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.43.0


