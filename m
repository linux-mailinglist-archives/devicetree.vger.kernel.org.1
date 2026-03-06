Return-Path: <devicetree+bounces-271960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOLbH6yoqmnIVAEAu9opvQ
	(envelope-from <devicetree+bounces-271960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:13:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D504E21E82D
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A1AE302A6C8
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B003359714;
	Fri,  6 Mar 2026 10:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J1o/44sq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931D5351C04
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772791859; cv=none; b=H6B5WzCjnnZB+zf75r9NAtrBHIf/jYnOM/HL9FIxAd8xUvc7DMIm5/bH2hNB2us/vPB6iaIMSuqowUYeU0vO5R827A6l+9ZvGUR1j2gIxf7VAcyJ1wr40YFZUTxY79Yl/nOCJd3fzAP/XTchzjNDwb9WqaAFVDX+Y5BBasJxyAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772791859; c=relaxed/simple;
	bh=doZNkp50A2vlx/Y6TzLm2sx4v5BW4N4e+Wq4WpVjj84=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=g8jcUcRmmN29Kojr5+hDsjeKWsqWro1dKsCcEP6DxPC9dL5eJexnQNpcXUodgVG99Ej2n+Qfpw2sZcYCnkcux6KwlLEKeytpOFHrQ6U3E4c2x1yTBnl4zJYdCv96c2SsjJsBgEbRhfha0M5xNm961LZN5mtWAi8e8bNw3yfso4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J1o/44sq; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-483a2338616so57859895e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772791857; x=1773396657; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ufjDysk6Eerr8tO0qTbtZ9z+W0GoRqYATTCMzifDeHs=;
        b=J1o/44sqYuvK04faFfvXmWXkILmKMncdGNF7rNgMkZgJfiQX8W+duAlQnDwuz4w1lj
         tPahRMwoYA6pzQEQpYWEHqHuQpSgc5cnNWOsIn+7rGRLLs6AfL8tPdRKZVggkXVG/chE
         /nhtawayN3DukR+Poj8p/wLy7FbWVUvG0KDUFzD8RgKJY7R9jt0nenTUyMbZ7zAnEUNY
         WwWfsBt6USKTXWXRpWjZz4Ze/zMjJxyT8sxLBOl/A4HteyoCwtUDyRDKYbUCGqdo8YXg
         qqKeHop2OBrtV2mizN2sFXVNml3UV44iN26gsEAeMJ+RsLg5zZOQ+2FqHJoN/OzRm0e2
         b+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772791857; x=1773396657;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ufjDysk6Eerr8tO0qTbtZ9z+W0GoRqYATTCMzifDeHs=;
        b=vUQv3LUv5PjQBkbIJDw/zAAecjyYyiMw9J09QY2YcTmk3PP0YVZJ5GPmz9ekgSh8fy
         ebf4zbUzfysyw9UiAOrCw9UPN7eb2P/WkA8BX4xSJbUl+S71U7xucVH7DWDr0/lXmrz/
         58yl1mJrFdKgLiyqiNjzKKl9BuVQzmSxK2k3X97dhBClgn0KaJ+/rlwXReHOk39ywZhF
         JvgFZABOb0j83pzoBgxUdZbyonE5K65UaG8jE7L8MXHL0Y1ltZairiXC7j68uQVGShqc
         zmTwpPmYTQ8SmSL9UlnTxyZmWfkbrE1FpCDx1YYupqzAg8fuAoUbrpYspquzLAr9SGoo
         KyXA==
X-Forwarded-Encrypted: i=1; AJvYcCU1yvtDl9xxdXhdEW4RQdeI3+vfwOR64ypddkaPqAUQ/s/xswyikZsnRGt5y2/pDIN5dcd4QnI3jgMb@vger.kernel.org
X-Gm-Message-State: AOJu0YyuMZ2ydduhHxLbcnhizC5PJSShqaYCF9l0gw1C8hsByGphXTqQ
	GPdHPlvHBxnr4B7KWG2jjooUQ20Wsov0uVJcvhCuWfJwJiQP8xcv95HOIbg2zHZSlFw=
X-Gm-Gg: ATEYQzzZi/RFsPqCSBiVbZDReX4FVoVJGvrtZBOgvBgS+5PCkHCSpX2VN1D/46hwQZ+
	6nLygI0oJEzwngbaEe7R9F1hpaJ9hYxDxyqvOXMFxSEin9geECaLLwSZVloXso2jsBnoyYyZl+T
	76wiOlTCJpd3yBEszd6N5JXeNfdCcLCFWlUbyJUO/XuuHU7QNrK5xKo7wY63eh7+mQQ2M5Bc1Yx
	3rUy+269ksaA3cFSut09iNGsx17eySEaI+ntjzOLM3dKKwTuzOENe97kG0UDIj0GbinGHcESmUh
	XUn9sAauSHKA2MCaUJWMTJVyuKRLud8/M4+9UBn2FU/i9RpXkqGRJuOMqd8oy1jA+EQhJn41Ouz
	wliYHDyR44mGp7k6i5e1y7YZWid4YAd1dA96fWIMejB50N7XLRdtLvMYm4xvDkDdbsutEbvOLbD
	4yCnHeOJQH5pvL083RY8cQviTABDeWADHcuctoudmGKMSuA+p+Nff7q9rurgSeGvALtIEQ7tU/r
	4XS
X-Received: by 2002:a05:600c:5253:b0:483:456a:514b with SMTP id 5b1f17b1804b1-4852692f158mr23151645e9.12.1772791856930;
        Fri, 06 Mar 2026 02:10:56 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485276b75eesm20784925e9.14.2026.03.06.02.10.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:10:56 -0800 (PST)
Message-ID: <ae8c3d8d-93dd-4c96-a336-6bec73d2f194@linaro.org>
Date: Fri, 6 Mar 2026 11:10:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: t7: khadas-vim4: fix board model
 name
To: Nick Xie <nick@khadas.com>, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, jbrunet@baylibre.com
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260306030756.2421841-1-nick@khadas.com>
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
In-Reply-To: <20260306030756.2421841-1-nick@khadas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D504E21E82D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-271960-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[khadas.com,baylibre.com,googlemail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NO_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org]
X-Rspamd-Action: no action

On 3/6/26 04:07, Nick Xie wrote:
> Update the model property to "Khadas VIM4" to match the official
> product branding and maintain consistency with other Khadas boards
> (e.g., VIM1, VIM2, VIM3) in the kernel tree.
> 
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
> index fffdab96b12eb..25b478e106451 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
> @@ -8,7 +8,7 @@
>   #include "amlogic-t7.dtsi"
>   
>   / {
> -	model = "Khadas vim4";
> +	model = "Khadas VIM4";
>   	compatible = "khadas,vim4", "amlogic,a311d2", "amlogic,t7";
>   
>   	aliases {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

