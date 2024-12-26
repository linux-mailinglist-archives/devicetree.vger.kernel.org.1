Return-Path: <devicetree+bounces-134172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 702CA9FCD99
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 21:29:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1317F1614F9
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7B31474B8;
	Thu, 26 Dec 2024 20:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YNnmlQn4"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC3418E1F;
	Thu, 26 Dec 2024 20:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735244941; cv=none; b=M5U/EKATlUMLAOx1LfUzTahhCSpu9QTEiRVyHVSNYGWbUY+do13rItmuklfHYq2oMf2ABmV4AkLcuznW5iG9oAL4YkeOYyUeR8AFBeQ1Dh25mwrQtzCnkMX55n8bjLx22E2RWrBqEBFM5vHesDKGeY70BlSZqpMYEOnwpWWhmX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735244941; c=relaxed/simple;
	bh=Jp3QnCzypXJo6sFyEKALZD6OKhLnz9OG7eyXshioiVg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jjyyBBaQMyJn6kcoIFdBK41V1g2r0/3KCpr5evo0JItZ7oXddpRquL6jC9Eeax5ShFOv4/9ZRiFZbM7Gm1AQ+zoC6mLPmHJoIve16WtnS2pQjUwg+4JCMhrMSfis8u/aEDiuACkeDOP3OgcsrqoeRaTd8NdFEJzO9TtrX2KwSvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=YNnmlQn4; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 4BQKSlw31300706
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 26 Dec 2024 14:28:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735244927;
	bh=raQfA3pPirSU1q019TeBHo53NFrJian0RAtgq7ilfGM=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=YNnmlQn4s/DCUmSTpBLq6bBhTSfg3HfAUuCBEbYg73OVBylyNWhYUVrWJCNN73hAB
	 PLwvipur65Um7/wKxCVTdJBFpdBaMfnydqKu8j1AjRFwXpS6/svkUZ5B4YW4E8ylZV
	 b5K57ptdX9t3kJNe2daQcylfnE3zvDnoqE6PJpKk=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4BQKSlpH032426
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Dec 2024 14:28:47 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 26
 Dec 2024 14:28:47 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 26 Dec 2024 14:28:47 -0600
Received: from localhost ([10.249.33.38])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKSlbc104472;
	Thu, 26 Dec 2024 14:28:47 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vaishnav.a@ti.com>,
        <j-keerthy@ti.com>, Anurag Dutta <a-dutta@ti.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <u-kumar1@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-j784s4: Fix clock IDs for MCSPI instances
Date: Thu, 26 Dec 2024 14:28:45 -0600
Message-ID: <173524490004.82164.13189977088839437371.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241104121241.102027-1-a-dutta@ti.com>
References: <20241104121241.102027-1-a-dutta@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Anurag Dutta,

On Mon, 04 Nov 2024 17:42:41 +0530, Anurag Dutta wrote:
> The clock IDs for multiple MCSPI instances across wakeup domain
> in J784s4 are incorrect when compared with documentation [1]. Fix
> the clock IDs to their appropriate values.
> 
> [1]https://software-dl.ti.com/tisci/esd/latest/5_soc_doc/j784s4/clocks.html
> 
> Fixes: e23d5a3d116d ("arm64: dts: ti: k3-j784s4: Add MCSPI nodes")
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-j784s4: Fix clock IDs for MCSPI instances
      commit: 94a7666e3eb9f52f0097c0ca6fb093f5f20d4462

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


