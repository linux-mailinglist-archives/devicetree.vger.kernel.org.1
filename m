Return-Path: <devicetree+bounces-134133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FC69FCC8D
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 18:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27CC116040E
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 17:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3861411EB;
	Thu, 26 Dec 2024 17:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="u0eeG/UQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007BB4437C;
	Thu, 26 Dec 2024 17:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735235980; cv=none; b=R/GQ612zc58B9LAmoJnV8rd1dq2ttXlTIJoy6ewgpJffj8jzdzPwJsRxHPSaigvoaMVwQy4wSmOdnw44rW2Ggl61sk0paXVp5f3i8BqyycwenLXQ0Tk/MmYB1D9oVsfe3ZzK1y1oaAGWgbEp87Cn6dOh06ljGlpYQK3yjhHWlBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735235980; c=relaxed/simple;
	bh=dogxEN/m0gZU0/RUutfxEccM+C0XjrRu9ha4LCJuRbE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EaCKl7Lfi2Y3jw5IMiM8Ygq3CHjKzLvrmFcNGx3KbWMbW8aS5xQhbmNkvg0SYeegZ3p6k2EEf7SZXVudVguB1JEvtnUwRTzIsmd8T6GA0QsPCGqd96xnwoWWfv6ZgaBclVWDHaOcEb4yAVlAyg/vFjGWwGTezyEpuBd1E4b6+MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=u0eeG/UQ; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 4BQHU5hA1321602
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 26 Dec 2024 11:30:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735234205;
	bh=ioOSpy2q5tRAqXjjc30K+XBynOGb640df/7gxCK2eV4=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=u0eeG/UQ9DBZVZwJZhaqOnyINPv0jlcDgBNd7csOOb6nCWgogs6WPi/uStSFwu2ot
	 1PB/ak0m/5HudyIC/odVY66SvXGm8fkO26Dsj9CH1+gutToODkRGt9B6rP8f5E64gk
	 YeukQsEPoTCvV50WiLEvjzlO8HQkdcnK7AfeY52Q=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4BQHU5L7062537
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Dec 2024 11:30:05 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 26
 Dec 2024 11:30:03 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 26 Dec 2024 11:30:03 -0600
Received: from localhost ([10.249.33.38])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BQHU3OL066075;
	Thu, 26 Dec 2024 11:30:03 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        Wadim Egorov
	<w.egorov@phytec.de>
CC: Nishanth Menon <nm@ti.com>, <upstream@lists.phytec.de>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] arm64: dts: ti: k3-am62x-phyboard-lyra: Set RGB input to 16-bit for HDMI bridge
Date: Thu, 26 Dec 2024 11:30:00 -0600
Message-ID: <173523339473.39503.8596566004787069215.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241101131427.3815341-1-w.egorov@phytec.de>
References: <20241101131427.3815341-1-w.egorov@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Wadim Egorov,

On Fri, 01 Nov 2024 14:14:24 +0100, Wadim Egorov wrote:
> The phyBOARD-Lyra connects only 16 pins to the SII902x HDMI bridge's RGB
> input. The default 24-bit setting causes incorrect color output. Update
> to 16-bit to match the hardware configuration.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/4] arm64: dts: ti: k3-am62x-phyboard-lyra: Set RGB input to 16-bit for HDMI bridge
      commit: a4b422390be3c4147db6d97b016adecb3573635d
[2/4] arm64: dts: ti: k3-am62x-phyboard-lyra: Add HDMI bridge regulators
      commit: 2a0418ac48d3083e2b209242237abef84497d19f
[3/4] arm64: dts: ti: k3-am62-phycore-som: Define vcc-supply for I2C EEPROM
      commit: 4ffe12ccae4ab20e5dc41dc428f909467ed7cc4d
[4/4] arm64: dts: ti: am62-phyboard-lyra: Provide a vcc-supply for the I2C EEPROM
      commit: 80ad23c4032c6b2afe225c866b9496472965b9ed

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

