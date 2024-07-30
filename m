Return-Path: <devicetree+bounces-89379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE24940EDD
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 12:20:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE9F41C22626
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 10:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F12BA19885F;
	Tue, 30 Jul 2024 10:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTXB4Re0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4021198852;
	Tue, 30 Jul 2024 10:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722334845; cv=none; b=Aoafd0ccyeXh++SOgrmxRDSIEJEfOi2LjOqfadw2ILhl6+fEn+Rz3qtz+0Wx0pYOyA+7sO+XJ/RElCaR37AU3bby9dMG1RYsJ+3H4I3BpdIsU0Wi0OBpJsH0KJ7boWhZ9wQ2R08IYPnQpa9RKxyn0F3lkU5RuxLER0wNhqVdOBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722334845; c=relaxed/simple;
	bh=xwbo8CgZid8XywgKj08NTyU5S6B6z34ldR9Hj5HGt/I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hELsf9cO/t2cp2i6i0D3NznFM/B//M3bAL5PVXgccpdnhc3ha+eyM8aEn56GvVo37ov3FBNs7irxflrhZYvncEdeyeEyJ1AHkk+MMeXWFi2gnoSk2e9zh6w12kiIJDfBUsmJrINNzQAy7Zcz2KEDhPErd/UUD344KHwjrMe3AjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTXB4Re0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1044FC32782;
	Tue, 30 Jul 2024 10:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722334845;
	bh=xwbo8CgZid8XywgKj08NTyU5S6B6z34ldR9Hj5HGt/I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YTXB4Re00tyDf8hKnBc0H85WQXLdG2tMhabYYUDB9yehlZW/hcj4zsw28OjHRTZju
	 fxYeGXbDz50Xsn5Bu+4V8C+163X9K+mEWmJtkD9b5dyO8/Zupfl/7NGuNJm4xDehx9
	 vz5U270gjGeTQqkLEMh6lJ0vrKK1AJwwtdZrTDIHFNM0Q9iIEqDBdedU84QIutToOm
	 c1D7KUewbne5mDCkmx2B1DScBXyK1ylCX7HEh5rU9jWritQ8gETNNFd7xi+WA31lzn
	 byZk1ojZWtz70fUMLgcg46L28PwrCWmEfsykOXMpUXLQIcVjoeSJ7wB+ffoWwTxgdG
	 9WKOpMO/xtE6A==
Message-ID: <edf48813-3e2e-4fe2-b2e5-80f68ef0172f@kernel.org>
Date: Tue, 30 Jul 2024 12:20:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/16] drm/imx: Add i.MX8qxp Display Controller pixel
 engine
To: Liu Ying <victor.liu@nxp.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, kishon@kernel.org,
 aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, frank.li@nxp.com
References: <20240712093243.2108456-1-victor.liu@nxp.com>
 <20240712093243.2108456-8-victor.liu@nxp.com>
 <ibdzow7lvbimaefrp2z2aolgp4pytpq3dcr2y3pegjavvknhgm@2e6j3f4zytqp>
 <107d89b9-e7b8-4613-bc07-9af7b52c2b8a@nxp.com>
 <0e7a8d52-6556-4531-882f-73513f99259b@kernel.org>
 <81afd7ef-c4a6-49e8-b232-8007a25aaf51@nxp.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <81afd7ef-c4a6-49e8-b232-8007a25aaf51@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/07/2024 11:42, Liu Ying wrote:
> On 07/30/2024, Krzysztof Kozlowski wrote:
>> On 30/07/2024 08:55, Liu Ying wrote:
>>> On 07/28/2024, Dmitry Baryshkov wrote:
>>>> On Fri, Jul 12, 2024 at 05:32:34PM GMT, Liu Ying wrote:
>>>>> i.MX8qxp Display Controller pixel engine consists of all processing
>>>>> units that operate in the AXI bus clock domain.  Add drivers for
>>>>> ConstFrame, ExtDst, FetchLayer, FetchWarp and LayerBlend units, as
>>>>> well as a pixel engine driver, so that two displays with primary
>>>>> planes can be supported.  The pixel engine driver as a master binds
>>>>> those unit drivers as components.  While at it, the pixel engine
>>>>> driver is a component to be bound with the upcoming DRM driver.
>>>>
>>>> Same question / comment: create subnodes directly, without going
>>>> through the subdevices. A lot of small functions that would benefit
>>>> being inlined.
>>>
>>> Like I replied in patch 06/16, I can't create sub devices directly.
>>>
>>> Can you please point out typical ones for those small functions if
>>> the comment still stands?
>>>
>>>>
>>>>> +static int dc_cf_bind(struct device *dev, struct device *master, void *data)
>>>>> +{
>>>>> +	struct platform_device *pdev = to_platform_device(dev);
>>>>> +	struct dc_drm_device *dc_drm = data;
>>>>> +	struct dc_pe *pe = dc_drm->pe;
>>>>> +	struct dc_cf_priv *priv;
>>>>> +	int id;
>>>>> +
>>>>> +	priv = drmm_kzalloc(&dc_drm->base, sizeof(*priv), GFP_KERNEL);
>>>>> +	if (!priv)
>>>>> +		return -ENOMEM;
>>>>> +
>>>>> +	priv->reg_cfg = devm_platform_ioremap_resource_byname(pdev, "cfg");
>>>>> +	if (IS_ERR(priv->reg_cfg))
>>>>> +		return PTR_ERR(priv->reg_cfg);
>>>>> +
>>>>> +	id = of_alias_get_id(dev->of_node, "dc0-constframe");
>>>>
>>>> Is it documented? Acked?
>>>
>>> Like I replied in patch 06/16, I can add aliases nodes to examples,
>>> if needed.
>>>
>>> No Nak from DT maintainers I'd say, but I hope there will be direct
>>> Ack(s).
>>>
>>
>> It was not Acked, because there was no documentation added for it.
> 
> I may add aliases nodes in examples in next version, if no objections.

Example is just example. It is not a documentation. You must explain it
in the binding, e.g. description.

> 
>> Anyway, naming is quite cryptic, e.g. "0" in "dc0" is quite confusing.
>> Do you expect different aliases for dc1 or dc9? But anyway, aliases for
> 
> Yes, I do.  If the alias approach is used, DC instance ids need to be
> specified in aliases.

Really? Uh, that does not look good. I tend to like this binding less
and less.


Best regards,
Krzysztof


