Return-Path: <devicetree+bounces-271164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QD2gI7heqGmZtgAAu9opvQ
	(envelope-from <devicetree+bounces-271164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:32:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E255204530
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:32:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8DB1E3006474
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BA8836BCC4;
	Wed,  4 Mar 2026 16:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xF7e7+DP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DD235F5EE
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772641969; cv=none; b=k4AIVnh5k+orcMxgsoNrmz6RgLUgQ79kBWbX8DJJhdOZP90BrzYlhQPgXjD0v/yVBC09YwkXhaGertZIJntkibO1QFgX0fn2uhB9Uc277U17lBrCjyDVjgmczeFuRVeEMa6IsnCPoKS1ZbPVFr90PFYq8VaeokqJLJfT7rrKGLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772641969; c=relaxed/simple;
	bh=Xppvl95xgBS9KCaO7oJxhZKdat8wB8r5AMcozVjxUY0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=RU4rTvmUaP6o3Mp11Al4dThPr7yWmGvbHEov+wa435h6bapW0yWwtJwUlpNdRBhBTF/1g4kpdDpwDVhH2LU8XDNJUJ1mHUmJZCZO/ANaxPvQYKg8xOEw6YL2cZDcGX3xQdqL829Zq9RA5nX6k51a4fgn47zatdZ8MGypaD757nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xF7e7+DP; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48371bb515eso105590765e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772641966; x=1773246766; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YzBLKK2SPFT1wsSEyBgdZB5voy4EsI1LK+m46W4f00k=;
        b=xF7e7+DPARfYTASOu68cxUISiIy9kstIKcJh3AShTdWvGAHWcMu3QmoyOAfjwV+WRS
         OpbtlIZ4fxr0o0XQHP2n5ukcPHGeiSIocjmyzcXKWmZSkU8x2vo4HpNa0aCQbjQLACWO
         zF2x6EtZoSqaYJOsdiN+DMtyCiXtWS21ZskXupMwKn29UdyeuD3V2UjxlU1w5xpiVmLx
         Y0wk/IJfaqlqsqhpkywxRrQdx1RIN8pPd/r2QV8k25W7ep2qSi27Yt3iO6iSkVQ5gggA
         BN8LIrBn6WRfWFvgbb9nuCOBL8LXurH2l+XUVLDtEbfQZ9BgJaVH5YRd/Qe0t82hvUfM
         WYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772641966; x=1773246766;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YzBLKK2SPFT1wsSEyBgdZB5voy4EsI1LK+m46W4f00k=;
        b=r8GvnLEkYGtfyn26T+lo73TNCgRg2uBaWxpKfUSsOmxtPb6luWS2Rf24XBPNBXmgla
         Md90muEHVvq6XFK5unGllXZk+9Gja+x61V70JyN3+fs3pMejizQ0c2zgbTFgIzLx9Iia
         9Mf85Ok2nFqglogbz0w2xry+//Mhxo99aXm+D8UEo1EtSDczQO4KVadJK7SV08bGAxLH
         2V2kX1nWtuW1jTVgiKMb3X60o1/l2JShZR9Nz+rf0QOagDUzxv63hrXzrl6jcgj2hzJC
         ypmyZtI7D0rdr9+dz6APnvB5fPpNiPj96NJpyC/5ZD6jR3fAy/bpAQ/1mUWNIkvPzGNA
         sgYQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+2Gx02CJhlcYT6WvI36IE43LM6idn2Q4dF0hQg6hJS2XwEceTiNQthIgzPQktd50oh1YO3bfosqmm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi6t4Yj4nChVraawD/GMDYbet7beKeHcVyP7eUSWL5GKcPcla2
	8iBXvu2uLvyugxRJSfoy6BfkH6/VUqx6S3eU1FH8CoD+zhcjkptUItdDno4R0ffLOT0=
X-Gm-Gg: ATEYQzyTnMeq2HzT9RfqmcGLzM4XLcpx1iYOCEh5UOR1mue/75mZz8na2HZMzsMhPB7
	xcMY/ioIXDBphV/yAzFhJ+ONGZHJLovc6nJSHtm/6ukZGXuvdAKD6Xh8FyxR6KG9DHDvPYdXcAK
	AD2J4tRiLpov4nzjA5xl9D4ltSFmr2TmRmGa1ncxx6p9T5s7bY3O0obe1yqAW7cCNR81yM7eCFy
	+uvhSak+V56tvkKCtChXPBX2gZ1pw1VKN4JLGsSVou1uejiCUxRxVVnQpKEj+VQ3doclpjMoASw
	rnGpwP36eY2b9/N0JHgsJWT7oyi/MipaMrzsruI93XheP3hQTBc5/ArTTp6i7mANzbYV4vxD6gt
	JOFtD051vPQFe2aHuoxT2znwwSQR8+fsYHGWf4WWSmBr42Zy8HvrE9wVecWTW9RE5GmLyKIA9Qr
	zAlZUWBNg8ttaxtQwkuK7f31UOHQ6aHqjKQNbvw2jKIDyFpXNiP4lXZ7qnnWmco3DE2XRBe3jh8
	Ac6k5HClg4qBIU=
X-Received: by 2002:a05:600c:8b67:b0:483:498f:7953 with SMTP id 5b1f17b1804b1-4851989cb45mr45028445e9.28.1772641966114;
        Wed, 04 Mar 2026 08:32:46 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:da6:dde3:e477:94d2? ([2a01:e0a:106d:1080:da6:dde3:e477:94d2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851acf3124sm25994175e9.3.2026.03.04.08.32.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 08:32:45 -0800 (PST)
Message-ID: <933fd2e0-46ff-4ab8-b98a-554ac46982c5@linaro.org>
Date: Wed, 4 Mar 2026 17:32:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver bindings
To: webgeek1234@gmail.com, Jessica Zhang <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
References: <20260222-ch13726a-v1-0-e501d78e105a@gmail.com>
 <20260222-ch13726a-v1-1-e501d78e105a@gmail.com>
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
In-Reply-To: <20260222-ch13726a-v1-1-e501d78e105a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2E255204530
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
	TAGGED_FROM(0.00)[bounces-271164-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid,linaro.org:replyto,holder.com:email,devicetree.org:url,0.0.0.0:email];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 2/22/26 23:26, Aaron Kling via B4 Relay wrote:
> From: Aaron Kling <webgeek1234@gmail.com>
> 
> The Chip Wealth Technology CH13726A display driver is a single chip
> solution for AMOLED using MIPI-DSI. This is used for the AYN Thor bottom
> panel.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>   .../display/panel/chipwealth,ch13726a.yaml         | 66 ++++++++++++++++++++++
>   1 file changed, 66 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..890984b00c341285066176995e6a973c5607cbde
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Chip Wealth Technology CH13726A display driver
> +
> +maintainers:
> +  - Place Holder <place@holder.com>

??


> +
> +description:
> +  Chip Wealth Technology CH13726A is a single-chip solution
> +  for AMOLED connected using a MIPI-DSI video interface.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: ayntec,thor-panel-bottom

??? why not chipwealth,ch13726a ??

> +
> +  port: true
> +  reg:
> +    maxItems: 1
> +    description: DSI virtual channel
> +
> +  vdd-supply: true
> +  vddio-supply: true
> +  vdd1v2-supply: true
> +  avdd-supply: true
> +
> +  reset-gpios: true
> +
> +  rotation: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +  - vddio-supply
> +  - vdd1v2-supply
> +  - avdd-supply
> +  - reset-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    dsi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        panel@0 {
> +            compatible = "ayntec,thor-panel-bottom";
> +            reg = <0>;
> +            vdd1v2-supply = <&vreg_l11b_1p2>;
> +            vddio-supply = <&vdd_disp_1v8>;
> +            vdd-supply = <&vreg_l13b_3p0>;
> +            avdd-supply = <&vdd_disp2_2v8>;
> +            reset-gpios = <&tlmm 133 GPIO_ACTIVE_HIGH>;
> +        };
> +    };
> +
> +...
> 


