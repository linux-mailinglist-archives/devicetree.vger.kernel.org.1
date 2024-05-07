Return-Path: <devicetree+bounces-65429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F60B8BE537
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 16:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D16D81F22929
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 14:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B94E15EFC8;
	Tue,  7 May 2024 14:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="m8aoXmM6"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E03C15E7E4;
	Tue,  7 May 2024 14:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715090831; cv=none; b=lmE38qC3YJBgbKyz4uXOmU8YecNJwjikazeLeJcQXp5/PcORxjn87CKPcbmunAnK33Yps6kYFu3FDmTYds+crIvp2bDo9RFhVWXjZlJau5k3Vl4b6xmJU47/PkDy9FLBhUnW5zawiD+edMFdvGCG7cHz8EwodG0U7gE/GJ3hmcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715090831; c=relaxed/simple;
	bh=RnSnnIBaIv8995gmimhjYrXTZEZ2sbsQAMLxEaMzgiY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qc5JmhErrZXcYNlwPVeC329M8RVmB8Irj4qsp/6/HOEvCK4Y/psZ/t/SG3b261TBOJ8wFfhlg1zBb+gcWPEbs3DeOf4lbvHA4tdGy1E8Syom4bumBQWmrd2MTwz69aLw61xx+bkpEdgn2oJmOzusiDZiM2sO8b6r85n0RyffwYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=m8aoXmM6; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715090827;
	bh=RnSnnIBaIv8995gmimhjYrXTZEZ2sbsQAMLxEaMzgiY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=m8aoXmM6wOBYG811jg1mwfUO/i2Y7i0TydyPeFIzthOrO5pqNbZPW4VsJhjjxGdN6
	 R6DSYRgaPeSHmoiSYWipCr2mCYCV04oSpHFrOG+jbwRI9EqwVcbc36VTX1quI2QNuj
	 XQtvZ/MVPCmVt49o+dCX32NSl/+FLF+/Wl+H+kWwnU78j/q3v9C4qWj/p0hSqrTgSn
	 GEHFFmvGpCxlSsxFoc5UamzxRk1g2c/8lxgJFqQNETzuhK/IB+aGyVSeDzi53m4Wez
	 B0dBiczAKmC73ixqerGRmlUIH68lzllvVG3Mt2wJpCRhdFg4MW+xPE4uZekRjb6mGN
	 pBrD5tU8qkx9g==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E91D337820FC;
	Tue,  7 May 2024 14:07:05 +0000 (UTC)
Message-ID: <46347f5d-e09b-4e83-a5a2-e12407f442a4@collabora.com>
Date: Tue, 7 May 2024 16:07:05 +0200
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
 =?UTF-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?= <Yu-chang.Lee@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20240409120211.321153-1-angelogioacchino.delregno@collabora.com>
 <20240409120211.321153-3-angelogioacchino.delregno@collabora.com>
 <aa7e3bcf70383e563a65919f924ec2e5e4cd778c.camel@mediatek.com>
 <becdc2e5-4a1d-4280-b6f8-78d4903be283@collabora.com>
 <4dfb09b9c437ab2baa0898eca13a43fd7475047a.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <4dfb09b9c437ab2baa0898eca13a43fd7475047a.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 07/05/24 08:59, CK Hu (胡俊光) ha scritto:
> On Thu, 2024-05-02 at 10:50 +0200, AngeloGioacchino Del Regno wrote:
>> Il 25/04/24 04:23, CK Hu (胡俊光) ha scritto:
>>> Hi, Angelo:
>>>
>>> On Tue, 2024-04-09 at 14:02 +0200, AngeloGioacchino Del Regno
>>> wrote:
>>>> Document OF graph on MMSYS/VDOSYS: this supports up to three DDP
>>>> paths
>>>> per HW instance (so potentially up to six displays for multi-vdo
>>>> SoCs).
>>>>
>>>> The MMSYS or VDOSYS is always the first component in the DDP
>>>> pipeline,
>>>> so it only supports an output port with multiple endpoints -
>>>> where
>>>> each
>>>> endpoint defines the starting point for one of the (currently
>>>> three)
>>>> possible hardware paths.
>>>>
>>>> Signed-off-by: AngeloGioacchino Del Regno <
>>>> angelogioacchino.delregno@collabora.com>
>>>> ---
>>>>    .../bindings/arm/mediatek/mediatek,mmsys.yaml | 23
>>>> +++++++++++++++++++
>>>>    1 file changed, 23 insertions(+)
>>>>
>>>> diff --git
>>>> a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.y
>>>> aml
>>>> b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.y
>>>> aml
>>>> index b3c6888c1457..4e9acd966aa5 100644
>>>> ---
>>>> a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.y
>>>> aml
>>>> +++
>>>> b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.y
>>>> aml
>>>> @@ -93,6 +93,29 @@ properties:
>>>>      '#reset-cells':
>>>>        const: 1
>>>>    
>>>> +  port:
>>>> +    $ref: /schemas/graph.yaml#/properties/port
>>>> +    description:
>>>> +      Output port node. This port connects the MMSYS/VDOSYS
>>>> output
>>>> to
>>>> +      the first component of one display pipeline, for example
>>>> one
>>>> of
>>>> +      the available OVL or RDMA blocks.
>>>> +      Some MediaTek SoCs support up to three display outputs per
>>>> MMSYS.
>>>> +    properties:
>>>> +      endpoint@0:
>>>> +        $ref: /schemas/graph.yaml#/properties/endpoint
>>>> +        description: Output to the primary display pipeline
>>>> +
>>>> +      endpoint@1:
>>>> +        $ref: /schemas/graph.yaml#/properties/endpoint
>>>> +        description: Output to the secondary display pipeline
>>>> +
>>>> +      endpoint@2:
>>>> +        $ref: /schemas/graph.yaml#/properties/endpoint
>>>> +        description: Output to the tertiary display pipeline
>>>> +
>>>> +    required:
>>>> +      - endpoint@0
>>>> +
>>>
>>> mmsys/vdosys does not output data to the first component of display
>>> pipeline, so this connection looks 'virtual'. Shall we add
>>> something
>>> virtual in device tree? You add this in order to decide which
>>> pipeline
>>> is 1st, 2nd, 3rd, but for device it don't care which one is first.
>>> In
>>> computer, software could change which display is the primary
>>> display.
>>> I'm not sure it's good to decide display order in device tree?
>>>
>>
>> Devicetree describes hardware, so nothing virtual can be present -
>> and in any case,
>> the primary/secondary/tertiary pipeline is in relation to MM/VDO SYS,
>> not referred
>> to software.
>>
>> Better explaining, the primary pipeline is not necessarily the
>> primary display in
>> DRM terms: that's a concept that is completely detached from the
>> scope of this
>> series and this graph - and it's something that shall be managed
>> solely by the
>> driver (mediatek-drm in this case).
>>
>> Coming back to the connection looking, but *not* being virtual: the
>> sense here is
>> that the MM/VDOSYS blocks are used in the display pipeline to
>> "stitch" together
>> the various display pipeline hardware blocks, or, said differently,
>> setting up the
>> routing between all of those (P.S.: mmsys_mtxxxx_routing_table!)
>> through the VDO
>> Input Selection (VDOx_SEL_IN) or Output Selection (VDOx_SEL_OUT) and
>> with the
>> assistance of the VDO Multiple Output Mask (VDOx_MOUT) for the
>> multiple outputs
>> usecase, both of which, are described by this graph.
> 
> I agree this part, but this is related to display device OF graph.
> These display device would output video data from one device and input
> to another video device. These video device would not input or output
> video data to mmsys/vdosys.
> 
>>
>> This means that the VDOSYS is really the "master" of the display
>> pipeline since
>> everything gets enabled, mixed and matched from there - and that's in
>> the sense
>> of hardware operation, so we are *really* (and not virtually!)
>> flipping switches.
> 
> I agree mmsys/vdosys is master of video pipeline, so let's define what
> the port in mmsys/vdosys is. If the port means the master relationship,
> mmsys/vdosys should output port to every display device. Or use a
> simply way to show the master relation ship
> 
> mmsys-subdev = <&ovl0, &rdma0, &color0, ...>, <&ovl1, &rdma1, &color1,
> ...>;
> 

There's no need to list all of the VDO0/VDO1/mmsys devices in one big array
property, because the actual possible devices can be defined:
   1. In the bindings; and
   2. In the actual OF graph that we write for each SoC+board combination.

A graph cannot contain a connection to a device that cannot be connected to
the previous, so, your "mmsys-subdev" list can be retrieved by looking at the
graph:
  - Start from VDO0/1 or MMSYS
  - Walk through (visually, even) OUTPUT ports
    - VDO0 (read output ep) -> ovl0 (read output ep) -> rdma0 (read output ep) ->
      color0 (...) -> etc
  - Nothing more - it's all defined there.

> 
> Another problem is how to group display device? If two pipeline could
> be route to the same display interface, such as
> 
> rdma0 -> dsi
> rdma1 -> dsi
> 
> Would this be single group?

There are multiple ways of doing this, but one that comes to my mind right now and
that looks clean as well is the following:

ovl0@ef01 {
    .....
   ports {
     port@0 {
       reg = <0>;
       ovl0_in: endpoint {
         remote-endpoint = <&vdosys0_out>;
       };
     };

     port@1 {
       reg = <1>;
       ovl0_out0: endpoint@0 {
         remote-endpoint = <&rdma0_in>;
       };
       ovl0_out1: endpoint@1 {
         remote-endpoint = <&rdma1_in>;
       };
     };
   };
};

rdma0@1234 {
    .....
   ports {
     port@0 {
       reg = <0>;
       rdma0_in: endpoint {
         remote-endpoint = <&ovl0_out0>; /* assuming ovl0 outputs to rdma0...*/
       };
     };
     port@1 {
       reg = <1>;
       rdma0_out: endpoint@1 {
         remote-endpoint = <&dsi_dual_intf0_in>;
       };
     };
   };
};


rdma1@5678 {
    .....
   ports {
     port@0 {
       reg = <0>;
       rdma1_in: endpoint {
         /* assuming ovl0 outputs to rdma1 as well... can be something else. */
         remote-endpoint = <&ovl0_out1>;
       };
     };
     port@1 {
       reg = <1>;
       rdma1_out: endpoint {
         remote-endpoint = <&dsi_dual_intf1_in>;
       };
     };
   };
};


dsi@9abcd {
    .....
   ports {
     port@0 {
       reg = <0>;
       /* Where endpoint@0 could be always DSI LEFT CTRL */
       dsi_dual_intf0_in: endpoint@0 {
         remote-endpoint = <&rdma0_out>;
       };
       /* ...and @1 could be always DSI RIGHT CTRL */
       dsi_dual_intf1_in: endpoint@1 {
         remote-endpoint = <&rdma1_out>;
       };
     };

     port@1 {
       reg = <1>;
       dsi0_out: endpoint {
         remote-endpoint = <&dsi_panel_in>;
       };
     };
   };
};

...for a dual-dsi panel, it'd be a similar graph.

Cheers,
Angelo

> 
> mmsys-subdev = <&rdma0, &rdma1, &dsi>;
> 
> Or two group?
> 
> mmsys-subdev = <&rdma0, &dsi>, <&rdma1, &dsi>;
> 
> I think we should clearly define this.
> 
> Regards,
> CK
> 
>>
>>
>> Cheers,
>> Angelo
>>
>>> Regards,
>>> CK
>>>
>>>
>>>>    required:
>>>>      - compatible
>>>>      - reg
>>
>>




