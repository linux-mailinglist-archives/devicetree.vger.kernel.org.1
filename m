Return-Path: <devicetree+bounces-271161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8M2uM2RgqGmduAAAu9opvQ
	(envelope-from <devicetree+bounces-271161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:40:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 428142047B7
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:40:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 910AD306BE31
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F1D3659FF;
	Wed,  4 Mar 2026 16:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jHDgtEis"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781B5361DA5
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772641543; cv=none; b=hZCyv6zqVCfCWmjr9deCVkwhssyMJlrK4c6LavO4iHcZvJHayJB3UoTfZFruGtRG8uOd51L/Pm38Q2BxGissuq05gI3PVlagTlJeW0Thvay9o2INAZL/mo29uwmWoXKj4kJMbkAP3oK+1Icp8aQNoqV0Asulw93kjT/xzftmMgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772641543; c=relaxed/simple;
	bh=eIQPTjRrK4vWYIuEEJqe5c/zPEqXdmeM+Z6ldVCZXNA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=g9sKhyM01p9hEE63xBCfMxfxHuCClzVABQvF5SRpOUH7T4tVAerj6lM6IbHnnfoS70nJlSw/XP9LuSKetUjXRkbAxTyWRcT5YQnKJw8F+l1baVEAB2JF/W7m13RvGajapXYX7uMQUe3p/R8PfWQaQE8fUAIuO3BbHOb5C4owI8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jHDgtEis; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4834826e5a0so80346815e9.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772641540; x=1773246340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Gp7LS/GMjpgQsWMfi+qSIWrnrcb+aaUnysqcUKFRag=;
        b=jHDgtEiszhsrbXbUAoOEmMs9hWiJpxpsQuv7jjm8Ml1aCWXeG9XXaxN8P12AMvpYa1
         xlSpQXumFshqwKrPCqxWlINeRDGuQywqhm/AD1Sp2NsUS7aNnCP1pBVR1uL90nh9uYbK
         1wI0y6vEqWhAQCwDGpKx8orPFu43r+p1v2Trtl0aV/j8gynLHzfIfskGYqph6nGejBJD
         Y+QMng2Gv5+oOgoNgkFCLbooHgXByRDRJWdxALZ2zYV2ty9Lap40tEOMLwMHKMVb+ztJ
         P428DpK4VzKyXe69RcR9/M0hz1TDZMqeiH+gRoBq20fjD0VSmjDV3vpYuSLrJEASuZF3
         XHTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772641540; x=1773246340;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Gp7LS/GMjpgQsWMfi+qSIWrnrcb+aaUnysqcUKFRag=;
        b=sgOkoNK4HhAsFoXGxi9m3FakH/b2/vgatoFbFj+b2uzgkGXe+U3ZiccX3ch0QprTjs
         gRi62draY3eWKtypHYNt3YLCQVmFJvVzCazpTIL51dEkwwDbkXub0MldLl4LEbK3rL7S
         NNzAueLAQVi56gQzkXqmEyrJ4e6DySAs3Q9gefgETHm/TxZD09K0/X6ett8Tuet7LvWo
         U43lbVLUAXrptXOGILOGBgIMS7zoERsSW7fAWY9qakoy2WPIb68FEFsbEDANPjtpuP4B
         6kRM9nvl6jgHEAcYEYhyNAoomVQVmreS7ie+Lh3PLWt8Ceex44gY1zQF1MgVB1vF1+l8
         pP6g==
X-Forwarded-Encrypted: i=1; AJvYcCVdabg4aIc4cpyzNjNDIUT1fbJhB4uPzj1T2XrZtiMMlsL1zhZ3gcTSlRKmL3fJo0EJcmMybTXat4JE@vger.kernel.org
X-Gm-Message-State: AOJu0YyAAeIXHKX9tk5Plrj0LBH8w02SyPgDhA88FSzU94fhOaVCtrlp
	oMShORdFSPPAS+Ro3E4/5/TAyL8b5asM2vQ99QeGqOzUQqn8e6wWiGUIqNvAvLNZ+/0=
X-Gm-Gg: ATEYQzzkz+bKbbPUtq74iTTrL+eoHyN+7Ji2E1Zon7AObckTpd7tG0uLKSnX3lOqlVf
	+tbKT6ZLtxAcq1RzPcz7OkN+pmIbA66fmTOnIAIdXu7CxtppdEDoXKFxQt6KbeqkZxHthhFM1d4
	SP4pLs2/uHsmhQlbwcDH6sm2Fpsx4oCshyEfUYbHd0LkkducCVzxV4oBMtET/JYe+TR5KipYDB7
	vImCNCB2BRUUbGAIgWOK3YoQ3102eByc0Bo/FzBybRp6mD3d7DG2n56sVJ0dgwn2kfRRELfrh5V
	KX89+V4e5R3ULg9Zg23qlWZUWz7VmVt1zcVfxngOp4JHQXAazVVQbzB595o/am0PtBJfnbhOtiG
	oYRqWbFIWXLJZeGPhV9Lng/L4PsRWW3hO1JffJDRNgYJkDefQDV135RNJ2k6/ZoixkNkUw5Es/h
	vjDG+Cm+8A3+QaodXcVR3kBqpQD8oifqM9UexAAi3fBWtVuDLiIeUBN8Q0VM2BdscVR2vTgXzM2
	KDiJTEyBRwOXqY=
X-Received: by 2002:a05:600c:a0a:b0:477:7a53:f493 with SMTP id 5b1f17b1804b1-48519895542mr45844535e9.23.1772641539675;
        Wed, 04 Mar 2026 08:25:39 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:da6:dde3:e477:94d2? ([2a01:e0a:106d:1080:da6:dde3:e477:94d2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851884224fsm62339335e9.4.2026.03.04.08.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 08:25:39 -0800 (PST)
Message-ID: <eb361483-736e-44ff-bf55-8b833f083ce2@linaro.org>
Date: Wed, 4 Mar 2026 17:25:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] drm/panel: simple: Add Powertip PH800480T032-ZHC19
 panel
To: Florijan Plohl <florijan.plohl@norik.com>,
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, upstream@lists.phytec.de
References: <20260217123759.169317-1-florijan.plohl@norik.com>
 <20260217123759.169317-2-florijan.plohl@norik.com>
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
In-Reply-To: <20260217123759.169317-2-florijan.plohl@norik.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 428142047B7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271161-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[norik.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 2/17/26 13:37, Florijan Plohl wrote:
> Add support for the Powertip PH800480T032-ZHC19 7" (800x480) parallel
> LCD-TFT panel.
> 
> Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 30 ++++++++++++++++++++++++++++
>   1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 91ab280869ba..aa74f310d455 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -4068,6 +4068,33 @@ static const struct panel_desc powertip_ph800480t013_idf02  = {
>   	.connector_type = DRM_MODE_CONNECTOR_DPI,
>   };
>   
> +static const struct drm_display_mode powertip_ph800480t032_zhc19_mode = {
> +	.clock = 27200,
> +	.hdisplay = 800,
> +	.hsync_start = 800 + 52,
> +	.hsync_end = 800 + 52 + 2,
> +	.htotal = 800 + 52 + 2 + 44,
> +	.vdisplay = 480,
> +	.vsync_start = 480 + 7,
> +	.vsync_end = 480 + 7 + 2,
> +	.vtotal = 480 + 7 + 2 + 2,
> +};
> +
> +static const struct panel_desc powertip_ph800480t032_zhc19 = {
> +	.modes = &powertip_ph800480t032_zhc19_mode,
> +	.num_modes = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 152,
> +		.height = 91,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
> +		DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> +		DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
>   static const struct drm_display_mode primeview_pm070wl4_mode = {
>   	.clock = 32000,
>   	.hdisplay = 800,
> @@ -5481,6 +5508,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "powertip,ph800480t013-idf02",
>   		.data = &powertip_ph800480t013_idf02,
> +	}, {
> +		.compatible = "powertip,ph800480t032-zhc19",
> +		.data = &powertip_ph800480t032_zhc19,
>   	}, {
>   		.compatible = "primeview,pm070wl4",
>   		.data = &primeview_pm070wl4,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

