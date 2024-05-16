Return-Path: <devicetree+bounces-67241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFCD8C7208
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 09:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A68D1F214F0
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 07:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA4E2BB05;
	Thu, 16 May 2024 07:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="fSOBHB2N"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD51282EF;
	Thu, 16 May 2024 07:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715844434; cv=none; b=IxysaoDJNcRfIH8qFM8PVUgO0zpMwuy7i4jqd5rzxpXo3VWMSXW7kMn6T0T8FFTRwA6DrE1ofXTwVnzhbMh1r6HZIxggCf8KbBT2HWiH+XzzwTcsVOFz9o4FvJt5B5M+mqvKTc1SPwGJG6oVSTerpjcW5TORLF5XMrA9MivjbFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715844434; c=relaxed/simple;
	bh=EMIfN9MZRxqZoFtjSOBNwMNeCbUfThnFa5Tk5fKxOAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LhjCLabIBTViCgQkNKSHzS/Byg/NEY4nn3tn0QtN3MxBNXrN9Ibg4dN4ngN/ckGw4TkQKUJRJxiTrkFH65Qr4ABq9OXYHVJy7CHktEakdPhgd/ry54bXE0GsODmuPdXJcJOoD6aLnPVZZ33tMm+F29XV/UbNHrVgzFwJaOFjdG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=fSOBHB2N; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715844427;
	bh=EMIfN9MZRxqZoFtjSOBNwMNeCbUfThnFa5Tk5fKxOAk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fSOBHB2N/yhF43wJnKb47Ea/4/WAyrCS8ucnrqE0DNWMPc53hEt77piCmEpKHDgID
	 arZXh7U8Cm/ltuW4gtmGqMw/nSOFz/6WIFDoG7ebawfH0NmfJJwsvgPFBBcFQ0CIj3
	 rklegytEivJgtCRzC5Tk5O2plbllmNbMYQaMW777/FFZCm+1YVs02sXJNPTGxcEqGR
	 NsuXWECS9Hp4x/A25TTMc2MVpaNQMlv0iHv6Tk5akACtsAh/jbWFXD1fwvoMQlgesT
	 4Rs2lVFNvA0ZUYe9LobghlVZaPLLUWuUrUdi8ekOBcQADdzNuifvHqTOsEMDOAm9hQ
	 gjwIVVKlgtDKw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D3A2D378217F;
	Thu, 16 May 2024 07:27:05 +0000 (UTC)
Message-ID: <7de36401-daa6-4887-8fc0-800bde8213cd@collabora.com>
Date: Thu, 16 May 2024 09:27:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph
 support for board path
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "wenst@chromium.org" <wenst@chromium.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 =?UTF-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>,
 "mripard@kernel.org" <mripard@kernel.org>,
 =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?u tf-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?= <Yu-chang.Lee@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20240409120211.321153-1-angelogioacchino.delregno@collabora.com>
 <20240409120211.321153-3-angelogioacchino.delregno@collabora.com>
 <aa7e3bcf70383e563a65919f924ec2e5e4cd778c.camel@mediatek.com>
 <becdc2e5-4a1d-4280-b6f8-78d4903be283@collabora.com>
 <4dfb09b9c437ab2baa0898eca13a43fd7475047a.camel@mediatek.com>
 <46347f5d-e09b-4e83-a5a2-e12407f442a4@collabora.com>
 <847e1a84b532956f697d24014d684c86f0b76f03.camel@mediatek.com>
 <cbf73111-a6cf-47da-9563-89d49fbdb17d@collabora.com>
 <ee721fd3339f8b3a25464ca57ca192343a51e514.camel@mediatek.com>
 <34caf545-1fc9-4905-a82f-2596f053b3ff@collabora.com>
 <de23d55dd1c84bf9b04119014c3785189ce6f9da.camel@mediatek.com>
 <c384946a-e151-4afb-82f7-d31a5a26aff6@collabora.com>
 <5b0ed6dd7190496d70fe625ac9b4539eb0181c0a.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <5b0ed6dd7190496d70fe625ac9b4539eb0181c0a.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 13/05/24 08:15, CK Hu (胡俊光) ha scritto:
> On Fri, 2024-05-10 at 12:14 +0200, AngeloGioacchino Del Regno wrote:
>> Il 10/05/24 11:34, CK Hu (胡俊光) ha scritto:
>>> On Thu, 2024-05-09 at 11:27 +0200, AngeloGioacchino Del Regno
>>> wrote:
>>>> Il 09/05/24 07:42, CK Hu (胡俊光) ha scritto:
>>>>> On Wed, 2024-05-08 at 15:03 +0200, AngeloGioacchino Del Regno
>>>>> wrote:
>>>>>> Il 08/05/24 09:19, CK Hu (胡俊光) ha scritto:
>>>>>>> On Tue, 2024-05-07 at 16:07 +0200, AngeloGioacchino Del
>>>>>>> Regno
>>>>>>> wrote:
>>>>>>>> Il 07/05/24 08:59, CK Hu (胡俊光) ha scritto:
>>>>>>>>> On Thu, 2024-05-02 at 10:50 +0200, AngeloGioacchino Del
>>>>>>>>> Regno
>>>>>>>>> wrote:
>>>>>>>>>> Il 25/04/24 04:23, CK Hu (胡俊光) ha scritto:
>>>>>>>>>>> Hi, Angelo:
>>>>>>>>>>>
>>>>>>>>>>> On Tue, 2024-04-09 at 14:02 +0200, AngeloGioacchino
>>>>>>>>>>> Del
>>>>>>>>>>> Regno
>>>>>>>>>>> wrote:
>>>>>>>>>>>> Document OF graph on MMSYS/VDOSYS: this supports
>>>>>>>>>>>> up
>>>>>>>>>>>> to
>>>>>>>>>>>> three
>>>>>>>>>>>> DDP
>>>>>>>>>>>> paths
>>>>>>>>>>>> per HW instance (so potentially up to six
>>>>>>>>>>>> displays
>>>>>>>>>>>> for
>>>>>>>>>>>> multi-
>>>>>>>>>>>> vdo
>>>>>>>>>>>> SoCs).
>>>>>>>>>>>>
>>>>>>>>>>>> The MMSYS or VDOSYS is always the first component
>>>>>>>>>>>> in
>>>>>>>>>>>> the
>>>>>>>>>>>> DDP
>>>>>>>>>>>> pipeline,
>>>>>>>>>>>> so it only supports an output port with multiple
>>>>>>>>>>>> endpoints -
>>>>>>>>>>>> where
>>>>>>>>>>>> each
>>>>>>>>>>>> endpoint defines the starting point for one of
>>>>>>>>>>>> the
>>>>>>>>>>>> (currently
>>>>>>>>>>>> three)
>>>>>>>>>>>> possible hardware paths.
>>>>>>>>>>>>
>>>>>>>>>>>> Signed-off-by: AngeloGioacchino Del Regno <
>>>>>>>>>>>> angelogioacchino.delregno@collabora.com>
>>>>>>>>>>>> ---
>>>>>>>>>>>>        .../bindings/arm/mediatek/mediatek,mmsys.ya
>>>>>>>>>>>> ml |
>>>>>>>>>>>> 23
>>>>>>>>>>>> +++++++++++++++++++
>>>>>>>>>>>>        1 file changed, 23 insertions(+)
>>>>>>>>>>>>
>>>>>>>>>>>> diff --git
>>>>>>>>>>>> a/Documentation/devicetree/bindings/arm/mediatek/
>>>>>>>>>>>> medi
>>>>>>>>>>>> atek
>>>>>>>>>>>> ,mms
>>>>>>>>>>>> ys.y
>>>>>>>>>>>> aml
>>>>>>>>>>>> b/Documentation/devicetree/bindings/arm/mediatek/
>>>>>>>>>>>> medi
>>>>>>>>>>>> atek
>>>>>>>>>>>> ,mms
>>>>>>>>>>>> ys.y
>>>>>>>>>>>> aml
>>>>>>>>>>>> index b3c6888c1457..4e9acd966aa5 100644
>>>>>>>>>>>> ---
>>>>>>>>>>>> a/Documentation/devicetree/bindings/arm/mediatek/
>>>>>>>>>>>> medi
>>>>>>>>>>>> atek
>>>>>>>>>>>> ,mms
>>>>>>>>>>>> ys.y
>>>>>>>>>>>> aml
>>>>>>>>>>>> +++
>>>>>>>>>>>> b/Documentation/devicetree/bindings/arm/mediatek/
>>>>>>>>>>>> medi
>>>>>>>>>>>> atek
>>>>>>>>>>>> ,mms
>>>>>>>>>>>> ys.y
>>>>>>>>>>>> aml
>>>>>>>>>>>> @@ -93,6 +93,29 @@ properties:
>>>>>>>>>>>>          '#reset-cells':
>>>>>>>>>>>>            const: 1
>>>>>>>>>>>>        
>>>>>>>>>>>> +  port:
>>>>>>>>>>>> +    $ref: /schemas/graph.yaml#/properties/port
>>>>>>>>>>>> +    description:
>>>>>>>>>>>> +      Output port node. This port connects the
>>>>>>>>>>>> MMSYS/VDOSYS
>>>>>>>>>>>> output
>>>>>>>>>>>> to
>>>>>>>>>>>> +      the first component of one display
>>>>>>>>>>>> pipeline,
>>>>>>>>>>>> for
>>>>>>>>>>>> example
>>>>>>>>>>>> one
>>>>>>>>>>>> of
>>>>>>>>>>>> +      the available OVL or RDMA blocks.
>>>>>>>>>>>> +      Some MediaTek SoCs support up to three
>>>>>>>>>>>> display
>>>>>>>>>>>> outputs
>>>>>>>>>>>> per
>>>>>>>>>>>> MMSYS.
>>>>>>>>>>>> +    properties:
>>>>>>>>>>>> +      endpoint@0:
>>>>>>>>>>>> +        $ref:
>>>>>>>>>>>> /schemas/graph.yaml#/properties/endpoint
>>>>>>>>>>>> +        description: Output to the primary
>>>>>>>>>>>> display
>>>>>>>>>>>> pipeline
>>>>>>>>>>>> +
>>>>>>>>>>>> +      endpoint@1:
>>>>>>>>>>>> +        $ref:
>>>>>>>>>>>> /schemas/graph.yaml#/properties/endpoint
>>>>>>>>>>>> +        description: Output to the secondary
>>>>>>>>>>>> display
>>>>>>>>>>>> pipeline
>>>>>>>>>>>> +
>>>>>>>>>>>> +      endpoint@2:
>>>>>>>>>>>> +        $ref:
>>>>>>>>>>>> /schemas/graph.yaml#/properties/endpoint
>>>>>>>>>>>> +        description: Output to the tertiary
>>>>>>>>>>>> display
>>>>>>>>>>>> pipeline
>>>>>>>>>>>> +
>>>>>>>>>>>> +    required:
>>>>>>>>>>>> +      - endpoint@0
>>>>>>>>>>>> +
>>>>>>>>>>>
>>>>>>>>>>> mmsys/vdosys does not output data to the first
>>>>>>>>>>> component of
>>>>>>>>>>> display
>>>>>>>>>>> pipeline, so this connection looks 'virtual'. Shall
>>>>>>>>>>> we
>>>>>>>>>>> add
>>>>>>>>>>> something
>>>>>>>>>>> virtual in device tree? You add this in order to
>>>>>>>>>>> decide
>>>>>>>>>>> which
>>>>>>>>>>> pipeline
>>>>>>>>>>> is 1st, 2nd, 3rd, but for device it don't care
>>>>>>>>>>> which
>>>>>>>>>>> one is
>>>>>>>>>>> first.
>>>>>>>>>>> In
>>>>>>>>>>> computer, software could change which display is
>>>>>>>>>>> the
>>>>>>>>>>> primary
>>>>>>>>>>> display.
>>>>>>>>>>> I'm not sure it's good to decide display order in
>>>>>>>>>>> device
>>>>>>>>>>> tree?
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Devicetree describes hardware, so nothing virtual can
>>>>>>>>>> be
>>>>>>>>>> present
>>>>>>>>>> -
>>>>>>>>>> and in any case,
>>>>>>>>>> the primary/secondary/tertiary pipeline is in
>>>>>>>>>> relation to
>>>>>>>>>> MM/VDO
>>>>>>>>>> SYS,
>>>>>>>>>> not referred
>>>>>>>>>> to software.
>>>>>>>>>>
>>>>>>>>>> Better explaining, the primary pipeline is not
>>>>>>>>>> necessarily
>>>>>>>>>> the
>>>>>>>>>> primary display in
>>>>>>>>>> DRM terms: that's a concept that is completely
>>>>>>>>>> detached
>>>>>>>>>> from
>>>>>>>>>> the
>>>>>>>>>> scope of this
>>>>>>>>>> series and this graph - and it's something that shall
>>>>>>>>>> be
>>>>>>>>>> managed
>>>>>>>>>> solely by the
>>>>>>>>>> driver (mediatek-drm in this case).
>>>>>>>>>>
>>>>>>>>>> Coming back to the connection looking, but *not*
>>>>>>>>>> being
>>>>>>>>>> virtual:
>>>>>>>>>> the
>>>>>>>>>> sense here is
>>>>>>>>>> that the MM/VDOSYS blocks are used in the display
>>>>>>>>>> pipeline to
>>>>>>>>>> "stitch" together
>>>>>>>>>> the various display pipeline hardware blocks, or,
>>>>>>>>>> said
>>>>>>>>>> differently,
>>>>>>>>>> setting up the
>>>>>>>>>> routing between all of those (P.S.:
>>>>>>>>>> mmsys_mtxxxx_routing_table!)
>>>>>>>>>> through the VDO
>>>>>>>>>> Input Selection (VDOx_SEL_IN) or Output Selection
>>>>>>>>>> (VDOx_SEL_OUT)
>>>>>>>>>> and
>>>>>>>>>> with the
>>>>>>>>>> assistance of the VDO Multiple Output Mask
>>>>>>>>>> (VDOx_MOUT)
>>>>>>>>>> for
>>>>>>>>>> the
>>>>>>>>>> multiple outputs
>>>>>>>>>> usecase, both of which, are described by this graph.
>>>>>>>>>
>>>>>>>>> I agree this part, but this is related to display
>>>>>>>>> device OF
>>>>>>>>> graph.
>>>>>>>>> These display device would output video data from one
>>>>>>>>> device
>>>>>>>>> and
>>>>>>>>> input
>>>>>>>>> to another video device. These video device would not
>>>>>>>>> input
>>>>>>>>> or
>>>>>>>>> output
>>>>>>>>> video data to mmsys/vdosys.
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> This means that the VDOSYS is really the "master" of
>>>>>>>>>> the
>>>>>>>>>> display
>>>>>>>>>> pipeline since
>>>>>>>>>> everything gets enabled, mixed and matched from there
>>>>>>>>>> -
>>>>>>>>>> and
>>>>>>>>>> that's in
>>>>>>>>>> the sense
>>>>>>>>>> of hardware operation, so we are *really* (and not
>>>>>>>>>> virtually!)
>>>>>>>>>> flipping switches.
>>>>>>>>>
>>>>>>>>> I agree mmsys/vdosys is master of video pipeline, so
>>>>>>>>> let's
>>>>>>>>> define
>>>>>>>>> what
>>>>>>>>> the port in mmsys/vdosys is. If the port means the
>>>>>>>>> master
>>>>>>>>> relationship,
>>>>>>>>> mmsys/vdosys should output port to every display
>>>>>>>>> device. Or
>>>>>>>>> use
>>>>>>>>> a
>>>>>>>>> simply way to show the master relation ship
>>>>>>>>>
>>>>>>>>> mmsys-subdev = <&ovl0, &rdma0, &color0, ...>, <&ovl1,
>>>>>>>>> &rdma1,
>>>>>>>>> &color1,
>>>>>>>>> ...>;
>>>>>>>>>
>>>>>>>>
>>>>>>>> There's no need to list all of the VDO0/VDO1/mmsys
>>>>>>>> devices in
>>>>>>>> one
>>>>>>>> big
>>>>>>>> array
>>>>>>>> property, because the actual possible devices can be
>>>>>>>> defined:
>>>>>>>>        1. In the bindings; and
>>>>>>>>        2. In the actual OF graph that we write for each
>>>>>>>> SoC+board
>>>>>>>> combination.
>>>>>>>>
>>>>>>>> A graph cannot contain a connection to a device that
>>>>>>>> cannot
>>>>>>>> be
>>>>>>>> connected to
>>>>>>>> the previous, so, your "mmsys-subdev" list can be
>>>>>>>> retrieved
>>>>>>>> by
>>>>>>>> looking at the
>>>>>>>> graph:
>>>>>>>>       - Start from VDO0/1 or MMSYS
>>>>>>>>       - Walk through (visually, even) OUTPUT ports
>>>>>>>>         - VDO0 (read output ep) -> ovl0 (read output ep)
>>>>>>>> ->
>>>>>>>> rdma0
>>>>>>>> (read
>>>>>>>> output ep) ->
>>>>>>>>           color0 (...) -> etc
>>>>>>>>       - Nothing more - it's all defined there.
>>>>>>>>
>>>>>>>>>
>>>>>>>>> Another problem is how to group display device? If two
>>>>>>>>> pipeline
>>>>>>>>> could
>>>>>>>>> be route to the same display interface, such as
>>>>>>>>>
>>>>>>>>> rdma0 -> dsi
>>>>>>>>> rdma1 -> dsi
>>>>>>>>>
>>>>>>>>> Would this be single group?
>>>>>>>>
>>>>>>>> There are multiple ways of doing this, but one that comes
>>>>>>>> to
>>>>>>>> my
>>>>>>>> mind
>>>>>>>> right now and
>>>>>>>> that looks clean as well is the following:
>>>>>>>>
>>>>>>>> ovl0@ef01 {
>>>>>>>>         .....
>>>>>>>>        ports {
>>>>>>>>          port@0 {
>>>>>>>>            reg = <0>;
>>>>>>>>            ovl0_in: endpoint {
>>>>>>>>              remote-endpoint = <&vdosys0_out>;
>>>>>>>>            };
>>>>>>>>          };
>>>>>>>
>>>>>>> I'm not sure how do you define this port from OVL to
>>>>>>> vdosys. If
>>>>>>> this
>>>>>>> port means 'master relationship', others could add port in
>>>>>>> COLOR to
>>>>>>> point to vdosys because COLOR and vdosys has the 'master
>>>>>>> relationship'
>>>>>>> and I could not reject this. So we need more specific
>>>>>>> definition of
>>>>>>> this port.
>>>>>>
>>>>>>
>>>>>>> Only the 'first' device in pipeline could have this port?
>>>>>>
>>>>>> Correct. Only the first device in a pipeline - and this is
>>>>>> actually a
>>>>>> restriction
>>>>>> that the generic binding definition of port already gives, in
>>>>>> a
>>>>>> way.
>>>>>>
>>>>>>
>>>>>>> In mt8173, one pipeline is
>>>>>>>
>>>>>>> ovl -> color -> aal -> od -> rdma -> ufo -> dsi
>>>>>>>
>>>>>>> But rdma has an option to read data from od or directly
>>>>>>> from
>>>>>>> DRAM.
>>>>>>> If
>>>>>>> from DRAM, the pipeline would be changed to
>>>>>>>
>>>>>>> rdma -> ufo -> dsi
>>>>>>>
>>>>>>>
>>>>>>> So it's confused which one is 'first'.
>>>>>>
>>>>>> That's why the pipeline is *board-specific* and not soc-
>>>>>> generic!
>>>>>>
>>>>>> And what you described is *exactly* the reason why I'm adding
>>>>>> support
>>>>>> for the
>>>>>> OF graphs in mediatek-drm: specifying the correct pipeline
>>>>>> for
>>>>>> each
>>>>>> board as per
>>>>>> what each board wants to use (said differently: for each
>>>>>> board's
>>>>>> *capabilities*).
>>>>>>
>>>>>> So, if on a certain board you want to skip OD, you can hook
>>>>>> RDMA
>>>>>> up
>>>>>> directly to
>>>>>> MMSYS/VDOSYS.
>>>>>>
>>>>>> In MT8173, one pipeline for one board uses endpoints IN/OUT
>>>>>> like
>>>>>> this:
>>>>>>
>>>>>> MMSYS -> OVL -> COLOR -> AAL -> OD -> RDMA -> UFO -> DSI
>>>>>>
>>>>>> and for another board, endpoints will be like
>>>>>>
>>>>>> MMSYS -> RDMA -> UFO -> DSI
>>>>>>
>>>>>> ...which is the exact same as you described, and I think that
>>>>>> your
>>>>>> confusion comes
>>>>>> from the fact that you didn't put MMSYS at the beginning of
>>>>>> the
>>>>>> pipeline :-)
>>>>>
>>>>> In one board, both OVL and RDMA could switch dynamically.
>>>>> Because
>>>>> each
>>>>> one could be the first in one board, mmsys point to both ovl
>>>>> and
>>>>> rdma?
>>>>>
>>>>
>>>> No.
>>>>
>>>> MMSYS would still point ONLY to OVL, because OVL is the "earliest
>>>> point"
>>>> of the pipeline that this one board does support.
>>>>
>>>> In that case, RDMA being present at a later point in the pipeline
>>>> does not
>>>> matter and does not prevent us from *temporarily* skipping OVL-
>>>> COLOR-
>>>> AAL-OD
>>>> and going MMSYS->RDMA *directly*.
>>>>
>>>> Switching dynamically is a driver duty and will be 100% possible
>>>> (as
>>>> much
>>>> as it is right now) to dynamically switch OVL and RDMA as long as
>>>> both are
>>>> present in the pipeline.
>>>>
>>>> With this exact pipeline:
>>>>
>>>> MMSYS -> OVL -> COLOR -> AAL -> OD -> RDMA -> UFO -> DSI
>>>>
>>>> the driver _can switch dynamically_ between MMSYS->OVL->...->RDMA
>>>> and
>>>> MMSYS->RDMA as the driver itself *is allowed to* temporarily
>>>> ignore
>>>> part
>>>> of the pipeline.
>>>>
>>>> Please note that, in case it is needed (trust me on this: it's
>>>> not
>>>> needed)
>>>> a custom property in the endpoint node can always be introduced
>>>> later, so
>>>> that you can declare a node like
>>>>
>>>>             endpoint@0 {
>>>>               remote-endpoint = <&ovl0_in>;
>>>>               mediatek,short-path = <&rdma0_in>;
>>>>             };
>>>>
>>>> ...but again, that's never going to be needed, as the driver
>>>> already
>>>> does
>>>> have knowledge of the fact that RDMA is in the pipeline, so it is
>>>> possible
>>>> to simply do a temporary override in the driver.
>>>>
>>>> What the OF Graph support does is to build the same arrays, that
>>>> we
>>>> currently
>>>> have hardcoded in mediatek-drm, by reading from device tree.
>>>>
>>>> Nothing else and nothing more - for now.
>>>>
>>>> Having the OF Graph support makes us able to also add new dual-
>>>> path
>>>> support
>>>> with more complicated connections than the current ones, without
>>>> any
>>>> problem
>>>> and, in many cases, without even modifying the bindings from what
>>>> I
>>>> provided
>>>> in this series.
>>>
>>> OK, please add the information we discussed into binding document
>>> to
>>> prevent anyone misusing this binding.
>>>
>>
>> Sorry CK, but the binding *does* already have this information inside
>> - not
>> in terms of "phrases", but in terms of restrictions of the binding...
>>
>> If you want, though, I can add this information in the description of
>> the
>> commit that is adding this binding, is that okay for you?
> 
> I think what we discuss could be translated to restrictions. This is a
> restriction description:
> 
> If one component has option to be first component or middle component
> of one pipeline, it's treated as middle component not first component.
> 

This cannot be added to the binding description, as the binding describes
hardware, and what we're talking about here is a *driver* behavior detail,
not suitable for describing a binding by itself.

Also, that's not true: if a component has option to be first or middle,
it is going to be treated as per what you describe in the graph - if you
place it as first, it's going to be first (unless temporary overrides are
used in the driver which are, again, transparent to all this) otherwise,
if you place it as middle, it's going to normally be treated as middle.

Besides - to address your concern about misusing the graph... that's not
possible because of multiple reasons:
1. The bindings won't pass validation - dtbs_check will give errors and/or
    warnings upon misuse of bindings in device trees
2. The driver simply won't work, as it's going to refuse probing if it
    detects an invalid graph (which corresponds to any binding misuse).

> In mt8195, there are 8 vdo1_rdma. So each one is the first component of
> display pipeline. So the maximum display pipe number is not 3, maybe 8
> or more.

Yes but we currently only support three paths - adding more to the bindings
later is trivial anyway, so I prefer to describe what is currently supported
and what can currently be tested on the real (and commonly availlable) hardware,
and not what might be, one day, maybe supported.

Whenever any commonly available hardware supporting more than three paths will
appear, I'll change the binding to do that, and it's going to be a 10 minutes job.

Besides, I'm about to send a v4 of this series, containing some fixes for the
multi-path support on all SoCs.

Regards,
Angelo

>  > Regards,
> CK
> 
> 
>>
>> Thanks,
>> Angelo
>>
>>> Regards,
>>> CK
>>>
>>>>
>>>> Cheers,
>>>> Angelo
>>>>
>>>>> Regards,
>>>>> CK
>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> In case you need any *temporary override* on any board that
>>>>>> defines a
>>>>>> pipeline like
>>>>>>
>>>>>> MMSYS -> OVL -> COLOR -> AAL -> OD -> RDMA -> UFO -> DSI
>>>>>>
>>>>>> so that the pipeline *temporarily* becomes (for power
>>>>>> management,
>>>>>> or
>>>>>> for any other
>>>>>> reason) RDMA -> UFO -> DSI .... that's not a concern: the
>>>>>> graph
>>>>>> is
>>>>>> present, and it
>>>>>> is used to tell to the driver what is the regular pipeline to
>>>>>> use.
>>>>>> Eventual temporary overrides can be managed transparently
>>>>>> inside
>>>>>> of
>>>>>> the driver with
>>>>>> C code and no changes to the devicetree are required.
>>>>>>
>>>>>>
>>>>>>> I don't know how to decide which device could point to
>>>>>>> mmsys/vdosys. So
>>>>>>> please give a specific definition.
>>>>>>>
>>>>>>
>>>>>> Nothing points TO mmsys/vdosys. It is mmsys/vdosys pointing
>>>>>> to a
>>>>>> device.
>>>>>>
>>>>>> So, mmsys/vdosys must point to the *first device in the
>>>>>> pipeline*.
>>>>>>
>>>>>> Any other doubt?
>>>>>>
>>>>>> Cheers,
>>>>>> Angelo
>>>>>>
>>>>>>> Regards,
>>>>>>> CK
>>>>>>>
>>>>>>>>
>>>>>>>>          port@1 {
>>>>>>>>            reg = <1>;
>>>>>>>>            ovl0_out0: endpoint@0 {
>>>>>>>>              remote-endpoint = <&rdma0_in>;
>>>>>>>>            };
>>>>>>>>            ovl0_out1: endpoint@1 {
>>>>>>>>              remote-endpoint = <&rdma1_in>;
>>>>>>>>            };
>>>>>>>>          };
>>>>>>>>        };
>>>>>>>> };
>>>>>>>>
>>>>>>>> rdma0@1234 {
>>>>>>>>         .....
>>>>>>>>        ports {
>>>>>>>>          port@0 {
>>>>>>>>            reg = <0>;
>>>>>>>>            rdma0_in: endpoint {
>>>>>>>>              remote-endpoint = <&ovl0_out0>; /* assuming
>>>>>>>> ovl0
>>>>>>>> outputs to
>>>>>>>> rdma0...*/
>>>>>>>>            };
>>>>>>>>          };
>>>>>>>>          port@1 {
>>>>>>>>            reg = <1>;
>>>>>>>>            rdma0_out: endpoint@1 {
>>>>>>>>              remote-endpoint = <&dsi_dual_intf0_in>;
>>>>>>>>            };
>>>>>>>>          };
>>>>>>>>        };
>>>>>>>> };
>>>>>>>>
>>>>>>>>
>>>>>>>> rdma1@5678 {
>>>>>>>>         .....
>>>>>>>>        ports {
>>>>>>>>          port@0 {
>>>>>>>>            reg = <0>;
>>>>>>>>            rdma1_in: endpoint {
>>>>>>>>              /* assuming ovl0 outputs to rdma1 as well...
>>>>>>>> can
>>>>>>>> be
>>>>>>>> something else. */
>>>>>>>>              remote-endpoint = <&ovl0_out1>;
>>>>>>>>            };
>>>>>>>>          };
>>>>>>>>          port@1 {
>>>>>>>>            reg = <1>;
>>>>>>>>            rdma1_out: endpoint {
>>>>>>>>              remote-endpoint = <&dsi_dual_intf1_in>;
>>>>>>>>            };
>>>>>>>>          };
>>>>>>>>        };
>>>>>>>> };
>>>>>>>>
>>>>>>>>
>>>>>>>> dsi@9abcd {
>>>>>>>>         .....
>>>>>>>>        ports {
>>>>>>>>          port@0 {
>>>>>>>>            reg = <0>;
>>>>>>>>            /* Where endpoint@0 could be always DSI LEFT
>>>>>>>> CTRL */
>>>>>>>>            dsi_dual_intf0_in: endpoint@0 {
>>>>>>>>              remote-endpoint = <&rdma0_out>;
>>>>>>>>            };
>>>>>>>>            /* ...and @1 could be always DSI RIGHT CTRL */
>>>>>>>>            dsi_dual_intf1_in: endpoint@1 {
>>>>>>>>              remote-endpoint = <&rdma1_out>;
>>>>>>>>            };
>>>>>>>>          };
>>>>>>>>
>>>>>>>>          port@1 {
>>>>>>>>            reg = <1>;
>>>>>>>>            dsi0_out: endpoint {
>>>>>>>>              remote-endpoint = <&dsi_panel_in>;
>>>>>>>>            };
>>>>>>>>          };
>>>>>>>>        };
>>>>>>>> };
>>>>>>>>
>>>>>>>> ...for a dual-dsi panel, it'd be a similar graph.
>>>>>>>>
>>>>>>>> Cheers,
>>>>>>>> Angelo
>>>>>>>>
>>>>>>>>>
>>>>>>>>> mmsys-subdev = <&rdma0, &rdma1, &dsi>;
>>>>>>>>>
>>>>>>>>> Or two group?
>>>>>>>>>
>>>>>>>>> mmsys-subdev = <&rdma0, &dsi>, <&rdma1, &dsi>;
>>>>>>>>>
>>>>>>>>> I think we should clearly define this.
>>>>>>>>>
>>>>>>>>> Regards,
>>>>>>>>> CK
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Cheers,
>>>>>>>>>> Angelo
>>>>>>>>>>
>>>>>>>>>>> Regards,
>>>>>>>>>>> CK
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>>        required:
>>>>>>>>>>>>          - compatible
>>>>>>>>>>>>          - reg
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>
>>>>>>
>>>>
>>>>
>>>>
>>
>>


