Return-Path: <devicetree+bounces-46276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCF3868BB4
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 10:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 545ACB28C9F
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 09:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB2C4135A6E;
	Tue, 27 Feb 2024 09:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b3vRwsHN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3E3133400
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 09:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709024899; cv=none; b=PFfwZfWE10IF93NjN147/om0XTtpfmy0a+PKljmsW7KieHyHLLImdL32PKU7kuH0AAHGtu6ZdvEkH7KXtq3EPoiepMyJcvD5bcXhmBLtg0fUpG34lpgof69Hi8BLyNYzvAu2BfNxgClhV24H/6f0xG5IZYsmd+1qflqkr6DbGZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709024899; c=relaxed/simple;
	bh=3kw8GWKZ49dH9ZlUayVrZGjzEB6wIbKXc74Xfxvi4qU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pgzHiuocEylp8+nM+ttZQ+4fQ3nR+23I2Pj8FIheJXv/TsaX1o+owLDxgxpPI9uDNX5IHWHE9ls6UQyiJLq+4ba/BQAzHB/UpxTDnWMhdO4Y4iVSUfhFALU5VLZK9pHAYCiuOlHz0gq3LIuZJL6BYkbVKGyOkFwRi1JhSO5mb5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b3vRwsHN; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a3ee69976c9so508006466b.0
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 01:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709024896; x=1709629696; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M/XMlDT5Zncb31c4k3IQ8WBJzhTpe12p8N1wL4Pn258=;
        b=b3vRwsHNQX9OUVoxgfhPhKveqUX8bOvICfGt6S4aVf1TtFhVVSjWnttDZ0YBpAAfVQ
         U2QMvJFtUqf+WIW/9sPQAznYHVFeUDDRDCQZkENu8l3hE4zHWpCzEiLOL/NzXNZ1WCM+
         vGXcypapRb/hBKky0ikwY5sG9/Ap7F8VR8nzEmh7naOvwh0u+wNz1WZwg/uPKsMR0wAT
         FQgjBi/IwrjK+jM3pcZ0cnoFWWcvtO9yeRNvlCbEl07nwWWTAiqcQiH54Ulm3etfEbpP
         ZMUqiYw8OE81ELtrZGO1rciF49oyf9K8vcJ58AGtC0K1f9bqKZD/KUh1xOItSVmlXzyc
         C4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709024896; x=1709629696;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M/XMlDT5Zncb31c4k3IQ8WBJzhTpe12p8N1wL4Pn258=;
        b=YU1UWx5iycC2pKT+MTX/nyFvamllHEvmiNt0DVs4ON1Hil9/2wMgrcSzuh1XQdB0Ra
         KjYprHqcj4MxHm4Quf5smUsKHd2M2oDRzFnmapA+i/OJ+S7IE5ttd7X2X0W9i1P0MDzP
         9+eFdJOGo/8vWWMDl13rWgJQJ+CiUW+8nrNuIohTyu+apdUP5TOuOCr1Rj5+FtlxDGu5
         TEX2Qj1+0XK2+pEfbh5tAqWNDY0LEoRrIYGS1y67NruG2V8X3VTgWEiDXor9WXxjrdS3
         D4B62hGV90cVM6edUtmbHHhOzKEZRODNFg9mDY/IAjkueoUdXLXhQNCn2ptqo1ycNP/7
         LJBA==
X-Forwarded-Encrypted: i=1; AJvYcCU0QtHSIrKhjGsNKMJ3b5CyhPM8qbKFSPmkihh7xhzprFg2TbD9StdzZAz1qT1zVrYlCOFICBNlK6WiNRykfL1vncBiJpqR2Gm+oQ==
X-Gm-Message-State: AOJu0YzLfWTOilm98CucLvJnOOah3dEVTQ/0EfISl7JfAgQlAu34O9BL
	JKdTY8EaU70xfxAw71HUxaZ9JHin9qZpCV0a9GT0B2hYBxVAqCA/cmLgSczk25tnNiImmJJ1/Js
	D
X-Google-Smtp-Source: AGHT+IGqFBX1eyZzazauhmxoaCWVFLpVUbL5P8fO0kdYan0Z8+9zfK75kAvDOP1Jsczdq7H0Uzl+Fg==
X-Received: by 2002:a17:906:a11a:b0:a3e:6862:dc78 with SMTP id t26-20020a170906a11a00b00a3e6862dc78mr5714509ejy.4.1709024896461;
        Tue, 27 Feb 2024 01:08:16 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id h19-20020a170906719300b00a3e92467f22sm547354ejk.163.2024.02.27.01.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Feb 2024 01:08:16 -0800 (PST)
Message-ID: <eebc1521-4030-4f0b-a84c-c3ee18ec7da6@linaro.org>
Date: Tue, 27 Feb 2024 10:08:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/18] dt-bindings: mfd: mediatek: Add codec property for
 MT6357 PMIC
Content-Language: en-US
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-3-4fa1cea1667f@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240226-audio-i350-v1-3-4fa1cea1667f@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/02/2024 15:01, Alexandre Mergnat wrote:
> Add the codec property along with the mt6357.c codec driver support.

Describe the hardware, not the Linux drivers. There is no codec driver
support in the bindings.

https://elixir.bootlin.com/linux/v6.8-rc6/source/Documentation/devicetree/bindings/writing-bindings.rst#L21

> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
> index 37423c2e0fdf..d25a78070744 100644
> --- a/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
> +++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
> @@ -37,6 +37,17 @@ properties:
>    "#interrupt-cells":
>      const: 2
>  
> +  codec:
> +    type: object
> +    unevaluatedProperties: false
> +    description:
> +      MT6357 sound codec.
> +    properties:
> +      compatible:
> +        const: mediatek,mt6357-sound
> +    required:
> +      - compatible

No resources? Then no need for this node.

We have it even documented (if my repeating every time is not enough)...
https://elixir.bootlin.com/linux/v6.8-rc6/source/Documentation/devicetree/bindings/writing-bindings.rst#L30



Best regards,
Krzysztof


