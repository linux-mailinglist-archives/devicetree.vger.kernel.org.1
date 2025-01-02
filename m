Return-Path: <devicetree+bounces-135090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 229E69FFB90
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4ADA11883911
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD5E145B03;
	Thu,  2 Jan 2025 16:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="nRMgclD7"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34C7129A78;
	Thu,  2 Jan 2025 16:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835407; cv=none; b=FW1pSJzWF9si0UQPNN6M//IAsdXtVqaGkBq+WMfM4DnnhIiJ7j32zd7+FL3J5vuxYD/YJiNkC9tfFLlVj2/z4rqKQ1XxSET5D/Kgq8I3xfDM7FRmGyyVP+oIrSc1s7uCrFe/3b3Wvpk3iON1LFNPD2Vvyy94XKbpE7k8WaGeqAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835407; c=relaxed/simple;
	bh=QQa+NFb6nBrpmQFZwmPXdOwddQ6gwxQz5qVeHp1gD2k=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GPP1ZN3y5hYEHzkCh5bSMOTuayGxov4PLv8tO1x3yNCowof/rgm3HAKMrmZbTuFqkdBe9XndNE+S9afpkr9bHxXfMEpj5S5fvJH/iRxdgFo9Om1ubLpnEojNqDUyrw2omHJ9gGX9bO1O/bXhFSICsmh6Kkca37lQ4A/o16WvsAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=nRMgclD7; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502GTlXK2198793
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 10:29:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735835387;
	bh=+MFmIHhCk/rAx3hqXJ4Qkb9WRuDjk3r2C1qHxrU2TeY=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=nRMgclD7PBB+xyVgqdRY3ac9KIOTZML6G7orvdXDTrbI9/R0Nb6hpPYJWXlT4UQ4o
	 QCZQXa7KoEYBgUD8BuOPUGgSbh/5KvcGt9Rb0TlfsOQAAp17ToAQjoj0Kv+Y/d+oCl
	 P9mBVvRnX0cogDJNzhRsk1Web7ATnP3j6xaKAm48=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502GTlMr021924
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 10:29:47 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 10:29:46 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 10:29:47 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502GTkgx055171;
	Thu, 2 Jan 2025 10:29:46 -0600
From: Nishanth Menon <nm@ti.com>
To: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Bhavya
 Kapoor <b-kapoor@ti.com>
CC: Nishanth Menon <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <u-kumar1@ti.com>,
        <s-sinha@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-j722s-evm: Enable support for mcu_i2c0
Date: Thu, 2 Jan 2025 10:29:45 -0600
Message-ID: <173583532350.267426.8424602830328689601.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241105091224.23453-1-b-kapoor@ti.com>
References: <20241105091224.23453-1-b-kapoor@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Bhavya Kapoor,

On Tue, 05 Nov 2024 14:42:24 +0530, Bhavya Kapoor wrote:
> Enable support for mcu_i2c0 and add pinmux required to bring out the
> mcu_i2c0 signals on 40-pin RPi expansion header on the J722S EVM.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

Side note: It would have been useful to state in the diff stat that
gpio_ranges handles the standard GPIO configuration.

[1/1] arm64: dts: ti: k3-j722s-evm: Enable support for mcu_i2c0
      commit: 9442f963098f1eb9d1565fdd694e506d0c2c6f45

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


