Return-Path: <devicetree+bounces-23795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEB280C572
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57AEA28179E
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBE821DA40;
	Mon, 11 Dec 2023 10:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="B0YIoYlx"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03CECCB;
	Mon, 11 Dec 2023 02:01:16 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BBA0xGK071011;
	Mon, 11 Dec 2023 04:00:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702288859;
	bh=2paImWByJrTjROw8WnVv5FUglPWngDhuD4VbnvfawPM=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=B0YIoYlxNaGFRmSHJRHWKi7aKMPn/PNqAExXc/pG/Nk0UbP7+EZZzVBmRvqYU2WVS
	 ye2rxb24vGGRjBepVSPA/FCElOT95q258sYgoaJ0lyCgiPE5wEEjuii6c8seGzG3sm
	 m/JeElUwD/DBIwhhYcUyaMzH6gl2MmubDWz0AmrY=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BBA0xrC034776
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 11 Dec 2023 04:00:59 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 11
 Dec 2023 04:00:59 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 11 Dec 2023 04:00:59 -0600
Received: from [10.24.69.31] (danish-tpc.dhcp.ti.com [10.24.69.31])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BBA0s88080210;
	Mon, 11 Dec 2023 04:00:55 -0600
Message-ID: <9f63b81d-1826-411f-b310-e726e5eb5cb3@ti.com>
Date: Mon, 11 Dec 2023 15:30:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: ti: k3-am642-evm: add overlay for icssg1
 2nd port
Content-Language: en-US
To: "Anwar, Md Danish" <a0501179@ti.com>, Andrew Lunn <andrew@lunn.ch>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>,
        Conor
 Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Tero Kristo <kristo@kernel.org>, <srk@ti.com>, <r-gunasekaran@ti.com>
References: <20231207081917.340167-1-danishanwar@ti.com>
 <20231207081917.340167-4-danishanwar@ti.com>
 <fe6499b3-fbda-4e2d-9b5e-92cc60d3a79c@lunn.ch>
 <afec7eaa-9ef5-447f-9619-9721937fe805@ti.com>
From: MD Danish Anwar <danishanwar@ti.com>
In-Reply-To: <afec7eaa-9ef5-447f-9619-9721937fe805@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Andrew,

On 08/12/23 12:58 pm, Anwar, Md Danish wrote:
> On 12/8/2023 3:10 AM, Andrew Lunn wrote:
>>> +	mdio-mux-2 {
>>> +		compatible = "mdio-mux-multiplexer";
>>> +		mux-controls = <&mdio_mux>;
>>> +		mdio-parent-bus = <&icssg1_mdio>;
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +
>>> +		mdio@0 {
>>> +			reg = <0x0>;
>>> +			#address-cells = <1>;
>>> +			#size-cells = <0>;
>>> +
>>> +			icssg1_phy2: ethernet-phy@3 {
>>> +				reg = <3>;
>>> +				tx-internal-delay-ps = <250>;
>>> +				rx-internal-delay-ps = <2000>;
>>> +			};
>>> +		};
>>
>> That looks odd. A mux generally has > 1 mdio bus. Otherwise its not
>> really a mux.
>>
> 
> We are disabling node `mdio-mux-1` which has the `cpsw3g_mdio` bus and
> then adding a new node `mdio-mux-2` which has the `icssg1_mdio` bus. The
> mux can actually have two different mdio buses. The patch actually
> disables the mux1 node and creates a new node for icssg1_mdio bus so
> that cpsw3g mdio bus is disabled properly.
> 
> We can modify the existing `mdio-mux-1` as well (added the code below)
> instead of disabling mux1 and creating mux2 node.
> 
> &mdio_mux_1 {
> 	mdio-parent-bus = <&icssg1_mdio>;
> 	#address-cells = <1>;
> 	#size-cells = <0>;
> 
> 	mdio@0 {
> 		reg = <0x0>;
> 		#address-cells = <1>;
> 		#size-cells = <0>;
> 
> 		icssg1_phy2: ethernet-phy@3 {
> 			reg = <3>;
> 			tx-internal-delay-ps = <250>;
> 			rx-internal-delay-ps = <2000>;
> 		};
> 	};
> };
> 
> Let me know what do you think. Is the approach in the patch correct or
> should I modify existing mux node only?
> 

Can you please let me know which approach should I follow here?

>> And this mux hardware exists all the time right? So it should be in
>> the .dtsi file.
>>
> 
> Agreed. But the mdio-mux-1 node was added in k3-am642-evm.dts by the
> commit 985204ecae1c37d55372874ff9146231d28fccc6. I did the same with
> mdio-mux-2 node.
> 
>> 	Andrew
> 

-- 
Thanks and Regards,
Danish

