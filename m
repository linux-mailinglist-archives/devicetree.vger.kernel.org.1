Return-Path: <devicetree+bounces-206804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E66B3B2D98E
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:05:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F7B55C4134
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA1D231826;
	Wed, 20 Aug 2025 10:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="mEKy38OC"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653BE19F464
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755684270; cv=none; b=J5W5YCsMbsQhvcpWeovhO5IILfe/938Lgi9mOtTmZs6q87vUe7jcbJF4USYiGlfRoUF8eU+Hbs/3t39u87G4HWLbMT5Q0qwoB9N3G6cgDn4qUCwWN/gQrBSZPY2NSxHso6zuOEhF07oYMwkk+Il+dCjUr8QxbfbyiVz+K1qxids=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755684270; c=relaxed/simple;
	bh=oG0zDfQYLoZFTXU1onaQG6Ak5RU24C8p3Av1yEHPaJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=F9t5E3/0Oz5SdlyXerp42QhS+6CHJvkOkMgn/8rajCfWzN+6V8HI/gusMgw1T2SmvWrZmhIpvpcF9TaHv/lxeMeONW+UmM8JUd4SqeRP0koGTKn79QF6iG5tehEnENKtq/MyE5YA3VqFkwV9EIMR+QMn1m/sQftXDqcg3n7A/d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=mEKy38OC; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57KA4Awu3170873;
	Wed, 20 Aug 2025 05:04:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755684250;
	bh=Bg/wxNDlDGejcpYhDbQUNn4X6pECHdSGzNxkCuMyiXA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=mEKy38OCJYJjiL5hbZQeX59/TDkd1HvrdDP+aBPsOYK81A8vFPxSzWqKw/pfjI343
	 0ryP0VzsISe3sZKNOzbiuaau0lDM3TZoOmJmTI/s0+u7xdECyJoLFjhrPb8v/VgZFt
	 +aeqOJ+xcQrN5Uf2XrO33oauZeWnZanyx9K8C9ec=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57KA4ABj1973989
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Wed, 20 Aug 2025 05:04:10 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Wed, 20
 Aug 2025 05:04:08 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Wed, 20 Aug 2025 05:04:08 -0500
Received: from [172.24.22.46] (lt5cg1457vgj.dhcp.ti.com [172.24.22.46])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57KA42TR052951;
	Wed, 20 Aug 2025 05:04:02 -0500
Message-ID: <fe6f848e-d7bf-477d-bad0-0c8a860f3ae6@ti.com>
Date: Wed, 20 Aug 2025 15:34:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel:
 panel-simple.yaml: Add Raspberry pi dsi panel compatible
To: Harikrishna Shenoy <a0512644@ti.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@oss.qualcomm.com>,
        Harikrishna Shenoy <h-shenoy@ti.com>
CC: <neil.armstrong@linaro.org>, <jessica.zhang@oss.qualcomm.com>,
        <airlied@gmail.com>, <simona@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <nm@ti.com>, <kristo@kernel.org>,
        <thierry.reding@gmail.com>, <sam@ravnborg.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-jain1@ti.com>,
        <devarsht@ti.com>, <u-kumar1@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-2-h-shenoy@ti.com>
 <td7d5mldzdunb4sxs5rxa4tfnvvpolcmpwurcv5ubn47whnqek@azedwe6h3y5r>
 <8a31d1c5-4233-4696-bf8c-58f5db68d41f@ti.com>
From: "Raghavendra, Vignesh" <vigneshr@ti.com>
Content-Language: en-US
In-Reply-To: <8a31d1c5-4233-4696-bf8c-58f5db68d41f@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea



On 8/20/2025 11:06 AM, Harikrishna Shenoy wrote:
> 
> On 8/19/25 06:54, Dmitry Baryshkov wrote:
>> On Mon, Aug 18, 2025 at 09:17:44PM +0530, Harikrishna Shenoy wrote:
>>> Add RPi DSI panel[0] as a valid compatible for simple-panel.
>>>
>>> [0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/
>>>
>>> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
>>> ---
>>>   .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-
>>> simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-
>>> simple.yaml
>>> index 1ac1f0219079..65f486f2bc9d 100644
>>> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>>> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>>> @@ -268,6 +268,8 @@ properties:
>>>         - rocktech,rk070er9427
>>>           # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
>>>         - rocktech,rk043fn48h
>>> +        # Raspberry, 7" dsi panel
>>> +      - rpi,7inch-dsi
>> It's powertip,ph800480t013-idf02
> Could you please point to any documentation for this?

Git log would point you to it: 

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=051e95ee7ec10050154e4c8f48be4d99ac83f8fc

>>
>>>           # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
>>>         - samsung,ltl101al01
>>>           # Samsung Electronics 10.1" WSVGA TFT LCD panel
>>> -- 
>>> 2.34.1
>>>


