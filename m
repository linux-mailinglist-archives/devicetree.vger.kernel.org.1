Return-Path: <devicetree+bounces-135077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 717029FFB1C
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38F601625D3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 15:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122E642A8B;
	Thu,  2 Jan 2025 15:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="daBFayQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81713AD51;
	Thu,  2 Jan 2025 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735832797; cv=none; b=aNYgPA0/uloSyaqpNXp3IAd8X2nhsXlw/zsDuX6H2tRFFo56RD0g37pj4Le750Adm+YF6OJxWa5Gp4l+Z7+k3Fk5OQWv/Ko36uTFh8PqWBMk3NLXMiDSuifeNOgbpY5eAP1lwPBH/vt5HXGKJfxT56DDfkwd0BZ07OwPEgOS1Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735832797; c=relaxed/simple;
	bh=fI0bcj9aJ7VoHAw7ebDHLE2wV9LwZGz9ryItz7UZIYI=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hDL0y9xjL2gTZu9oI2MRI4g8sLZmlXjQ0TAcYsrRA8kzTsY7Be5tnLj2BI61RbfNUMaAPjGLPGCKIWyUxCN2YMG23DZYDxAg4UhAEI/qbXBPSyAxtQBMrfN5BIFR9HqfFpB2npWferd/NMWFESoNXai41hAQlAPI7oldmxdrN7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=daBFayQ6; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 502FkOPW1960614
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Jan 2025 09:46:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735832785;
	bh=v8ExHOx62Wg0/zC6HJjOvij7IpxMg0Rm+U4+MLy+95Y=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=daBFayQ6MkabQrw3tCsGc4QQktKKMfjwoVZTFsJ30dHB4X3QHuopDdtQP3NiZWzD2
	 kBqD08xqqtVOTO0ygtMdA8GEtH7M8grv5UVCQNPS++CIgFE8fNLZu90gWUMDHH7Tke
	 TQUDWoEr8BXfrHg0SL7tjUeadO/03TMa4dB/wNyE=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 502FkOJf008793
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jan 2025 09:46:24 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 09:46:24 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 09:46:24 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502FkOmw025348;
	Thu, 2 Jan 2025 09:46:24 -0600
Date: Thu, 2 Jan 2025 09:46:24 -0600
From: Nishanth Menon <nm@ti.com>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-j784s4-j742s2-main-common: Enable
 ACSPCIE output for PCIe1
Message-ID: <20250102154624.gctoev2u4xqdvl5v@handball>
References: <20241209085157.1203168-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241209085157.1203168-1-s-vadapalli@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 14:21-20241209, Siddharth Vadapalli wrote:
> The PCIe reference clock required by the PCIe Endpoints connected to the
> PCIe connector corresponding to the PCIe1 instance of PCIe on J784S4-EVM
> and J742S2-EVM is driven by the ACSPCIE module. Add the device-tree suppo=
rt
> for enabling the same.
>=20
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>=20
> Patch is based on linux-next tagged next-20241209.
>=20
> v1:
> https://lore.kernel.org/r/20240715123301.1184833-1-s-vadapalli@ti.com/
> Changes since v1:
> - Rebased patch on linux-next tagged next-20241209.
> - Moved changes from "k3-j784s4-main.dtsi" to its equivalent now which
>   is "k3-j784s4-j742s2-main-common.dtsi" since PCIe1 is common to both
>   J742S2 and J784S4.
> - Renamed "acspcie0-proxy-ctrl" to "clock-controller" to follow generic
>   node naming convention.
> - Added "ti,syscon-acspcie-proxy-ctrl" property at the end of the node
>   since vendor specific properties should be placed at the end.
>=20
> Since all dependencies mentioned on the v1 patch have been merged, this
> patch has no further dependencies. Patch has been tested on J784S4-EVM
> with an NVMe SSD connected to the PCIe connector corresponding to PCIe1.
> Logs:
> https://gist.github.com/Siddharth-Vadapalli-at-TI/c36e30d8e9eb7bec96f7f40=
0af1ea470
>=20
> Regards,
> Siddharth.
>=20
>  .../boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi     | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/a=
rch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> index 7721852c1f68..cddadd12f444 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> @@ -7,6 +7,7 @@
> =20
>  #include <dt-bindings/mux/mux.h>
>  #include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/phy/phy-cadence.h>
>  #include <dt-bindings/phy/phy-ti.h>
> =20
>  #include "k3-serdes.h"
> @@ -124,6 +125,11 @@ audio_refclk1: clock@82e4 {
>  			assigned-clock-parents =3D <&k3_clks 157 63>;
>  			#clock-cells =3D <0>;
>  		};
> +
> +		acspcie0_proxy_ctrl: clock-controller@1a090 {
> +			compatible =3D "ti,j784s4-acspcie-proxy-ctrl", "syscon";

I am on next-20241220 and dtbs_check throws this out, can you check?

arch/arm64/boot/dts/ti/k3-am69-sk.dtb: clock-controller@1a090: compatible:0=
: 'ti,j784s4-acspcie-proxy-ctrl' is not one of ['al,alpine-sysfabric-servic=
e', 'allwinner,sun8i-a83t-system-controller', 'allwinner,sun8i-h3-system-co=
ntroller', 'allwinner,sun8i-v3s-system-controller', 'allwinner,sun50i-a64-s=
ystem-controller', 'altr,l3regs', 'altr,sdr-ctl', 'amd,pensando-elba-syscon=
', 'amlogic,meson-mx-assist', 'amlogic,meson-mx-bootrom', 'amlogic,meson8-a=
nalog-top', 'amlogic,meson8b-analog-top', 'amlogic,meson8-pmu', 'amlogic,me=
son8b-pmu', 'apm,merlin-poweroff-mailbox', 'apm,mustang-poweroff-mailbox', =
'apm,xgene-csw', 'apm,xgene-efuse', 'apm,xgene-mcb', 'apm,xgene-rb', 'apm,x=
gene-scu', 'atmel,sama5d2-sfrbu', 'atmel,sama5d3-nfc-io', 'atmel,sama5d3-sf=
rbu', 'atmel,sama5d4-sfrbu', 'axis,artpec6-syscon', 'brcm,cru-clkset', 'brc=
m,sr-cdru', 'brcm,sr-mhb', 'cirrus,ep7209-syscon1', 'cirrus,ep7209-syscon2'=
, 'cirrus,ep7209-syscon3', 'cnxt,cx92755-uc', 'freecom,fsg-cs2-system-contr=
oller', 'fsl,imx93-aonmix-ns-syscfg', 'fsl,imx93-wakeupmix-syscfg', 'fsl,ls=
1088a-reset', 'fsl,vf610-anatop', 'fsl,vf610-mscm-cpucfg', 'hisilicon,dsa-s=
ubctrl', 'hisilicon,hi6220-sramctrl', 'hisilicon,hip04-ppe', 'hisilicon,pci=
e-sas-subctrl', 'hisilicon,peri-subctrl', 'hpe,gxp-sysreg', 'loongson,ls1b-=
syscon', 'loongson,ls1c-syscon', 'lsi,axxia-syscon', 'marvell,armada-3700-c=
pu-misc', 'marvell,armada-3700-nb-pm', 'marvell,armada-3700-avs', 'marvell,=
armada-3700-usb2-host-misc', 'marvell,dove-global-config', 'mediatek,mt2701=
-pctl-a-syscfg', 'mediatek,mt2712-pctl-a-syscfg', 'mediatek,mt6397-pctl-pmi=
c-syscfg', 'mediatek,mt8135-pctl-a-syscfg', 'mediatek,mt8135-pctl-b-syscfg'=
, 'mediatek,mt8173-pctl-a-syscfg', 'mediatek,mt8365-syscfg', 'microchip,lan=
966x-cpu-syscon', 'microchip,mpfs-sysreg-scb', 'microchip,sam9x60-sfr', 'mi=
crochip,sama7g5-ddr3phy', 'mscc,ocelot-cpu-syscon', 'mstar,msc313-pmsleep',=
 'nuvoton,ma35d1-sys', 'nuvoton,wpcm450-shm', 'rockchip,px30-qos', 'rockchi=
p,rk3036-qos', 'rockchip,rk3066-qos', 'rockchip,rk3128-qos', 'rockchip,rk32=
28-qos', 'rockchip,rk3288-qos', 'rockchip,rk3368-qos', 'rockchip,rk3399-qos=
', 'rockchip,rk3568-qos', 'rockchip,rk3576-qos', 'rockchip,rk3588-qos', 'ro=
ckchip,rv1126-qos', 'st,spear1340-misc', 'stericsson,nomadik-pmu', 'starfiv=
e,jh7100-sysmain', 'ti,am62-opp-efuse-table', 'ti,am62-usb-phy-ctrl', 'ti,a=
m625-dss-oldi-io-ctrl', 'ti,am62p-cpsw-mac-efuse', 'ti,am654-dss-oldi-io-ct=
rl', 'ti,j784s4-pcie-ctrl', 'ti,keystone-pllctrl']
> +			reg =3D <0x1a090 0x4>;
> +		};
>  	};
> =20
>  	main_ehrpwm0: pwm@3000000 {
> @@ -1091,8 +1097,8 @@ pcie1_rc: pcie@2910000 {
>  		max-link-speed =3D <3>;
>  		num-lanes =3D <4>;
>  		power-domains =3D <&k3_pds 333 TI_SCI_PD_EXCLUSIVE>;
> -		clocks =3D <&k3_clks 333 0>;
> -		clock-names =3D "fck";
> +		clocks =3D <&k3_clks 333 0>, <&serdes0 CDNS_TORRENT_REFCLK_DRIVER>;
> +		clock-names =3D "fck", "pcie_refclk";
>  		#address-cells =3D <3>;
>  		#size-cells =3D <2>;
>  		bus-range =3D <0x0 0xff>;
> @@ -1103,6 +1109,7 @@ pcie1_rc: pcie@2910000 {
>  		ranges =3D <0x01000000 0x0 0x18001000  0x00 0x18001000  0x0 0x0010000>,
>  			 <0x02000000 0x0 0x18011000  0x00 0x18011000  0x0 0x7fef000>;
>  		dma-ranges =3D <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
> +		ti,syscon-acspcie-proxy-ctrl =3D <&acspcie0_proxy_ctrl 0x1>;
>  		status =3D "disabled";
>  	};
> =20
> --=20
> 2.43.0
>=20

--=20
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5=
 849D 1736 249D

