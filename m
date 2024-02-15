Return-Path: <devicetree+bounces-42198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A483F856CF7
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 19:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6F151C22F92
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 18:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CEE61369AC;
	Thu, 15 Feb 2024 18:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="giy5KVQ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4343E31A60
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 18:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708022591; cv=none; b=PWNJXoSfCvO/wTbAnaGi5DRLOUNbUKX9x7APtEfgh8lggJYwg82dkhlC7XU3u6zGo7PexuX81qOD0dt8xpUrMSyNxlM/FqEvgndYnfi98McnUI0EFEhlgj5idxF7CUrhi7r68ECnwK/Pa+fs1PDw6LmDmQv0V9xhZn6XKz3DBFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708022591; c=relaxed/simple;
	bh=LrfytrdcI3uDRmCh8SEsdoaTS7iK01S2BxyDBnqwUxU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HOr/DBPyCLqMS9Tv7WWTq9pUHJpur5IwO/3wghHxWE7Q1w0QwqNAA0eIq5lrAuJCSI25dHUIJ1Mw3NANyAb9DxznHexRrjA7R5c1l6XL2d2Sen9rtk4FMHfFvDtcGHRz+SxVXvVt5ZMRrXz6SOmKOp4RfNo7IGyTMyUOq5ymWXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=giy5KVQ5; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a26fa294e56so182148266b.0
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 10:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708022587; x=1708627387; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Alx6wczby0AjkESEOAXIll2iVLhyJiprckVpaPg+H/I=;
        b=giy5KVQ5O7uFVz2I/zluuK3rok4RVH8Gsj0FP6lC/18fuFDTFXidDao9TGGPIR+VS4
         m55Cp/766rxeJyo17xYZsn4hha/OaOpSuZXKVNsvEwhx5pdRskY1IW3+5hMnenlJJTIo
         mpm9HHSKwnYfvBRm+x4bRJBgM1Xn0mL43y5J7Q5zbQxq/C8N6IxgZD68PG182KRXgU0f
         F75UdLEDYuQ+rnkreJhQ5QHH25jvSrtvtbrJWCDWJW46c0F4g4LkY+n60VzNxEQqU3ty
         zfswgh1+9YdL3mwmkkha6NgZL64hwlWR8qiyLWA5oc3HcaHgbN7SFfzWEKYaIPPcjVuZ
         GPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708022587; x=1708627387;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Alx6wczby0AjkESEOAXIll2iVLhyJiprckVpaPg+H/I=;
        b=ISfg6s20ZH2PYPTuq3VNbOjeWYm7W/mFg+ewNqc2iIx9LilUIRjAYXf9blJkeOGCwQ
         okGSNfX6G5eckHcDIISDC0GFcU4aZ7PD7dHDTmmP6nLlW7/UBVSNL2wAcNS63+LqucKT
         JGkf6p//r0G1Y9kU4hDr1U6mUlZw6nz1Uw3KBcFt88F7t8jWE0IeT4gPRcxtazEDQEAD
         ZajH2wHI8JNkhDdgsh+ruE8TnBSBQHa4kv6G6/rCD3bmXZ7IsQ/rwYF4xUG6HwNU2tzU
         aV4tGA6Vtx95SnsLzSk1xWBXP99A6uR9tVKcbmejDX2DUKE1IVnAV5ouuDUVZUM7Ohzx
         D5UQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjSndQfGAFFgsBK7cpXmnn3x2hIv3r/EbcNEJ0KdHuBuoQVN8Es8BILRBFlg8DUmsFLvNxsdx3rARDrjbzgHr6nfCTJG1q2bH7zA==
X-Gm-Message-State: AOJu0YybFEfFFDOGpPV3o4pQQF/cUGVoxgqYhCYMHM+AUmT4eGghuubo
	3tRmsnmp4ILAKeqU14kO06NEtr8ELpvGujIADc/vXRK3KvRjhEeMZ94jqDgLdeg=
X-Google-Smtp-Source: AGHT+IGVZjdccXfTX2A3VI3cuEbDiJBLpfD6pRl2tDglqQ0zODs8/PJlbRe8lNIQN7tkfLEmvnxTaw==
X-Received: by 2002:a17:906:5f89:b0:a3c:91aa:6a6d with SMTP id a9-20020a1709065f8900b00a3c91aa6a6dmr1752347eju.25.1708022587529;
        Thu, 15 Feb 2024 10:43:07 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id ps7-20020a170906bf4700b00a3d12d84cffsm805119ejb.167.2024.02.15.10.43.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 10:43:07 -0800 (PST)
Message-ID: <61a6b5a8-7dbf-4b37-9f6e-1bd85dc5f7b5@linaro.org>
Date: Thu, 15 Feb 2024 19:43:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/10] dt-bindings: display: bridge: tc358775: Add
 support for tc358765
Content-Language: en-US
To: Tony Lindgren <tony@atomide.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Simha BN <simhavcs@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Michael Walle <mwalle@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
References: <20240215123222.42609-1-tony@atomide.com>
 <20240215123222.42609-4-tony@atomide.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTRLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+FiEE
 m9B+DgxR+NWWd7dUG5NDfTtBYpsFAmI+BxMCGwMFCRRfreEFCwkIBwIGFQoJCAsCBBYCAwEC
 HgECF4AACgkQG5NDfTtBYptgbhAAjAGunRoOTduBeC7V6GGOQMYIT5n3OuDSzG1oZyM4kyvO
 XeodvvYv49/ng473E8ZFhXfrre+c1olbr1A8pnz9vKVQs9JGVa6wwr/6ddH7/yvcaCQnHRPK
 mnXyP2BViBlyDWQ71UC3N12YCoHE2cVmfrn4JeyK/gHCvcW3hUW4i5rMd5M5WZAeiJj3rvYh
 v8WMKDJOtZFXxwaYGbvFJNDdvdTHc2x2fGaWwmXMJn2xs1ZyFAeHQvrp49mS6PBQZzcx0XL5
 cU9ZjhzOZDn6Apv45/C/lUJvPc3lo/pr5cmlOvPq1AsP6/xRXsEFX/SdvdxJ8w9KtGaxdJuf
 rpzLQ8Ht+H0lY2On1duYhmro8WglOypHy+TusYrDEry2qDNlc/bApQKtd9uqyDZ+rx8bGxyY
 qBP6bvsQx5YACI4p8R0J43tSqWwJTP/R5oPRQW2O1Ye1DEcdeyzZfifrQz58aoZrVQq+innR
 aDwu8qDB5UgmMQ7cjDSeAQABdghq7pqrA4P8lkA7qTG+aw8Z21OoAyZdUNm8NWJoQy8m4nUP
 gmeeQPRc0vjp5JkYPgTqwf08cluqO6vQuYL2YmwVBIbO7cE7LNGkPDA3RYMu+zPY9UUi/ln5
 dcKuEStFZ5eqVyqVoZ9eu3RTCGIXAHe1NcfcMT9HT0DPp3+ieTxFx6RjY3kYTGLOwU0EVUNc
 NAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDyfv4dEKuCqeh0
 hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOGmLPRIBkXHqJY
 oHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6H79LIsiYqf92
 H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4argt4e+jum3Nwt
 yupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8nO2N5OsFJOcd
 5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFFknCmLpowhct9
 5ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz7fMkcaZU+ok/
 +HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgNyxBZepj41oVq
 FPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMip+12jgw4mGjy
 5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYCGwwWIQSb0H4O
 DFH41ZZ3t1Qbk0N9O0FimwUCYDzvagUJFF+UtgAKCRAbk0N9O0Fim9JzD/0auoGtUu4mgnna
 oEEpQEOjgT7l9TVuO3Qa/SeH+E0m55y5Fjpp6ZToc481za3xAcxK/BtIX5Wn1mQ6+szfrJQ6
 59y2io437BeuWIRjQniSxHz1kgtFECiV30yHRgOoQlzUea7FgsnuWdstgfWi6LxstswEzxLZ
 Sj1EqpXYZE4uLjh6dW292sO+j4LEqPYr53hyV4I2LPmptPE9Rb9yCTAbSUlzgjiyyjuXhcwM
 qf3lzsm02y7Ooq+ERVKiJzlvLd9tSe4jRx6Z6LMXhB21fa5DGs/tHAcUF35hSJrvMJzPT/+u
 /oVmYDFZkbLlqs2XpWaVCo2jv8+iHxZZ9FL7F6AHFzqEFdqGnJQqmEApiRqH6b4jRBOgJ+cY
 qc+rJggwMQcJL9F+oDm3wX47nr6jIsEB5ZftdybIzpMZ5V9v45lUwmdnMrSzZVgC4jRGXzsU
 EViBQt2CopXtHtYfPAO5nAkIvKSNp3jmGxZw4aTc5xoAZBLo0OV+Ezo71pg3AYvq0a3/oGRG
 KQ06ztUMRrj8eVtpImjsWCd0bDWRaaR4vqhCHvAG9iWXZu4qh3ipie2Y0oSJygcZT7H3UZxq
 fyYKiqEmRuqsvv6dcbblD8ZLkz1EVZL6djImH5zc5x8qpVxlA0A0i23v5QvN00m6G9NFF0Le
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240215123222.42609-4-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/02/2024 13:31, Tony Lindgren wrote:
> The tc358765 is similar to tc358775. The tc358765 just an earlier version
> of the hardware, and it's pin and register compatible with tc358775 for
> most part.
> 
> From the binding point of view the only difference is that the tc358765
> does not have stdby-gpios.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  .../display/bridge/toshiba,tc358775.yaml         | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
> @@ -10,7 +10,7 @@ maintainers:
>    - Vinay Simha BN <simhavcs@gmail.com>
>  
>  description: |
> -  This binding supports DSI to LVDS bridge TC358775
> +  This binding supports DSI to LVDS bridges TC358765 and TC358775
>  
>    MIPI DSI-RX Data 4-lane, CLK 1-lane with data rates up to 800 Mbps/lane.
>    Video frame size:
> @@ -21,7 +21,9 @@ description: |
>  
>  properties:
>    compatible:
> -    const: toshiba,tc358775
> +    enum:
> +      - toshiba,tc358765
> +      - toshiba,tc358775
>  
>    reg:
>      maxItems: 1
> @@ -81,6 +83,16 @@ properties:
>        - port@0
>        - port@1
>  
> +allOf:

If there is going to be new version, please put allOf: block after
required: block.

Anyway:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


