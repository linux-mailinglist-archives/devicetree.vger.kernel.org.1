Return-Path: <devicetree+bounces-136740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EA4A060CD
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:55:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 508801692B3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2E3199E88;
	Wed,  8 Jan 2025 15:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="hG2gaF7T"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75B91F9ABF;
	Wed,  8 Jan 2025 15:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736351697; cv=none; b=RoMcHYtuvL1ipRQiZ5JyjrfMkzBerDR8aEwWP2+pM1c9Y6PHLr9FadMiy5cZKGg4EpR678k/cLwoyLV8OAVEE3BzfLskt/vRhceGOQIExfCfIW+T4l3qbhGNnaXCACm3WbBRo4bG91Xw0ScsFi6BVve1EpLETwHapLUA2OKa8vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736351697; c=relaxed/simple;
	bh=kkTm5hILt4cpbBWDQOoO5F6y8nYu3WGoHDPrxpN5n58=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DUUwIZ65u/apdQMhPPNKChsL3Kwd7Td1JDyUtoy6O3inPv9WSSiIifwhwULnepbuaQO96TiZLGIMWzIYgrVV/DBX+RukjE2eVu1jiFiZpjHuoXTOhPDw113r9+B3pg/g2raJsSuisNa2VdTTe7QjSX9VHm3AfbRakYEzPmyo4CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=hG2gaF7T; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 508Fsnmp3124795
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 8 Jan 2025 09:54:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736351689;
	bh=vETuhsc22KBaL7OyGgTF6n2RXqRfulEyaEctdakumdY=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=hG2gaF7TGUA8Rf+u647RCGXb4dUmxnt4IZbiCgN1f5tfLYgSEQmyVMPTxUs+92WVF
	 RpxLyDrHe/r7wPnze7io/lrhrN58B5lmapSLOU63vQfNf5LDyh+CwvL9uYaC61sgvZ
	 ZqBJ0qKtq/vqcMVBhKFInlRa/YWuuWUxRJKbXBdc=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 508Fsnfu017791
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 8 Jan 2025 09:54:49 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Jan 2025 09:54:49 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Jan 2025 09:54:49 -0600
Received: from localhost ([10.249.32.182])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508Fsn8i091068;
	Wed, 8 Jan 2025 09:54:49 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, Udit Kumar <u-kumar1@ti.com>
CC: Nishanth Menon <nm@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-j722s-evm: Enable PMIC
Date: Wed, 8 Jan 2025 09:54:44 -0600
Message-ID: <173635167731.1209140.11489613638292519469.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250102103814.102499-1-u-kumar1@ti.com>
References: <20250102103814.102499-1-u-kumar1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Udit Kumar,

On Thu, 02 Jan 2025 16:08:14 +0530, Udit Kumar wrote:
> Add support for TPS6522x PMIC family on wakeup I2C0 bus.
> This device provides regulators (bucks and LDOs), along with
> GPIOs, and monitors SOC's MCU error signal.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-j722s-evm: Enable PMIC
      commit: 998ad09ad3b0ef1776fcb988af4916a062b92cc1

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


