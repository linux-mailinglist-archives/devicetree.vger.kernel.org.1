Return-Path: <devicetree+bounces-24832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC9981159B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 724261C21145
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713D52F505;
	Wed, 13 Dec 2023 15:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="oPwMB9Ha"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE68F5;
	Wed, 13 Dec 2023 07:03:26 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BDF2pUZ119581;
	Wed, 13 Dec 2023 09:02:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702479771;
	bh=MOo2qlhcAcASrptyEteKFXRK1HUyyqsdylJfDHjECI8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=oPwMB9HazoWEck9HQBB0IauYHGrTPlOMBusHv4Z03ZiWU2muJm2W0GjySjdQwdjVH
	 udCzGq8JJQlUC9fKHnojVi+CZPE7Ld/n5geKM068kRVFOpgBYuM5dRW6l+uHRPvRAP
	 i1EMTOiCp/jQf5oFxeeKPmbx6q3dZDnjHezbVXrE=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BDF2pUd071093
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Dec 2023 09:02:51 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Dec 2023 09:02:50 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Dec 2023 09:02:50 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BDF2oXv006526;
	Wed, 13 Dec 2023 09:02:50 -0600
From: Nishanth Menon <nm@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Donald Robson <donald.robson@imgtec.com>
CC: Nishanth Menon <nm@ti.com>, <frank.binns@imgtec.com>,
        <matt.coster@imgtec.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <catalin.marinas@arm.com>, <will@kernel.org>,
        <quic_bjorande@quicinc.com>, <geert+renesas@glider.be>,
        <konrad.dybcio@linaro.org>, <arnd@arndb.de>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@linaro.org>,
        <nfraprado@collabora.com>, <m.szyprowski@samsung.com>,
        <u-kumar1@ti.com>, <peng.fan@nxp.com>
Subject: Re: [PATCH v2 0/2] Enable PowerVR driver for TI AM62x
Date: Wed, 13 Dec 2023 09:02:48 -0600
Message-ID: <170247938530.2591587.1832314289335489574.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1701773390.git.donald.robson@imgtec.com>
References: <cover.1701773390.git.donald.robson@imgtec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Donald Robson,

On Tue, 05 Dec 2023 11:39:31 +0000, Donald Robson wrote:
> These patches enable the new open source PowerVR driver for TI AM62x SoCs,
> currently the only one supported.
> 
> Changes since v1:
> - Added patch 1 for arm64 defconfig (requested by Nishanth Menon)
> 
> Donald Robson (1):
>   arm64: defconfig: enable DRM_POWERVR
> 
> [...]

NOTE: This series creates checkpatch warnings against v6.7-rc1 and
complains that it cannot find ti,am62-gpu or img,img-axe which
has been merged in drm tree for next. This is clean in linux-next
for a few weeks now. Given the number of people who would really
like to see it in v6.8-rc1 to continue the work towards enabling a
opensource graphics support in the tree without carried patches and
work on next set of features on display and graphics, and given the
real low risk of this NOT making to linus-master, we are making an
specific exception here for this time around. So, please keep a watch
on drm-next and if for any reason the support is dropped going to
linus's tree in the merge window or before, let this chain know with
appropriate maintainers so that we can take corrective actions.

I have applied the following to branch ti-k3-config-next on [1].

[1/2] arm64: defconfig: enable DRM_POWERVR
      commit: e8779517788fa0f3d04840cb7d4121d3df8dfd54

And the following to branch ti-k3-dts-next on [1].

[2/2] arm64: dts: ti: k3-am62-main: Add GPU device node
      commit: a5683d26e09e46362fb3fa87e834cf7073b6a2ec

Thank you!

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


