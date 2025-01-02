Return-Path: <devicetree+bounces-135089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3FD9FFB8D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C594F188389A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C35E5674E;
	Thu,  2 Jan 2025 16:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WMXYCqc2"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689612EAE6;
	Thu,  2 Jan 2025 16:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835337; cv=none; b=hHdsa76GXGK/m/9ywGIGJc5yOPcey905FamSOKeOeFgwEs1eXhWtZttsO68sCGxenPU4qr6fRMJGp2YKWjKgxDhNKpkUtpCd4f5gknZpqllYa1ZFz4xG5xiC2E0ifOTG3s6hjqj1lzBsfSvaQVJUCdKNywpOEvB9QGJbSwzIcpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835337; c=relaxed/simple;
	bh=C5xOgoEr5/aB0jK6Lp1YO9begKKMayfdjjX5R7CbGOQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=trj+MDUQtBbNPwlSuDiVVrWAGmu3ewNZMFvmCJiFKC/x6DBEvYEYkhiEYW6hJCAUKG39M9mZLsbTd9KnJ4lHbchiRUs716T/48TN59d/+0Zbmh82BcC9Jz6sqpGzhdtUPjYsFtYLrzCPcrRPhYyXTALJl2KzecnFsnKbT+h58E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=WMXYCqc2; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502GSb8l2271675
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 10:28:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735835317;
	bh=+KRzsbvMENsTrlg9Ztig2dM8K4zAJ1LMlRz3b5yPmqc=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=WMXYCqc2XX9guT9++m1IdKsjwXai3TAwC8m28OD9YZyNgT064ePdGVbK+XU9UiJAZ
	 0p0mRvWJQXweorXPOrBtBeCJ3B8014wNZg5VDnQCDhdGzpmOtP5TyE28aCGSjR9aZ0
	 2jUWi8QJiKsh3d/g1nAkn/J8Tdl15EhAILW1xuss=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502GSbiE003999
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 10:28:37 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 10:28:37 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 10:28:36 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502GSadW071103;
	Thu, 2 Jan 2025 10:28:36 -0600
From: Nishanth Menon <nm@ti.com>
To: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Tero Kristo
	<kristo@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>, <s-vadapalli@ti.com>,
        <danishanwar@ti.com>, <srk@ti.com>, Chintan Vankar
	<c-vankar@ti.com>
CC: Nishanth Menon <nm@ti.com>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3] arm64: dts: ti: k3-am62x-sk-common: Add bootph-all property in cpsw_mac_syscon node
Date: Thu, 2 Jan 2025 10:28:34 -0600
Message-ID: <173583529248.267284.3372351110403886202.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241114165331.1279065-1-c-vankar@ti.com>
References: <20241114165331.1279065-1-c-vankar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Chintan Vankar,

On Thu, 14 Nov 2024 22:23:31 +0530, Chintan Vankar wrote:
> Ethernet boot requires CPSW node to be present starting from R5 SPL stage.
> Add bootph-all property in CPSW MAC's eFuse node cpsw_mac_syscon to enable
> this node during SPL stage along with later boot stages so that CPSW port
> will get static MAC address.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62x-sk-common: Add bootph-all property in cpsw_mac_syscon node
      commit: 28596f0dbf2452a6629026cf4bd9763f2456be64

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


