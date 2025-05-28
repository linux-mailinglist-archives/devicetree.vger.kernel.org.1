Return-Path: <devicetree+bounces-181183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EACD1AC68A4
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:57:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AABD04A6BF9
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14F44283CB3;
	Wed, 28 May 2025 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="TnmPfyrV"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2AB2836AF
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748433453; cv=none; b=YNhdywtNhp+6w4j5KOFopsNor2YfMnVcO71r5ppdykI7lGWbhQdPeibwxS89MEBW8vIhMcWUnAl2zFRMoqSel4utySKBpM7cMX/zbI9QhsA8PI5xoh0RHRpuyyCZ+cZcMjRTxUzyWREJHZ8a8liip/tZNs2sg6rNUsM1+oJcs30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748433453; c=relaxed/simple;
	bh=sSCKB1E9ELIG2NYqjni8tItp5R5klF/j+oTOOckovfo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aIqCjQZd1rkFM/ewx51kk+35ygHSSQXBl9h4urttWrLOroaBrjCYe2n20Ag6P95v+RMFNezY8D975bHQteAl0XIsLEDlMh99Y61COOi1/XyQmNb1IUVIfoYMB6I8mTxZMTGdx6IvvMdvniiufRva7iORPg3iQTkCTUIZYAAd1jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=TnmPfyrV; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <7313e3a4-24bf-42be-901d-e85eb260cc0f@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1748433448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zpupw+BL22wW70OO3ldtdTEci1KOss4N595RFWiCJy4=;
	b=TnmPfyrVIF0NjlC3AUNCJnSsxqqxgtgCTwUF7OW7oLZki32QTawdrmELLquh2uVwlAcBPj
	bDIz68KGKSnuyOAYV7kBX5p3DOA6xCVsY98lTTVYaIEG7I2cAHp6gNBRnFS5mVggr4CQJd
	XfiELFUSiUJizHXpFXqV5xZuVBvxcU4=
Date: Wed, 28 May 2025 17:26:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v8 4/4] drm/tidss: Add OLDI bridge support
To: Michael Walle <mwalle@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>,
 David Airlie <airlied@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Simona Vetter <simona@ffwll.ch>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Devarsh Thakkar <devarsht@ti.com>,
 Praneeth Bajjuri <praneeth@ti.com>, Udit Kumar <u-kumar1@ti.com>,
 Jayesh Choudhary <j-choudhary@ti.com>,
 Francesco Dolcini <francesco@dolcini.it>,
 Alexander Sverdlin <alexander.sverdlin@siemens.com>,
 DRI Development List <dri-devel@lists.freedesktop.org>,
 Devicetree List <devicetree@vger.kernel.org>,
 Linux Kernel List <linux-kernel@vger.kernel.org>
References: <20250525151721.567042-1-aradhya.bhatia@linux.dev>
 <20250525151721.567042-5-aradhya.bhatia@linux.dev>
 <DA5ZNDCHXC6M.1CDYDG6KKMAP0@kernel.org>
 <a98ad2e7-50de-4d04-8d99-2cf77354b1d6@linux.dev>
 <DA6PRDARLY70.1CILNJ8YLIOA1@kernel.org>
 <fc77a1e2-be50-43b1-9863-f8ca70445428@linux.dev>
 <fc5f6000fbe1f01223f8a28a952b40ea@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <fc5f6000fbe1f01223f8a28a952b40ea@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Hi Michael,

On 28/05/25 13:57, Michael Walle wrote:
> Hi Aradhya,
> 
>>>> Something like this.
>>>>
>>>> &oldi0 {
>>>>     // primary oldi
>>>>     ti,companion-oldi = <&oldi1>;
>>>> };
>>>>
>>>>
>>>> &oldi1 {
>>>>     // secondary oldi
>>>>     ti,secondary-oldi = true;
>>>>     ti,companion-oldi = <&oldi0>;
>>>> };
>>>>
>>>>
>>>> If there is no companion for any OLDI dt node, then the OLDI TX will be
>>>> deemed as acting by itself, and in a single-link mode.
>>>
>>> And it's possible to still have these properties and treat them as
>>> two distinct transmitters? I'm wondering if it's possible to have
>>> the companion-oldi and secondary-oldi property inside the generic
>>> SoC dtsi, so you don't have to repeat it in every board dts.
>>>
>>> If I read the code correctly, the panel has to have the even and odd
>>> pixel properties to be detected as dual-link. Correct? Thus it would
>>> be possible to have
>>>
>>> oldi0: oldi@0 {
>>>      ti,companion-oldi = <&oldi1>;
>>> };
>>>
>>> oldi1: oldi@1 {
>>>      ti,secondary-oldi;
>>>      ti,companion-oldi = <&oldi0>;
>>> };
>>>
>>> in the soc.dtsi and in a board dts:
>>>
>>> panel {
>>>     port {
>>>         remote-endpoint = <&oldi0>;
>>>     };
>>> };
>>
>> In this case, the secondary OLDI (oldi1) would remain disabled from
>> soc.dtsi.
>>
>> I gave this a quick try. Turns out, of_parse_phandle() is not able to
>> return an error when primary OLDI tries to find a companion -- which is
>> important for the driver to detect an absence of any secondary OLDI.
>>
>> Since the driver code registers a companion for primary OLDI, and
>> further does not find the "dual-lvds-{odd,even}-pixels" properties,
>> the driver ends up trying for a Clone Mode.
>>
>> So, for single-link , we'd have to actively delete the "companion-oldi"
>> property, in the board.dts/panel.dtso.
> 
> Last time I've checked you cannot delete nodes or properties in DT
> overlays. So maybe it's better to make that a board property and don't
> set it by default in the soc dtsi.

I was not aware that deleting properties was not allowed/possible. So,
yes, seems like they are better left out of the soc.dtsi! =)

> 
>> But, say, the disabled-node's phandle parse is circumvented, somehow,
>> and we don't need to delete the property explicitly.
>>
>> There would still be one concern, I am afraid.
>>
>> In AM67A DSS (future scope at the moment), the 2 OLDIs can act
>> independently. Like a 2x Independent Single-Link. Both the OLDI dt nodes
>> will be enabled.
> 
> The first DSS0 can drive two single link displays? Reading your downstream
> AM67A DSS patches, thats not particular clear:

Not the DSS0 alone. DSS0 and DSS1 can each drive a single link OLDI
display simultaneously.

> 
>     The DSS0 HW supports one each of video pipeline (vid) and video-lite
>     pipeline (vidl1). It outputs OLDI signals on one video port (vp1) and
>     DPI signals on another (vp2). The video ports are connected to the
>     pipelines via 2 identical overlay managers (ovr1 and ovr2).
> 
> The TRM also doesn't tell much (or I just didn't find it yet).
> 
>> So, if the soc.dtsi has them already connected, then the
>> board.dts/panel.dtso would still need to explicitly delete those
>> properties to get the 2 OLDI TXes to work independently.
> 
> Yeah looks like that should really be a board property.
> 
> -michael

-- 
Regards
Aradhya


