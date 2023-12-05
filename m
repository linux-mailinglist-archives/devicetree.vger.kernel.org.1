Return-Path: <devicetree+bounces-21894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F85B805850
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 16:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B21E91C20F81
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 15:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 863F767E9B;
	Tue,  5 Dec 2023 15:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="OI+X/js7"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FB1CA9;
	Tue,  5 Dec 2023 07:12:47 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B5FCZpo017705;
	Tue, 5 Dec 2023 09:12:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701789155;
	bh=fHSoPyjS9SZQBJpx/ERIiHnFNDewwIjQ6bUqR4bHoeo=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=OI+X/js77TcXK9p1SJRlhNBXOkZELoY1fFlfNglFWzTL0Jt+/JfPSNAfMzZX+Fwus
	 /HmlN7la4S9IaDuee1efp/GUhDmi9vdYu9f1rdPI5/5VxqgEreVC9sXYPeEYZ41yF6
	 DYvWSEW3ARgTW8FxHZz17GVluQvMej+zm2IWIrqs=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B5FCZAw019858
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 5 Dec 2023 09:12:35 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 5
 Dec 2023 09:12:35 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 5 Dec 2023 09:12:35 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B5FCZ6a092905;
	Tue, 5 Dec 2023 09:12:35 -0600
Date: Tue, 5 Dec 2023 09:12:35 -0600
From: Nishanth Menon <nm@ti.com>
To: Garrett Giordano <ggiordano@phytec.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <w.egorov@phytec.de>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <upstream@lists.phytec.de>
Subject: Re: [PATCH 1/3] arm64: dts: ti: k3-am625-phyboard-lyra-rdk: Lower
 I2C1 frequency
Message-ID: <20231205151235.y6qb7pzvrar24opm@regally>
References: <20231204222811.2344460-1-ggiordano@phytec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231204222811.2344460-1-ggiordano@phytec.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 14:28-20231204, Garrett Giordano wrote:
> The gpio-expander on i2c-1 has a maximum frequency of 100kHz. Update our
> main_i2c1 frequency to allow the nxp,pcf8574 gpio-expander to function
> properly.
> 
> Signed-off-by: Garrett Giordano <ggiordano@phytec.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> index a438baf542c2..171354b13e33 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> @@ -187,7 +187,7 @@ cpsw3g_phy3: ethernet-phy@3 {
>  &main_i2c1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&main_i2c1_pins_default>;
> -	clock-frequency = <400000>;
> +	clock-frequency = <100000>;
>  	status = "okay";
>  
>  	gpio_exp: gpio-expander@21 {
> -- 
> 2.25.1
> 
https://lore.kernel.org/all/bd5284ec-6f25-464a-9ee7-4c50496482f1@phytec.de/

please make sure to pick up the previous Reviewed-by when you post an
update of your series.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

