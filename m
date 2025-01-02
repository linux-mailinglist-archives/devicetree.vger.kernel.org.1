Return-Path: <devicetree+bounces-135093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 629DF9FFB9A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5405E3A05D0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D3938F91;
	Thu,  2 Jan 2025 16:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HHI0PiLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4F37F9;
	Thu,  2 Jan 2025 16:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835590; cv=none; b=V9LETDooFnyntvXDWub5tHyFSXLbPDUjBlXQ0nU+cmkQiZCLU3vqneHDppezW6gSJds/JbSzZosgPHSf3njKh2DrkVkByn+LVhpZ4z4ml5dPy82WXtBylp9rAQMrxotDg9MgFVoLFLjWY0H+ZtfQ0Pt/T11dS22Knht7ZGqpvXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835590; c=relaxed/simple;
	bh=nh/BJ+VKBjRVe1Y62V6zHJdGdEAftT+pdJu+N7rIA6U=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o11cDV9XIGNdpE++Ana7Nyal0dfkDM/hipcC08msRscnlZTC7TL9yFEdABEa+qvAoaMHxpJhyzP1vGhz4XoNIFBL9IZrfoY025w7auEwrRiHNF8DnbHg1hef+Eso8r5N7vORneM6pACtujrfSCbsx0prlfG0l7d2qSXutwS5jl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=HHI0PiLJ; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502GX35D1965598
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 2 Jan 2025 10:33:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735835583;
	bh=ddP8uN4vD3qJfj0bOVjzHjJqASNDgtJu92Zk1hR57eM=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=HHI0PiLJqakqZ1rjPWde1oQ0yRja/hh7LUm2DQsccIctIDt/StPieeAi8s8oR46r9
	 dCHbQpsCALw70gpDm0A1OYW2oM+2ibB+5Xr8Emp8fWG2mVweIHWvg003K7vDcDlPcm
	 wPMIeSPdp41m8MgQJCt+jNbrv/FCNnaIJj0hTZUE=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502GX3pb085846;
	Thu, 2 Jan 2025 10:33:03 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 10:33:02 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 10:33:02 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502GX2sM077513;
	Thu, 2 Jan 2025 10:33:02 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan Brattlof <bb@ti.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Bin Liu
	<b-liu@ti.com>
Subject: Re: [PATCH 0/2] arm64: dts: ti: remove extra GIC redistributor ranges
Date: Thu, 2 Jan 2025 10:33:01 -0600
Message-ID: <173583548743.268779.10519940224534854554.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241210-am62-gic-fixup-v1-0-758b4d5b4a0a@ti.com>
References: <20241210-am62-gic-fixup-v1-0-758b4d5b4a0a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Bryan Brattlof,

On Tue, 10 Dec 2024 14:59:23 -0600, Bryan Brattlof wrote:
> While debugging an unrelated issue Bin noticed we've accidentally
> defined the redistributor range for the GIC-500 two times on the AM62x
> and AM62Ax.
> 
> This simple series removes the extra copy :)
> 
> Happy Hacking
> ~Bryan
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-am62: remove duplicate GICR reg
      commit: 72c691d77ea5d0c4636fd3e9f0ad80d813c7d1a7
[2/2] arm64: dts: ti: k3-am62a: remove duplicate GICR reg
      commit: 6f0232577e260cdbc25508e27bb0b75ade7e7ebc

I have added the Fixes tag on your behalf this time around. Also the
reported-tag does'nt have a Closes link, which I understand is because
the report was internal. it does cause a checkpatch warning, which
would be useful to state in the diffstat section. Please take care of these
next time.

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


