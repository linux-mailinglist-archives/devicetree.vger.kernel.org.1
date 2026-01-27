Return-Path: <devicetree+bounces-259755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKlCK01veGmjpwEAu9opvQ
	(envelope-from <devicetree+bounces-259755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:54:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5821F90DBE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:54:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 428DC3010615
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F63932D0FE;
	Tue, 27 Jan 2026 07:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qBkNyNI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B20732C945
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769500475; cv=none; b=qSuKpo9DS/e+H+PYUDWEuMuwjqCrmriBrPp9SKzlA3AywkOwlzVJwxZcCy8g3mGMYmIZB+hsl1DWJNkRF960Xj9Ahp1GSY4/c7hraquK2dtADYrtUvsrqq03/rIxJSzGIq9HBXoRINJG+WKCxTiak56c1Ei3hXU/cMu4Si2zjVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769500475; c=relaxed/simple;
	bh=x02G9I5G5FI4Stbx+0yop7O4JlcUUn8AQvXMHpX5C4I=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=WTLRLKDUzIEFfBx2eCf2JjUPDnLajm1najR9QskGQrGCXERHupzs0KVdVClUQkElZK3YOBMFpUGAnWcXiHwTkW26HlR2NcS8NaJXlUXtPtdmATa7giUTFWWIef4JF6VXKOCnPkCMSC/vJxoesvuHvcJsYzsjb5+gV2Usja4O4P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qBkNyNI8; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so60864375e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769500471; x=1770105271; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/VxnSF8krGk0nRSnDEyD6IFePycjSGM7bgvmgAJYHs=;
        b=qBkNyNI8TlmJM5gNJHCvaL3kvT+YUbN/DkP8ntJszuh9LSEvsRiqZQAqGnIEQa6cCF
         AxmLdqTZqhXS20Ocb3TZB26/VuYs9k7/p31fnhPb463ZilDY9/yoFbPrgsKCSN6LRctb
         v6bfmgPH4ukhfRZJN3+9MgcldHz4S5xR09zrVy9vH8ui2ryKmYceTU6lhlbGU22wczHf
         lHo7J+d/oFuCRMbNqPFGg7FsTJNbTtr4hORNcgQGZMLINZjxokf6wTFtlel2fb2YRhUq
         xthnb7fC2azu+qk+tSJsmg5vA6p8o1VX5esf6GIMtJ9URyGuYfmUuJT7ehjqLBjVePT+
         zS9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769500471; x=1770105271;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o/VxnSF8krGk0nRSnDEyD6IFePycjSGM7bgvmgAJYHs=;
        b=RG7lS9qqiTUTO0Dk8PAyFu35dhbphfHPnjHLpHp1yu2xvGSFImR3ofw+X4pxaQzExG
         FxW3kd4DAfQdncsdFPincIc7VtkL+xWgh555QAv1SAtIAkvP5OaGYwA7c4sABHfU9XnJ
         vVZyPr01N0mwnhxcpgaPBtQlHO4XHUEG4IXftIv+ajTavd+7oliQuT296Q7Zc7vDbMoN
         u6UsJjbGeZLLnJxRJRLQRWHgUiQhdI4YLMQU/kjjbkcCgJVYJVb3MRb/vN+WHszRxLfg
         n9stKGAFeMTV062nDpaY3HDt2tn8NwbGhOhC4AOuLXkQiKbPYPKVL/Gq5ZvYUim1rhLR
         wCHg==
X-Forwarded-Encrypted: i=1; AJvYcCVyjTC/OmKb20ISyRn/IFw0XbZ5sxZSWV0vuSzjheFPDG5VY4tP0ZS7gN4fWU6RG+ZM3jMMp7RnBnSH@vger.kernel.org
X-Gm-Message-State: AOJu0YxnY4vZVMw6TjyDXTYjDUqeSO2vZytKK68EKqWlf+P/XG8edrYf
	d0BM0PV0xoCrJa412VXKkl5iCtGwQoSZfCiBY2zTtYQmA1AUZybKUAra22bxideyIUA=
X-Gm-Gg: AZuq6aJd9k1zaz5Rx7kxSPkPSQXZmvMn1boYb6wtK9p4FamwvwKenGms9S8xs06pJVh
	YC0OnGMk5DbFRlfDdEbBQhkUGdkp2PZAl9ICbhoJJjPv5l5MH0eQahQlMFd/J/peVj/XmD7cuxv
	ZQg10QHwj/bwCmDDkmVyhe9w16UJK++UTGoJBbujfY9zbkY7dhDrIBnf/Ag+YEJKE7J36c6pdaH
	FVHntYbYn84+JrlaxYwcG4huhBE+fGT4pSA61d/Q+gkwPMoIChWLGDLwWTnwtqsq4eRBvPMq4Tv
	8GqjVq8NZP9IDQZhuu1ssMRXmxOFFP/Aw9t5zh/gC1hUbOe6W9+WiGe1HYze6iT/a/3ces2UkY8
	AAiZrlQQSWudKQYc4GlBLifsGojRnHwz3FKM0K+J8kDkFnibXK3JMamGtSHyw+wabexikYifvEg
	0NGRhdFUdss9l/YPrjopQ9bzkFWu7mOP/DdtE/dnxlS6u+QCFs1nMVvlVmbLMAflkf3q4B+nkdu
	g==
X-Received: by 2002:a05:6000:4028:b0:435:add0:3d76 with SMTP id ffacd0b85a97d-435dd1cb92cmr1128900f8f.56.1769500471311;
        Mon, 26 Jan 2026 23:54:31 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:53a6:bd3c:8e65:509d? ([2a01:e0a:3d9:2080:53a6:bd3c:8e65:509d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e715bfsm38117952f8f.22.2026.01.26.23.54.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 23:54:30 -0800 (PST)
Message-ID: <7d9041a3-9d2b-469a-9fa7-89d53bbd2a1f@linaro.org>
Date: Tue, 27 Jan 2026 08:54:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: display: lt9611: Add dsi-port-b property
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Roger Shimizu <rosh@debian.org>
References: <20260127-rubikpi-next-20260116-v1-0-0286c75150c5@thundersoft.com>
 <20260127-rubikpi-next-20260116-v1-1-0286c75150c5@thundersoft.com>
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
In-Reply-To: <20260127-rubikpi-next-20260116-v1-1-0286c75150c5@thundersoft.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259755-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[thundersoft.com,intel.com,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,linaro.org:replyto,linaro.org:dkim,linaro.org:mid];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 5821F90DBE
X-Rspamd-Action: no action

On 1/27/26 07:58, Hongyang Zhao wrote:
> Document the lontium,dsi-port-b property for selecting DSI Port B as
> the input source instead of the default Port A.
> 
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> Reviewed-by: Roger Shimizu <rosh@debian.org>
> ---
>   .../devicetree/bindings/display/bridge/lontium,lt9611.yaml          | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
> index 655db8cfdc25..9b7dba4e114c 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
> @@ -37,6 +37,12 @@ properties:
>     vcc-supply:
>       description: Regulator for 3.3V IO power.
>   
> +  lontium,dsi-port-b:
> +    type: boolean
> +    description:
> +      Use DSI Port B as the input source instead of Port A or Port A + B.
> +      Required when the DSI is physically connected to Port B.

This is not how this should be solved, the ports links are here for this exact purpose.

port@0 represents port A, port@1 represent port B, so you need to describe the HW correctly
in the first place.

Populate only port1 and in the driver check which ports are population and change the
configuration.

Neil

> +
>     ports:
>       $ref: /schemas/graph.yaml#/properties/ports
>   
> 


