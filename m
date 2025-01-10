Return-Path: <devicetree+bounces-137404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BE9A08E52
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A814D188BA49
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A02B20B1EC;
	Fri, 10 Jan 2025 10:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="m2xVGszp"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C396E20A5F3;
	Fri, 10 Jan 2025 10:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736505932; cv=none; b=F4iNE3zEm7AogweyrcRDFsBUvYzt/t4Z/uLB6egYehK8YWTI7xgd1eEAHnCtOlOR+2Nf76Wk9Bhk2SehUHkUipAvzzG2YEye9aepTenAx5/JU0lrW3DnUMRk1H64goAhf3iIeAEwmngcTvK486zWrs83lIrqCgnYsEXlvrIz+Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736505932; c=relaxed/simple;
	bh=8NVpkbuI7scffpwYC1IqkwuZCYJMu+aYiJm9dQzz7XU=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cAthxKwKD/MZyWLn9rUyfi8L1Aj0w5vB6N7BISXFczn/YKhMHTLcFwqjmlEYFbyiHhZSZm2lUuvUgXz3EnXCsNkl+XYHZjDQisQG1Y6ye7Rj8ZBSgIDLHkyngdUW3aE6UDeTTp9bxqX4mgg0cFaBEkxGWzDHLnV9KZzZC28NA8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=m2xVGszp; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50AAjH8A3299712
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 04:45:17 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736505917;
	bh=RoOP38KqmTiRF34QmtcHqNJL3B8ytGODGfqOcZjHVRo=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=m2xVGszp+6OqZjA4Uv6E7/rwCsLkxiBfbB8sJ9+IXHqHPaNKMckBLEuEwCBD8AP2O
	 5jyf1CzAmm1+DtSjaincUQfqyUHViZ6dLxlYgAo9beXnBg7UVwBHxaLa5WdvBDfINm
	 vuaKAQl//niM7fzqZYBmFOjlj7rDaOTODVvOeT/E=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50AAjHws061139
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 10 Jan 2025 04:45:17 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 10
 Jan 2025 04:45:17 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 10 Jan 2025 04:45:17 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50AAjGD4100081;
	Fri, 10 Jan 2025 04:45:16 -0600
Date: Fri, 10 Jan 2025 16:15:15 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Jayesh Choudhary <j-choudhary@ti.com>
CC: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>,
        <c-vankar@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-j784s4-evm:quad-port-eth-exp1: Remove
 duplicate hogs
Message-ID: <ybyexqc4ssjt5lkr76bfiaf7usmq7xto42byyboov5pjkdc4fn@wsj26klcliio>
References: <20250110101855.156136-1-j-choudhary@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250110101855.156136-1-j-choudhary@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On Fri, Jan 10, 2025 at 03:48:55PM +0530, Jayesh Choudhary wrote:

Hello Jayesh,

In the $subject of this patch, please use the overlay name as-is instead
of adding the colon which splits the overlay name:
s/k3-j784s4-evm:quad-port-eth-exp1/k3-j784s4-evm-quad-port-eth-exp1

> The j784s4-evm board dts now has the gpio hogs for MUX2 after integration
> of audio support.
> Remove duplicate gpio-hogs from the overlay dtso to prevent mux probe
> failures leading to can-phy3 deferred probe:
> 'gpio-mux mux-controller: probe with driver gpio-mux failed with error -16'

This appears to be a fix since overlay functionality was broken since
the commit which introduced audio support. Please add a "Fixes" tag
to indicate this.

> 
> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>

With the above comments addressed,

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Regards,
Siddharth.

