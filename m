Return-Path: <devicetree+bounces-135091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F31B9FFB96
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:31:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E0C818839B1
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44617142E67;
	Thu,  2 Jan 2025 16:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HG1SBr02"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57AC13FEE;
	Thu,  2 Jan 2025 16:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835467; cv=none; b=LeN6F93m8dC6pU0UVL62ROxtgxJ0XUYJde1t5+qdBek43507vtetXfNALumkh48JkwswF8Fwc/ILGXTBGroYGgD6ihL+vF3WSQH4rmrNwJIt3c+MPGnwcvREj/TCE12RQGbhOKWPwidLiowO3KEDZmDfoEREjIjTVr0DISOz2xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835467; c=relaxed/simple;
	bh=XPHsdLggUbfhS/k06N9veMuXSexGNTCQIh7xPJrFtNU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pXPLDRzep+dmO+nS3trwrWQDsFhOz2THyTmQibmUG4HVNSomKgYUW//bW0gMydEI3AxcuqLBI8AYfy8ONSbwaLhNDrViRq7R8U4zTz4+2djEY77FkdYvccKz3TqOmIP0iOqcL4nhf9A5v9H7OzbF2uB7UogAWB8eUrq3QXUWXuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=HG1SBr02; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502GUvOT2199253
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 10:30:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735835458;
	bh=kagO0k/oqGBpNLaSabOH+1r0G13QU3LhaSmnXl3qhrA=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=HG1SBr02p8m7F74CkIiV6lKQ+T/LXm4M12/JgHYLcp1Vju5zpGhXeAPKY+T/IOoCn
	 1NIurZ6X4a2B88/cV1UVpRvGuc24x21VYjlEWmIyart879B5jqXKshv605nE3zufrB
	 l5JBgDHcacbaF3cg0TF22kXDtrWMhSS7sMIVtGxs=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502GUv1L023615
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 10:30:57 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 10:30:57 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 10:30:57 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502GUv9i075516;
	Thu, 2 Jan 2025 10:30:57 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am625-sk: Remove M4 mailbox node redefinition
Date: Thu, 2 Jan 2025 10:30:56 -0600
Message-ID: <173583539528.267639.11532686969673222752.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241203164031.20211-1-afd@ti.com>
References: <20241203164031.20211-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Andrew Davis,

On Tue, 03 Dec 2024 10:40:31 -0600, Andrew Davis wrote:
> This node is already defined in the included k3-am62x-sk-common.dtsi.
> Remove this redefinition.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

I have assumed the fixup is trivial (since there is no functional diff in the
final dtb) that "fixes" tag is not important to backport.

[1/1] arm64: dts: ti: k3-am625-sk: Remove M4 mailbox node redefinition
      commit: 17d0723c6cf841ebaf510eaf9bb1ebf4991d6e9d

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


