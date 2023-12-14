Return-Path: <devicetree+bounces-25395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58124813222
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0084B1F21A68
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6482F57861;
	Thu, 14 Dec 2023 13:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Yc12oRuc"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A5828E;
	Thu, 14 Dec 2023 05:50:46 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BEDob6B066265;
	Thu, 14 Dec 2023 07:50:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702561837;
	bh=1MFgmM+99t7S332JrEimE+YAbkE70zysXns5rbpIq8U=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=Yc12oRuc5GpXnsPSzDReJntbhwMr56bUesxbHSO8ockBZgabQOY2zM7I4L2Jarg35
	 VN2QIkO7GXE4sltLnNN5Wej44hREhFk1C4djXoYGlvfhoRC5Hh3nOmFeWpxAlsKDdy
	 /aZCk1StG0CzvzVZfKgjGA53ZQ8umMeLRLtZ6sGQ=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BEDobRA001613
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Dec 2023 07:50:37 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 14
 Dec 2023 07:50:37 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 14 Dec 2023 07:50:37 -0600
Received: from [10.249.131.186] ([10.249.131.186])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BEDoXZ7088063;
	Thu, 14 Dec 2023 07:50:34 -0600
Message-ID: <0cef8f50-6608-cf3d-ad62-1afd3f5560ea@ti.com>
Date: Thu, 14 Dec 2023 19:20:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <danishanwar@ti.com>,
        <r-gunasekaran@ti.com>, <srk@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am654-icssg2: Enable PHY interrupts
 for ICSSG2
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
References: <20231213080216.1710730-1-s-vadapalli@ti.com>
 <20231213123819.tqh3lm2ceir3qjbk@swimmer>
 <6f1c1a59-cec0-46d1-8ecb-a82d9d444ccf@ti.com>
 <20231214121727.ayrbqz2nmeb25rpw@striving>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <20231214121727.ayrbqz2nmeb25rpw@striving>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180



On 14-12-2023 17:47, Nishanth Menon wrote:

...

>>
>> Yes, you are right! Edge-Triggered interrupts shouldn't be shared. I missed
>> noticing this. Thank you for pointing it out. Since the SoC only supports
>> Edge-Triggered interrupts, I believe that the correct decision would be to use
>> the interrupt for only one of the two PHYs, while leaving the other PHY in
>> polled mode of operation which is the default.
>>
>> Kindly let me know if this is acceptable and I shall update this patch accordingly.
> 
> Sounds like a bug in board design there (due to an choice of IP
> limitation) - I suggest getting it noted in board documentation and
> refer to the errata in the second phy (else folks will wonder why we
> aren't using interrupts on the second phy.

Thank you for your suggestion on the next steps to be taken. I will
ensure that the board documentation is updated. Additionally, in the v3
patch I will add a comment within the "icssg2_phy0" node indicating that
the interrupt mode of operation is only being enabled for "icssg2_phy0"
due to the interrupt being an edge-triggered interrupt which cannot be
shared among both the PHYs. And for that reason "icssg2_phy1" is being
left in the default polled mode of operation.

-- 
Regards,
Siddharth.

