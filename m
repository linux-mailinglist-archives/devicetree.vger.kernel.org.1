Return-Path: <devicetree+bounces-134174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A8F9FCD9F
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 21:30:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14ABB1882D57
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F061369AE;
	Thu, 26 Dec 2024 20:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="QVCqytvb"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6556145A17;
	Thu, 26 Dec 2024 20:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735245046; cv=none; b=BXXA3G9YrX0Nd3WBVa3r+baBK3+TqC6CCQRQJ52lFH5ZKZe0GYH/XFv47OkJ/eokVDvNovAvrlepeFS6K+UBEj3aERz0PO6z79G8B61jJNiiNNkA84rg31AUXHpXuBABoiVpL/dsf099z5MftE0EqWnttE7s6MfDJLHIg1Xwckg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735245046; c=relaxed/simple;
	bh=OZwzvICRybo8u/umBUWBbiNa36ankiqyqBcieRtRsDQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Xum4FqjR1Kv4XT9EQh9a2t5J2zbzDT6F7L798L67KjXyUyX4JDGgrNwEinuFwi3BvzYctSA9I2kE5bzOPT4aRvp07NBzsbL1Qi9gdKUTzaGHnueRzU5RjLCOA7fNOX4Jmb3qHOhCgfSZ08NrcaDdFrLVY3/rdmpN0YwGW68UwHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=QVCqytvb; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 4BQKUauw1338165
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 26 Dec 2024 14:30:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735245036;
	bh=KnffAqqNkYSR+PVRnd28Oue5M2tHObPXqo/C5IZdZks=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=QVCqytvbHK3ItqG8OaOpCnU2+FFiP/L02I7s65zPgsR1vUjWeopE3Q9qhwwN7dchb
	 qCTXQRpsJLH3Jz7qcNE6lZrpOoWigC6Bdv0x0vXAMMRnUk8vqD130a9IMioX7mEhoX
	 bBrNDcZ0sg8iqNqlWILsteQFAiaEwBkJfLL/PtWg=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKUaAX042171;
	Thu, 26 Dec 2024 14:30:36 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 26
 Dec 2024 14:30:35 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 26 Dec 2024 14:30:36 -0600
Received: from localhost ([10.249.33.38])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKUaYl120156;
	Thu, 26 Dec 2024 14:30:36 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Enric Balletbo i Serra
	<eballetb@redhat.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Halaney
	<ajhalaney@gmail.com>,
        Andrew Halaney <ahalaney@redhat.com>, Udit Kumar
	<u-kumar1@ti.com>,
        Beleswar Padhi <b-padhi@ti.com>
Subject: Re: [PATCH v4 0/2] arm64: dts: ti: k3-j784s4: Mark tps659413
Date: Thu, 26 Dec 2024 14:30:34 -0600
Message-ID: <173524500637.82584.659172810910949750.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113-b4-j784s4-tps6594-bootph-v4-0-102ddaa1bdc6@redhat.com>
References: <20241113-b4-j784s4-tps6594-bootph-v4-0-102ddaa1bdc6@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Enric Balletbo i Serra,

On Wed, 13 Nov 2024 10:15:15 +0100, Enric Balletbo i Serra wrote:
> This series marks tps659413's regulators as bootph-all in order for
> the nodes (and parent nodes) to be accessible during MCU's u-boot SPL.
> 
> This in turn is desired since the tps659413 needs its MCU ESM
> state machine setup in order for the watchdog to reset the board.
> 
> This took me a little while to track down, as enabling the ESM, TPS6594,
> etc in u-boot would result in the below boot failure:
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-j784s4-evm: Mark tps659413 regulators as bootph-all
      commit: 0cd578054e7107cab921ff0c24f4ac6d14d3661b
[2/2] arm64: dts: ti: k3-am69-sk: Mark tps659413 regulators as bootph-all
      commit: 0a41157c5a988520debb656325722f401163eca3

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


