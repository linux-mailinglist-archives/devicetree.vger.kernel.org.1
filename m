Return-Path: <devicetree+bounces-75713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B34490868A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 10:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2BD81C250DF
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 08:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5BC819046F;
	Fri, 14 Jun 2024 08:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kuW3tu2M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE79318C33A
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 08:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718354350; cv=none; b=TJ1GDMXJrPHV2kwS4ULEg4CzkK8/kkcmq3HiuclgENEsL1EAMwW9f3Zc+2r7wGcKd/6U6AnnhtSVXYMEJBPfEcHqherC86gDSeTanbBkxJW5M//56Bw8FWX3HRLvL59Oe187R/lhUwBG2cfxQCPG1wI1Gkyf4vgkMjgU7rwA25U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718354350; c=relaxed/simple;
	bh=xzM1u2b8tbZcnEXzSiajOXvtqBwxeK/lFWiRYIuiTxY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=H9VecJgHfimUPPBXcOO1R+RFOxkkuKbFhsFRPAqDOz+EFJXgwAi7LVhuDVim1wBQhfYAd8UibpUgP3NGJYL/kfehmKep4iNK0zE+ryfDOTAzpb41eYfTtC2jlN9jmNBFzthdPdhFGR/7B73ERUFizizQuNDmLa6uxtP/xdf3Lxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kuW3tu2M; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-35f223e7691so1166775f8f.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 01:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718354347; x=1718959147; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gyw6TIQZ0Xcni+LNb3JwKvBdl1n46DFQH3QxBDRHvF0=;
        b=kuW3tu2Mru7lSYtc6BS43ChKkOEYZg1/Rwl/NJPumPTblAfkSVT5uOO6vvAs01+sqP
         NAAbwZpSrD4v79KrX+Ct6jc5Quwrbt2S2jKG7JKygn2h8IhUStaJpG1iGe3mfqFqAwUT
         2n6upmmichg0R4lMx6eOyNZZ7SEMwRZ7/h3+CULtNaGJKi7JrNWON5NEHBbgM6hhK2qi
         OFpfdj11WoL6RlcoS8pM6jhBE/ONJiA357SY8N8npMbOXhe3DndzHMBhw1oMBtCpAJpc
         LJPIDJHeL44tJD712aybyc5ibgdgna3wSngW2LRXG4Mivd60ERtAmCJBRNCYrqd6Qyqt
         e/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718354347; x=1718959147;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gyw6TIQZ0Xcni+LNb3JwKvBdl1n46DFQH3QxBDRHvF0=;
        b=Lxa56Hu4fMo+oGfoTJBlQFVwHMBMFKpJhtkPVsw+ODyIE3ICiuZuD65/InH/QZOXgx
         wY5Y4+gH9a8Fb9wgCYwJA94wMeFku4jr3zQsiEjULq/T5jw5PCKconNdmKs67rV63wv1
         HQUcAd/w4bea6vvz+mneFmL5w1GA7v2LqKHwbydQXVjLh1rS5fr873TK20S1xcjyhxey
         xiW1pd+R44yPhs5tiOVrzHd2I7YOFXkLaoI4lZRrmIULFfKr7IXy6DnKUp2ab8D811Gp
         4xUFXKNOWEiLo0UJgCW9Kk62o3IL2Ez5JcIAR1YynssZSBXuZwpLU64E2ootfMhs7dFY
         pWjw==
X-Forwarded-Encrypted: i=1; AJvYcCVe/0XC8B5nFvglkUSZNYFtG9ZoCb0WTNkyu0rJmuMoqNUCkSPkSJUAV9YSNfOoMdVXGHNvaUqai8XGA5CFkGQjXv+YBeItsPxbsg==
X-Gm-Message-State: AOJu0Yw8T+TJLhVDfhsnMcyr3fI/diQJD0WY6kxhrw5ncTvvJIXyAAv2
	1JTu1/Oar/fEuehAScJ/kafgo7ldE7Ec2jWwMII7UrhzKp7J3W2cWiuu7PQ1Dxg=
X-Google-Smtp-Source: AGHT+IGhakMQyioBHsX0F33tZUElM2k7k/HiK58xnch8pvg3F+O/gic2pejzHdQ0R1UImKTvpQJZYA==
X-Received: by 2002:adf:f04f:0:b0:35f:2551:b967 with SMTP id ffacd0b85a97d-360718de62emr5139003f8f.16.1718354346939;
        Fri, 14 Jun 2024 01:39:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc? ([2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-360750f249csm3717924f8f.75.2024.06.14.01.39.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jun 2024 01:39:06 -0700 (PDT)
Message-ID: <37e7b6a5-5345-48cb-996f-c50ec935cded@linaro.org>
Date: Fri, 14 Jun 2024 10:39:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
To: Andy Yan <andyshrk@163.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <20240601143226.GA2003970@ravnborg.org>
 <59519381-2729-4839-9882-65a981a0c551@collabora.com>
 <20240604204110.GA84949@ravnborg.org>
 <f656c72e-fac8-4345-9b65-1031ebe81c25@collabora.com>
 <304b4602-8722-4ed0-a555-8dada573ee79@collabora.com>
 <5dc16b34-d638-4fab-84e1-cb7db08ad80e@linaro.org>
 <2d8e9235.68f3.19015881d35.Coremail.andyshrk@163.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <2d8e9235.68f3.19015881d35.Coremail.andyshrk@163.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/06/2024 08:56, Andy Yan wrote:
> 
> 
> 
> 
> 
> 
> 
> Hi Neil，
> 
> At 2024-06-05 19:48:09, "Neil Armstrong" <neil.armstrong@linaro.org> wrote:
>> On 05/06/2024 12:11, Cristian Ciocaltea wrote:
>>> On 6/5/24 12:34 AM, Cristian Ciocaltea wrote:
>>>> On 6/4/24 11:41 PM, Sam Ravnborg wrote:
>>>>> Hi Cristian.
>>>>>
>>>>> On Tue, Jun 04, 2024 at 10:32:04PM +0300, Cristian Ciocaltea wrote:
>>>>>> Hi Sam,
>>>>>>
>>>>>> On 6/1/24 5:32 PM, Sam Ravnborg wrote:
>>>>>>> Hi Cristian,
>>>>>>>
>>>>>>> a few drive-by comments below.
>>>>>>>
>>>>>>> 	Sam
>>>>>>>
>>>>>>>
>>>>>>>> +
>>>>>>>> +static const struct drm_connector_funcs dw_hdmi_qp_connector_funcs = {
>>>>>>>> +	.fill_modes = drm_helper_probe_single_connector_modes,
>>>>>>>> +	.detect = dw_hdmi_connector_detect,
>>>>>>>> +	.destroy = drm_connector_cleanup,
>>>>>>>> +	.force = dw_hdmi_qp_connector_force,
>>>>>>>> +	.reset = drm_atomic_helper_connector_reset,
>>>>>>>> +	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
>>>>>>>> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>>>>>>>> +};
>>>>>>>> +
>>>>>>>> +static int dw_hdmi_qp_bridge_attach(struct drm_bridge *bridge,
>>>>>>>> +				    enum drm_bridge_attach_flags flags)
>>>>>>>> +{
>>>>>>>> +	struct dw_hdmi *hdmi = bridge->driver_private;
>>>>>>>> +
>>>>>>>> +	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
>>>>>>>> +		return drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
>>>>>>>> +					 bridge, flags);
>>>>>>>> +
>>>>>>>> +	return dw_hdmi_connector_create(hdmi, &dw_hdmi_qp_connector_funcs);
>>>>>>>> +}
>>>>>>>
>>>>>>> Are there any users left that requires the display driver to create the
>>>>>>> connector?
>>>>>>> In other words - could this driver fail if DRM_BRIDGE_ATTACH_NO_CONNECTOR
>>>>>>> is not passed and drop dw_hdmi_connector_create()?
>>>>>>>
>>>>>>> I did not try to verify this - just a naive question.
>>>>>>
>>>>>> I've just tested this and it doesn't work - dw_hdmi_connector_create()
>>>>>> is still needed.
>>>>>
>>>>> Hmm, seems the display driver or some other bridge driver fails to
>>>>> support "DRM_BRIDGE_ATTACH_NO_CONNECTOR".
>>>>> what other drivers are involved?
>>>>
>>>> Could it be related to the glue driver (updated in the next patch) which
>>>> is also responsible for setting up the encoder?
>>>>
>>>>> Note that my comments here should be seen as potential future
>>>>> improvements, and do not block the patch from being used.
>>>>
>>>> Thanks for the heads up! Will try to get back to this soon and investigate.
>>>    
>>> IIUC, modern bridges should not create the connector but rely on display
>>> drivers to take care of, which in this case is the VOP2 driver. However,
>>> it also handles some of the older SoCs relying on the non-QP variant of
>>> DW HDMI IP. Hence the existing dw-hdmi driver would be also impacted in
>>> order to come up with a proper solution.
>>>
>>> A quick check shows there are several users of this IP:
>>>
>>> $ git grep -E '= dw_hdmi_(bind|probe)\('
>>> drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c:    hdmi->dw_hdmi = dw_hdmi_probe(pdev, plat_data);
>>> drivers/gpu/drm/bridge/synopsys/dw-hdmi.c:      hdmi = dw_hdmi_probe(pdev, plat_data);
>>> drivers/gpu/drm/imx/ipuv3/dw_hdmi-imx.c:        hdmi->hdmi = dw_hdmi_probe(pdev, match->data);
>>> drivers/gpu/drm/ingenic/ingenic-dw-hdmi.c:      hdmi = dw_hdmi_probe(pdev, &ingenic_dw_hdmi_plat_data);
>>> drivers/gpu/drm/meson/meson_dw_hdmi.c:  meson_dw_hdmi->hdmi = dw_hdmi_probe(pdev, &meson_dw_hdmi->dw_plat_data);
>>> drivers/gpu/drm/renesas/rcar-du/rcar_dw_hdmi.c: hdmi = dw_hdmi_probe(pdev, &rcar_dw_hdmi_plat_data);
>>> drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:            hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);
>>> drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c:  hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);
>>>
>>> I didn't check which display drivers would be involved, I'd guess there
>>> are quite a few of them as well. So it seems this ends up being a pretty
>>> complex task.
>>
>> If this would be a brand new driver, then it should only support DRM_BRIDGE_ATTACH_NO_CONNECTOR,
>> so you should not create a connector from the driver.
>>
>> The fact dw-hdmi accepts an attach without the flag is for legacy purpose
>> since some DRM drivers haven't switched to DRM_BRIDGE_ATTACH_NO_CONNECTOR yes,
>> but it's a requirement for new bridges so at some point you'll need to make
>> sure the rockchip glue and drm driver supports DRM_BRIDGE_ATTACH_NO_CONNECTOR.
>>
>> This will greatly simplify the driver!
> 
> Based on the previous discussion， the DW HDMI QP drivers will be implemented like this：
> 
> Core bridge library：
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> Rockchip platform specific glue：
> drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> 
> As a new bridge driver should only support DRM_BRIDGE_ATTACH_NO_CONNECTOR,
> Is it acceptable if we implement the connector at  the rockchip glue dw_hdmi_qp-rockchip.c ？
> 
> Our current combination is a bit complex：
> The display controller driver is  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c ，which shared
> by rk3568， rk3588 and some upcoming soc like rk3528/rk3562.
> 
> For rk3588， we have totally new HDMI、DP、DSI2  IP， they need brand new bridge driver that
> should only support DRM_BRIDGE_ATTACH_NO_CONNECTOR， and there is also an eDP on rk3588
> use analogix_dp_core.c that create connector by analogix_dp bridge。
> 
> For  rk3568， the HDMI/eDP/DSI IP are based on old IP， the corresponding drivers are dw-hdmi，analogix_dp
> and dw-mipi-dsi, they both create drm connector by it's bridge driver. And rk3528/rk3562 are like this too。
> 
> So if we can create drm_connector at glue side (such as dw_hdmi_qp-rockchip.c), let the interface driver decide
> if it should create drm_connector or not will make the vop2 driver simpler。

I think you should start migration to drm_bridge_connector instead of hacking dw_hdmi_qp-rockchip.c into
fitting into DRM_BRIDGE_ATTACH_NO_CONNECTOR.

You'll add technical dept, and the migration will be even harder afterwards.

But in any case, bridge/synopsys/dw-hdmi-qp.c and rockchip/dw_hdmi_qp-rockchip.c should be send
in two separate patchsets, so how rockchip DRM_BRIDGE_ATTACH_NO_CONNECTOR is a different story.

Neil

> 
> 
> 
> 
> 
>>
>> Neil
>>
>>>
>>> Cristian


