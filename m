Return-Path: <devicetree+bounces-134173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE119FCD9B
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 21:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C31791625B2
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE48118453F;
	Thu, 26 Dec 2024 20:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Sd4FyHBp"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91201885AD;
	Thu, 26 Dec 2024 20:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735245013; cv=none; b=gdZSJfPqHcIkUg73ln2MV9R2AKBLsnDiX7j3qgD2vc/9w09pn0MT0g373c7xuQMjjY2pAoromkdssNfBVpT5x34cW1NH+epPQSeuU9QpufYqttMbFW8MCHy8O5SSVesSTO/zD/wHiZO01PFmxVT2KDV7rjy2MCKitoJZLdKhY+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735245013; c=relaxed/simple;
	bh=3s82pySXZaCxg1Wz1oIdzdC9e2nZN20yjJBMtkJe7NA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=I1AbnZOsdwQTun3rM/mjjaJuMrgyP2TRHhb0tdcVZ6cWZQQcVTM+b6mjuFWX2AnWrF+lGWPBEan1LE0WfeF0saqJBFrMTK8VghmDctsCB4drayBY+0g1NrEfSenyyHVcd5Jd8t1osi444/Ee97e06MjQB4txZ3wHonRPBsYus5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Sd4FyHBp; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKTvek027397;
	Thu, 26 Dec 2024 14:29:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735244998;
	bh=siuaQT0FRAMt/zg3Cylz6Vorg3cK24DGRgN6rvZjLl4=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=Sd4FyHBp7M9z/Q5gUzSV+PT5IcOFgypK/J8ajpDlvDqJt3UokHOGNYaie7Dt5y3ZU
	 3ty1doeYpRlJH7MlfYmYQpwDPQce/JKKZrr8zDcx5VmCbTA9OKKe+klCsEmT87/fc1
	 CncUawdk6U266IFxj6mQFnd/TjcNvyvHLZKOUvLk=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4BQKTvM5032432
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Dec 2024 14:29:57 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 26
 Dec 2024 14:29:57 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 26 Dec 2024 14:29:57 -0600
Received: from localhost ([10.249.33.38])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKTv5J105182;
	Thu, 26 Dec 2024 14:29:57 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        Siddharth Vadapalli
	<s-vadapalli@ti.com>
CC: Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v2 0/2] Add Deep Sleep pinmux macros for TI's K3 SoCs
Date: Thu, 26 Dec 2024 14:29:55 -0600
Message-ID: <173524493391.82332.13942073781133579692.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241205120134.754664-1-s-vadapalli@ti.com>
References: <20241205120134.754664-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Siddharth Vadapalli,

On Thu, 05 Dec 2024 17:31:27 +0530, Siddharth Vadapalli wrote:
> This series introduces deep sleep macros which are common to TI's K3
> SoCs and can be used to configure the behavior of SoC pins during Deep
> Sleep mode. Additionally, support for SoC wakeup with USB1 on AM62x
> based SoCs is added with the help of the newly introduced deep sleep
> macros.
> 
> v1:
> https://lore.kernel.org/r/20241112115650.988943-1-s-vadapalli@ti.com
> Changes since v1:
> - Rebased on next-20241204.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-pinctrl: Introduce deep sleep macros
      commit: 325aa0f6b36eab0fe7d7efdb49b55cf7d664424a
[2/2] arm64: dts: ti: k3-am62x-sk-common: Support SoC wakeup using USB1 wakeup
      commit: 527f884d2d94981016e181dcbd4c4b5bf597c0ad

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


