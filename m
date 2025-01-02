Return-Path: <devicetree+bounces-135095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B689D9FFB9F
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:34:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FD803A1CA3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8780145B0C;
	Thu,  2 Jan 2025 16:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Blt9QAcT"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFA75914C;
	Thu,  2 Jan 2025 16:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835637; cv=none; b=S5lpmrLacmHAlSzMwjOsKzc4+vxpnM0fc11J4Tw2BhiQximlORitEvvgZvJSHo7mEOaf4I2KcsFnxvJueIX9K6FNJ/gKVTQ2huYFIZOVADlxjRr0davteQyK0fZt7M8xnh+JJ6r8ZKA55l03sd6sGQHqYM3U2V8gd5/7dar2joM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835637; c=relaxed/simple;
	bh=R/C+PrUBOGpbTUYGfm/zludNCYz2hK/9AU9Fr+c6pbU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oXittJxZokowk6uRRMAf7HFANJQl4tbDYp947VsYjtiMMe+0LeVlev0B3FaskBWnnHEdzDDABvrbbohWeuZZ4KMbh/fJWtrLc5PI1zem9wswt10/jQgWWmEfZOdYQt6U3AeohkZ6DedDaVadLStlfuZktasnFtKvXxqJWXNISg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Blt9QAcT; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502GXml12199349
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 10:33:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735835628;
	bh=ZKhJLqhiY4BgfFZaSnPfgvPlSceMNAzM9xufB5Fw2XA=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=Blt9QAcTLzOwGohu8BxNU1qxLuwxP5iOkZXszB+nuqa02Rr4HQ4xzT43eqzNw2gfa
	 xB4T2XRPZLxmShEgHQsvNTFBUksj0h78ZhrS6xIl+m5ffUYm0Eij0edLCDHnswrN9n
	 47s9ll8hhqG8v80VYlz0tIpWOikcU1gASQstmsyo=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502GXmN9036461
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 10:33:48 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 10:33:48 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 10:33:48 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502GXmkv060747;
	Thu, 2 Jan 2025 10:33:48 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thomas Richard
	<thomas.richard@bootlin.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <gregory.clement@bootlin.com>, <thomas.petazzoni@bootlin.com>,
        <richard.genoud@bootlin.com>, <u-kumar1@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-j784s4: use ti,j7200-padconf compatible
Date: Thu, 2 Jan 2025 10:33:45 -0600
Message-ID: <173583562065.269347.5876221700425554154.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241230-j784s4-s2r-pinctrl-v2-1-35039fafe2ca@bootlin.com>
References: <20241230-j784s4-s2r-pinctrl-v2-1-35039fafe2ca@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Thomas Richard,

On Mon, 30 Dec 2024 10:49:00 +0100, Thomas Richard wrote:
> Like on j7200, pinctrl contexts shall be saved and restored during
> suspend-to-ram.
> 
> So use ti,j7200-padconf compatible.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-j784s4: use ti,j7200-padconf compatible
      commit: b48888c9c4af15fcaa57076aeff6c48c90809bc5

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


