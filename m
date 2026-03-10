Return-Path: <devicetree+bounces-273532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKEiLPwnsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:17:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 329D5251AA6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CC0E32BAE25
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8BB3C062B;
	Tue, 10 Mar 2026 13:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J2y6R9l/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C166E3C060A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148131; cv=none; b=uWzK2kSxr/nHErE0G5aLQsj5dCLkyDvkKB3Ga1eqq9nGVaK9RUcdnzIRl58BKv03J/QhGh3YEpi4s42++2LIkpqA7pHUsS5F3IaTKgIXeRtia4nm0eLEP65IbsL97AZvRoS3jMxpzoAhvSlA9kRhnlc8KMpcXFSrJMCrboPgiKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148131; c=relaxed/simple;
	bh=rvB11H6RMQeais6nkVdvS8yMsyVqI53mLo3GtCuFQkc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=FKiQWBawy+CrFoEZAPhA3dW1bH3ukgQ5FUoIEk5r0S26CxOwRJdhAL4hHpNwVxKLXOlIKzvetzY0p02SI2MWPIwStAJcEFHEGdDR33S5o8Mkq3+wbnbMZm+zPq8tQU3ZYbcHGKHruC62YRqgrB9CJ2+6bd9JlYlJ/30jrNNp6QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J2y6R9l/; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48540355459so15451825e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773148128; x=1773752928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2TRBpSzG7oKf4unFVV/7GqP3xJjjnnjPULashk6tmNc=;
        b=J2y6R9l/tTku+85TWCzzLOAocgWp/84jgMEkas+XwWLARIr5zMxw15rv5pgMryWyMV
         QdOC/QMPG14BwzaXizrbMGN1ZZPEvZ9fcSFWFthGo4ndkjzkkiOFss2zjPiOKS4Ry/HU
         IDbn7IVN9t/Es9ReOEoLVFQDJkjP2iO8MMmihoI7u/g6g+oLBRFWnBt1okdeHWQbnSJt
         Cf4I2wxIAedyLcLxI8NW3Fht64NvjnIFAh1Vz/DMWRvfJe2emBZnZ5gSJyuXU7VRltqE
         zJ3XuxV0akVjpOHnnxZ2C8BDrNtPbGz3tDzh6UbkATSjwN53m72gdAkpGpHNgkmytKUM
         KJfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773148128; x=1773752928;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2TRBpSzG7oKf4unFVV/7GqP3xJjjnnjPULashk6tmNc=;
        b=GF9ASiEV7E2BtTVdXXCwWlM2iJsWt6mCFnSqBj4cH0LrLmHvtBhoZOhXzyMo6ydxym
         txbhPBky8cHYhSYyXt2zbWR1nbv9MtkWi5Ro3cokyJsyOS6PwGt/5Qafh6ORPS00lyLE
         DaLHtBMfI7A2g1HN1C2j+y9HJS7nnYQ0+cvIkBaZFwvFESW0UI1ljnz24Ad/LZfP5pK8
         640S4HmctapLchfLMWCqA0JzfCEDXQDChBGZgb/HdLucRa3cFINj0BMuM+E/AAo6qdAt
         3gflQV0ltjEyoOT2R/UiHr7pbq8QbjCx4rAcxV+7PPtkuXrFO1/qg/Qg60DeK7dWlMZw
         rTCg==
X-Forwarded-Encrypted: i=1; AJvYcCXLOlYclWUiPbKvMjF2zrawjLK2XHi+NXSMwz6kWjJ56r93y0t7yNVra9pi3W5uIWioVu+eoDy+rRlk@vger.kernel.org
X-Gm-Message-State: AOJu0YwetM8ZKzc8ecoV8MdrMCuqmse//gjL4CAYuMKcBXJn9eDaD89U
	Y44wcGF6Ri5ZM+4d9DMBvr+CMSnhwBrLCzN1Hshtwi9FNjDJicy5WJKMhoy79RnNi7s=
X-Gm-Gg: ATEYQzxvLMoPYMRZkDyxzRi/r9Ap56Ij6GpbsAd43ePQqz6D4jA04RZi1n46QAxmKIU
	+f3jE6LrAbNV/4wZ/dR39zj/ywGLXVUsQs3eD8UMz4ECRoAflTJ9yUxnaYrxb9f3zMLHp0jEDKB
	EyFY4YTZcfqrbshsXG0qHYXwCAuW4y8kAklNUk2C78UnByymZIeUh879u6NxraKvjiMGSn0A8H0
	ZBCyNB1EYp8K3CG20uywJ/L6I+GtD/JZ2GcbWOOf1dzBVG7yN+3er7kP0je1luMk9RO4NAikg14
	/ZTEsbV1XqZMd5JbSHF5jqxOv9qXO1vBfl//768pevkDfrLb/m8Uo1dvtqc3cd7gUv49zy5yiAS
	+94XsDiXQC91rPJ+w0ecKHs2j9wD9WBrXL1COu4LzV3DZEUaNKEtLwTpn1ykONBMx4MLAproCyL
	d+YE45jnnKXEaGyX5mwa7NMy7cS8hgkyMYZ1GBUkOszspywC3Qc5yKLJtUOgyB6zjQJIC6BqwDd
	hqU
X-Received: by 2002:a05:600c:e40b:b0:485:3f1c:d887 with SMTP id 5b1f17b1804b1-4853f1cd968mr77411645e9.26.1773148128029;
        Tue, 10 Mar 2026 06:08:48 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:4d81:e92:c4c0:3c45? ([2a01:e0a:106d:1080:4d81:e92:c4c0:3c45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b8d4easm78639805e9.15.2026.03.10.06.08.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:08:47 -0700 (PDT)
Message-ID: <c3e57d35-06e6-4865-b206-90f2579ce70c@linaro.org>
Date: Tue, 10 Mar 2026 14:08:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/5] dt-bindings: display: panel: Align style of "true"
 properties
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Artur Weber <aweber.kernel@gmail.com>, Jessica Zhang
 <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dzmitry Sankouski
 <dsankouski@gmail.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20260306-dt-bindings-display-panel-clean-v1-0-3086eda1efaf@oss.qualcomm.com>
 <20260306-dt-bindings-display-panel-clean-v1-5-3086eda1efaf@oss.qualcomm.com>
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
In-Reply-To: <20260306-dt-bindings-display-panel-clean-v1-5-3086eda1efaf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 329D5251AA6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273532-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,ideasonboard.com];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:replyto];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/6/26 13:02, Krzysztof Kozlowski wrote:
> For code readability, several bindings which list allowed properties
> with ": true" syntax group them in one place, without line breaks
> between each.  Align a few bindings to match this style.  No functional
> impact.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>   .../devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml | 1 -
>   Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml  | 3 ---
>   .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml      | 2 --
>   .../devicetree/bindings/display/panel/leadtek,ltk050h3146w.yaml    | 1 +
>   .../devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml    | 1 +
>   .../devicetree/bindings/display/panel/mantix,mlaf057we51-x.yaml    | 5 ++---
>   .../devicetree/bindings/display/panel/novatek,nt35510.yaml         | 3 ++-
>   .../devicetree/bindings/display/panel/renesas,r61307.yaml          | 3 +--
>   .../devicetree/bindings/display/panel/renesas,r69328.yaml          | 1 -
>   .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml    | 5 ++---
>   .../bindings/display/panel/sony,tulip-truly-nt35521.yaml           | 2 --
>   .../devicetree/bindings/display/panel/startek,kd070fhfid015.yaml   | 7 ++-----
>   12 files changed, 11 insertions(+), 23 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
> index 92df69e80a82..f288fa2390c9 100644
> --- a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
> @@ -28,7 +28,6 @@ properties:
>   
>     port: true
>     reset-gpios: true
> -
>     backlight: true
>   
>   required:
> diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
> index 182a2b825e1c..84e840e0224f 100644
> --- a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
> @@ -33,11 +33,8 @@ properties:
>       maxItems: 1
>   
>     reset-gpios: true
> -
>     backlight: true
> -
>     rotation: true
> -
>     port: true
>   
>     vcc-supply:
> diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> index 5802fb3c9ffe..2fa07ec55b08 100644
> --- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> @@ -35,9 +35,7 @@ properties:
>       description: supply regulator for VCCIO, usually 1.8V
>   
>     reset-gpios: true
> -
>     backlight: true
> -
>     port: true
>   
>   required:
> diff --git a/Documentation/devicetree/bindings/display/panel/leadtek,ltk050h3146w.yaml b/Documentation/devicetree/bindings/display/panel/leadtek,ltk050h3146w.yaml
> index 5fcea62fd58f..2f49a6bbf3d7 100644
> --- a/Documentation/devicetree/bindings/display/panel/leadtek,ltk050h3146w.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/leadtek,ltk050h3146w.yaml
> @@ -25,6 +25,7 @@ properties:
>     backlight: true
>     port: true
>     reset-gpios: true
> +
>     iovcc-supply:
>       description: regulator that supplies the iovcc voltage
>     vci-supply:
> diff --git a/Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml b/Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml
> index b0e2c82232d3..3f56047f4469 100644
> --- a/Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml
> @@ -24,6 +24,7 @@ properties:
>     backlight: true
>     port: true
>     reset-gpios: true
> +
>     iovcc-supply:
>       description: regulator that supplies the iovcc voltage
>     vcc-supply:
> diff --git a/Documentation/devicetree/bindings/display/panel/mantix,mlaf057we51-x.yaml b/Documentation/devicetree/bindings/display/panel/mantix,mlaf057we51-x.yaml
> index 74ff772973d6..b8b153a6e6cc 100644
> --- a/Documentation/devicetree/bindings/display/panel/mantix,mlaf057we51-x.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/mantix,mlaf057we51-x.yaml
> @@ -22,7 +22,6 @@ properties:
>         - mantix,mlaf057we51-x
>         - ys,ys57pss36bh5gq
>   
> -  port: true
>     reg:
>       maxItems: 1
>       description: DSI virtual channel
> @@ -36,13 +35,13 @@ properties:
>     vddi-supply:
>       description: 1.8V I/O voltage supply
>   
> -  reset-gpios: true
> -
>     mantix,tp-rstn-gpios:
>       maxItems: 1
>       description: second reset line that triggers DSI config load
>   
>     backlight: true
> +  port: true
> +  reset-gpios: true
>   
>   required:
>     - compatible
> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
> index b39fd0c5a48a..43d134daf0ac 100644
> --- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
> @@ -28,13 +28,14 @@ properties:
>     reg:
>       maxItems: 1
>   
> -  reset-gpios: true
>     vdd-supply:
>       description: regulator that supplies the vdd voltage
>     vddi-supply:
>       description: regulator that supplies the vddi voltage
> +
>     backlight: true
>     port: true
> +  reset-gpios: true
>   
>   required:
>     - compatible
> diff --git a/Documentation/devicetree/bindings/display/panel/renesas,r61307.yaml b/Documentation/devicetree/bindings/display/panel/renesas,r61307.yaml
> index 90cce221c0d1..3d7761717b74 100644
> --- a/Documentation/devicetree/bindings/display/panel/renesas,r61307.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/renesas,r61307.yaml
> @@ -33,8 +33,6 @@ properties:
>     iovcc-supply:
>       description: Regulator for 1.8V IO power supply.
>   
> -  backlight: true
> -
>     renesas,gamma:
>       $ref: /schemas/types.yaml#/definitions/uint32
>       description:
> @@ -51,6 +49,7 @@ properties:
>       type: boolean
>       description: digital contrast adjustment
>   
> +  backlight: true
>     reset-gpios: true
>     port: true
>   
> diff --git a/Documentation/devicetree/bindings/display/panel/renesas,r69328.yaml b/Documentation/devicetree/bindings/display/panel/renesas,r69328.yaml
> index 1cd219b510ee..740185f778a1 100644
> --- a/Documentation/devicetree/bindings/display/panel/renesas,r69328.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/renesas,r69328.yaml
> @@ -33,7 +33,6 @@ properties:
>       description: Regulator for 1.8V IO power supply.
>   
>     backlight: true
> -
>     reset-gpios: true
>     port: true
>   
> diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> index 4ae152cc55e0..ebfc825b8346 100644
> --- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> @@ -33,7 +33,6 @@ properties:
>         # Xingbangda XBD599 5.99" 720x1440 TFT LCD panel
>         - xingbangda,xbd599
>   
> -  port: true
>     reg:
>       maxItems: 1
>       description: DSI virtual channel
> @@ -44,9 +43,9 @@ properties:
>     iovcc-supply:
>       description: I/O voltage supply
>   
> -  reset-gpios: true
> -
>     backlight: true
> +  port: true
> +  reset-gpios: true
>     rotation: true
>   
>   required:
> diff --git a/Documentation/devicetree/bindings/display/panel/sony,tulip-truly-nt35521.yaml b/Documentation/devicetree/bindings/display/panel/sony,tulip-truly-nt35521.yaml
> index a58a31349757..85c5dee65383 100644
> --- a/Documentation/devicetree/bindings/display/panel/sony,tulip-truly-nt35521.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/sony,tulip-truly-nt35521.yaml
> @@ -31,9 +31,7 @@ properties:
>       description: Negative 5V supply
>   
>     reset-gpios: true
> -
>     enable-gpios: true
> -
>     port: true
>   
>   required:
> diff --git a/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml b/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml
> index 0819f38a9d2c..7fd9364fa385 100644
> --- a/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml
> @@ -16,8 +16,6 @@ properties:
>     compatible:
>       const: startek,kd070fhfid015
>   
> -  enable-gpios: true
> -
>     iovcc-supply:
>       description: Reference to the regulator powering the panel IO pins.
>   
> @@ -25,11 +23,10 @@ properties:
>       maxItems: 1
>       description: DSI virtual channel
>   
> -  reset-gpios: true
> -
> +  enable-gpios: true
>     port: true
> -
>     power-supply: true
> +  reset-gpios: true
>   
>   required:
>     - compatible
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

