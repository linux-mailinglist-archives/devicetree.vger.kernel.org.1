Return-Path: <devicetree+bounces-28654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 979CF81EFBD
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 16:22:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 913D3B20EA5
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 15:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58AED45957;
	Wed, 27 Dec 2023 15:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="tPcmUx2e"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FBB45BE1
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 15:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BRFM7A9082857;
	Wed, 27 Dec 2023 09:22:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1703690527;
	bh=KU0L4qaS++VYHnQ58Qab52nO0J03uEsU47UgpHN1HJg=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=tPcmUx2edbKDbyIkGQJQZDZdj0B9o7srl0xoPtlTrwfeo7aj8B/Jv+mF+38cXPYGv
	 /pRO6Twapu9WWoeiA11M4uuLQYWpgBeNk9iTVR4aRExJDNl4S6ud6QvTtzbiBBCGpR
	 aVDAq2dDaX+TdLDTsndSE/jbyk34wc/BW0IkF+sU=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BRFM7pa084992
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Dec 2023 09:22:07 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Dec 2023 09:22:07 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Dec 2023 09:22:07 -0600
Received: from [10.249.142.56] ([10.249.142.56])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BRFM5wh068726;
	Wed, 27 Dec 2023 09:22:05 -0600
Message-ID: <e28a4f16-f9a8-499a-a6a3-7acef0e0aa10@ti.com>
Date: Wed, 27 Dec 2023 20:52:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for
 wkup_uart0
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>, Tony Lindgren <tony@atomide.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Dhruva Gole <d-gole@ti.com>
References: <20230912111215.18415-1-tony@atomide.com>
 <170368552643.1332094.7883858507182654481.b4-ty@ti.com>
From: "Raghavendra, Vignesh" <vigneshr@ti.com>
In-Reply-To: <170368552643.1332094.7883858507182654481.b4-ty@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180



On 12/27/2023 7:29 PM, Vignesh Raghavendra wrote:
> 
> On Tue, 12 Sep 2023 14:12:15 +0300, Tony Lindgren wrote:
>> The devices in the wkup domain are capable of waking up the system from
>> suspend. We can configure the wkup domain devices in a generic way using
>> the ti-sysc interconnect target module driver like we have done with the
>> earlier TI SoCs.
>>
>> As ti-sysc manages the SYSCONFIG related registers independent of the
>> child hardware device, the wake-up configuration is also set even if
>> wkup_uart0 is reserved by sysfw.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for wkup_uart0
>       commit: 86224524b52a8efba26f920736d08c8bfdd22d87
> 


Please ignore above. I meant to pick v4. Sorry for the noise!

Regards
Vignesh

