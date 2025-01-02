Return-Path: <devicetree+bounces-135097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 293C69FFBA6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BDF9162B9B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5903615445D;
	Thu,  2 Jan 2025 16:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="K8XepUVB"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347C413774D;
	Thu,  2 Jan 2025 16:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835653; cv=none; b=t1HH2YJTd1LEQuF5OJ7ZyU6jvRl7KHoRL9Vtu2XAMM1NUKVIjRPiuheFjjKh+zYTq7yE62PkhzibYnUXYkR9a07y+AD1ckmGfZhWLH+daBi6JgSTBCjEjyKQOkmgOhBOo+a2plx9z8GRNu2G/cN8VdvtfuFxbMMVcd3PK8TnGZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835653; c=relaxed/simple;
	bh=pwc8JBlcde2MWeVCG3zUY/gdrvIe5dqy1aqCVvcDUc0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NYB9te4LaP8aXO4sRN0j6WECk3oIlS7gb14H2uUq9Qds4DK/OAfgd5RY0l2LtBMlxMYjmRaQWiPQF2p3cHY88lk/ZYRFzIhTPoYRPJs+c3SWWOPcVDVxIicr1FbBzhhXZQE+YJQw8O4ngd5kocOVTuyCduz3DDn5vpYG2kPb3f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=K8XepUVB; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502GY5DZ2272314
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 10:34:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735835645;
	bh=hQWl9L8CcgSposYnH56+tEXk08+8VfZVZgvipoYZwrE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=K8XepUVBYPIGdoYnPR4bO8iko+IYTW707iQHBC8pZyWRgUB9vbYsazg8CRXvMAYFL
	 OB/cSeXozbBmBe44Nfpo/JGtZ22tTbnmXXyHpLZidoZO4qPt4dmKU4HFF0EACvETVk
	 /d22BYzAz7focxJ/ZL92q2RJ94FHlGxckO/kELeI=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502GY5n1007873
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 10:34:05 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 10:34:05 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 10:34:05 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502GY56A061055;
	Thu, 2 Jan 2025 10:34:05 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        Anurag Dutta <a-dutta@ti.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <u-kumar1@ti.com>, <vaishnav.a@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-j7200: Add node to disable loopback connection
Date: Thu, 2 Jan 2025 10:34:03 -0600
Message-ID: <173583563568.269479.10047461594837475356.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241127075644.210759-1-a-dutta@ti.com>
References: <20241127075644.210759-1-a-dutta@ti.com>
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

On Wed, 27 Nov 2024 13:26:44 +0530, Anurag Dutta wrote:
> CTRLMMR_MCU_SPI1_CTRL register controls if MCU_SPI1 is directly
> connected to SPI3 in the MAIN Domain (default) or if MCU_SPI1
> and SPI3 are independently pinned out. By default, the field
> SPI1_LINKDIS (Bit 0) is set to 0h. In order to disable the direct
> connection, the SPI1_LINKDIS (Bit 0) needs to be set to 1h. Model
> this functionality as a "reg-mux" device and based on the idle-state
> property, enable/disable the connection bewtween MCU_SPI1 and MAIN_SPI3.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-j7200: Add node to disable loopback connection
      commit: 6b51892b31fe83fe7cc8cf69e4bf7721cf08951b

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


