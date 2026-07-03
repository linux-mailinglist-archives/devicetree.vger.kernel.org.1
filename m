Return-Path: <devicetree+bounces-320262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G6CFKMbqR2ovhgAAu9opvQ
	(envelope-from <devicetree+bounces-320262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 19:00:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D72704769
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 19:00:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="nJd6/ih4";
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320262-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320262-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BB1A30233C0
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 16:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D3E30C150;
	Fri,  3 Jul 2026 16:59:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D3530B51D;
	Fri,  3 Jul 2026 16:59:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783097989; cv=none; b=iNLPmvP7XulN0smVZqPgLrFqhnGodyGzv8PjP49AIYxLm8rZOui0vq4nPrErLZ7EJ59CSjhSuMo08QreSzBWUybdcy7+ggoo7zGBbD+FSh8QUQyHxIpOoyhVVfA1ft0bFur9wA3UiB1X3ZCsW2xrXXHbDny+PaN9N6tXSN5CgnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783097989; c=relaxed/simple;
	bh=Dhy4gvLT0RAnGvm4Qciq67SI7sUn4Qp1DNRguSA4Rcs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gRUjKG6hEdgREr/ILmGizO/1KE471iq7WNIXK3THiE1cPsBN90bAcIZhMO34sIgD8rliCt3vquE+dqrKpfbrwEgPIA1R7K4EL3pUZdf0kSQ6yN0wV7Xshzj34QOI8TtIoDNsMN+x8HlFmwxj0LvaoRcSN39zVVF9wTwCvoIiAiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nJd6/ih4; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783097985;
	bh=Dhy4gvLT0RAnGvm4Qciq67SI7sUn4Qp1DNRguSA4Rcs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nJd6/ih40hiWEhn4ndj338VwFyT5SxADffzqSTjv1GQ5me0AH4Mj17WymraBfs+t/
	 r5GGKZ4aL8Tow2C+NPSJhmYYVE5jc8dNI+pq7pn2xeqyIqZaFc0+AT+VP4hhrndqmx
	 RZH5/XifxgE5MXgQvzXY0bL00xaiScLbPsKviaa4biXtRCgtTWQ1LRbKxdaAO8vh4c
	 vFeEhuh52yIuwJ9INcJJC/MsS0C0gxf7stzwfxbLzKvut59k3ZLy5XdVxXX7PCQpbq
	 CBgkhxWhD17uony3610weO3dBkZHxQph+StpRo70GCInYK0K4cKEHlrvZ/jxJI/Bqj
	 IFdD4qkXS6vNg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F3DB217E0521;
	Fri,  3 Jul 2026 18:59:44 +0200 (CEST)
Message-ID: <deb7bdd8-f9d0-43cd-9de0-82e80351a739@collabora.com>
Date: Fri, 3 Jul 2026 19:59:44 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] dt-bindings: display: vop2: Add missing reset
 properties
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Diederik de Haas <diederik@cknow-tech.com>, Sandy Huang
 <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <DJC0L3CRJ0WL.IZEYVLPROMM1@cknow-tech.com>
 <fe8038fe-940a-4c61-a551-082534ef9c51@collabora.com>
 <8183064.gsGJI6kyIV@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <8183064.gsGJI6kyIV@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320262-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:diederik@cknow-tech.com,m:hjc@rock-chips.com,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[sntech.de,cknow-tech.com,rock-chips.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com];
	FORGED_SENDER(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13D72704769

On 7/3/26 7:37 PM, Heiko Stübner wrote:
> Am Donnerstag, 18. Juni 2026, 10:39:14 Mitteleuropäische Sommerzeit schrieb Cristian Ciocaltea:
>> Hi Diederik,
>>
>> On 6/18/26 10:58 AM, Diederik de Haas wrote:
>>> Hi Cristian,
>>>
>>> Thanks for this series :-) Just 1 nit (at the end) ...
>>>
>>> On Wed Jun 17, 2026 at 8:52 PM CEST, Cristian Ciocaltea wrote:
>>>> Document the VOP2 resets corresponding to the AXI, AHB and DCLK_VP0..2
>>>> clocks, which are common to all supported SoCs, plus DCLK_VP3 which is
>>>> provided only on RK3588.
>>>>
>>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>> ---
>>>>  .../bindings/display/rockchip/rockchip-vop2.yaml   | 42 ++++++++++++++++++++++
>>>>  1 file changed, 42 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>>>> index 93da1fb9adc4..d3bc5380f910 100644
>>>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>> [...]
>>
>>>> @@ -289,6 +321,16 @@ examples:
>>>>                                "dclk_vp0",
>>>>                                "dclk_vp1",
>>>>                                "dclk_vp2";
>>>> +                resets = <&cru SRST_A_VOP>,
>>>> +                         <&cru SRST_H_VOP>,
>>>> +                         <&cru SRST_VOP0>,
>>>> +                         <&cru SRST_VOP1>,
>>>> +                         <&cru SRST_VOP2>;
>>>> +                reset-names = "axi",
>>>> +                              "ahb",
>>>> +                              "dclk_vp0",
>>>> +                              "dclk_vp1",
>>>> +                              "dclk_vp2";
>>>>                  power-domains = <&power RK3568_PD_VO>;
>>>
>>> Place reset* props below power-domains (like in patch 9) ?
>>> So everyone who copies your example has the correct sorting order.
>>
>> The example doesn't strictly follow that ordering either — see e.g. the iommus
>> property — so I placed the resets right after the clocks, which keeps the
>> related properties grouped together.
>>
>> That said, I don't have a strong preference. 
>>
>> Heiko, is there a convention you'd like the Rockchip bindings to follow here?
>> Happy to reorder if so.
> 
> Please just use standard devicetree ordering, as described in the
> documentation. We generally don't want to invent new diverging things :-)

Ack. For consistency, let's also move the iommus property up into the expected
position.

Thanks,
Cristian

