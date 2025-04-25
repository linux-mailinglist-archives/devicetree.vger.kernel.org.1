Return-Path: <devicetree+bounces-171108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C34A9D404
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 23:15:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C47A1BC238E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D5CE22425B;
	Fri, 25 Apr 2025 21:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="OCcO73Qg"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4344652F88
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 21:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745615729; cv=none; b=pgdyxnV6utyVSEVJuVPOCJrBEsviq+DPVtGhIoh6R7rUUCFIv7KtUg3qh51gemeKHRCmO6U4cgXV/BXS5ZjWz5hx1SOTgkivTPvY7SOroL5N6KpQ0w6F2DpEfV6Lt3SL7C4ZtTLimXc+ckR/kXVyYWiWUKVcpxXFfYihgLlQvXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745615729; c=relaxed/simple;
	bh=nMRU3NMhexbywC809uhOu5XEBtEclRqI8s+qPrEWirM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KXbRxl0MmyBVFtOyZMBJlR5xAyF9OUaL1dMGnX5yP2yS80xKFuElqoDGZCdBt23CCNH5S2CBt3T/8R7r7Zj8OWElvhJVOePwoZXcALjBJYj971IYxCd23mbtkoPl/mW3OyWO0diBG5C0v8KWA7VJNMoZt8a1ytacQfxFff+i0ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=OCcO73Qg; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53PLFEjA3027724
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 25 Apr 2025 16:15:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1745615714;
	bh=J7Jea/NPwNCfUkt14yxUySOLJ2V2rzjzSUiEsd0fgVY=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=OCcO73QgmP1zHLdyuIrwqoojpigohgd7C3otpc1c2KubgMyCDVkY2/H4j5045z3Mx
	 I0V1MNW4Iqemc62PM1WkF2jEq8GgQW2gnVoVczxPKbf/wLey3oetCNqX6S4H7RsnG6
	 s4WrraITkmQ0WXsZIbXeDtmLjRqB6FfQwPsq44Y0=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53PLFENK081533
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 25 Apr 2025 16:15:14 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 25
 Apr 2025 16:15:14 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 25 Apr 2025 16:15:14 -0500
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53PLFDFY099231;
	Fri, 25 Apr 2025 16:15:13 -0500
From: Nishanth Menon <nm@ti.com>
To: <robh@kernel.org>, <kristo@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <vigneshr@ti.com>, <m-chawdhry@ti.com>,
        <w.egorov@phytec.de>, <u-kumar1@ti.com>,
        Dominik Haller <d.haller@phytec.de>
CC: Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: ti: Add bindings for PHYTEC AM68x based hardware
Date: Fri, 25 Apr 2025 16:15:12 -0500
Message-ID: <174561565253.212307.7484148175271541122.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250423133635.29897-1-d.haller@phytec.de>
References: <20250423133635.29897-1-d.haller@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Dominik Haller,

On Wed, 23 Apr 2025 15:36:33 +0200, Dominik Haller wrote:
> Add devicetree bindings for the AM68x based phyCORE-AM68x/TDA4x SoM
> and the phyBOARD-Izar carrier board.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].

[1/3] dt-bindings: arm: ti: Add bindings for PHYTEC AM68x based hardware
      commit: 5d15c4395fd360ab894a28c6a7c8ca44593cdc61
[2/3] arm64: dts: ti: Add basic support for phyBOARD-Izar-AM68x
      commit: 8bc3b1c8645213ffc22f48238e2f325cc4fa29d0

I have applied the following to branch ti-k3-config-next on [1].

[3/3] arm64: defconfig: Enable TMP102 as module
      commit: 8d8f28da8f9055acf3bd8fa4c6cb05140c505baf

Thank you!

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D


