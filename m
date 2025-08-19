Return-Path: <devicetree+bounces-206121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E804B2B8F7
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B8D9580F57
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B619A2356A4;
	Tue, 19 Aug 2025 05:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="p/g/daPs"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ED625A331
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755582859; cv=none; b=JV70BhZHBXx6CCELhBjXq8SEUMZHNR0ZZg/Mbdmh1plIvqi9m+JE5XYEFbHrRelKucOolYfjCTPnaoF46KvbYkvWxEqVgnyQTeN+pEBLiGpQ7EUt4MYiYDX3CmghVwHQGqF6t6d7i6UoPFzpc7VToFAKyk+XyJbwM9oSBhmEG7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755582859; c=relaxed/simple;
	bh=3CJZrQbMzDAGEUAxeG63Dm7NV3gCsTStj3BISx63FbU=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ErnDXU8TETJZBBxPhcS663pzGRyfIH6otGVI8hbBmzqY/1i64H86B+3kPfL5gjxbogKFrCOsKT+7zQisWEMWGEAedW83hribpwUA0r+AULWRR1sUXtJXmZoJnlcawxNnhEgF5a+G9mAH1L6vZbhzopjJb6cgqz2qngV+DKo/PSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=p/g/daPs; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57J5qqtv2883261;
	Tue, 19 Aug 2025 00:52:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755582772;
	bh=QvpCeul1OPk71aWNBtuBifUPK9X0RxxbmWPhiOMRmIs=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=p/g/daPsXyy5VfsDqZTEPm/ceGvl5X3BHwzG9zAaGIw35rZkYtXdYRGO4iH0kZr4G
	 rhGEYOghB93/iYmwSaIP661LnKmZRC3UJBcQJcJiEdNMAKGHXmklO+qyvGzMxwOldV
	 dclQA4v91WwOoq93a6gbjP+XY6sXEKbTnjqaronM=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57J5qqla367345
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 19 Aug 2025 00:52:52 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 19
 Aug 2025 00:52:51 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 19 Aug 2025 00:52:51 -0500
Received: from [172.24.20.139] (lt5cd2489kgj.dhcp.ti.com [172.24.20.139])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57J5qhie2220996;
	Tue, 19 Aug 2025 00:52:44 -0500
Message-ID: <0268561b-8a3b-4508-bd28-3b47f5a8b754@ti.com>
Date: Tue, 19 Aug 2025 11:22:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel:
 panel-simple.yaml: Add Raspberry pi dsi panel compatible
To: "Raghavendra, Vignesh" <vigneshr@ti.com>,
        Harikrishna Shenoy
	<h-shenoy@ti.com>, <neil.armstrong@linaro.org>,
        <jessica.zhang@oss.qualcomm.com>, <airlied@gmail.com>,
        <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nm@ti.com>,
        <kristo@kernel.org>, <thierry.reding@gmail.com>, <sam@ravnborg.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <s-jain1@ti.com>, <devarsht@ti.com>, <u-kumar1@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-2-h-shenoy@ti.com>
 <06a9fa20-e45a-458c-971a-a6f0f1d08004@ti.com>
 <f2fff09a-376a-44b9-a421-13202b1079fb@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <f2fff09a-376a-44b9-a421-13202b1079fb@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea


On 8/19/2025 10:46 AM, Raghavendra, Vignesh wrote:
>
> On 8/19/2025 10:24 AM, Kumar, Udit wrote:
>> On 8/18/2025 9:17 PM, Harikrishna Shenoy wrote:
>>> Add RPi DSI panel[0] as a valid compatible for simple-panel.
>>>
>>> [0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/
> $subject has typo s/dsiplay/display and s/dsi/DSI
> (use a spellcheck with your editor).
>
> Also follow the existing prefix convention for the file (run
> git log --oneline to figure out the right prefix)
>
>>> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
>>> ---
>>>    .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>>>    1 file changed, 2 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-
>>> simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-
>>> simple.yaml
>>> index 1ac1f0219079..65f486f2bc9d 100644
>>> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>>> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>>> @@ -268,6 +268,8 @@ properties:
>>>          - rocktech,rk070er9427
>>>            # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
>>>          - rocktech,rk043fn48h
>>> +        # Raspberry, 7" dsi panel
>>> +      - rpi,7inch-dsi
>> Hello Hari,
>>
>> Driver changes should come first to match new compatible before device
>> tree changes.
> No, there isnt a driver update that I can see in the current series. But

correct current series does not have driver changes.

I would expect driver changes as well, which should come before device tree.


> if there was one, then such a patch should be slotted after binding
> updates as Bindings represent HW. Besides checkpatch will complain
>
>>
>>>            # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
>>>          - samsung,ltl101al01
>>>            # Samsung Electronics 10.1" WSVGA TFT LCD panel

