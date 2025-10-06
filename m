Return-Path: <devicetree+bounces-223891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D513BBEB02
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:43:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17A573A983E
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:43:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2FF32DCF47;
	Mon,  6 Oct 2025 16:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="p1YtwLrU"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985C11E98F3
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759768981; cv=none; b=mgGjnyHHgFCSoDWcbHN9r2lLAU77yhTYKlcayK22KxjUdBMY9MjE/iKN4cYLL6M8vRcpB7MdB2vh9zxZBqEnUGezAdddcrqCRuTwg7Mf5Bk0WfuOAActyO9Qs/+JOGxIBg+IeJqy4AzVATpI9XBRPm2E19Vomsc1inQNzHSvlYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759768981; c=relaxed/simple;
	bh=MJpXLH2WyUVVbdTuWfHINRtUwiFCM4iGx0TBERf8ldA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iY81pXOSH/V234KNMc7uWmAOI1ohVosirykf0ypp7aSSIpxiyVpLB/0LwwqQrMZUR2gABXAWPvH7+KtNTxKii4wBYKNmfMhipZ4EryUHRfSupJ7+/aorNOG8va8WZf7QkOhz8ALtzpYPqsFWanN0jSik1DjejIF1YJl3srw7CkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=p1YtwLrU; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1759768977;
	bh=MJpXLH2WyUVVbdTuWfHINRtUwiFCM4iGx0TBERf8ldA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=p1YtwLrUcTQd2vh/f18Hp0b/5gML91x22BaAvA3JhDCTTN6r+8UcPX3jjHgp0cZyz
	 OXYa5bWkAcjehab+PZFYKN065fcf2xEbL8v9/4EzN1PYwfwmzp6iyuhJVNlW34XH37
	 qG0mKLuW5kZI6dtMxFcQp91koW7cuH0afLLviwqW8Uvtqof26ZUcZIThOMfTrLyszV
	 G4ykG9jZUMaNq25VKnEgSONSmgpco4bKZMPn9bkMwleMd/Qn2gV3KSwg/KpPSNlpXk
	 ahVYebKW6tc9D1rig9xVgrJ0DwiCfLapaLUkWqmi/1idLR9JyD/AlOIyshKSetrVqy
	 VhA7WZ0qxdxUw==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A51F517E02B0;
	Mon,  6 Oct 2025 18:42:56 +0200 (CEST)
Message-ID: <d423560e-dcd4-45d8-a1e4-5a8b2a21ef86@collabora.com>
Date: Mon, 6 Oct 2025 19:42:56 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rk3588-dw-hdmi-qp: Add
 tmds-enable-gpios property
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Alexey Charkov <alchark@gmail.com>, Algea Cao <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Cenk Uluisik <cenk.uluisik@googlemail.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Ripard
 <mripard@kernel.org>, Muhammed Efe Cetin <efectn@6tel.net>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-2-laurent.pinchart@ideasonboard.com>
 <c5kwmvu3j72evbgdmjn6qn5nqx7ywbiwpzhnpeh6hjjhbz5vwo@jpe3onblwhmy>
 <20251006162518.GJ5944@pendragon.ideasonboard.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20251006162518.GJ5944@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/6/25 7:25 PM, Laurent Pinchart wrote:
> On Mon, Oct 06, 2025 at 02:19:24PM +0300, Dmitry Baryshkov wrote:
>> On Mon, Oct 06, 2025 at 02:55:37AM +0300, Laurent Pinchart wrote:
>>> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>
>>> Add an optional property to RK3588 HDMI TX Controller binding describing
>>> a GPIO line to be asserted when operating in HDMI 1.4/2.0 TMDS mode and
>>> deasserted for HDMI 2.1 FRL.
>>>
>>> This is used to control an external level shifter for HDMI data lines.
>>>
>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> ---
>>>  .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 10 ++++++++++
>>>  1 file changed, 10 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
>>> index 96b4b088eebe..eec0d40c91ea 100644
>>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
>>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
>>> @@ -113,6 +113,13 @@ properties:
>>>      description:
>>>        Additional HDMI QP related data is accessed through VO GRF regs.
>>>  
>>> +  tmds-enable-gpios:
>>> +    description:
>>> +      Optional GPIO line to be asserted when operating in HDMI 1.4/2.0
>>> +      TMDS mode and deasserted for HDMI 2.1 FRL. It can be used to control
>>> +      an external level shifter for HDMI data lines.
>>> +    maxItems: 1
>>
>> Just my 2c: since TMDS is assumed to be a default mode, shouldn't this
>> be a frl-enable-gpios instead?
> 
> I don't mind either way. Cristian, any opinion ?

No strong opinion either; we could go for Dmitry's suggestion.

>>> +
>>>  required:
>>>    - compatible
>>>    - reg
> 


