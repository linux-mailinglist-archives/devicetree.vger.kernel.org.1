Return-Path: <devicetree+bounces-70555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9A08D3A8F
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 17:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 021D8288048
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 15:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B4D217DE34;
	Wed, 29 May 2024 15:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tTwdGxAW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76F71C6A8
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 15:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716995937; cv=none; b=JmiwwNWLK8zvFNglYTrV9Dx1bgx/eWWF+xmyvLNLoQCysA9goMHbf7ibmg8jn6usVOmecOowLdvQoquUJq0+hnh3VDpoiNoXcO1E2UGHCs4HMNtOBEdqtlS8Zzmoqmkmd70BCzlBXZ2RUVe/dD1K+cu4LdihqlmtmsNW7yzCS1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716995937; c=relaxed/simple;
	bh=e0oscgyefSvmp5LZX6qbQxfiVgd8JKuZUaFHNvmv9mw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eKbTgjE5vPJSyn3YnOMrPTLY7Nu2H5+1YQHH/nI9E3FJgy2Ci63GuE9yyDuveSngfcX6yM0SRuWObPXbz2xGRP3xdRiDVXR0lG+IhfjSvOEuzRRBLRXwuej6Z0mUtjC7YVPEbxRnQrStw7P10aqDed3ErysaVIehQ8w8DXj5sm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tTwdGxAW; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42108739ed8so25837925e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716995934; x=1717600734; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :reply-to:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IYYsWZqRIFywdpugd83J7K7puOfjrjsQtYUdq85x9iI=;
        b=tTwdGxAWzX3frcnUJf3icdDYD8Tn6Sbr3LyFP8sE7uCre7WkHQhq4NV0Y7QzT0PsKJ
         MwHRtfXqHCZiDxUlehaHOK7UJCOMK2HoACg9xRWUNOZ4kdicc3cNxNc29wHxorcgOeIx
         WJqgjWx/Vqedv/+NQlCFFvCcjJzugUjch2Foha5aqCFYL/qJ3J/uurq2m4Fwhkb4+vRy
         Ec4PKCY8J3GKEYuZE4s6OBsTqFxd7G8bstbpLgVrTV7PLxtjhZTpJ+J0ulRdCv3erGAC
         BUJKiz0fTQHbj3H5Ai21jNDWwpa0H6khID5embPTDTVemD0eOc9cUZj8VV2YSK6xNlLd
         WYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716995934; x=1717600734;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :reply-to:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IYYsWZqRIFywdpugd83J7K7puOfjrjsQtYUdq85x9iI=;
        b=eWLspno1RB1qBAnP/GJstPeHbjoy4RVE0H0ubPhD6Wklpudi6VrMq5Uj61z/I967ST
         R/eKTCQgTqI09wCufJ9dTlKSPjLsae5LGUyLRJH/j+TQ8cpz75RoMDN4nTsqMlx0Ekim
         LlKS67O5wp7ZbVuPRufLDg2SlALOTLz1qOTFBKT4lq7DvAmZOQhfVkgvp8Mbxtp9bDvn
         28u3i6h9C7bf1l0/cWQM5q8CoYAA+06xvHGEPA3kbUz5Gr/Z/n+lwm43iRXJOkz89GAG
         u4w5EbIUdeDLifdgzSHWfqraEKporDCuSDGSj7ipcwR8Umo+DIzxzlKb0IIzlZehOVCI
         +m0Q==
X-Gm-Message-State: AOJu0Yy21p9DIiZNxXtVoq8wlGjDMv2uDEShRIJba8Ac/W1MOU5dMZ+p
	u9x+IIoXGbTXZz0/+PefBzw4dUVrUmkq5vkNg/zbnAWOLfAGXF6h9tFy3ybip6E=
X-Google-Smtp-Source: AGHT+IHZYBU3CT+ewtuE2SkVlzNMRxaAlF9G/Wsn/LpK+MHe4rDfcfTrvp2dWhic9Vqvi2ZF9YAjMA==
X-Received: by 2002:adf:e850:0:b0:357:3e5a:6c98 with SMTP id ffacd0b85a97d-3573e5a7b65mr9956014f8f.48.1716995933966;
        Wed, 29 May 2024 08:18:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8894:9a1b:5e81:c70? ([2a01:e0a:982:cbb0:8894:9a1b:5e81:c70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a090c20sm14968495f8f.62.2024.05.29.08.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 May 2024 08:18:53 -0700 (PDT)
Message-ID: <e0fc1eda-5342-44d1-8ccc-9d9a2be1af13@linaro.org>
Date: Wed, 29 May 2024 17:18:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] of: property: Fix device_node cleanup
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Shresth Prasad <shresthprasad7@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240529073246.537459-1-alexander.stein@ew.tq-group.com>
Content-Language: en-US, fr
Reply-To: neil.armstrong@linaro.org
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20240529073246.537459-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/05/2024 09:32, Alexander Stein wrote:
> '__free(device_node)' attached to remote will cause a double release:
>> OF: ERROR: of_node_release() detected bad of_node_put() on
>> /soc@0/bus@32c00000/dsi@32e60000
> 
> In case remote is to be returned it must not be cleaned up by a call
> to of_node_put. The caller has to do that as the documentation mentions.
> Partly revert commit b94d24c08ee1a ("of: property: Remove calls to
> of_node_put") to fix it.
> 
> Fixes: b94d24c08ee1 ("of: property: Remove calls to of_node_put")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> I get the following trace starting with next-20240529:
> 
> OF: ERROR: of_node_release() detected bad of_node_put() on /soc@0/bus@32c00000/dsi@32e60000
> CPU: 0 PID: 11 Comm: kworker/u16:0 Not tainted 6.10.0-rc1-next-20240529+ #2511 610eecbb638fc5fab9a27e01b78203e8a379a280
> Hardware name: TQ-Systems i.MX8MPlus TQMa8MPxL on MBa8MPxL (DT)
> Workqueue: events_unbound deferred_probe_work_func
> Call trace:
>   dump_backtrace+0x90/0x10c
>   show_stack+0x14/0x1c
>   dump_stack_lvl+0x6c/0x80
>   dump_stack+0x14/0x1c
>   of_node_release+0x11c/0x188
>   kobject_cleanup+0x48/0x17c
>   kobject_put+0x78/0xc0
>   of_node_put+0x14/0x20
>   drm_of_find_panel_or_bridge+0x84/0xd4
>   devm_drm_of_get_bridge+0x3c/0x8c
>   lcdif_attach_bridge+0x88/0x270
>   lcdif_load+0x144/0x28c
>   lcdif_probe+0x34/0xcc
>   platform_probe+0x64/0xe8
>   really_probe+0xc8/0x3ac
>   __driver_probe_device+0x84/0x188
>   driver_probe_device+0x38/0x150
>   __device_attach_driver+0xcc/0x194
>   bus_for_each_drv+0x80/0xdc
>   __device_attach+0x9c/0x1d0
>   device_initial_probe+0x10/0x18
>   bus_probe_device+0xa4/0xa8
>   deferred_probe_work_func+0x9c/0xe8
>   process_one_work+0x154/0x3fc
>   worker_thread+0x2f4/0x404
>   kthread+0xf4/0x100
>   ret_from_fork+0x10/0x20
> OF: ERROR: next of_node_put() on this node will result in a kobject warning 'refcount_t: underflow; use-after-free.'
> ------------[ cut here ]------------
> refcount_t: addition on 0; use-after-free.
> WARNING: CPU: 0 PID: 11 at lib/refcount.c:25 refcount_warn_saturate+0x150/0x214
> Modules linked in:
> CPU: 0 PID: 11 Comm: kworker/u16:0 Not tainted 6.10.0-rc1-next-20240529+ #2511 610eecbb638fc5fab9a27e01b78203e8a379a280
> Hardware name: TQ-Systems i.MX8MPlus TQMa8MPxL on MBa8MPxL (DT)
> [...]
> 
>   drivers/of/property.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 83536216ed4fe..e5c6301643e4c 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -836,9 +836,7 @@ struct device_node *of_graph_get_remote_node(const struct device_node *node,
>   {
>   	struct device_node *endpoint_node __free(device_node) =
>   			    of_graph_get_endpoint_by_regs(node, port, endpoint);
> -
> -	struct device_node *remote __free(device_node) =
> -			    of_graph_get_remote_port_parent(endpoint_node);
> +	struct device_node *remote;
>   
>   	if (!endpoint_node) {
>   		pr_debug("no valid endpoint (%d, %d) for node %pOF\n",
> @@ -846,6 +844,7 @@ struct device_node *of_graph_get_remote_node(const struct device_node *node,
>   		return NULL;
>   	}
>   
> +	remote = of_graph_get_remote_port_parent(endpoint_node);
>   	if (!remote) {
>   		pr_debug("no valid remote node\n");
>   		return NULL;
> @@ -853,6 +852,7 @@ struct device_node *of_graph_get_remote_node(const struct device_node *node,
>   
>   	if (!of_device_is_available(remote)) {
>   		pr_debug("not available for remote node\n");
> +		of_node_put(remote);
>   		return NULL;
>   	}
>   

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD

