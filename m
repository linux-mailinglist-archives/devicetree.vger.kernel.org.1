Return-Path: <devicetree+bounces-134176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B30E99FCDAB
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 21:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 577931882B2E
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0F0A1482ED;
	Thu, 26 Dec 2024 20:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="OzXz+k+A"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2289713C689;
	Thu, 26 Dec 2024 20:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735245138; cv=none; b=TZKZeXwRlGyEbsQOZnfQEBbNT87uELdJgoSgO06mSYWW44jr8KY1rkNGkJz6L2wKTl2ulZaz9CXEeR1oOql2D2Ouzo/GDjfPi5omlpXknGHbQowtKy/+azckFDMMrg7VswoX0hAZlafX7RPkCUT0ii3A+TetYkFp4tdd+9dk0zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735245138; c=relaxed/simple;
	bh=261Nf17jN87TOt1pmhxsr1diJxfFcdN0esARMICM3mQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FsmwEiu4in5Vvrr3ws0gLf7/csQJDcz3ied9cKhGykISvnRwN6zO6EF97MyMmx+leTLVOhB4QWgioIMnwpNfbJSpkRzFc9WDi1zJsO82MThIo2hMljddkOHmuRbBMa8XTnxq/txH2pjWDV69aY4u0wxVHJkkVinQPS0NhvliW2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=OzXz+k+A; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKWCCW027960;
	Thu, 26 Dec 2024 14:32:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735245132;
	bh=drifI6Dzuw8QKPIDFysHCxNkPZ8M7+X/soaT70FlxxI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=OzXz+k+AueJBBhq5JmdwmLSvGkimr5h96nFOnUoiwWaPg+9UizbQugfbpPlMfGACE
	 VbPc3D/OYdk7+KVAc+14cMcdbx2jkkWmQeJDaHpTuRxC5rzDVVrWIidlSLgGgAWqBp
	 MvgvFKYMmjGJ+SCu5+0GqNE/zgLD19cA7y2/FJoA=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4BQKWCZ6034636
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Dec 2024 14:32:12 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 26
 Dec 2024 14:32:11 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 26 Dec 2024 14:32:11 -0600
Received: from localhost ([10.249.33.38])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKWBCI109106;
	Thu, 26 Dec 2024 14:32:11 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rob Herring (Arm)" <robh@kernel.org>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: Remove unused and undocumented "ti,(rx|tx)-fifo-depth" properties
Date: Thu, 26 Dec 2024 14:32:09 -0600
Message-ID: <173524512328.83015.18034967623969969325.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241115193359.3618020-1-robh@kernel.org>
References: <20241115193359.3618020-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Rob Herring (Arm),

On Fri, 15 Nov 2024 13:33:59 -0600, Rob Herring (Arm) wrote:
> Remove "ti,(rx|tx)-fifo-depth" properties which are both unused in the
> kernel and undocumented. Most likely they are leftovers from downstream.
> 
> There are similar properties, but DP83867_PHYCR_FIFO_DEPTH_4_B_NIB
> represents the default value so adding them is not necessary.
> 
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: Remove unused and undocumented "ti,(rx|tx)-fifo-depth" properties
      commit: 09b428453219d470475d0d6447c954bf63b95705

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


