Return-Path: <devicetree+bounces-76386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CF290A709
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03C03281800
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 07:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D526188CCE;
	Mon, 17 Jun 2024 07:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tslcc1DX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABEAE18734A
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 07:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718609250; cv=none; b=n1pIde37cx5/LlwLWpORJ4KMF7CKSvp/OunA8/Q2a7VnZXNhhaLm5sm6irtiKyVmVVhjIiASeOJ1467cA0cZtjJ1P+jCaWOyzYzofF+I94inWnUGWoOsrWt9F+AADCqfUKglwfrf4lwmaxHfshQIrggMMUzpfAnF0Tt7U2ccdag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718609250; c=relaxed/simple;
	bh=l6EXHT8moxb9IOOPxR9jNaR3YmY6OrdA8+NL59K+qwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CMOOmpcskq+im5+y2L8tnSQYF1FIFhoanGiw3TwB/qJTVbhU2pQEG3LpBdIQrRMv8CZ5+oGZsvwNeLqWCCdO5g3dOraW7Zm1FusFakzSD/r3VvSDErFZB8uwWs/CvIZcf69OzZOmo+w1LMq21tjz4c+6r0kv4kExvW/BT+kWwSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tslcc1DX; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so496290866b.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 00:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718609247; x=1719214047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EuYxtY6j33Xmhdf578gv73N2zuipaut5w8KeOq7kRrU=;
        b=Tslcc1DXTGhWayucYI6UVpfT12ETQqqCMBLL4dQ0E8aRAi680bm4uBBb4vlr6DHRxY
         ryldh4JyLfewnhxtb8ZAQsv7QonA8/vXwsXPL67UgGy719CHrny4OV6L11TyEJzjRG/a
         zoa2xGB+ZFSURNZn5yRXC0i7iqXIU6G9vZDzQlFFZxCYG9t5pzchMm+zR2Ihe50XlotG
         xOqnPRyRMVlcZ/+NVJGMifytjWZ+bmciLuRiAWFEPXSBQ0npwXQxB26o7cQo08fH+Tgg
         I7sDnQRsQa4GfF55iUlil0wyXi3wIRBzYHehZMX4ubFEBw2J7lXwhW6PQE7xfK6/FVhG
         ayWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718609247; x=1719214047;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EuYxtY6j33Xmhdf578gv73N2zuipaut5w8KeOq7kRrU=;
        b=ZGn4U5oRIC65sDyK78tsE3LtKGKzkvw57kt5rYI6jVXVL6xV9zxK4aEQYvl/rG1ZgO
         S5SaFK1g6QG+0vN0bNB6CT+I1X6O3MpKXXtaUplk7rV2hxG1l5wWXyyrC01I+mOHiPcq
         NcekcdQR0wuwcDaQtG3K2q9aZ2qQ7hjQLIYNt/MYMBOpZWyffJxKGcp84H8mmtsRNaVq
         cDg22KDiUtpuOsyba1Tg+MToCfuBhiJvQgai5v8TxqqjjquBZXe5JpWGSmcFwV9q4FW/
         1AfEXwmTPxG+nIhe++ZhGJkL8M2Srsdb7iO9GrUXQ7UY2LhKM7zZ7X9q+oGtsVAoVMAT
         4itA==
X-Forwarded-Encrypted: i=1; AJvYcCVeMDU9JU+TN9P3St0XHXuR6vP90j9/T/1rk1w8DWDOwo/CtEsQLzUk+ZyW7YPSAPNn3UFS/BDKU0HX5a5aaD6sJrWar5toGqCCsA==
X-Gm-Message-State: AOJu0YwbyVwdYcLEhlXqYj9hBuyVpjMysja2ZGN+khhVzBsKQpJfqrXO
	Rpy3PoR8A5LKNl9nAbnD34jXnQARIGzwy817/psjkP/ovpldqKze17hb+mOvsCA1dDFc6UJwB+/
	T
X-Google-Smtp-Source: AGHT+IH5A6uolPaYfONK5JYnUughksjTsVqBEyLwJRyqdNoxko+8aHRaBZAJH6nzQy85QyjF7lZrLQ==
X-Received: by 2002:a17:907:a80e:b0:a6f:6d98:d4bc with SMTP id a640c23a62f3a-a6f6d98d6bemr550014166b.61.1718609246914;
        Mon, 17 Jun 2024 00:27:26 -0700 (PDT)
Received: from [192.168.0.18] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72e9921sm6015291a12.52.2024.06.17.00.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 00:27:26 -0700 (PDT)
Message-ID: <d1ecbb02-41d6-430a-a22f-22709048ba95@linaro.org>
Date: Mon, 17 Jun 2024 09:27:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: ak4619: Add initial DT binding
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org,
 Khanh Le <khanh.le.xr@renesas.com>
References: <877ceotnrg.wl-kuninori.morimoto.gx@renesas.com>
 <874j9stnpk.wl-kuninori.morimoto.gx@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <874j9stnpk.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/06/2024 02:30, Kuninori Morimoto wrote:
> This patch add ak4619 DT binding

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

Just "Add Asahi Kasei AK4619 audio codec bindings.". With the full stop.

> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/ak4619.yaml     | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/ak4619.yaml

Missing vendor prefix. Filenames use compatible syntax.

> 
> diff --git a/Documentation/devicetree/bindings/sound/ak4619.yaml b/Documentation/devicetree/bindings/sound/ak4619.yaml
> new file mode 100644
> index 0000000000000..b6afc008f745e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/ak4619.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/ak4619.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AK4619 I2C transmitter
> +
> +maintainers:
> +  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> +  - Khanh Le <khanh.le.xr@renesas.com>
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: asahi-kasei,ak4619
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  ports:
> +    $ref: audio-graph-port.yaml#/definitions/ports
> +
> +  port:
> +    $ref: audio-graph-port.yaml#
> +    unevaluatedProperties: false

Why do you have both ports and port?

> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        ak4619: codec@10 {
> +            compatible = "asahi-kasei,ak4619";
> +            reg = <0x10>;

Make the example complete - include all properties.


Best regards,
Krzysztof


