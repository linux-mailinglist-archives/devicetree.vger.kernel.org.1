Return-Path: <devicetree+bounces-206667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B194BB2D3AB
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 07:39:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0989A17C223
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 05:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A70442BE64B;
	Wed, 20 Aug 2025 05:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="u6RreG4n"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B762C11EF
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755668196; cv=none; b=R0UCw5XT3W9g7pshA4KFQTk7D6jYMBvxiYZRwUIrWgmo5SQfrREavE4QEOqJjNQ0cJDn35awK1NWr9iAk6D8m9RiB3Zb1baZdSyuiOh0yOafRUnBsBD3b8J3hq//GH0k2tUEP4Mzt2+TUTYq6NXbYOOtJLboJJT1omE7ycWd55E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755668196; c=relaxed/simple;
	bh=vZCGHIfOyQem5ZftKVv2fj0MKNFvwzOaIWQWfqnghac=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=B6z0wodyXteKbSowHOUDnAEIs/3PFZ9G7frMa4On7JMvvpVAVA/99EIxjsqBtYg2KJqihVA1UBLT0nAOQFRT9fNSUmyjC9xd7NP6okR4CVORrWjEBfn7wMY2hnZU8D45SbZ7qBnbZVLWlF/YSNbPOP1M3VAg+aEAPhlYEcN9swA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=u6RreG4n; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57K5aDTh3121137;
	Wed, 20 Aug 2025 00:36:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755668173;
	bh=bcKlqhvo3UrNX+TEl2kZdu9Cx+bpM2S04wcrZzwPMbc=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=u6RreG4nebEd/fC7+b6i8c1SqIyvizGXDcwpjm3ajCFnDXxheEOuwTbU8hZs4aLVl
	 2d6zW1D91NWvA3oDElyRCLM1H0uBP2jcB1t+NVFrJK//wXb8nFU51EB/BuTyVEco8k
	 8P9A4Wl0KKH+npfcilnioW+FjEP8fiWrvmCFEXZI=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57K5aDYh1124355
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Wed, 20 Aug 2025 00:36:13 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Wed, 20
 Aug 2025 00:36:12 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Wed, 20 Aug 2025 00:36:12 -0500
Received: from [172.24.235.208] (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57K5a6BS3910485;
	Wed, 20 Aug 2025 00:36:06 -0500
Message-ID: <8a31d1c5-4233-4696-bf8c-58f5db68d41f@ti.com>
Date: Wed, 20 Aug 2025 11:06:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel:
 panel-simple.yaml: Add Raspberry pi dsi panel compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Harikrishna Shenoy
	<h-shenoy@ti.com>
CC: <neil.armstrong@linaro.org>, <jessica.zhang@oss.qualcomm.com>,
        <airlied@gmail.com>, <simona@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <thierry.reding@gmail.com>, <sam@ravnborg.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-jain1@ti.com>,
        <devarsht@ti.com>, <u-kumar1@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-2-h-shenoy@ti.com>
 <td7d5mldzdunb4sxs5rxa4tfnvvpolcmpwurcv5ubn47whnqek@azedwe6h3y5r>
Content-Language: en-US
From: Harikrishna Shenoy <a0512644@ti.com>
In-Reply-To: <td7d5mldzdunb4sxs5rxa4tfnvvpolcmpwurcv5ubn47whnqek@azedwe6h3y5r>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea


On 8/19/25 06:54, Dmitry Baryshkov wrote:
> On Mon, Aug 18, 2025 at 09:17:44PM +0530, Harikrishna Shenoy wrote:
>> Add RPi DSI panel[0] as a valid compatible for simple-panel.
>>
>> [0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/
>>
>> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
>> ---
>>   .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> index 1ac1f0219079..65f486f2bc9d 100644
>> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> @@ -268,6 +268,8 @@ properties:
>>         - rocktech,rk070er9427
>>           # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
>>         - rocktech,rk043fn48h
>> +        # Raspberry, 7" dsi panel
>> +      - rpi,7inch-dsi
> It's powertip,ph800480t013-idf02
Could you please point to any documentation for this?
>
>>           # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
>>         - samsung,ltl101al01
>>           # Samsung Electronics 10.1" WSVGA TFT LCD panel
>> -- 
>> 2.34.1
>>

