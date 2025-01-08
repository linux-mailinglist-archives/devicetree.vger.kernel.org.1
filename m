Return-Path: <devicetree+bounces-136739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FE8A060DF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B6CB3AE145
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE3031FECCE;
	Wed,  8 Jan 2025 15:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="DxsMLt3p"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A131F949;
	Wed,  8 Jan 2025 15:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736351666; cv=none; b=T+VvXHEIIy48xPZV+O0eyRmNmb5vJDMwnT/v0jxVb7u1Yhm8HBWbruY284MN9TQ3Xi/8j3RBfnfwenIS93417uLBFjtNc7fBa37zG+2ea9GIs6zSCr3EcI3TBe9IuwdsL3tskWJA3VuEO6b5tQ2lFnxvPxWPpmgJ/dBzvk3gNZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736351666; c=relaxed/simple;
	bh=pHO5t6HWZBEgA+vpFkE01K3D5M5yuKOpqN1Oy+XeFLM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DSkwKIxCdKBNtNhQa2CO+OzpUoMaIrqtnq0gsbIpVZraUBDe03aYuV53OT004eKO7EIRny9j5QzdEZabFvxExOsrseYiiOwRHQHLgrtd4gHQzEI9vCIYpKOI5C0OruRbUMOuwnFsWdwvAtuiG2rr9N3Ime11wFvHTKgiCbQjRL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=DxsMLt3p; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 508FsIew3124762
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 8 Jan 2025 09:54:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736351658;
	bh=64sf4vFWXUtRCTKp6MKv/dKdEAltmJ9vWjr7dOLoKtA=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=DxsMLt3p+y/IOfeanzoyiJpvdk7MK+7egEESF4+/HASLM5qz+NFbWnGGyYW70sDgX
	 HCtRqr5qekJsZibsUeB5GMeQP8VkpmciYtqW6/8U+Pw9Bh9CH+HRQ0CQcFJiMHYoNe
	 nKNFpHESevx+QuL4Q2hlgLMCOPtR545NzKWjD4aA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 508FsI8e083886
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 8 Jan 2025 09:54:18 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Jan 2025 09:54:18 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Jan 2025 09:54:17 -0600
Received: from localhost ([10.249.32.182])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508FsHju090583;
	Wed, 8 Jan 2025 09:54:17 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Enric Balletbo i Serra
	<eballetb@redhat.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Dasnavis Sabiya
	<sabiya.d@ti.com>, Roger Quadros <rogerq@kernel.org>
Subject: Re: [PATCH v3] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
Date: Wed, 8 Jan 2025 09:54:15 -0600
Message-ID: <173635164802.1208994.2287155534270142245.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250108-am69sk-dt-usb-v3-1-bb4981534754@redhat.com>
References: <20250108-am69sk-dt-usb-v3-1-bb4981534754@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Enric Balletbo i Serra,

On Wed, 08 Jan 2025 09:59:46 +0100, Enric Balletbo i Serra wrote:
> AM69 SK board has two stacked USB3 connectors:
>    1. USB3 (Stacked TypeA + TypeC)
>    2. USB3 TypeA Hub interfaced through TUSB8041.
> 
> The board uses SERDES0 Lane 3 for USB3 IP. So update the
> SerDes lane info for PCIe and USB. Add the pin mux data
> and enable USB 3.0 support with its respective SERDES settings.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
      commit: ff7b5e93f16ab68231fd039a33fea8c67fd25955

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


