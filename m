Return-Path: <devicetree+bounces-223473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFC0BB5838
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:56:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3582419E620B
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FD7B7081C;
	Thu,  2 Oct 2025 21:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LMJuhrHk"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0C1C148
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759442209; cv=none; b=WSHsRtTfXoVP5Np9ftmNMA8n+uM48wHb8yitdOBz+CTRxcMyP0an6AtdzNs5uFfmX0SWZQJFRGJeVhccSyns0BgLlAvuuW6GLumAD+mXBiQKGI87gLSUGGfMpnNeDMxlVe+OptsLZ07zxnb7ZtJ34kkBu7aAAtNzBWQx2qELFY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759442209; c=relaxed/simple;
	bh=ShPhllfzrcEjHAglwp5h9FU1kRG9OTc0vV3QUF6vOPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G6c3r3+BcwCO42n/MXQFZvNkF38k+Z6fU1bAOUbeo6AFuv6sS7rZqEzZI9MNGgtfPaGp1sRbMyH5uypxR5bxeLyLqRjirg+D8wBQUf2rbqFu8VS+E1CWYnCSG/ZQy74UdzwMfWKnIbODrbQVdCY6AinfnPRMueU1tyCGp1fqScg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=LMJuhrHk; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1759442205;
	bh=ShPhllfzrcEjHAglwp5h9FU1kRG9OTc0vV3QUF6vOPw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LMJuhrHkNJWgvMTKAZu7VN98y+ZmDJ1zCVAqZ0jWvpy0Q2gKRL3xvaTuP1T6O0BrR
	 c8e5svsZ8rG0uzmGXeJJ4UP5sXxQnK1PGjNAgGZidLwG8Sr6WRWlmDNfTug43KWxHK
	 TKkXvTa65m4D1ZGLYL9tGJ5muPS8R8X9xQ+KAn9aCgA68DDI+kP1DUOCtZg9UP9qEp
	 LA0/FFG408O8oM3jNZuwI6yfv8j4oBPSQ8YIjWkyr2Y7vBcLoscF2Z+poMK8KYeAMH
	 o7cxY5d12wVik/lxnHDGJr8Jl1rESTuDvdGGMrOZu7+wl+ifhN5pPM8GyIT36tO+4/
	 YkXTfBG+VBDvg==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6EEFD17E12C0;
	Thu,  2 Oct 2025 23:56:44 +0200 (CEST)
Message-ID: <31187dc6-69ec-400e-9f01-2f3062092d26@collabora.com>
Date: Fri, 3 Oct 2025 00:56:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add device tree for the Orange
 Pi CM5 Base board
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Algea Cao <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Cenk Uluisik <cenk.uluisik@googlemail.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Ripard
 <mripard@kernel.org>, Muhammed Efe Cetin <efectn@6tel.net>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <1964913f-8323-4714-a061-5fa09ce0983c@collabora.com>
 <20251002205240.GF16185@pendragon.ideasonboard.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20251002205240.GF16185@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/2/25 11:52 PM, Laurent Pinchart wrote:
> Hi Cristian,
> 
> On Thu, Oct 02, 2025 at 10:24:59PM +0300, Cristian Ciocaltea wrote:
>> On 10/2/25 6:47 AM, Laurent Pinchart wrote:
>>> Hello,
>>>
>>> This patch series adds a device tree for the Orange Pi CM5 Base board
>>> from Xunlong. This is a combination of a compute module and a carrier
>>> board, so the device tree is split in two files.
>>>
>>> The work is based on a combination of upstream device trees for other
>>> RK3588-based Orange Pi boards and the downstream device tree, all
>>> checked against the available schematics for the carrier board. The
>>> compute module schematics is unfortunately not available.
>>>
>>> The series starts by adding a new compatible for the board to
>>> arm/rockchip.yaml. The next patch documents a missing property in the
>>> rk3588-dw-hdmi-qp bindings that the device tree needs. Finally, the last
>>> patch adds the device tree.
>>>
>>> Patch 2/3 may be slightly controversial as the new DT property could be
>>> better named. 
>>
>> Indeed :-). As a matter of fact I've already planned to introduce it as
>> "tmds-enable-gpios" [1], during my recent FRL related work.
>>
>>> It has been supported in the driver for a year now, so
>>> there could be users in the wild. I have therefore decided to keep the
>>> current name. I am open to alternative solutions.
>>
>> As mentioned in [2], this was "inherited" from downstream and hasn't been
>> really in use so far.  I intended to do some more testing before attempting
>> to send those patches upstream, as for now I couldn't notice any (obvious)
>> change in behavior when switching between TMDS and FRL, with or without
>> making use of it in DT.
> 
> Thanks for the links. The new property name is better. We may need to
> preserve backward compatibility though, how confident are you that the
> enabled-gpios property isn't used in the wild ?

I think we should be fine, also considering this doesn't seem to have a
negative impact on the functionality provided so far.

> I'd like to get the device tree for the Orange Pi CM5 merged sooner than
> later. Would you post those two patches, or should I take them in the v2
> of my series ?

Sure, feel free to take them if you wish to speed things up a bit.

>> [1] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/5a32a84ee3e801daaeb974f967f6e213983feeb4
>> [2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/df4d94fdb94463dd4175338bf7044b40c5e559e4


