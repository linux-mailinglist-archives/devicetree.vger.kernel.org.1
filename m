Return-Path: <devicetree+bounces-251807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3734ACF74E0
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 09:30:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86C5530EB65E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 08:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B0997080E;
	Tue,  6 Jan 2026 08:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tQMs0KIU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1C71D5CC6
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 08:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767687398; cv=none; b=V+7yoPk0cQnr7nJOezyOugQlonHx3iqYWImHUAQb8XD2jiSl/GuWDdwjI6Ar35Cn2kAYfRylyTXI07ZJRYjZSmRAy1Y0bSKJsjeQFnnuat75cM17BmBnnLB8RM7rXxPSi/nZwH5WIENtIpnqh0p5f9IPuD1+2W8glbfQ2u0egS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767687398; c=relaxed/simple;
	bh=xEMNXRt/Gk6Vv0aN050fJoyQWTQD6oL0bO/5UEIhLXI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ME0ljY9xk5bBOUmXTUaFUri0w7IT5GMkaMa4cSuf+oRWKdJDwRmEtdWz72BpFTJnMTSdWGV6sQQcgBCKY3GCQfoplaRpSHbphl0hsSQn2WYwphOBNZfGSZJngOP8HNJWtQQcr0yD3/4fo3ij4SshT54Xeem4az9gfFm5QfEH2mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tQMs0KIU; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47a8195e515so4736575e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 00:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767687394; x=1768292194; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4AKaw+nd+gT2mIZJK7ahgYo6tCiYKJOStvoi/mlUV2E=;
        b=tQMs0KIUXAf2vNVpYYiRphHUG7HmyildGmScESjXafAAgR7H+LR6roXNGjZIOTcD5C
         fCxod84kTIEHBt/yw0+MRCqT5zlluDPAwW6aKjMI4zPQm/Z8ZSpWLg8EuPWw5b4FrNoD
         Ls/A7pK+bPB6o8yK4R9bygbYR3AqYMbSkQKbhbtE3PeliD0ruU36yPI489PfTBW9lmEJ
         XMxqBosJ6tUEGPMXqJ2kyAiupJUT5rUBWWp2SiWPQwHFqTG5V4Pc0aViEpz6cx8np5uw
         O27zsKoWqD57queAaS5XXgU9XiT2tbi9HjVFkrtFP/8JnaXVAOxxM6y23i7Dkqx1drNb
         CG+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767687394; x=1768292194;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4AKaw+nd+gT2mIZJK7ahgYo6tCiYKJOStvoi/mlUV2E=;
        b=jLVPje2IvAlAVRKB/DbQ27IdRC4G+mxint4j5s5dezADamSGMdJl1AXBjxMIWUYq2i
         Z2HTMbXSi8dnHVjnNN/sofIWLDWB0p6DHMCW5bkY2J9d/MFUWAnS9Xe5yi+6LWDbBKO4
         iUD1AG6h+ZTfm9CmP+oEOReshOEtTsdUALSUdsC9+2xJnAFvc/zcKpKAVmj3WHWzkVUz
         pD4S1Ttvo0UvZpOKg+5D27St3jvDoUekZtnYhTJEcOAldeWki10txinpxNgztj+deAiO
         t2bHk9OGVnYXhgfv790JtcgPPHDUH/YZxk94GpCMNKuxegQnXoeaCqNaHdUIHJGdfWzr
         BOsA==
X-Forwarded-Encrypted: i=1; AJvYcCXcZuq1y4GOSFvms0TkT+mJ6Ai8UaqGlet2Iz2CxIUgQOZBsKkQ7ESVQzgRaB22/AESYmsAcpmb+vf0@vger.kernel.org
X-Gm-Message-State: AOJu0YyPRgnScZewej5ehelZhZgL2QNp6UHvVsqCpzwgL4oOUv+06mi1
	/4v+H2nSXbq3EbdGvKAN3sWD3YZJZfDvamiBQZZ5jk1h8duVniVgsPTgVfQ3J4p/Uxc=
X-Gm-Gg: AY/fxX4qFEg6CH6X7fDZyGOdZXdvXtKTHBTSAMjzwQ8bI5ZLARYGGLWEOhepU+0TeIy
	548cVSq7mFo8RB/NRNoXMtCd7Vho2pf6E5VpVLJkSUjzWCqa0/71WksNb3jgmJDC+DDJiyULs50
	msrfqj24gf14bOPBoSRQYDGmgogPAXrbbyaoeuwDPLDQKmzWWRMs9QHYt+bQ92h9QmD8pPgn+fm
	rpql7KM0clU4fW9ZQEfnCAMzlPjX4BxghA5SBYC/Pn3uOB7YxHP9dqr0QRY+OfhrQBvKZboFhpf
	NTSr4gWB/0X8hCxN4EGzVDIDPIpcOuBx9etSUn5s0yOj8G7KmfCiGpQuchrFEw9vuTIixgaqWhV
	fUYrkplFgFQ7kLacw4jfsTttsXkOFPQfaKxkX8MScDfrliB8hXKkS/jnQSmIbjuOA+HA9EFKklc
	lI68U428AG45wB95cgJLz/Zd1mL8yCzTsAoyCu1YJCVsTNIxQ0Dqcr2mvtxpedm1wxvtdvaGWXQ
	g==
X-Google-Smtp-Source: AGHT+IE3f13/LhwclvOmb9Uf+FihBvg9CEqaG02RP4E8A3rTQtaeNLXmdMGGRVptI2AUliXaHd5fTA==
X-Received: by 2002:a05:600c:848c:b0:477:8a2a:1244 with SMTP id 5b1f17b1804b1-47d7f075dbdmr21593075e9.11.1767687394351;
        Tue, 06 Jan 2026 00:16:34 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d283:7a7e:4c57:678d? ([2a01:e0a:3d9:2080:d283:7a7e:4c57:678d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7fb26c20sm12640885e9.7.2026.01.06.00.16.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 00:16:33 -0800 (PST)
Message-ID: <4d46750c-6c49-4fc6-9e4e-e5a479eae2aa@linaro.org>
Date: Tue, 6 Jan 2026 09:16:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: display: panel-simple: Allow "data-mapping"
 for "yes-optoelectronics,ytc700tlag-05-201c"
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260105193220.3166778-1-robh@kernel.org>
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
In-Reply-To: <20260105193220.3166778-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/5/26 20:32, Rob Herring (Arm) wrote:
> The "data-mapping" property is in use already with the
> "yes-optoelectronics,ytc700tlag-05-201c" panel, so allow it in the
> schema.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>   .../devicetree/bindings/display/panel/panel-simple.yaml       | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index fc244fbb5a54..e4a5b30ccfc9 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -349,7 +349,9 @@ if:
>       properties:
>         compatible:
>           contains:
> -          const: innolux,g101ice-l01
> +          enum:
> +            - innolux,g101ice-l01
> +            - yes-optoelectronics,ytc700tlag-05-201c
>   then:
>     properties:
>       data-mapping: false

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

