Return-Path: <devicetree+bounces-10213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AD27D024F
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 21:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A53BB2123C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 19:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF5E34183;
	Thu, 19 Oct 2023 19:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="a3v6+yjR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB1732C64
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 19:13:48 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2A01124;
	Thu, 19 Oct 2023 12:13:45 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39JJDaF5013875;
	Thu, 19 Oct 2023 14:13:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697742816;
	bh=ZbBS1GRXEwVY9BHCt4xJ1C0GnK6nUcaz0/Y+bfNkICU=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=a3v6+yjRcOWrRBkTOZNdizp2qPGUa7r6swo0LX0gt4egryGMgk9Sdf/1RE77R18EG
	 zA/dqIPArfB6ae0tD7DVOJNXVgM289P3wtmoiN+7GZQCCAqsXPZA2MNme5yCbeK7xU
	 jjbbvgjuz4K40BFVe+niPW2CVfLG+0RcPCqdAfYE=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39JJDavT063994
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 19 Oct 2023 14:13:36 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 19
 Oct 2023 14:13:34 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 19 Oct 2023 14:13:34 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39JJDYF8019474;
	Thu, 19 Oct 2023 14:13:34 -0500
Date: Thu, 19 Oct 2023 14:13:34 -0500
From: reidt <reidt@ti.com>
To: Vaishnav Achath <vaishnav.a@ti.com>
CC: <vigneshr@ti.com>, <nm@ti.com>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <afd@ti.com>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <robh+dt@kernel.org>,
        <u-kumar1@ti.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: ti: k3-j7200-mcu-wakeup: Switch
 mcu_syscon to ti,j721e-system-controller
Message-ID: <20231019191334.m7h6rlkzzywqrabx@reidt-HP-Z2>
References: <20231009082452.30684-1-vaishnav.a@ti.com>
 <20231009082452.30684-2-vaishnav.a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231009082452.30684-2-vaishnav.a@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 13:54-20231009, Vaishnav Achath wrote:
> From: Nishanth Menon <nm@ti.com>
> 
> Use ti,j721e-system-controller to be explicit about the syscon node we
> are using.
> 
> Signed-off-by: Nishanth Menon <nm@ti.com>
> Signed-off-by: Vaishnav Achath <vaishnav.a@ti.com>
> ---
> 
> No changes since V1.
> 
>  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> index 6ffaf85fa63f..2ee6215e38a6 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> @@ -165,7 +165,7 @@
>  	};
>  
>  	mcu_conf: syscon@40f00000 {
> -		compatible = "syscon", "simple-mfd";
> +		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
>  		reg = <0x00 0x40f00000 0x00 0x20000>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -- 
> 2.17.1
> 
>

Reviewed-by: Reid tonking <reidt@ti.com>


