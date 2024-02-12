Return-Path: <devicetree+bounces-40588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4879D850EA8
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 09:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8CF01F214B5
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 08:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89CD2DDB1;
	Mon, 12 Feb 2024 08:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gjafAJQi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D58C8E2
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 08:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707725537; cv=none; b=YecNJddDx/82EJjC4TJo/lGHvZAuLN4uvveboAhcTHS1KhnKVrtMusBkMzuVwklhS1ZW1ysNCGaa7kndlyOItteJX3vY9dlWVSvkTdqb4PD7ygrulhLUXHVpEyzK0nESJQ/CgjmhHi5MAIaNJ6XrIaYZeLWk88CFJcyX14gwWoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707725537; c=relaxed/simple;
	bh=61+6KH1WtZhZ0FccDZPUNoEimKlV5ORAz4Jsn0WLZgg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=faIbHk/3C02Ht83vj+ENdYJ+ZoekiOJRcMb1qGABWgj7RUHMVzRhOxlS16uZoEFzP+bYcrqRBlQSLEjpW3ao+m4mQlqB7O/qmC/9gD+bKEYkbVOlU0SN4cgy71Hn4S14Lv632EzdtWD8CFNns3V0O7Pnb2b/qGLGRgaiET7Sa48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gjafAJQi; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-33b2960ff60so2153970f8f.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 00:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707725534; x=1708330334; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Ot5GPZNGKJVCju3OEaEtH8nPIL9wvWuk59dwPFI4yk=;
        b=gjafAJQiQYlJUGI728k5Sv9nvg8F1oeRojfghkRRUBT+tjvRhXx8v8EBduv8NAgI2t
         UC8YIq4v5b8cB8HDgPObLiIOv21gevFnmTxYgRAnr74SHtSaHbkM/6Vj6hbl/FiuXKam
         TJlrF7pCwKf5lQ3kVG5tHPcWqEOSTgKNYbz2xT9boTQ4Ku1eF423NuS5ENpXl5qanJqB
         wWCTGKBLJt+o2JMLKbA0/DytrcZYkDIZxTJv7cTEqOdjCe4vwc+sBlHpefalZuprCpzS
         wNkS0yaU6IA5zsgZPfHpP8mynWNiuPotzCTx8mqgnrmz2jKcpLtLyRkMimasyaOJw9BW
         HWCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707725534; x=1708330334;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Ot5GPZNGKJVCju3OEaEtH8nPIL9wvWuk59dwPFI4yk=;
        b=M4s/q4gvB3t2G+4qdUggmDgmhEE3ZSUAMS7FJNAxel6/c0lj4JRgEjrGuU1VtEgOIu
         AbBO/IP0KQw9jZHNS/5KQ9q+ycYonqSngS7Ly1ZHjcj3mwX+1ElzgrZwC4/QiozKcg1P
         4iBdLik7PVN0hmxbyWyvfpY6Dj1GjbeV5MuGKw3YqhNO5YlAbfvL12clhI9nBQLXcFM3
         5WeE9zNeiQ3my0q2rkWwxebD5ZGmMSG/5MjY2+EkZ3/ORclCrT2bwMVONX4iFsVmESH6
         zc3ZeIgjopMsgwgFT9A/xhVDipS0p2IlOXUJ2QZc6NMpDmpu9GavWdDwfrTaOzqOEMmp
         0NmQ==
X-Gm-Message-State: AOJu0YwPVRetwvNJzDeAxMvh7QwGP6QrxMCCUXXIVJLG+PgIRd2UNxbx
	p7AgBX85x+JxfK1e3PEgfMpNareTAUWwLtGsdDaLrgOrsmtjFwD5SF9VLrsj0bY=
X-Google-Smtp-Source: AGHT+IFPuVl2pwhYs58a/814Kp59/D9rguXuwTfRN0RYq30qrIgfW8Bm54FV2EL1bVa8NjsPIK+nBg==
X-Received: by 2002:a5d:56cb:0:b0:33b:58c7:8281 with SMTP id m11-20020a5d56cb000000b0033b58c78281mr4623236wrw.10.1707725533918;
        Mon, 12 Feb 2024 00:12:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUby9XDbSTNlK83LEQK7IVwSO+SR/0b2tSBMLQk124b842PApqFpBwUgVPGCtLZUcc6VJ5b/qFxFaJUbfNyHVPkjQEjFy4IlTQb8N8TNZ1NqWkPv1f0Gy2Woolzs1hHqXcpKnuW1v2rL3JHZbvyuFD9jjPF9NEJAb7HzplFPcjwf4aKEc5YQKBPc78NiYfQ5s4bXOYEJT0pkknj09P9UA8UGxG2fzb8GdKRPWwevnO2m/djQ1brPi0GztF76K/3EVi+22FeRgKyVyCummK7iPrMHw95HP+UYk+TZvj0yFcjHxsb4neCb1pVY1r+17NRKcjPiXnS/9dvlt4P/LSsZlV+p9OqFV3W6UlsawoArRJ5yX6ezcAhvvIhKQyve/dACspzf74OHSkXnsCbH5j8z8YsObrtqx9PgMn7lAeQr+/ETV/9Ny3VOEnXn2kPzFEjJEI8djFybxDRHWBiGXlZk4AfTs9UC8QBjD0yNUsxQGGKaf0eI/8tl7r8rkoEju41s8RdxREwpLOQVmFCqaku222wKFS+mcz48AJSid5QIDQZo6fwP+8ZgXnEoezkjPo/roMTp1IVNg==
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id j10-20020a5d618a000000b0033b53d34eb2sm6033550wru.40.2024.02.12.00.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 00:12:13 -0800 (PST)
Message-ID: <7f7979af-8eda-48cd-a334-bb64ddf5b9b8@linaro.org>
Date: Mon, 12 Feb 2024 09:12:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] media: dt-bindings: Add bindings for Raspberry Pi
 PiSP Back End
Content-Language: en-US
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: David Plowman <david.plowman@raspberrypi.com>,
 Naushir Patuck <naush@raspberrypi.com>,
 Nick Hollinghurst <nick.hollinghurst@raspberrypi.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devicetree@vger.kernel.org
References: <20240209164825.166800-1-jacopo.mondi@ideasonboard.com>
 <20240209164825.166800-7-jacopo.mondi@ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240209164825.166800-7-jacopo.mondi@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/02/2024 17:48, Jacopo Mondi wrote:
> Add bindings for the Raspberry Pi PiSP Back End memory-to-memory image
> signal processor.
> 
> Datasheet:
> https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> 


> +---
> +$id: http://devicetree.org/schemas/media/raspberrypi,pispbe.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Raspberry Pi PiSP Image Signal Processor (ISP) Back End
> +
> +maintainers:
> +  - Dave Stevenson <dave.stevenson@raspberrypi.com>
> +  - David Plowman <david.plowman@raspberrypi.com>
> +  - Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> +  - Naushir Patuck <naush@raspberrypi.com>
> +  - Nick Hollinghurst <nick.hollinghurst@raspberrypi.com>

I assume all folks are fine being here?

> +
> +description: |
> +  The Raspberry Pi PiSP Image Signal Processor (ISP) Back End is an image
> +  processor that fetches images in Bayer or Grayscale format from DRAM memory
> +  in tiles and produces images consumable by applications.
> +
> +  The full ISP documentation is available at:
> +  https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> +
> +properties:
> +  compatible:
> +    const: raspberrypi,pispbe

Nothing more specific? No model name, no version? It's quite generic
compatible which in general should not be allowed. I would assume that
at least version of Pi could denote some sort of a model... unless
version is detectable?

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: isp_be

You can skip clock-names if they have only one entry and it matches
block name. Quite useless.

> +
> +  iommus:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    rpi1 {

soc {

> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        isp: pisp_be@880000  {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
so: isp@

and drop unused label

> +             compatible = "raspberrypi,pispbe";
ds,
Krzysztof


