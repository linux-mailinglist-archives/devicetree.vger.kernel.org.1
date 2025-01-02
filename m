Return-Path: <devicetree+bounces-135088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D76649FFB8A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DE74162971
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A062847A73;
	Thu,  2 Jan 2025 16:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Gzt3Q53E"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC08F2EAE6;
	Thu,  2 Jan 2025 16:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835209; cv=none; b=XHN3NgqipgPAuMEoWAreWmn5FvKDAatzai1+JqLL75d8gqdtZrOdA6dn0Mvc5OJX+6YnviMlg0qCtatsHHBctGHBFmrSV9fdAmtzSZVTIAm0bRsmMdgpxod9gDkkTkCnv09JkT7JmWEg3W6TL4HHlQsgyfvp8aJAIovbyBoZ9sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835209; c=relaxed/simple;
	bh=HNPGCmPqN/L8fJg4eMwjteN8Jcyh7T6xKW96SabyuU8=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JsHqAnxfUft78ZYB2rahJNTOfLxnK/JaBbKo04449fDVjSSstZlGTMk5lXi56wniUeMKzDheTtgk00t29BVvixcYkEHaUIor1KZxPuq005AtwXMw5r4ve34pn1IjolQzRA8ga+vYYvolQ/55pvQQUgVUoqfRo1MLg7908bczm78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Gzt3Q53E; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502GQbAF1910583
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 10:26:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735835197;
	bh=+w6Xqk+4SGIZidDdByy+3frU8jkWSu5FCTP8cRdwJA0=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Gzt3Q53EcDpDZeULdh8LYe+uDGiITVd3jhLLqnhGUYUGTKmVd3lSi7tkFD11tbtuc
	 jSAtfWctNSyUqQt7N54DpLxwGaY/d8/KLjEYI9Fl3KU6phbdoSRkvbZTvCTPGzQuYu
	 ACEoxVkiyzcHxkK5MN8dKKPIc/4sfFs77P/7FAio=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502GQbKH032416
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 10:26:37 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 10:26:37 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 10:26:37 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502GQbcG069505;
	Thu, 2 Jan 2025 10:26:37 -0600
Date: Thu, 2 Jan 2025 10:26:37 -0600
From: Nishanth Menon <nm@ti.com>
To: Siddharth Vadapalli <s-vadapalli@ti.com>,
        Romain Naour
	<romain.naour@skf.com>,
        Kevin Hilman <khilman@baylibre.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>
Subject: Re: [PATCH v4 0/4] Add PCIe Overlays for J721E, AM68 and AM69
Message-ID: <20250102162637.o2w3uvdxyz2eqfmu@unsure>
References: <20241205105041.749576-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241205105041.749576-1-s-vadapalli@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 16:20-20241205, Siddharth Vadapalli wrote:
> Hello,
>=20
> This series adds device-tree overlays for enabling Endpoint mode of
> operation of the PCIe Controllers on TI's J721E, AM68 and AM69 SoCs.
>=20
> Only the second patch of this series has a v3 while the rest of the
> patches have been newly introduced in this series. The reason for
> grouping patches is the dependency on the Makefile w.r.t. the changes
> made in the patches when enabling overlays.
>=20
> v3:
> https://lore.kernel.org/r/20241010100933.2492806-1-s-vadapalli@ti.com/
> Changes since v3:
> - Rebased on next-20241204.
>=20
> v2:
> https://lore.kernel.org/r/20240222065733.1213434-1-s-vadapalli@ti.com/
> Changes since v2:
> - Rebased patch on next-20241010.
> - Moved vendor specific property "ti,syscon-pcie-ctrl" to the end of the
>   node.
>=20
> v1:
> https://lore.kernel.org/r/20240220105006.1056824-1-s-vadapalli@ti.com/
> Changes since v1:
> - Created a new overlay for PCIE1 based on Andrew's suggestion at:
>   https://lore.kernel.org/r/415ee6d4-fe26-4582-80f3-9b503d308fdf@ti.com/
> - Updated Makefile to allow applying overlay on
>   "k3-j721e-evm-pcie0-ep.dtb"
>=20
> Series is based on linux-next tagged next-20241204.
>=20
> Logs validating series:
> 1. J721E Overlay test logs:
> https://gist.github.com/Siddharth-Vadapalli-at-TI/682d2469884d74ad73c3e6a=
b4b829067
> 2. AM68 Overlay test logs:
> https://gist.github.com/Siddharth-Vadapalli-at-TI/b302475ee8ff257dab358a7=
ccfaaa734
> 3. AM69 Overlay test logs:
> https://gist.github.com/Siddharth-Vadapalli-at-TI/c50e5a09b5af962cba72261=
9974add2b
>=20
> Regards,
> Siddharth.
>=20
> Siddharth Vadapalli (4):
>   arm64: dts: ti: Makefile: Fix typo "k3-j7200-evm-pcie1-ep.dtbo"
>   arm64: dts: ti: k3-j721e-evm: Add overlay for PCIE1 Endpoint Mode
>   arm64: dts: ti: k3-am68-sk-base-board: Add overlay for PCIE1 Endpoint
>     Mode
>   arm64: dts: ti: k3-am69-sk: Add overlay for PCIE0 Endpoint Mode
>=20

On next-20241220, I see these added in (which is weird)...

arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dtb: syscon@18090: compatibl=
e:0: 'ti,j721e-acspcie-proxy-ctrl' is not one of ['al,alpine-sysfabric-serv=
ice', 'allwinner,sun8i-a83t-system-controller', 'allwinner,sun8i-h3-system-=
controller', 'allwinner,sun8i-v3s-system-controller', 'allwinner,sun50i-a64=
-system-controller', 'altr,l3regs', 'altr,sdr-ctl', 'amd,pensando-elba-sysc=
on', 'amlogic,meson-mx-assist', 'amlogic,meson-mx-bootrom', 'amlogic,meson8=
-analog-top', 'amlogic,meson8b-analog-top', 'amlogic,meson8-pmu', 'amlogic,=
meson8b-pmu', 'apm,merlin-poweroff-mailbox', 'apm,mustang-poweroff-mailbox'=
, 'apm,xgene-csw', 'apm,xgene-efuse', 'apm,xgene-mcb', 'apm,xgene-rb', 'apm=
,xgene-scu', 'atmel,sama5d2-sfrbu', 'atmel,sama5d3-nfc-io', 'atmel,sama5d3-=
sfrbu', 'atmel,sama5d4-sfrbu', 'axis,artpec6-syscon', 'brcm,cru-clkset', 'b=
rcm,sr-cdru', 'brcm,sr-mhb', 'cirrus,ep7209-syscon1', 'cirrus,ep7209-syscon=
2', 'cirrus,ep7209-syscon3', 'cnxt,cx92755-uc', 'freecom,fsg-cs2-system-con=
troller', 'fsl,imx93-aonmix-ns-syscfg', 'fsl,imx93-wakeupmix-syscfg', 'fsl,=
ls1088a-reset', 'fsl,vf610-anatop', 'fsl,vf610-mscm-cpucfg', 'hisilicon,dsa=
-subctrl', 'hisilicon,hi6220-sramctrl', 'hisilicon,hip04-ppe', 'hisilicon,p=
cie-sas-subctrl', 'hisilicon,peri-subctrl', 'hpe,gxp-sysreg', 'loongson,ls1=
b-syscon', 'loongson,ls1c-syscon', 'lsi,axxia-syscon', 'marvell,armada-3700=
-cpu-misc', 'marvell,armada-3700-nb-pm', 'marvell,armada-3700-avs', 'marvel=
l,armada-3700-usb2-host-misc', 'marvell,dove-global-config', 'mediatek,mt27=
01-pctl-a-syscfg', 'mediatek,mt2712-pctl-a-syscfg', 'mediatek,mt6397-pctl-p=
mic-syscfg', 'mediatek,mt8135-pctl-a-syscfg', 'mediatek,mt8135-pctl-b-syscf=
g', 'mediatek,mt8173-pctl-a-syscfg', 'mediatek,mt8365-syscfg', 'microchip,l=
an966x-cpu-syscon', 'microchip,mpfs-sysreg-scb', 'microchip,sam9x60-sfr', '=
microchip,sama7g5-ddr3phy', 'mscc,ocelot-cpu-syscon', 'mstar,msc313-pmsleep=
', 'nuvoton,ma35d1-sys', 'nuvoton,wpcm450-shm', 'rockchip,px30-qos', 'rockc=
hip,rk3036-qos', 'rockchip,rk3066-qos', 'rockchip,rk3128-qos', 'rockchip,rk=
3228-qos', 'rockchip,rk3288-qos', 'rockchip,rk3368-qos', 'rockchip,rk3399-q=
os', 'rockchip,rk3568-qos', 'rockchip,rk3576-qos', 'rockchip,rk3588-qos', '=
rockchip,rv1126-qos', 'st,spear1340-misc', 'stericsson,nomadik-pmu', 'starf=
ive,jh7100-sysmain', 'ti,am62-opp-efuse-table', 'ti,am62-usb-phy-ctrl', 'ti=
,am625-dss-oldi-io-ctrl', 'ti,am62p-cpsw-mac-efuse', 'ti,am654-dss-oldi-io-=
ctrl', 'ti,j784s4-pcie-ctrl', 'ti,keystone-pllctrl']

In addition,
   https://lore.kernel.org/r/20241202143331.126800-2-romain.naour@smile.fr
which Kevin picked up

Adds
arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dtb: scm-conf@100000: 'sysco=
n@18090' does not match any of the regexes: '^chipid@[0-9a-f]+$', '^clock-c=
ontroller@[0-9a-f]+$', '^mux-controller@[0-9a-f]+$', 'phy@[0-9a-f]+$', 'pin=
ctrl-[0-9]+'

Adding Romain and Kevin as well to the CC on this chain.

--=20
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5=
 849D 1736 249D

