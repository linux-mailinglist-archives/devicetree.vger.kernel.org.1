Return-Path: <devicetree+bounces-95218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE497958730
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 14:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B78541C21BDC
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EEDC18FC9E;
	Tue, 20 Aug 2024 12:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=cristian.ciocaltea@collabora.com header.b="NOezwX+9"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532A218DF6F;
	Tue, 20 Aug 2024 12:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724157523; cv=pass; b=k+8XCitJ2tG69T5C9Put0T4bShncs495AHy6lvdDEGMGbQaMCujUhdnbHBipnaE/SekDOimBdQL6UfEeg8KGXdYutZ9m3keyoJJ8HCHLQ8a/VI9RnaWVSIysFpy8HS5O9n/PQFUv4ZSISijNK8BjlYIx5ND/euBIO4nhSWF6L5s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724157523; c=relaxed/simple;
	bh=afP0DXfRAoHKpoiV1Stlq4e8g5k7WT/YnVrfv+IqHVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yt+bab/itmxS/U2EJzZhqXLCbKANUzeuZxEESIfm6hZhmJGIfjXKY7lR0YYIM5JznQlX9bYT3x8BWEDJqgVCK20hLib2j73ecj2IfF7sdeAHzI8WrQ9DQ6veObNZ5i6U4sS486bW0X9B0bMjQfFZlKiZsjNG1hwvA7dWfgXnNYQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=cristian.ciocaltea@collabora.com header.b=NOezwX+9; arc=pass smtp.client-ip=136.143.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
Delivered-To: kernel@collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1724157473; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=BvitknRTae+Gz3g0bW8txHeLVuSJBC4aySrEKAkTIEMk+tso38dcAywB7QfUChrWJXLaiKj8lO3EsAooFMKLJ6HW77XDsLnUrk8dv12bTmV2XdIM4jnZ4JG4UcTiA2himElInpmyMl4QB4ikPWOxPcHuC1iObNSpxfR/0B35s8g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724157473; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nq+6LvEDZ524f2yvE2iAVXSVf8PgNI9QtU7IccJ89VI=; 
	b=ixCUYNRBH68IiV3FB1NTw6vgmpEJX6IiKlLMM2/AW6xemFVQtXLhqV2JLBer704dKIN/Wy0emGA2c5J0X1MIp3hHSu+LwrUMfudIlvweitPiroZq9N2gtZKPF/u3+xQke9VGawKrXz9gVfsGsblaTbt4JFriyTFM/acP2ls7IcM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724157473;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=nq+6LvEDZ524f2yvE2iAVXSVf8PgNI9QtU7IccJ89VI=;
	b=NOezwX+99jguf1U5aoZ2fOSjkPRbYKMkqj8M2YO3UNiFgMUIGkUe9vCm28x6kgPS
	3NMxVGItuxs2/phT5oWeOcUpMO6S5TAg19Zs3PK1ueCF2x2BxZFLLR2kRlzt1WmKpTv
	sbp9O1PQ0pMbbBXQ7UEoLYUZ9KxCTarimzuvf1R8=
Received: by mx.zohomail.com with SMTPS id 1724157471592585.7608036236522;
	Tue, 20 Aug 2024 05:37:51 -0700 (PDT)
Message-ID: <ec84bc0b-c4c2-4735-9f34-52bc3a852aaf@collabora.com>
Date: Tue, 20 Aug 2024 15:37:44 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
To: Conor Dooley <conor@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <20240819-b4-rk3588-bridge-upstream-v4-3-6417c72a2749@collabora.com>
 <20240819-bobbing-purplish-99e48baa2304@spud>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <20240819-bobbing-purplish-99e48baa2304@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ZohoMailClient: External

On 8/19/24 7:53 PM, Conor Dooley wrote:
> On Mon, Aug 19, 2024 at 01:29:30AM +0300, Cristian Ciocaltea wrote:
>> Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
>> Quad-Pixel (QP) TX controller IP.
>>
>> Since this is a new IP block, quite different from those used in the
>> previous generations of Rockchip SoCs, add a dedicated binding file.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  .../display/rockchip/rockchip,dw-hdmi-qp.yaml      | 170 +++++++++++++++++++++
>>  1 file changed, 170 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml
>> new file mode 100644
>> index 000000000000..de470923d823
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.yaml
> 
> Filename matching the compatible please.

RK3588 happens to be the first Rockchip SoC using the QP TX controller, but
more are expected to come, e.g. RK3576.  Should we add 'rk3588-' to the
filename and let it being dropped when the 2nd SoC is added?

>> @@ -0,0 +1,170 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi-qp.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip DW HDMI QP TX Encoder
>> +
>> +maintainers:
>> +  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> +
>> +description:
>> +  Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI QP TX controller
>> +  IP and a HDMI/eDP TX Combo PHY based on a Samsung IP block.
>> +
>> +allOf:
>> +  - $ref: /schemas/display/bridge/synopsys,dw-hdmi-qp.yaml#
>> +  - $ref: /schemas/sound/dai-common.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - rockchip,rk3588-dw-hdmi-qp
>> +
>> +  clocks:
>> +    minItems: 4
>> +    items:
>> +      - {}
>> +      - {}
>> +      - {}
>> +      - {}
> 
> Why have you chosen to do things like this?  I find it makes things less
> clear than reiterating the names of the required clocks.

I've just followed the approach used in rockchip,dw-hdmi.yaml.  Personally,
I preferred this for making a clear distinction between common and custom
items, in addition to reducing content dupplication. 

If readability is more important/desired, I will expand the items.  For
consistency, I assume clock-names, interrupts and interrupt-names below
should be treated similarly.

>> +      # The next clocks are optional, but shall be specified in this
>> +      # order when present.
>> +      - description: TMDS/FRL link clock
>> +      - description: Video datapath clock
> 
> I don't get what you mean by optional. You have one SoC, either they are
> or are not connected, unless there's multiple instances of this IP block
> on the SoC and some do and some do not have these clocks?
> Ditto for the interrupts.

They were handled as such in vendor tree, probably assuming other SoC
variants might not need them.  I agree it doesn't make sense to have them
optional at this point.  Will fix this in the next revision.

>> +
>> +  clock-names:
>> +    minItems: 4
>> +    items:
>> +      - {}
>> +      - {}
>> +      - {}
>> +      - {}
>> +      - enum: [hdp, hclk_vo1]
>> +      - const: hclk_vo1
>> +
>> +  interrupts:
>> +    items:
>> +      - {}
>> +      - {}
>> +      - {}
>> +      - {}
>> +      - description: HPD interrupt
>> +
>> +  interrupt-names:
>> +    items:
>> +      - {}
>> +      - {}
>> +      - {}
>> +      - {}
>> +      - const: hpd
>> +
>> +  phys:
>> +    maxItems: 1
>> +    description: The HDMI/eDP PHY.
>> +
>> +  phy-names:
>> +    const: hdmi
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  resets:
>> +    minItems: 2
>> +    maxItems: 2
>> +
>> +  reset-names:
>> +    items:
>> +      - const: ref
>> +      - const: hdp
>> +
>> +  "#sound-dai-cells":
>> +    const: 0
>> +
>> +  rockchip,grf:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Most HDMI QP related data is accessed through SYS GRF regs.
>> +
>> +  rockchip,vo1-grf:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Additional HDMI QP related data is accessed through VO1 GRF regs.
> 
> Why are these required? What prevents you looking up the syscons by
> compatible?

That is for getting the proper instance:

	vo0_grf: syscon@fd5a6000 {
		compatible = "rockchip,rk3588-vo-grf", "syscon";
		reg = <0x0 0xfd5a6000 0x0 0x2000>;
		clocks = <&cru PCLK_VO0GRF>;
	};

	vo1_grf: syscon@fd5a8000 {
		compatible = "rockchip,rk3588-vo-grf", "syscon";
		reg = <0x0 0xfd5a8000 0x0 0x100>;
		clocks = <&cru PCLK_VO1GRF>;
	};

Thanks for reviewing,
Cristian

