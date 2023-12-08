Return-Path: <devicetree+bounces-22974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0DE809B14
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 05:35:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE78B1C20C61
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 04:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314EA290F;
	Fri,  8 Dec 2023 04:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="bBxeOpdX"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DFBA171C;
	Thu,  7 Dec 2023 20:35:41 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B84ZTXN053300;
	Thu, 7 Dec 2023 22:35:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702010129;
	bh=T+ehlm7XAtTSB4WvM5eUKbAWSc1nzfQJ/n2mIQq0ldc=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=bBxeOpdXVLfkvEN/Y7R2fIZsT0107/Z0v/ilhmTF6MQP+PndZuynfjKJ0AjGqvn1L
	 +YReyAsUjrs7nTR99DoNUlv/+lcS3MSyxdW3ZIKd2Isxn7qBogf6cGdmHTG13fv+aH
	 SHjreahuqEI2aAfTUSAXQfd8Yb1n8ys+CcuBVWXI=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B84ZTqP121849
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 7 Dec 2023 22:35:29 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 7
 Dec 2023 22:35:28 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 7 Dec 2023 22:35:28 -0600
Received: from [10.249.135.225] ([10.249.135.225])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B84YiXC102178;
	Thu, 7 Dec 2023 22:35:25 -0600
Message-ID: <fa5c273d-2b03-4f8b-b94d-4110a4b70d16@ti.com>
Date: Fri, 8 Dec 2023 10:05:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: ti: k3-am642-evm: add ICSSG1 Ethernet
 support
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
 <20231207081917.340167-3-danishanwar@ti.com>
 <9e0067dd-4865-4afc-ba42-bda504459ad8@lunn.ch>
From: "Anwar, Md Danish" <a0501179@ti.com>
In-Reply-To: <9e0067dd-4865-4afc-ba42-bda504459ad8@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180



On 12/8/2023 3:04 AM, Andrew Lunn wrote:
>> +&icssg1_mdio {
>> +	status = "okay";
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&icssg1_mdio1_pins_default>;
>> +
>> +	icssg1_phy1: ethernet-phy@0 {
>> +		reg = <0xf>;
> 
> reg = 0xf, so this is ethernet-phy@f.
> 
>     Andrew

Sure Andrew. I'll update this.

-- 
Thanks and Regards,
Md Danish Anwar

