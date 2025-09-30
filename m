Return-Path: <devicetree+bounces-222563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC767BAAC84
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 02:20:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BD0B189D748
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 00:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB5E13EFE3;
	Tue, 30 Sep 2025 00:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aeTUPpAF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC8439ACF
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759191613; cv=none; b=DrLGoTE5p0U6qGDjrfh7Xw30uG99QXsQiNS4A3gJiYvkFyMt7RIVKZjcTf2s3Bpo1NzQU7KzXGP8674+7XR58Q37jF8t+cY2ATBB72D8A9dLvk9fUWA7iob6PLFuErC2k2vUO1obfAqwmEhbmY1lPY481JJfQGoMe5o2DiKWKJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759191613; c=relaxed/simple;
	bh=bGJExyvnphif6tEqyhuSLem/gtWUtTjLU/NamGZuKDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H3SjPpt7463Y954q26f8+CVvGipZnHC4E5MPxFUVCAYZazIhBXxbMjfRTf0xhC+FgA78KCYFj9xyfsyfVmJCRvyLwu7ay0CFrWW8cvTgXcKT9d0dy+JdpfXWOODYSGaXfiVEQGMSKbsPFpvdRzERkvkoihVNTO1oBa1KKR9vWmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aeTUPpAF; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-46e3af7889fso29331715e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 17:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759191610; x=1759796410; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d2aCUV6OLkXwTtwNzSY66MPjJRvAozma0kNGW9LaNrE=;
        b=aeTUPpAFcFjVVztIwRLOygSFFOCICyk1pi+SLaBo1O7Q/0i63V4Aw5JK3qb0qKlofx
         V6+M2hwmLuUAzZ8+I4mHrUK5CLaXDQbwlU7wz6KdP6dV3azxKQ6afoE8L+4TJrVHG3MP
         u84FIxpXONcVMyAf8of45olXaSzkU2pz63Dhi8ROpCQsvHjAoYgCBdkYSisgIgNsbGb2
         QlJwDUzDDD4IcIK7hd5NQjBChwPSOqZEeamDCOUq/lBHdDnK03IlfWWnOMjYM1/eaSrX
         0m4ZmKQXC+hykGUbLSLJUDFjSiqDVTa3RD0kzGHUMoG9ivFj7G6m6BlvZqACrRUqifxF
         XYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759191610; x=1759796410;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d2aCUV6OLkXwTtwNzSY66MPjJRvAozma0kNGW9LaNrE=;
        b=wx8i5P8ZhxhyZYkY/8L1WC9ayU8OAz8PJv5u0/gndcO36MzQdUrS5VAOnXeUdToi8F
         LrXQHrE/TnDFHI6Axy9/g7LZbMI3L8sz8jLTme7kPKA419W2BTEQDWBRD2oFNihy80/+
         8u2PIpdKIM0njXYnTSSHGG98dFeda0u76VrrMPJMGJIsPXxaii3M9UiYlr0p8o+lfQ0i
         wjLG/TfoqfZrfAdoq3E4HzGCIB0mxARMK2IAXvgwvGPQyFXSha4SbTrQDODCg5EBCbBN
         d8hpLDdqSRqwJUeU/EFtMm0Ijao7etRm5dDfQobNM9SxZn69+cZQqkdwONGSlHUr1QNv
         LEHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfoOvtZr+ST6y8yDDZ8Gk5VscP6wm+NVgeIN4/7OGv3f2K0r380+JdKfrx9iXl46Z1hOZWBM8p/mmU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4BwxrMTbIy13kIwJtG4vCXmH3YWI96eKtF6Wn1H0xfASs7X6u
	6p/uvtFKKPOHq96V4ALOVuXBicYtCUgO9rOHX6wgZquYYiiAcUjJyqY6/5VVyfT4olw=
X-Gm-Gg: ASbGncti1OMJrl4iVS4i0Nsf1BZwsekh8gtZ+TPFYRdGxi31/Ns2a5uQlxwXG+J2Xy4
	wj/jFR0h1VeCrzQ2QIDABR6TBgpCWLGVjFIeVWbOFD5SSuUoKSAptILjtyXf//JzfUCx608/tt+
	X8A0ppM4AMqy6INP5iMI3Hm5FXrI+enNsEhWEZah44+fpjNL4pqlsZv+elhYHVHdG3QYgjzZdI3
	AAg5DvfydQyjwR0/ezurCDln5cTxJvQo1p1LAVSwt62dKDqve9S/ojGO7p8VNfY8+N7tL2Ekxgo
	Uc5qZdxXHGAX2HODX+tdYridt9UwFTh+a4XNRrt+oFgqt4+KimsziEqEWHX/eEVWccfqbPJbYCH
	dwGtfaBzYc0AeAcYVtRijb8UV/pEMB/j/Vd4TdB9NoDYZhtmumZyOyKXtmKDrLjNE9YFiYzS5Fj
	OwOyZxPFk+dX8b1HEjGTkpwyM/eIKO9Jo=
X-Google-Smtp-Source: AGHT+IHXl9KNUIAY5LT7IQhdhWGKaz6kpmbHg2ltlnlV5LX2piwjkJPMXt7gP1unlCKB0JI7t/YWLA==
X-Received: by 2002:a05:600c:8b65:b0:46e:36f8:1eb7 with SMTP id 5b1f17b1804b1-46e36f81fbamr160812465e9.10.1759191609420;
        Mon, 29 Sep 2025 17:20:09 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e56f3dcacsm33715495e9.2.2025.09.29.17.20.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 17:20:08 -0700 (PDT)
Message-ID: <1ccec2cd-0290-4804-b274-b3dcb481449e@linaro.org>
Date: Tue, 30 Sep 2025 01:20:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 04/17] media: dt-bindings: add rockchip rk3568 vicap
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
 <20240220-rk3568-vicap-v11-4-af0eada54e5d@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v11-4-af0eada54e5d@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/09/2025 16:38, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> Add documentation for the Rockchip RK3568 Video Capture (VICAP) unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   .../bindings/media/rockchip,rk3568-vicap.yaml      | 170 +++++++++++++++++++++
>   MAINTAINERS                                        |   1 +
>   2 files changed, 171 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml
> new file mode 100644
> index 000000000000..99861d236f5e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.yaml
> @@ -0,0 +1,170 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip,rk3568-vicap.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3568 Video Capture (VICAP)
> +
> +maintainers:
> +  - Michael Riesch <michael.riesch@collabora.com>
> +
> +description:
> +  The Rockchip RK3568 Video Capture (VICAP) block features a digital video
> +  port (DVP, a parallel video interface) and a MIPI CSI-2 port. It receives
> +  the data from camera sensors, video decoders, or other companion ICs and
> +  transfers it into system main memory by AXI bus.
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3568-vicap
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: ACLK
> +      - description: HCLK
> +      - description: DCLK
> +      - description: ICLK
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +      - const: dclk
> +      - const: iclk
> +
> +  iommus:
> +    maxItems: 1
> +
> +  resets:
> +    items:
> +      - description: ARST
> +      - description: HRST
> +      - description: DRST
> +      - description: PRST
> +      - description: IRST
> +
> +  reset-names:
> +    items:
> +      - const: arst
> +      - const: hrst
> +      - const: drst
> +      - const: prst
> +      - const: irst
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to general register file used for video input block control.
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: The digital video port (DVP, a parallel video interface).
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              bus-type:
> +                enum: [5, 6]

I meant to add my nit-pick comment here as I added my RB.

Its not important though.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

