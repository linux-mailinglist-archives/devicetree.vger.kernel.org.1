Return-Path: <devicetree+bounces-132622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D659F79E1
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:54:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEE14167B11
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6D1222580;
	Thu, 19 Dec 2024 10:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="BKQJ395a"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352D1221D8E;
	Thu, 19 Dec 2024 10:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734605658; cv=none; b=gyro5oV75GBH2PUdZKpunpbuyJxY2kP/TCl0bW8UGLyPSKi8sScbk0Lo0bV7rcbVJeU78cGAeuEw2QJ5ryiCi1FAq40c7s9jtyLu0jbUOBqHmcMTajeHb9pP5zc2DmrKtaRtiRg8utcgIkSHh06CrrcsEfzSoqsmUIixM0b7Ug4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734605658; c=relaxed/simple;
	bh=6DnBAetO0n/Dt6GuKQiaQjG4sHkyUy/qLhkhpG6lREU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YRptBIl/w2efLwHEAGSo4cL7ghKEFSxokp8+5eRcbdKsln/jJ+bXHaYhsJ3P93Suo/UEDFRiVK/eSpEWojitr7bTVSGX95QmqUYy03iIb4VurCjlaBj7ptS5pb8On+Jy20QN6SVP9sWoSO5paqp4YvdXv95L4yo8vqGvqrsPjA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=BKQJ395a; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734605654;
	bh=6DnBAetO0n/Dt6GuKQiaQjG4sHkyUy/qLhkhpG6lREU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BKQJ395aphVnmIKWFGKR7MYowS/uaeNkIdyc3+FbEH+RDwQ2n8YzBZKSniaLpT3td
	 lBImymLI0EVILte+Nh3YXqhHNjbehfrVQ9JTAhQEsNufY2SS0CzqLMV6yHK9z59D0q
	 pDmeqzq7MN3BZael32voW88hN8cWgX1e/IaHsPWBwEExo4T/puTKRwHEZEymzxvwqQ
	 hO3pnzTH9U3pUInPhMHC2LcG8XfbVB/I0ibVKxUFDqKzYtoj4Y0ZZfaMO6LuKMiqPU
	 /hTDVv3Ux3whEJ7iYvW4X+A2w4F05h8eUX3Q8va7rzzaeNUOblc+6wxMlzj5iRVdrc
	 WRiGPms7XSrDw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 31D5617E3612;
	Thu, 19 Dec 2024 11:54:13 +0100 (CET)
Message-ID: <9a75e88c-d90d-4ea8-b5c3-6d056d4f0498@collabora.com>
Date: Thu, 19 Dec 2024 11:54:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/33] dt-bindings: display: mediatek: Add binding for
 MT8195 HDMI-TX v2
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
 simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com, ck.hu@mediatek.com,
 jitao.shi@mediatek.com, jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 dmitry.baryshkov@linaro.org
References: <20241217154345.276919-1-angelogioacchino.delregno@collabora.com>
 <20241217154345.276919-8-angelogioacchino.delregno@collabora.com>
 <rsnyljmkdf7i74bkrlf5nesp2sa3n6xcnzsqao4znmczjpfyq2@dsakz56s4ypt>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <rsnyljmkdf7i74bkrlf5nesp2sa3n6xcnzsqao4znmczjpfyq2@dsakz56s4ypt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 18/12/24 09:20, Krzysztof Kozlowski ha scritto:
> On Tue, Dec 17, 2024 at 04:43:19PM +0100, AngeloGioacchino Del Regno wrote:
>> +  i2c:
>> +    type: object
>> +    $ref: /schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
>> +    unevaluatedProperties: false
>> +    description: HDMI DDC I2C controller
>> +
>> +  phys:
>> +    maxItems: 1
>> +    description: PHY providing clocking TMDS and pixel to controller
>> +
>> +  phy-names:
>> +    items:
>> +      - const: hdmi
>> +
>> +  pinctrl-0: true
>> +
>> +  pinctrl-names:
>> +    items:
>> +      - const: default
> 
> Drop both pinctrl entries.
> 
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  '#sound-dai-cells':
>> +    const: 1
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description:
>> +          Input port, usually connected to the output port of a DPI
>> +
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description:
>> +          Output port that must be connected either to the input port of
>> +          a HDMI connector node containing a ddc-i2c-bus, or to the input
>> +          port of an attached bridge chip, such as a SlimPort transmitter.
>> +
>> +    required:
>> +      - port@0
>> +      - port@1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
> 
> Please keep the same order of things here and in main properties
> section.
> 
>> +  - interrupts
>> +  - power-domains
>> +  - phys
>> +  - phy-names
>> +  - ports
>> +
> 
> You need allOf: with ref to dai-common.yaml.
> 
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/mt8195-clk.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/power/mt8195-power.h>
>> +
>> +    soc {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +
>> +        hdmi-tx@1c300000 {
> 
> hdmi@
> 
> Best regards,
> Krzysztof
> 

Thanks for the great review krzk.

I was wondering if it'd be more straightforward to just send the bindings in a
different series, instead of sending another batch of 33 (actually, 34, because
I forgot one commit adding the DDC binding, ugh!) patches...

CK, any objections?

Cheers,
Angelo

