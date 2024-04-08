Return-Path: <devicetree+bounces-57028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D699589B741
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 07:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF67C1C20E22
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 05:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C8A79EA;
	Mon,  8 Apr 2024 05:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YhkCbSaV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2FF79C2
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 05:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712555317; cv=none; b=rxWEEIAgDWm2WHDKMK1kWlhJmhZCQnsvwytt248zi/E8DYTaEfW3s70SUgetwz9sZf0oowr5jFar7QzbAwyxLwNK7f07mwjV4rkCl3ZMBR4+UdOWFrRc34z0vDEeRvyWpZSrUe+jj2D1l7mfbSytTnm5MQpOTzv5aHBGmCWrJfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712555317; c=relaxed/simple;
	bh=MH+N/wEjaCv64wWfynlzTAdMkC5jgkaTQMM8mPzSyJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=myIUlP18KMBOiHAJLYExYIQruRzS9F5zfwWe8rqk/fVY/+zxLZ3BmU2kRxg0vsgHV2zY0GhMgdK08qDQUpec9RQfJCa9yO0ZusL2UATXcjOuX/26i60ERbXMKAFKQlNpdwhASaAzO8M/yrUdWZuYJQcYKI3r3upuY2iLDA2ubrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YhkCbSaV; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-56e2b41187aso4214628a12.1
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 22:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712555314; x=1713160114; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aS47jCt3CSgqRn0l/2sPSrpxA9j5rwTbDiGDjwAu4Cg=;
        b=YhkCbSaV+iYf9+SbKSLsAos6eSYcl9AdxLr6OyaDTkcX3lYXDMHOOQrVOB5Q1avWEl
         1Y/9z1kPFn5G1Lrd59OXdlfOKZQIJ9oOm1A1kNrlweJqQq2IbdPT7CPGtCyufVvRDvkI
         ZHH0OKOdg1v8J7yj400NsDMwItBt2ZQ+/O823RAXQP0kScwXpAICaDJbDTADCx6vRW+h
         qHI5pBoaNrI7JmpyHwtI7goIKz5/GC64Em49+xsP+aOqKZ3DbxNTwPq3TkZrkQ65dbyX
         Rn2+YEyBIuoqHWKpxFaFfWBBwsAlaKTe3+aD8FAeaKkdVl4ChRLOVchGPqGkgWjHL2G9
         FijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712555314; x=1713160114;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aS47jCt3CSgqRn0l/2sPSrpxA9j5rwTbDiGDjwAu4Cg=;
        b=tnUHpWaNIHevP31sYkC3HRmF20gk6pJmxtK5C7JBYI2BmxuxaokQMlDz9KvzpIjbVw
         SF9KT7X+12orm0oyVFPwm/P1h3/T0rT1P1ZBZbiPXGu6KRY8JCgmgK5Fe4bUuwQs1RhV
         X0HGLSBTtnUb9eoVqa93YoyQkxGOosKhpbb0lS3ZAuRhcayVUbEQmXR8y9eMI8CPKKiI
         oZGstvE9pd9OHTB7vYe+vqGk+NwTD1oWB2Oll7IsMyn+y3Gnxa5fzf1bRrfShJqiZCj1
         CPikKe7RgZccpLZjw3T0Ovi/hs3zU15HxESyYF+Jqu4WVSX27OITDk5wU+CkvyhAvyjO
         nfMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQyyBalRgryrH3eJCPZPbbMDpZk1qpUrZY8QUR2J7Rfi5oVI6d5/1z28s2T3J4Fl7hBLVhhp+l0v53LD8BK73gOQ/+uFw2PDuiVQ==
X-Gm-Message-State: AOJu0Yx7soNEJY+PG9BBUk3TeSu1rQ+pyX9wXToBHn3+DzaLmDSOpvMM
	/qDw7+Z2+OJykUOstLgIUhggAVTONucd2XdxKt6A3I1uQUkTwe1SkMJX55s3cAA=
X-Google-Smtp-Source: AGHT+IHUPq6pq/CvDaJBSQInJKXJP8t0NYyfU34THgGYQIZzXyriojbHSYRdI9rAMNRH+ZaWwF8hCw==
X-Received: by 2002:a05:6402:501d:b0:568:a5b5:8591 with SMTP id p29-20020a056402501d00b00568a5b58591mr8301533eda.1.1712555313987;
        Sun, 07 Apr 2024 22:48:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id ck6-20020a0564021c0600b0056e2bf42d0fsm3748178edb.49.2024.04.07.22.48.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Apr 2024 22:48:33 -0700 (PDT)
Message-ID: <658417aa-6c47-4ed7-bbe6-76c454b092c9@linaro.org>
Date: Mon, 8 Apr 2024 07:48:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ASoC: dt-bindings: imx-audio-spdif: convert to YAML
To: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com,
 broonie@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, shengjiu.wang@gmail.com, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
References: <1712552142-27055-1-git-send-email-shengjiu.wang@nxp.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1712552142-27055-1-git-send-email-shengjiu.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/04/2024 06:55, Shengjiu Wang wrote:
> Convert the imx-audio-spdif binding to YAML.
> 
> When testing dtbs_check, found below compatible strings
> are not listed in document:
> 
> fsl,imx-sabreauto-spdif
> fsl,imx6sx-sdb-spdif
> 
> So add them in yaml file to pass the test.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  .../bindings/sound/imx-audio-spdif.txt        | 36 -----------
>  .../bindings/sound/imx-audio-spdif.yaml       | 62 +++++++++++++++++++

Filename like compatible.

>  2 files changed, 62 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/imx-audio-spdif.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/imx-audio-spdif.yaml
> 


...

> +$id: http://devicetree.org/schemas/sound/imx-audio-spdif.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX audio complex with S/PDIF transceiver
> +
> +maintainers:
> +  - Shengjiu Wang <shengjiu.wang@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx-audio-spdif
> +          - enum:
> +              - fsl,imx-sabreauto-spdif
> +              - fsl,imx6sx-sdb-spdif
> +      - items:

No need for items here.

> +          - enum:
> +              - fsl,imx-audio-spdif
> +
> +  model:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: User specified audio sound card name
> +
> +  spdif-controller:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: The phandle of the i.MX S/PDIF controller
> +
> +  spdif-out:
> +    type: boolean
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      If present, the transmitting function of S/PDIF will be enabled,
> +      indicating there's a physical S/PDIF out connector or jack on the
> +      board or it's connecting to some other IP block, such as an HDMI
> +      encoder or display-controller.
> +
> +  spdif-in:
> +    type: boolean
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      If present, the receiving function of S/PDIF will be enabled,
> +      indicating there is a physical S/PDIF in connector/jack on the board.
> +
> +required:
> +  - compatible
> +  - model
> +  - spdif-controller
> +

spdif-out and/or spdif-in are required. You either miss oneOf: required:
or anyOf:

https://elixir.bootlin.com/linux/v6.8-rc4/source/Documentation/devicetree/bindings/connector/usb-connector.yaml#L305

https://elixir.bootlin.com/linux/v5.17-rc2/source/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml#L91

Judging by example, the first one.


> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sound-spdif {

spdif {

> +        compatible = "fsl,imx-audio-spdif";
> +        model = "imx-spdif";
> +        spdif-controller = <&spdif>;
> +        spdif-out;
> +        spdif-in;
> +    };

Best regards,
Krzysztof


