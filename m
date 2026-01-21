Return-Path: <devicetree+bounces-257841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNvRG5mmcGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:12:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA39E55016
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 980C386AE6F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5135C480DC6;
	Wed, 21 Jan 2026 09:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tckXVLWP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EB1480971
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768989073; cv=none; b=ofV1HNrM55Te0364yB8pvom5bZRZS32MqBaeugxn2i1dtX+CF6tBWwj5vo68M/kkGs7fo7Vp47x6WtFP0Etx+f5BZFDhwX+BiHxdehS4c1sCheF6UiGaS/u0W7tdZqXIpo+SG3HRc/y4IDyvBFmiBI8olk/MHSoGhMlwEjSbzhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768989073; c=relaxed/simple;
	bh=Vfy/7YC662hAM+GAFuZhIoPkRBd1dwGhvPNeakMPM7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R21r44an2iCEJNBN/ypJKeJxnTSsRkCqrtONJ9NNrhfH/RLP4tv2W0xNFeZNXEi4A7BTDNJbVkgB5r/8kJms/zcBJy+KIULJr37loBBRunhXQOtsfCnGjJP930aeMTUp5tJCfuhEZUIBprnR3Tckmo3AKKPkJfODVmTrgNOk9e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tckXVLWP; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47ee807a4c5so49376325e9.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 01:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768989069; x=1769593869; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oBJUElWuhwE3q3MLB3VE93xamoIHkqUdh2GNEp2nbps=;
        b=tckXVLWPH/IhaJ4KLEli5yjGoWx4t9bwOdX+o/nmfb+RxiopF7L/l8jHM2f3ysXION
         UgQmTDkzGfef7OlGfrUGrTsGCPuP/QGo1Trdv357gLtcuLbg9Ma2gAOESXH4gi6yb1gV
         82+GXl8j9ZOaUiG6lcP+/uFnIQBYYfu5RWANZ+gXZo/PuL/MzJB3QvAB8Wpl1bMd0wjt
         4aXryoqTQ+vj/6089KGzmm/fHkLxuu6VRMFGrtD6PY+zJAlRrKwrhriMDeyvzn8wryts
         R62o9sAwoROex54qc/7yQwLfI3J3oxlZ5WBqTev/o32YEddfAB24w6p3DIn0oU3ju05u
         aoVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768989069; x=1769593869;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oBJUElWuhwE3q3MLB3VE93xamoIHkqUdh2GNEp2nbps=;
        b=HFywOuN0YJOAYvTlr3m9HY08jLO/ikXwX1FRAyrSAv5mWwN76WHruUYzVK+Kcmafq0
         uxPLcEF6tavi97hj8/xNJ1FRUIjZjRtTqpGQBDFJ/4TQnyNzh+F55BsCdjcLDpD2EOYx
         4eH3hZD87GjNLuwD9SzOnP3Xpb/bwSXdsiZBvU3LGRqAioLBVYJTrP8mG5sh/c80k+2M
         vVlJpBQx1AnlqeDrlAJtQQuB2jBQw57lPo3gez0NUTqhJpYp23S+OhfauA86Z5+bxH6W
         /oV1EOGmI8/MJJAjEuDAGokDR1DV1eIu6wy6SuDFp5OqTp+4HCQI9V9S6TNNN029Dpn1
         kKjw==
X-Forwarded-Encrypted: i=1; AJvYcCVzMm1ORrq96ff/m1UbzlKy9uNfJ5SrIWLRdkRSOlzzv6VsNEHaz9re0iO+QkUoFI4qNtgC86UbQ/cU@vger.kernel.org
X-Gm-Message-State: AOJu0YyWsktQ1025a4qKr61I8eGFeRxDyaA37TQeaamAPswgB9JxN433
	jiMQiNJ3eExsOlY57fkfYlp7w2P75pGS5lV7ub0lxqWcV1K+cBzV8ZhJJuNz0Cz7c4s=
X-Gm-Gg: AZuq6aKs96rT3+TUTAY9OjKc+CP6j4PNGzxny1PjW7i5K8b+IW7eCA9OljErBCEo4gp
	4wZwNE/x2Hdw9qq+sMwJACXSNy8S2P6af724BACzOmiCo839/WPpvDSz5ZNMyuVRNs1hWUdm39f
	/8DklxQ3ORVeqttYy1IqZhn+Z5pQrfVjRXQynSTtSKCDJd164DAKnU7PF2NTcGikQtLvJwwdMFM
	HbzYxKsWuHD3h6CatzMkGEMVtCCrsUkkTjyTesOSyNm3tTT7LuRgZydRAalAYidjyB368uX9Tpd
	gT/DzTjbCl5sI8eTtrl63uqfVD0EFDu8YVqOm9BiVx93r+FvqX+AlnYMO1vRufQ9uiTWHvQj38F
	J4mfObpTVNBY4XpC0shFs9GwmLUKqCKy4EoDVCNm2zzoRYSsEL28np8oZfP0nQSMDqw7smhp7Vk
	RWC6JNiGL/I01SRaZm5be+IeECLPuFB5ARjWV425qFw18BNn55W6Br7pTjaoInqyNLWffVji8uQ
	A==
X-Received: by 2002:a05:600c:3581:b0:47d:3ffa:5f03 with SMTP id 5b1f17b1804b1-4801eb03348mr260126345e9.21.1768989069215;
        Wed, 21 Jan 2026 01:51:09 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:8ae8:f59d:ae95:f372? ([2a01:e0a:3d9:2080:8ae8:f59d:ae95:f372])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f429071besm352015945e9.10.2026.01.21.01.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 01:51:08 -0800 (PST)
Message-ID: <ddb69470-db7e-4ec0-afd4-4f1631e45baf@linaro.org>
Date: Wed, 21 Jan 2026 10:51:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/7] dt-bindings: vendor-prefixes: Add AlgolTek
To: Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260120234029.419825-2-val@packett.cool>
 <20260120234029.419825-4-val@packett.cool>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20260120234029.419825-4-val@packett.cool>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-257841-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,linaro.org:email,linaro.org:dkim,linaro.org:mid,linaro.org:replyto,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: DA39E55016
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/21/26 00:30, Val Packett wrote:
> AlgolTek is a Taiwanese chip manufacturer specialized in high-speed
> signal and power transmission and conversion.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 63730f75a578..f2bd32fbb717 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -86,6 +86,8 @@ patternProperties:
>       description: Aldec, Inc.
>     "^alfa-network,.*":
>       description: ALFA Network Inc.
> +  "^algoltek,.*":
> +    description: AlgolTek, Inc.
>     "^allegro,.*":
>       description: Allegro DVT
>     "^allegromicro,.*":

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

