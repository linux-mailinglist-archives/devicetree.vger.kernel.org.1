Return-Path: <devicetree+bounces-206098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C5CB2B889
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:17:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DCC7D7AE1BA
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEE68261B64;
	Tue, 19 Aug 2025 05:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="bIjI/Fmh"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A685200BBC
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755580632; cv=none; b=BRIb89LEAeTmX83hOIMWzsn8td6Heom2HzhIJNZl98GvI5PzSVx2cLBtcfo0R9MLs1tE9F7Wg4yTR503Y3R04DVBcQsoX6lki0/DwGl3iPwoxL70uFf05SKoDoBvqqIuR5EzR/VC3BoVo+mdMvjvcPKmo0JEJeQk8KgYa/Mdftw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755580632; c=relaxed/simple;
	bh=pi8v/WBhvPtjp52LLppyhRC8qvY6hcQ1pOYUzXDl+6Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=CUqjJ7jjq4V8t/eqsKeqaM6BOOEnXGNN9J4dsznWKhMfhYFB0l7WcIi79/gcTvV4tkEi87niCfGZphlT4qzJnNpoXOPwc5VxmLJ369NWt0gDBO178XEK0eiR7Dx2bpsRWihKGWTz41G0aBqQAawTMBQ3vjDLlj33uTqwp0TP+mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=bIjI/Fmh; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57J5GrNl3324582;
	Tue, 19 Aug 2025 00:16:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755580613;
	bh=T4mJICxOpJFWxXO8GjVivYdGE86em4xU+Q+XffwEHOM=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=bIjI/FmhuBv+JUm4fuuO17xFFB2/TicreKekTbpIrK43Y6zA4IoDbjj1THRukrd8n
	 NFhfsd7LeqcaKJ0SGgjwV5V+f/GlYpxV0zegOfj0+M7Bsz4z0/A1JhImC9IvoHU1Sq
	 sxHwsdSjdaEvgROdIA4Webvrgj1ElAmC8DTOutzQ=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57J5GrRw156908
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 19 Aug 2025 00:16:53 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 19
 Aug 2025 00:16:52 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 19 Aug 2025 00:16:52 -0500
Received: from [172.24.22.46] (lt5cg1457vgj.dhcp.ti.com [172.24.22.46])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57J5Gk4J2463046;
	Tue, 19 Aug 2025 00:16:47 -0500
Message-ID: <f2fff09a-376a-44b9-a421-13202b1079fb@ti.com>
Date: Tue, 19 Aug 2025 10:46:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel:
 panel-simple.yaml: Add Raspberry pi dsi panel compatible
To: "Kumar, Udit" <u-kumar1@ti.com>, Harikrishna Shenoy <h-shenoy@ti.com>,
        <neil.armstrong@linaro.org>, <jessica.zhang@oss.qualcomm.com>,
        <airlied@gmail.com>, <simona@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <nm@ti.com>, <kristo@kernel.org>,
        <thierry.reding@gmail.com>, <sam@ravnborg.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <s-jain1@ti.com>, <devarsht@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-2-h-shenoy@ti.com>
 <06a9fa20-e45a-458c-971a-a6f0f1d08004@ti.com>
From: "Raghavendra, Vignesh" <vigneshr@ti.com>
Content-Language: en-US
In-Reply-To: <06a9fa20-e45a-458c-971a-a6f0f1d08004@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea



On 8/19/2025 10:24 AM, Kumar, Udit wrote:
> 
> On 8/18/2025 9:17 PM, Harikrishna Shenoy wrote:
>> Add RPi DSI panel[0] as a valid compatible for simple-panel.
>>
>> [0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/

$subject has typo s/dsiplay/display and s/dsi/DSI
(use a spellcheck with your editor).

Also follow the existing prefix convention for the file (run
git log --oneline to figure out the right prefix)

>>
>> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
>> ---
>>   .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-
>> simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-
>> simple.yaml
>> index 1ac1f0219079..65f486f2bc9d 100644
>> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> @@ -268,6 +268,8 @@ properties:
>>         - rocktech,rk070er9427
>>           # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
>>         - rocktech,rk043fn48h
>> +        # Raspberry, 7" dsi panel
>> +      - rpi,7inch-dsi
> 
> Hello Hari,
> 
> Driver changes should come first to match new compatible before device
> tree changes.

No, there isnt a driver update that I can see in the current series. But
if there was one, then such a patch should be slotted after binding
updates as Bindings represent HW. Besides checkpatch will complain

> 
> 
>>           # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
>>         - samsung,ltl101al01
>>           # Samsung Electronics 10.1" WSVGA TFT LCD panel


