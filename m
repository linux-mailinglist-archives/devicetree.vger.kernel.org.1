Return-Path: <devicetree+bounces-140254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D14A18FD3
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0CD9F7A462A
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B1A210F76;
	Wed, 22 Jan 2025 10:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="asebbBco"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F984502A;
	Wed, 22 Jan 2025 10:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737542073; cv=none; b=lkWzUpsbZyhSuMqqIZ+d8MnOQgQuPtPukOhoIIPei2GJBMGZcqoAcGeA5kpjkk/C7pyis/PngMzDPqBeRvcLmDpqXbkUF+EH9RmHWBdzV+L+BO+UwdLZOJg2VcOrzgt/N0Ps3cSdAtNQ3Pgj6i1D50zQRX7SGdb2T0l3VUgdcvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737542073; c=relaxed/simple;
	bh=NiA1Wa3PlLuFulquOwSIgwH6oanSjM1fjnEqQsHeov8=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QNhMSJATN7elqoLLYhgTw28DPpqoDSEz1VfXN8jObrh0+NvmS9NSU9F9A9Y1yCekH5nptNQh2fmMML1Zd3nzUkinesUjYLZ2c6nE+pSpuO9htvl/Rp73Om5Yxb6kejP8SSuYgtQ2hqDBnM3c9IkT1CzlHm5WEZy7hbKtLqbHAe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=asebbBco; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50MAYNrK998000
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 22 Jan 2025 04:34:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737542063;
	bh=D148uN4hDXdT2rJSZKJwByhsJ6g1FBpWYudcX0hVbmM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=asebbBcouZYomCUcR1R60J/3sjbhOTfqfLWJz0eIxYX9TKFIkjastUZyFJ1ymseRX
	 Nt5CjjyVK17BdWqqCqvnlURnvrVwnUSIgDzyGiTptMkqmwpFTwCBhXNO5hILA5PUOR
	 hsVhbAGGnGBVXk3a6HftOLjNpu2CMxmHm9M1gHU0=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50MAYNw6118463;
	Wed, 22 Jan 2025 04:34:23 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 22
 Jan 2025 04:34:22 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 22 Jan 2025 04:34:22 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50MAYLfx010598;
	Wed, 22 Jan 2025 04:34:22 -0600
Date: Wed, 22 Jan 2025 16:04:20 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>
CC: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Siddharth
 Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh
 Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/5] dt-bindings: mfd: syscon: Add
 ti,j784s4-acspcie-proxy-ctrl to second list
Message-ID: <ktchilwqxu3xxu7afa2qkrmkfbwwf3xasyo3jfypizgrl7yd64@nqdp5zle7xkl>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-1-515d56edc35e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-1-515d56edc35e@baylibre.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On Wed, Jan 22, 2025 at 11:24:32AM +0100, Markus Schneider-Pargmann wrote:

Hello Markus,

> The compatible string was only added to the select list, but not the
> second list of compatibles. This adds it  to the second list as well.
> 
> Fixes: 0d078d47cd3e ("dt-bindings: mfd: syscon: Add ti,j784s4-acspcie-proxy-ctrl compatible")
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>

The fix is already a part of the "for-mfd-next" branch of the mfd tree:
https://git.kernel.org/lee/mfd/c/756d4b7a873c

> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index b414de4fa779ba3289a5f0d484b3c7d0341395d9..0e68c69e7bc9ef8c2c96f0e7d1b5d88eeab2bfba 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -213,6 +213,7 @@ properties:
>            - ti,am625-dss-oldi-io-ctrl
>            - ti,am62p-cpsw-mac-efuse
>            - ti,am654-dss-oldi-io-ctrl
> +          - ti,j784s4-acspcie-proxy-ctrl
>            - ti,j784s4-pcie-ctrl
>            - ti,keystone-pllctrl
>        - const: syscon

Regards,
Siddharth.

