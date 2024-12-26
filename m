Return-Path: <devicetree+bounces-134175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB1B9FCDA9
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 21:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C9E9163712
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97A71474B7;
	Thu, 26 Dec 2024 20:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="bS5KcFZC"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F97145A17;
	Thu, 26 Dec 2024 20:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735245104; cv=none; b=Jn3uv8tiH8yQCmM7sd42psCjl9OGH6yz8kEYCM3LixJy2gKUFyt1Vk4Ia+4J2UhYf1D3JZ8JE7NNPBZiX5Pfe2SwX/s5+HlersjqnqZqR0mTvKqFtrsuQjzIoU+ewgLRua4mEEEz3Kux6XABsom4E3Mpha1L0C3QLbMwTQlEP/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735245104; c=relaxed/simple;
	bh=d6dOVs4TMsOkXNSTMJrAYNpNi2swcFtU5QsHiejRbi0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=t4h8KV3SV7jln5NcpTB6Mh2paZ+5mr5yw6UM0M3+htY6+hZNg7Jlgg8Tyrkn3X1pYSXLqvxeTyeijmdnY4IUjecSl49fBGQtlfKRlIBrJ3bEz85dlpknzFlSn4WwBOrheG7yOYTkICZO7Ns2s/vHVi0OfmBn/Vmw40fw9xA8XaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=bS5KcFZC; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKVbcS048587;
	Thu, 26 Dec 2024 14:31:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735245097;
	bh=LlB21iHn0zF4Zu4uoulXyPPg+YVQpux/QZ5SdMlaSJE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=bS5KcFZC8fza5kNkkEA6Ms/kwuFjALDfRC0VaCkUDsZ14zIb8mm4NWCoObuGmRIyf
	 omT4A2qJL5H31/pqY/RHh5K7JvQqIdQBivSn6oAfMmeo5BQ4CrJHCyGsUuK1xVTCO7
	 +0h9ac9aTR9ko8QcEKrDNE1hhUl+0w8Ixi/FlZsc=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4BQKVb1P002706
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Dec 2024 14:31:37 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 26
 Dec 2024 14:31:37 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 26 Dec 2024 14:31:37 -0600
Received: from localhost ([10.249.33.38])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BQKVbSs108557;
	Thu, 26 Dec 2024 14:31:37 -0600
From: Nishanth Menon <nm@ti.com>
To: <conor+dt@kernel.org>, <krzk+dt@kernel.org>, <robh@kernel.org>,
        <ssantosh@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
        MD Danish Anwar
	<danishanwar@ti.com>
CC: Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <s-anna@ti.com>, <kristo@kernel.org>, <srk@ti.com>,
        Roger Quadros
	<rogerq@kernel.org>
Subject: Re: [PATCH v3 0/2] Add Clocks for ICSSG
Date: Thu, 26 Dec 2024 14:31:34 -0600
Message-ID: <173524505989.82795.5328795902477533290.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113110955.3876045-1-danishanwar@ti.com>
References: <20241113110955.3876045-1-danishanwar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi MD Danish Anwar,

On Wed, 13 Nov 2024 16:39:53 +0530, MD Danish Anwar wrote:
> This series adds clocks for ICSSG for AM64x.
> 
> PATCH 1/2 Adds the dt binding necessary to add clocks to the device tree.
> It adds the `clocks` in the dt binding of ICSSG node. Each ICSSG instance
> has 7 clocks available to them as per AM64x TRM [1] Section 6.4.3 Table
> 6-398. They are not added in the dt bindings yet. This patch adds all
> available clocks to ICSSG bindings.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] dt-bindings: soc: ti: pruss: Add clocks for ICSSG
      commit: f7ed5ae30cf395d92a3e1e3c843fa86ce96167b8
[2/2] arm64: dts: ti: k3-am64-main: Switch ICSSG clock to core clock
      commit: 25aadf5039fe8920835fb1452db08afa27a0edd9

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


