Return-Path: <devicetree+bounces-39120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4EC84B74E
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 15:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C801928BF35
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AE7C131E44;
	Tue,  6 Feb 2024 14:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v5nMCYAT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED42131E2B
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 14:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707228078; cv=none; b=JRYdvSU2NsVon1Hj9SDAfFoMUgUlr+Fk5Qpm63B/W3Swt3Ua9SXvps8CaNXJ18/ZhziSbbfeO03F3cazMvxB7LKgnVtxGYcOYzbHS/TMAiKbr0nd7YEvCkdBUZpOxDYv9g1tN8IrsMPAuPOyENz/v7Nsj6dUz5fQt45p9amoJi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707228078; c=relaxed/simple;
	bh=T3zt7/wfS1GyNAR2FeIHJh0CQNg05D/s5D+ynTuHKXI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=gVsevkpe/ghea6Q1EozBn4yVYJcy77mouXAfODh94AIgMVHWbx51seUBx7Szzst5gVQHLRUymuFI8sek/vB9ztUQxdO/mioUOBma6DwJpJrwSq54C57pgRFw5HgcAYF0AgphN1N9PIrl1OUvKo07T24iBPtR94mO7XXInwXg3cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v5nMCYAT; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40fd2f7ef55so3700425e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 06:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707228074; x=1707832874; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6lxn5ppjmm76s05rtpg6sFq3Eh8QtCLp9cOdP6Vy6Ac=;
        b=v5nMCYATpV5SsKiNBb4CNfQsGMBoXLwyTDffJc+wdBbDY7oEEdDYbsQdBijLN+qTuR
         cha39oBxi2mJUf3ZZhufV4fzIEfEKPIw7w09FdyjWGo37zUiKHzfUkoRF4VtCe/hxq80
         meQ0x2sYz4yZy3GsEGSNhXJjWoCD3CzNnLkI6sAx83TJfU8zLYd0m6n6NJGNVAbE5aqS
         nvv3hFrUN4FpGWkRfuQMUhDJc3fkElMFXyNN2ofp6q3cuoXWgg+714b73sn9KzgQImbB
         nYfkUw1LXSOlWLQ7qCbCYPgE0JAn3p4v9qpJLhHH/QriY6bGKfcfOhYeGk1FQz5MFejh
         xeaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707228074; x=1707832874;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6lxn5ppjmm76s05rtpg6sFq3Eh8QtCLp9cOdP6Vy6Ac=;
        b=oXNOQ0xfH92NI5W5VqwsNUbFDYKu38R/iode8QSzxvIxDYubPHDQBJwIjswS92+6MG
         xQ8SaV+2Ff4QtQgMFSjoTCPv2Mx1trB9FNVxE98vxCn2TPA/NT+eCi3tU0yRgDRI8ieP
         t1U5K+wap6K7f+UW6Eu57IgW7v15Amq9R61+fXNCkZt6nd03hq+j76fqpoIzzgGoEIj/
         M7MguK7k8jKy0NAjvEd7WGtyEJ+KmheQEStZMBxVcB6UeKc3wkikc0FfQjW33GNFSAGc
         X/wgE0hDLDoXTBpry3WBrfxzYqXQUzt6cmpI+Mje28TLp79eUt9fLS1lvdULDaYXh5s0
         K+dg==
X-Gm-Message-State: AOJu0YyC6qBaPnK7WIswBmkvtKyKJuE+2e06pcuqFpvHblRtdFSUvNtL
	WO3eDsY/oA6Jh0MKt/Bax1UDMK+NjP6x7qjm+fQ11W6IRyyj4cTMeMrmgvRBE8Y=
X-Google-Smtp-Source: AGHT+IG92N8Wtnm4SjvEdq2MgTbyvlH4SnM0imHATZ/56b/4lcNlO3daG5aRAqQPJuLOvALLDjOz9w==
X-Received: by 2002:a05:600c:35cc:b0:40f:cb0d:4de6 with SMTP id r12-20020a05600c35cc00b0040fcb0d4de6mr6794859wmq.5.1707228074403;
        Tue, 06 Feb 2024 06:01:14 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUln28rRQq8eXt/f8B9dHukEv6uWMfzlaiW6MEpbQlOHK979mB2XqleARY4xLrniPud25+xHcCUrhumz1UUfsXqH4YU/csm+z427F2FgPOnM0z7g7ZsTBSQDAgrGc7kwkuXUu+uwMkuXR2z6Sa08acI8iL+hJsSieu3ykk2oZIVUnW/om6Q9P/nE7A3oB3ATs38ThQ9jxBw0OyDiqmPzLmzRw5sv0e19/hqhS4drsNODPnTXvcxxUHGYoZhOf0Fo9MByRcP6/meKYPUPFhMnimDcH0Wh5oRSuNJ4ymYaLU7IGgNqRBw6eZ6TgYmUHTGc6XBFo3VtiNLdedH1HXql40dnSrLBj4Ry7XN4p9+YFdyHQsHNRCnslr5FrgmB5fPfeFB6wYEYp39Jw==
Received: from ?IPV6:2a01:e0a:982:cbb0:ba23:8574:fa8:28dd? ([2a01:e0a:982:cbb0:ba23:8574:fa8:28dd])
        by smtp.gmail.com with ESMTPSA id n29-20020a05600c3b9d00b0040ef2e7041esm2187243wms.6.2024.02.06.06.01.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 06:01:13 -0800 (PST)
Message-ID: <9ed9b458-33e6-46e7-8eed-87bf8737da76@linaro.org>
Date: Tue, 6 Feb 2024 15:01:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [RFC PATCH v1] arm64: dts: amlogic: Add Freebox fbx8am boards
Content-Language: en-US, fr
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <8c865c62-cd80-4c78-9fc5-c85491c037ca@freebox.fr>
 <b69a2132-25c0-4acd-808e-d134f5034e58@linaro.org>
 <59ef3824-13d3-40af-9a3a-9b1ec8add9d3@linaro.org>
 <ef146687-688a-4cf9-a11e-4034a50fb6b4@freebox.fr>
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
Organization: Linaro Developer Services
In-Reply-To: <ef146687-688a-4cf9-a11e-4034a50fb6b4@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/02/2024 14:55, Marc Gonzalez wrote:
> On 06/02/2024 14:30, Neil Armstrong wrote:
> 
>> I do have some dtbs_check errors, but those are expected since they are not specific to this patchset.
> 
> Wanted to mention those warnings as a follow-up.
> Are they easy to fix?

Yes it's only a matter of writing the missing yaml files and fixing the DT when needed.
I try to do some regular batches of conversion & fixes but I didn't for a few months now.

In my last conversion patchset (https://lore.kernel.org/all/20230706-b4-amlogic-bindings-convert-take2-v3-0-f63de6f12dcc@linaro.org/), those were still missing:
  ['amlogic,axg-audio-clkc']
  ['amlogic,g12a-audio-clkc']
  ['amlogic,sm1-audio-clkc']
  ['amlogic,g12a-tohdmitx']
  ['amlogic,sm1-tohdmitx', 'amlogic,g12a-tohdmitx']
  ['everest,es7154']
  ['everest,es7241']
  ['ti,tas5707']
  ['linux,spdif-dir']

Neil

> 
> $ make dtbs_check
>    LINT    Documentation/devicetree/bindings
>    CHKDT   Documentation/devicetree/bindings/processed-schema.json
>    SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> /home/mgonzalez/linux/Documentation/devicetree/bindings/net/snps,dwmac.yaml: mac-mode: missing type definition
>    DTC_CHK arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb
> arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: /soc/bus@ff600000/bus@42000/clock-controller@0: failed to match any schema with compatible: ['amlogic,g12a-audio-clkc']
> arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: /soc/bus@ff600000/bus@42000/audio-controller@744: failed to match any schema with compatible: ['amlogic,g12a-tohdmitx']
> /home/mgonzalez/linux/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: sys-ctrl@0: '#address-cells', '#size-cells', 'ranges' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml#
> /home/mgonzalez/linux/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: sound: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-sound-card.yaml#
> /home/mgonzalez/linux/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: sound: 'anyOf' conditional failed, one must be fixed:
> 	'clocks' is a required property
> 	'#clock-cells' is a required property
> 	from schema $id: http://devicetree.org/schemas/clock/clock.yaml#
> 
> 
> Regards
> 


