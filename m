Return-Path: <devicetree+bounces-137196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D20EA07F31
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 18:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28D193A89C1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 17:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADCD51990C4;
	Thu,  9 Jan 2025 17:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="KHFQlwRW"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B3118A6D2;
	Thu,  9 Jan 2025 17:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736444734; cv=none; b=dCA3Q1DUQqwkrb1zf3kx7CXdgPlZa0YAkaZgLiuLG9P9+VsKzQ0T0WV7Cb+VFUwlDvtCfU7kheCBjxLwM0O4yny8MZoW8+V2f33LHnyUzUjEf/zwpPFSYWO89LAPthRr24vkD3rAQQczsUbVT9VkYuRtlcSI6Sxa72RFaRYiZgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736444734; c=relaxed/simple;
	bh=2d7KairLh2/3vxnOG7jCwIkDkT0wRyz0MxBu6X7g5Aw=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B14hk2VRy3zpwSLYEN/uw9ABZyQ7uU7EPM/tNhGSd9aYSO2aazFPnGVYkc04fKgj0Y71lIYEAQmOTJTOcTEEym7RbGwbWKMa6U5/WqErB0o6IsvKqTPGiXt4FlcCjYhNpXLvoQtkCnowd8aAXj8+g97bFXiL1vKJqTOeMi+9M/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=KHFQlwRW; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 509HjOVE038425;
	Thu, 9 Jan 2025 11:45:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736444724;
	bh=WossqK9t7qt/somrlykgNmv9HqmdtOqk2g4fIHGXdAg=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=KHFQlwRWF4fHUiW+S5dknoqi4XpRqGZ3lGPwaVmyeXT6aX9nn3CIpMwnHIn9PofO4
	 c2AJA6xWqE71f9CrP9sJZSa/vDv5bO5YRbBxHmwPfzUiFI7XQidW7jkO7vw1labZDg
	 BmittDWQE8sqZnbFXHrVbXNiEzkT0sDEbuuI6spw=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 509HjOPB061224
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Jan 2025 11:45:24 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 9
 Jan 2025 11:45:24 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 9 Jan 2025 11:45:24 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 509HjOsF108072;
	Thu, 9 Jan 2025 11:45:24 -0600
Date: Thu, 9 Jan 2025 11:45:24 -0600
From: Bryan Brattlof <bb@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
CC: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: ti: k3-am62l: add initial reference
 board file
Message-ID: <20250109174524.mfk5o4myhvy4577n@bryanbrattlof.com>
X-PGP-Fingerprint: D3D1 77E4 0A38 DF4D 1853 FEEF 41B9 0D5D 71D5 6CE0
References: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
 <20250108-am62lx-v2-3-581285a37d8f@ti.com>
 <2f9b9ea6-f99d-4883-bd3d-f7ee8f0f5bd5@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <2f9b9ea6-f99d-4883-bd3d-f7ee8f0f5bd5@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On January  9, 2025 thus sayeth Vignesh Raghavendra:
> On 09/01/25 04:21, Bryan Brattlof wrote:
> > From: Vignesh Raghavendra <vigneshr@ti.com>
> > 
> > Add the initial board file for the AM62L3's Evaluation Module.
> > 
> > Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> > Signed-off-by: Bryan Brattlof <bb@ti.com>
> > ---
> > Changes in v1:
> >  - switched to non-direct links so TRM updates are automatic
> >  - removed current-speed property from main_uart0
> >  - removed empty reserved-memory{} node
> >  - removed serial2 from aliases{} node
> >  - corrected main_uart0 pinmux
> > ---
> >  arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 43 ++++++++++++++++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
> > new file mode 100644
> > index 0000000000000..ed0148ce1bea6
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
> > @@ -0,0 +1,43 @@
> > +// SPDX-License-Identifier: GPL-2.0-only or MIT
> > +/*
> > + * Device Tree file for the AM62L3 Evaluation Module
> > + * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
> > + *
> > + * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "k3-am62l3.dtsi"
> > +
> > +/ {
> > +	compatible = "ti,am62l3-evm", "ti,am62l3";
> > +	model = "Texas Instruments AM62L3 Evaluation Module";
> > +
> > +	chosen {
> > +		stdout-path = &main_uart0;
> > +	};
> > +
> > +	memory@80000000 {
> > +		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
> > +		device_type = "memory";
> > +		bootph-all;
> > +	};
> > +};
> > +
> > +&pmx0 {
> > +	main_uart0_pins_default: main_uart0-default-pins {
> > +		pinctrl-single,pins = <
> 
> 
> > +			AM62PX_IOPAD(0x01b4, PIN_INPUT, 0)	/* (D13) UART0_RXD */
> > +			AM62PX_IOPAD(0x01b8, PIN_OUTPUT, 0)	/* (C13) UART0_TXD */
> 
> 			^^^^ AM62LX_IOPAD()

Oops! thanks Vignesh

~Bryan

