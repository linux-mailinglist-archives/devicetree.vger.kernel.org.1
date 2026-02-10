Return-Path: <devicetree+bounces-264351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HhwDqkQi2l/PQAAu9opvQ
	(envelope-from <devicetree+bounces-264351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:04:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C5E119F51
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67B22303FF24
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDA6A3164C8;
	Tue, 10 Feb 2026 11:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="aB05hZVC"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66162219E8D;
	Tue, 10 Feb 2026 11:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770721410; cv=none; b=h4G8OwvtpPt5AuX8FEvYqxwVWMbrL3qAL7E/VLQ8SORgeVNHLHDQ9uZ+FQyJGHlqsdf1CPfZDboh91DtD2KyQOsXau0SrOWNIZJd7C1j4kS5t4rxa78APQms1B5c6sXfxwbm4fjpBTimyUFzTGujE10cs/F3zV41E024+yKxtjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770721410; c=relaxed/simple;
	bh=8RIiVCpyFFw4VXvzN2L61UAywu/cwAgjZhkbdvtX+sY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XYQ17nbJn079omoxrizQZY74OD38BfIGZj3MVWatTEx+gyh1UFGaeP26vlwbJ16fPl+PULLreyG2shu1iAiSItk1WnGv6rqOxaAgFYt/eAvSa1chAXDN4oT6bIHjy/6rylrdwxH0vUQxHt5ih9u37/RBFQ/S0z4Ago+Y/+gQvRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=aB05hZVC; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770721407;
	bh=8RIiVCpyFFw4VXvzN2L61UAywu/cwAgjZhkbdvtX+sY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aB05hZVCJpcC42+sI9c+F5DCGrJRaakAxgzQDTapKHCtvTiPp/guU4Hw4gwGbxR+v
	 i2L0TnPdM4uRf+WQjaWm66PoLiDLnCls0e2KYI1e9jNemqBbSM85apDLX+uZxdEC7S
	 B6fq6m+TsAjf8l/MM6jt3NE5qJvh/3MrMNmEwqfZZwkaJ2nuvAGJnv9KIgBM3PCDqg
	 RyqoCxWivzj0rtcaFAU0AldJb2zNdrhoFAwLAP/sechw5pyLlLGi5riugCxpb6FU7C
	 Sk6IJDr2ldf8D7bCWbEzPwp/zakzcvzlZVQW4bzXYYx6YKa9liiDFP28E1V2NXnjbn
	 RKrEEBuIhX5EQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EBCFC17E0E90;
	Tue, 10 Feb 2026 12:03:26 +0100 (CET)
Message-ID: <7ed7a5e3-0c83-44e8-b7d2-e93e0b686df8@collabora.com>
Date: Tue, 10 Feb 2026 12:03:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8189: Add pinmux macro header
 file
To: David Lechner <david@lechnology.com>, Cathy Xu
 <ot_cathy.xu@mediatek.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Yong Mao <yong.mao@mediatek.com>, Wenbin Mei <Wenbin.Mei@mediatek.com>,
 Axe Yang <Axe.Yang@mediatek.com>, Lei Xue <Lei.Xue@mediatek.com>
References: <20250919020525.7904-1-ot_cathy.xu@mediatek.com>
 <1b092f9c-d0b1-47df-a83e-a99d7491a32b@lechnology.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <1b092f9c-d0b1-47df-a83e-a99d7491a32b@lechnology.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[lechnology.com,mediatek.com,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264351-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Queue-Id: A0C5E119F51
X-Rspamd-Action: no action

Il 09/02/26 22:48, David Lechner ha scritto:
> On 9/18/25 9:03 PM, Cathy Xu wrote:
>> Add the pinctrl header file on MediaTek mt8189.
>>
>> Signed-off-by: Cathy Xu <ot_cathy.xu@mediatek.com>
>> ---
>> This patch is base on the patch series:
>> https://patchwork.kernel.org/project/linux-mediatek/list/?series=981475
>> [1] dt-bindings: pinctrl: mediatek: Add support for mt8189
>> [2] arm64: dts: mediatek: mt8189: Add pinmux macro header file
>> [3] pinctrl: mediatek: Add pinctrl driver on mt8189
>> Since patch [1] and [3] of the series have already been merged, this
>> patch(patch [2]) is being resent individually after modifications.
>> ---
>>   arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h | 1125 +++++++++++++++++
>>   1 file changed, 1125 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h b/arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h
>> new file mode 100644
>> index 000000000000..df69f50c267a
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h
> 
> General question:
> 
> Why do we have similar files in two different places different places?
> 
> $ ls arch/arm64/boot/dts/mediatek/*-pin*
> arch/arm64/boot/dts/mediatek/mt2712-pinfunc.h
> arch/arm64/boot/dts/mediatek/mt6878-pinfunc.h
> arch/arm64/boot/dts/mediatek/mt6893-pinfunc.h
> arch/arm64/boot/dts/mediatek/mt8167-pinfunc.h
> arch/arm64/boot/dts/mediatek/mt8173-pinfunc.h
> arch/arm64/boot/dts/mediatek/mt8196-pinfunc.h
> arch/arm64/boot/dts/mediatek/mt8516-pinfunc.h
> 
> $ ls include/dt-bindings/pinctrl/mt*
> include/dt-bindings/pinctrl/mt65xx.h
> include/dt-bindings/pinctrl/mt6779-pinfunc.h
> include/dt-bindings/pinctrl/mt6795-pinfunc.h
> include/dt-bindings/pinctrl/mt6797-pinfunc.h
> include/dt-bindings/pinctrl/mt7623-pinfunc.h
> include/dt-bindings/pinctrl/mt8135-pinfunc.h
> include/dt-bindings/pinctrl/mt8183-pinfunc.h
> include/dt-bindings/pinctrl/mt8186-pinfunc.h
> include/dt-bindings/pinctrl/mt8192-pinfunc.h
> include/dt-bindings/pinctrl/mt8195-pinfunc.h
> include/dt-bindings/pinctrl/mt8365-pinfunc.h
> 
> 
> Plus one different naming pattern.
> 
> $ ls include/dt-bindings/pinctrl/mediatek,*
> include/dt-bindings/pinctrl/mediatek,mt8188-pinfunc.h
> 
> 
> 
> Which one is preferred?
> 
> 
The MediaTek pinctrl must gain compatibility with standard pinctrl bindings. Until
then, bindings maintainers decided that these headers must go to the dts/mediatek
folder.

It is my desire to (but lack of time on my side hits hard) do the right thing and
make the MediaTek pinctrl drivers to actually "understand" standard bindings.

I'd be - of course - happy if anyone else beats me on time (which wouldn't be hard
really) and pushes a series to fix this situation.

Just to be clear - right now, the MTK pinctrl DT looks like:

	panel_default_pins: panel-default-pins {
		pins-rst {
			pinmux = <PINMUX_GPIO108__FUNC_GPIO108>;
			output-high;
		};

		pins-en {
			pinmux = <PINMUX_GPIO48__FUNC_GPIO48>;
			output-low;
		};
	};

	spi1_pins: spi1-pins {
		pins {
			pinmux = <PINMUX_GPIO136__FUNC_SPIM1_CSB>,
				 <PINMUX_GPIO137__FUNC_SPIM1_CLK>,
				 <PINMUX_GPIO138__FUNC_SPIM1_MO>,
				 <PINMUX_GPIO139__FUNC_SPIM1_MI>;
			bias-disable;
		};
	};

....but the driver should gain compatibility with nodes which would look like:

	panel_default_pins: panel-default-pins {
		pins-rst {
			pins = "gpio108";
			function = "gpio";
			output-high;
		};

		pins-en {
			pins = "gpio48";
			function = "gpio";
			output-low;
		};
	};

	spi1_pins: spi1-pins {
		pins-bus {
			pins = "gpio136", "gpio137", "gpio138", "gpio139",
			function = "spi_m1";
			bias-disable;
		};
	};

.... or

	spi1_pins: spi1-pins {
		pins-bus {
			function = "spi_m1";
			groups = "spi_m1_pins";
			bias-disable;
		};
	};

That's the entire situation.

Cheers,
Angelo

