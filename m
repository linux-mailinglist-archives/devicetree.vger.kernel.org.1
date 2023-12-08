Return-Path: <devicetree+bounces-22988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBB0809D0C
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 08:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C3DF281B4E
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 07:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81844101C9;
	Fri,  8 Dec 2023 07:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="tFVI8hH5"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CACB171F;
	Thu,  7 Dec 2023 23:28:59 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B87ShMV065745;
	Fri, 8 Dec 2023 01:28:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702020523;
	bh=P995/KmxRn+AapdfP+hEBCbOthYU7XKcxWvchCC87rQ=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=tFVI8hH5Eg9BgaB/gBhm3uSRsd8lswY6AWXuNqBIucDUYWsFurUI6UpeU5XGErZS4
	 2KUZ2L0nwJTNl5CDSvTH9U+C73lbAQ1zUz5rm6D3uKeNkAQbpaPRy7GTS73mJHyNIh
	 rMbkkIn72dEmTKipGUWyvzPkhKLe4Yd3GtEZL4w4=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B87ShWW011538
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 8 Dec 2023 01:28:43 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 8
 Dec 2023 01:28:43 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 8 Dec 2023 01:28:43 -0600
Received: from [10.249.135.225] ([10.249.135.225])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B87SdsH056714;
	Fri, 8 Dec 2023 01:28:40 -0600
Message-ID: <afec7eaa-9ef5-447f-9619-9721937fe805@ti.com>
Date: Fri, 8 Dec 2023 12:58:38 +0530
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
To: Andrew Lunn <andrew@lunn.ch>, MD Danish Anwar <danishanwar@ti.com>
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
From: "Anwar, Md Danish" <a0501179@ti.com>
In-Reply-To: <fe6499b3-fbda-4e2d-9b5e-92cc60d3a79c@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 12/8/2023 3:10 AM, Andrew Lunn wrote:
>> +	mdio-mux-2 {
>> +		compatible = "mdio-mux-multiplexer";
>> +		mux-controls = <&mdio_mux>;
>> +		mdio-parent-bus = <&icssg1_mdio>;
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		mdio@0 {
>> +			reg = <0x0>;
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			icssg1_phy2: ethernet-phy@3 {
>> +				reg = <3>;
>> +				tx-internal-delay-ps = <250>;
>> +				rx-internal-delay-ps = <2000>;
>> +			};
>> +		};
> 
> That looks odd. A mux generally has > 1 mdio bus. Otherwise its not
> really a mux.
> 

We are disabling node `mdio-mux-1` which has the `cpsw3g_mdio` bus and
then adding a new node `mdio-mux-2` which has the `icssg1_mdio` bus. The
mux can actually have two different mdio buses. The patch actually
disables the mux1 node and creates a new node for icssg1_mdio bus so
that cpsw3g mdio bus is disabled properly.

We can modify the existing `mdio-mux-1` as well (added the code below)
instead of disabling mux1 and creating mux2 node.

&mdio_mux_1 {
	mdio-parent-bus = <&icssg1_mdio>;
	#address-cells = <1>;
	#size-cells = <0>;

	mdio@0 {
		reg = <0x0>;
		#address-cells = <1>;
		#size-cells = <0>;

		icssg1_phy2: ethernet-phy@3 {
			reg = <3>;
			tx-internal-delay-ps = <250>;
			rx-internal-delay-ps = <2000>;
		};
	};
};

Let me know what do you think. Is the approach in the patch correct or
should I modify existing mux node only?

> And this mux hardware exists all the time right? So it should be in
> the .dtsi file.
> 

Agreed. But the mdio-mux-1 node was added in k3-am642-evm.dts by the
commit 985204ecae1c37d55372874ff9146231d28fccc6. I did the same with
mdio-mux-2 node.

> 	Andrew

-- 
Thanks and Regards,
Md Danish Anwar

