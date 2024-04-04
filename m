Return-Path: <devicetree+bounces-56271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B91F8983D7
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 11:12:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 122E01F21500
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 09:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44EB574BF2;
	Thu,  4 Apr 2024 09:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="nEfmC83L"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB64745DC;
	Thu,  4 Apr 2024 09:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712221952; cv=none; b=rfaswE9gujMkcDhlH2z0MsPb4K6RTdyrHuqH7r9t4nH74PNMnm43OWLSJh03yJe7RmB+CDDL5Ayn33i7+uWaOMi4z93wugtOr87qHm5l8rXMOkPClpyAni9iNmA4JPMEsZ/W/mHGD9CkIPdfoT3eLV2IPPZskcopxUkDmDbdQaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712221952; c=relaxed/simple;
	bh=esalyT6lYFHoT/hJyy/SpTtEc3a5gVNw91UCg2GhzVM=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Iu1WXTk4il4nmlMe4Ztfg1DPmYq6RNOioqWzo/sKv9mrGFMuM3bMx3i1y3xRT0dW50jm6t+H5c63TKXUVpPr3NueeSFPqhsJn1z0qDg3xWPtvFhfx1Uz6wEEdmaqxusRYiedRnCl76cOzxMPpr1tvTltQQTONHrJAxggY4yWYxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=nEfmC83L; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4349CD3Q113091;
	Thu, 4 Apr 2024 04:12:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1712221933;
	bh=KqOjnyj1DuMj78RFOa4NWwG27FT8thKdzwTYKr8pYQs=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=nEfmC83LIs0c6vmjX5bvCenLIl6xHGT0oBbjCuWWoWms1tm8lg0WSpMbUlW3tzSb+
	 PqTRpJvWsIaioCIxSD/UdSgGMUF4vMvwTGO9FK93NhbpNFOlBtFN9KFF3Jv997EUwc
	 6e8xHabuJviRIm7mRntD7LHms3lt8qH4cguI3+Cg=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4349CDZh106537
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 4 Apr 2024 04:12:13 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 4
 Apr 2024 04:12:12 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 4 Apr 2024 04:12:12 -0500
Received: from localhost (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4349CCr4077355;
	Thu, 4 Apr 2024 04:12:12 -0500
Date: Thu, 4 Apr 2024 14:42:11 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <afd@ti.com>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am62p: use eFuse MAC Address for
 CPSW3G Port 1
Message-ID: <75b53dda-23aa-4915-944a-4d9a619bd165@ti.com>
References: <20240404081845.622707-1-s-vadapalli@ti.com>
 <18eb0e55-38ad-44f9-90b7-1917d8c0d5bb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <18eb0e55-38ad-44f9-90b7-1917d8c0d5bb@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On Thu, Apr 04, 2024 at 10:43:04AM +0200, Krzysztof Kozlowski wrote:
> On 04/04/2024 10:18, Siddharth Vadapalli wrote:
> > Add the "cpsw-mac-efuse" node within "wkup_conf" node corresponding to the
> > CTRLMMR_MAC_IDx registers within the CTRL_MMR space. Assign the compatible
> > "ti,am62p-cpsw-mac-efuse" to enable "syscon_regmap" operations on these
> > registers. The MAC Address programmed in the eFuse is accessible through
> > the CTRLMMR_MAC_IDx registers. The "ti,syscon-efuse" device-tree property
> > points to the CTRLMMR_MAC_IDx registers, allowing the CPSW driver to fetch
> > the MAC Address and assign it to the network interface associated with
> > CPSW3G MAC Port 1.
> > 
> > Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> > ---
> > 
> > This patch is based on linux-next tagged next-20240404.
> > Patch depends on:
> > https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240402105708.4114146-1-s-vadapalli@ti.com/
> > for the newly added "ti,am62p-cpsw-mac-efuse" compatible.
> > 
> > v1:
> > https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240402094200.4036076-1-s-vadapalli@ti.com/
> > Changes since v1:
> > - Since "wkup_conf" is modelled as a "simple-bus" rather than being
> 
> And maybe the hardware representation is not correct? What bus is it?

I will let Andrew comment on it. Andrew had posted a patch at:
https://lore.kernel.org/r/20240124184722.150615-10-afd@ti.com/
to convert an equivalent "main_conf" node for AM62 SoC to "simple-bus"
from the existing "syscon".

> 
> >   modelled as a System Controller node with the "syscon" compatible,
> >   directly passing the reference to the "wkup_conf" node using the
> >   "ti,syscon-efuse" device-tree property will not work.
> >   Therefore, I posted the patch at:
> >   https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240402105708.4114146-1-s-vadapalli@ti.com/
> >   in order to add a new compatible to be used for modelling the
> >   CTRLMMR_MAC_IDx registers as System Controller nodes, thereby
> >   allowing the existing "ti,syscon-efuse" property to be used.
> >   Now, "ti,syscon-efuse" points to the "cpsw_mac_efuse" node within
> >   "wkup_conf" node, with "cpsw_mac_efuse" being a "syscon" node.
> > 
> > Logs verifying that the CPSW driver assigns the MAC Address from the
> > eFuse based on the CTRLMMR_MAC_IDx registers at 0x43000200 and 0x43000204
> > to the interface eth0 corresponding to CPSW3G MAC Port 1:
> > https://gist.github.com/Siddharth-Vadapalli-at-TI/9982c6f13bf9b8cfaf97e8517e7dea13
> > 
> > Regards,
> > Siddharth.
> > 
> >  arch/arm64/boot/dts/ti/k3-am62p-main.dtsi   | 1 +
> >  arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi | 5 +++++
> >  2 files changed, 6 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> > index 7337a9e13535..848ca454a411 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> > @@ -696,6 +696,7 @@ cpsw_port1: port@1 {
> >  				label = "port1";
> >  				phys = <&phy_gmii_sel 1>;
> >  				mac-address = [00 00 00 00 00 00];
> > +				ti,syscon-efuse = <&cpsw_mac_efuse 0x0>;
> 
> Why this is not nvmem cell, like or efuses?

Since it belongs to the MMIO register set. You had recommended *not*
using nvmem for such MMIO registers at:
https://lore.kernel.org/r/48902771-5d3b-448a-8a74-ac18fb4f1a86@linaro.org/
"nvmem is for non-volatile memory, like OCOTP and eFUSE. This is not for
accessing regular MMIO registers of system-controller..."

Despite the "ti,syscon-efuse" property containing the term "efuse" in its
name, it is reading the CTRLMMR_MAC_IDx MMIO registers. So I assumed that
the existing approach which has been used on all K3 SoCs apart from this
one, will be suitable for this SoC as well.

> 
> >  			};
> >  
> >  			cpsw_port2: port@2 {
> > diff --git a/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> > index a84756c336d0..df9d40f64e3b 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> > @@ -18,6 +18,11 @@ chipid: chipid@14 {
> >  			reg = <0x14 0x4>;
> >  			bootph-all;
> >  		};
> > +
> > +		cpsw_mac_efuse: cpsw-mac-efuse@200 {
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

I was following the convention that other mfd-syscon compatible nodes
seemed to be using:
https://github.com/torvalds/linux/blob/41bccc98fb7931d63d03f326a746ac4d429c1dd3/arch/arm64/boot/dts/ti/k3-am65-main.dtsi#L502
The node is:
dss_oldi_io_ctrl: dss-oldi-io-ctrl@41e0
corresponding to the compatible:
"ti,am654-dss-oldi-io-ctrl"
which was added by commit:
https://github.com/torvalds/linux/commit/cb523495ee2a5938fbdd30b8a35094d386c55c12

Regards,
Siddharth.

