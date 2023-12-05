Return-Path: <devicetree+bounces-21898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA20805864
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 16:19:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE02C1C20FB3
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 15:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D467568E8D;
	Tue,  5 Dec 2023 15:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="VmSXmc5O"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E874BF;
	Tue,  5 Dec 2023 07:19:36 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B5FJL4I111898;
	Tue, 5 Dec 2023 09:19:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701789561;
	bh=taSSSLzsFEyMw97vXil/IpA9bfrEDvDHwDlD5KErnEI=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=VmSXmc5OWCkNPPwWTjDdF5lholG6w4iBDvKIBIJLlPY7P4IipVPnpzBJ+eB9002aL
	 IOYqeQtCeXYOMmQH/98H/8/9qeXDv+tD5tF67+McXCd8iO8cqYZwY9MuyN13KzLYzv
	 GMsg4VTpkBLBMAsW9KDqNza9TDoZvcjagfcrUSEU=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B5FJLGt025895
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 5 Dec 2023 09:19:21 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 5
 Dec 2023 09:19:21 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 5 Dec 2023 09:19:21 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B5FJLhj083541;
	Tue, 5 Dec 2023 09:19:21 -0600
Date: Tue, 5 Dec 2023 09:19:21 -0600
From: Nishanth Menon <nm@ti.com>
To: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "donald.robson@imgtec.com"
	<donald.robson@imgtec.com>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "sarah.walker@imgtec.com"
	<sarah.walker@imgtec.com>,
        "kristo@kernel.org" <kristo@kernel.org>,
        "vigneshr@ti.com" <vigneshr@ti.com>,
        "conor+dt@kernel.org"
	<conor+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
        "mripard@kernel.org"
	<mripard@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62-main: Add GPU device node
Message-ID: <20231205151921.orba632qpuf2nmxf@wildness>
References: <20231204121522.47862-1-donald.robson@imgtec.com>
 <c20b213534667337f08b75a6c325fafec6526135.camel@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c20b213534667337f08b75a6c325fafec6526135.camel@siemens.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 11:15-20231205, Sverdlin, Alexander wrote:
> Hi Donald, Sarah et al,
> 
> thanks for the patch!
> 
> On Mon, 2023-12-04 at 12:15 +0000, Donald Robson wrote:
> > From: Sarah Walker <sarah.walker@imgtec.com>
> > 
> > Add the Series AXE GPU node to the AM62 device tree.
> > 
> > Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
> > Signed-off-by: Donald Robson <donald.robson@imgtec.com>
> 
> powervr fd00000.gpu: [drm] loaded firmware powervr/rogue_33.15.11.3_v1.fw
> powervr fd00000.gpu: [drm] FW version v1.0 (build 6503725 OS)
> [drm] Initialized powervr 1.0.0 20230904 for fd00000.gpu on minor 0
> 
> In general it allows the driver to be probed on TI AM625 EK, so
> Tested-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> 
> But I'm not sure if you maybe want to disable it by default like
> other HW blocks for the (potential) boards which don't have video at all.

There is no board level dependency for GPU, so only place we have
permitted status = "disabled" is when the node has specific board
interface level (pinmux...) to  be operational completely.

So, no, default shouldn't have a status = "disabled".

> 
> > ---
> >  arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> > index e5c64c86d1d5..4338fd8ab2d7 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> > @@ -965,4 +965,13 @@ mcasp2: audio-controller@2b20000 {
> >                 power-domains = <&k3_pds 192 TI_SCI_PD_EXCLUSIVE>;
> >                 status = "disabled";
> >         };
> > +
> > +       gpu: gpu@fd00000 {
> > +               compatible = "ti,am62-gpu", "img,img-axe";
> > +               reg = <0x00 0x0fd00000 0x00 0x20000>;
> > +               clocks = <&k3_clks 187 0>;
> > +               clock-names = "core";
> > +               interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> > +               power-domains = <&k3_pds 187 TI_SCI_PD_EXCLUSIVE>;
> > +       };
> >  };
> 
> -- 
> Alexander Sverdlin
> Siemens AG
> www.siemens.com

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

