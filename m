Return-Path: <devicetree+bounces-246821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6665CC0756
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 02:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A51A3007613
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 01:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2FAC26D4C7;
	Tue, 16 Dec 2025 01:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t5jDhLsg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15742222D2
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 01:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765848526; cv=none; b=nq052Jxdr9qO1gQdYbihHVbPv5l8IKMsMS/gy+v0+TFA19XWg6ln1iZckQmUsOp8uGqmlL46iE58SV0XHp2nh/pud7COeEdjB4ZRRwwvQlVrCM+kQO+VYJ9awXAHfc1QQfW6rbry12f8+Msmr21pIxVfgWy81UbYm82K5bpimv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765848526; c=relaxed/simple;
	bh=hJQUyd/Tffm4SCpUfbJx2EUwKEwz+GfXfQplQOV4Cwc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dsFm5sFso4NrHEOrxjERsCU5O1R5BlR42yy+5ci/lTxBPVr0W2tuQKoz1jS1pU5OG2GHqC6eVZkbqgondU6LVwnTp+OGsAamqRbZks2swy/q1Km4cinEKR9CsbVsebiX/MzWdEhFkpk/ujuZp5Ds/CbTwCyzwac+peXx8amLTkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t5jDhLsg; arc=none smtp.client-ip=209.85.208.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f193.google.com with SMTP id 38308e7fff4ca-37baf2d159bso8936411fa.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 17:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765848523; x=1766453323; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VoJUokXplFCLaNhrWfSaomcCO83EZ2+r6h6vZ/nLX9k=;
        b=t5jDhLsgEA/rYzJhUflhqs0LBDv3oknYr3gYAVKml1h5BtX9Y3Nzv7sB4hCLc/KY3M
         1Soz5w6tGXad08wVZTm3HnPHQXqBdMN8OpvqBZqwcGmS76YFEal/BlnrJ611LuBMsFR3
         +YIZODWtWa6pPYaxcEndzI4SJma5w/0TRwVXWZ0DX2CN9mFToKLaH3CryF1EoJVS5RUM
         E9uJpBqb7kUVQCnEegos9iguzzEZgoBzDgQS3t67f7H5GZ7PFYJDX41lTbYaDJO4i4pd
         jm/KQAwxLGI8KWDkzn46TnQpSPbdTe5THDFuxtZ0C9fHvpLPGGpkTDSaZQkUtJ9gAhww
         46Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765848523; x=1766453323;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VoJUokXplFCLaNhrWfSaomcCO83EZ2+r6h6vZ/nLX9k=;
        b=iJfHHOnPthgC17sEAGepkQmKpBIK28NZWP6S+scfMTzUGupTmJp5bApADJMyFk9T65
         qOTWcyBFaZOHDLGvw5Dzy6kKy5uOWrwznSBwpKUGoHDa5jWKpi7QZ+Pz03HsYnGSMQl6
         cKRNeUZwRrnHgW93O/OgdPSfDmK9uHwf2AqM+O6flhqZqrv1l6PgaepInBlbYsDkt30T
         ioBWNf0NjGyZAiEXS7abWjooY5z8QjCEqzh/sEIDaD/LlFCzl/aUWL7fAxC1rnDymFgz
         DQlWJiRaO9ytWQijv16aLoUsy9Y4Fdib7LB9AgQVzxuw2x5JOJu2XfwMbpkYIcnFHvRs
         JAuw==
X-Forwarded-Encrypted: i=1; AJvYcCVt+rRN8m071ld8KoFDRgy6IQAEk720vykJsePy3Jh9gWA+XbddjOEw0jGt5zeUSbfUy9pyem5lXE9M@vger.kernel.org
X-Gm-Message-State: AOJu0YwNBiYGlgPPzHpFMjdakA1I81+HKZTGjHg04Z2xP7UMd2CwwI0/
	IoGwDy54l3PwZFuqIzFwCQjyZA7Fu2/MqVnA+FzF6gJDsnhDE8a6CP/llTRbRFIILuE=
X-Gm-Gg: AY/fxX4iIYOz/HNcWgclk/DZwxwj6ImsFIPby4tQTYhrD2ka9KdL7efSJigMvqMIl+8
	fRRAxBtmYmwYk6lJL6loPntlZxofN6XAS0YjzhrjXVkGBbNFvyD8/7zsGKs040Nk6ElRk2/gQdz
	tgeVFl/papQ05cZpBHh0u3b+ZUqsTdAc/eeDNUZpXqVo7lRRTLvzTsr2gKBa2w9Ly+rmkv9ekZQ
	whvXCSYkusq3hoO7lKMPvJtaa+cfvSrW3JGA9BPyEtoeXJwLKU7zNwx6dXIWWG7sEwDbS7eNNPq
	3+30JP9e1uSQYTg6sK5v0CuR0Ht6wQH+3retO0VqPdNC7bLZLbqefEHIY+7gc4InSTaknbpwUlF
	IUVe3KRdMw0xajQa/KIpbYghfA/NNPE0FkVCNqCMb28f/96ZvKOHpxdFXsV3caTbfcCZ17/xOYC
	zWgyeZ4z25LwjB9ZRJ5ZVua2tTQ8bwiR8OSkNn1gbuXK/QD+wk5yT+S4S+OS731TbJeg==
X-Google-Smtp-Source: AGHT+IHC8WNjiPU6d4sbijzNDiCXOegmWUkXuJiGVWiO79To/fTnH5v2SJuBpVOneaerqNjbtzcoAA==
X-Received: by 2002:a05:651c:2122:b0:37f:aa44:2d2c with SMTP id 38308e7fff4ca-37fd08cfc7cmr20712321fa.6.1765848522995;
        Mon, 15 Dec 2025 17:28:42 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fdee05961sm31751041fa.44.2025.12.15.17.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 17:28:41 -0800 (PST)
Message-ID: <ea9371e6-f986-46df-9200-b2f009c09773@linaro.org>
Date: Tue, 16 Dec 2025 03:28:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: media: i2c: Add os05b10 sensor
To: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>, robh@kernel.org,
 krzk+dt@kernel.org, sakari.ailus@linux.intel.com
Cc: Elgin Perumbilly <elgin.perumbilly@siliconsignals.io>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>,
 Hans de Goede <hansg@kernel.org>, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Sylvain Petinot <sylvain.petinot@foss.st.com>,
 Dongcheng Yan <dongcheng.yan@intel.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Jingjing Xiong <jingjing.xiong@intel.com>,
 Heimir Thor Sverrisson <heimir.sverrisson@gmail.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251215153932.46276-1-himanshu.bhavani@siliconsignals.io>
 <20251215153932.46276-2-himanshu.bhavani@siliconsignals.io>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251215153932.46276-2-himanshu.bhavani@siliconsignals.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/15/25 17:39, Himanshu Bhavani wrote:
> From: Elgin Perumbilly <elgin.perumbilly@siliconsignals.io>
> 
> Add bindings for Omnivision OS05B10 sensor.
> 
> Add MAINTAINERS entry for Omnivision OS05B10 binding documentation
> 
> Signed-off-by: Elgin Perumbilly <elgin.perumbilly@siliconsignals.io>
> Signed-off-by: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
> ---
>   .../bindings/media/i2c/ovti,os05b10.yaml      | 103 ++++++++++++++++++
>   MAINTAINERS                                   |   7 ++
>   2 files changed, 110 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,os05b10.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,os05b10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,os05b10.yaml
> new file mode 100644
> index 000000000000..b76771d81851
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,os05b10.yaml
> @@ -0,0 +1,103 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ovti,os05b10.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: OmniVision OS05B10 Image Sensor
> +
> +maintainers:
> +  - Elgin Perumbilly <elgin.perumbilly@siliconsignals.io>
> +
> +description:
> +  The OmniVision OS05B10 is a 5MP (2592x1944) color CMOS image sensor controlled
> +  through an I2C-compatible SCCB bus. it outputs RAW10/RAW12 format and uses a
> +  1/2.78" optical format.
> +
> +properties:
> +  compatible:
> +    const: ovti,os05b10
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: XCLK clock
> +
> +  avdd-supply:
> +    description: Analog Domain Power Supply (2.8v)
> +
> +  dovdd-supply:
> +    description: I/O Domain Power Supply (1.8v)
> +
> +  dvdd-supply:
> +    description: Digital Domain Power Supply (1.2v)
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: Reset Pin GPIO Control (active low)
> +
> +  port:
> +    description: MIPI CSI-2 transmitter port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            oneOf:
> +              - items:
> +                  - const: 1
> +                  - const: 2
> +                  - const: 3
> +                  - const: 4
> +              - items:
> +                  - const: 1
> +                  - const: 2
> +        required:
> +          - data-lanes
> +          - link-frequencies
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - avdd-supply
> +  - dovdd-supply
> +  - dvdd-supply
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        camera-sensor@36 {
> +            compatible = "ovti,os05b10";
> +            reg = <0x36>;
> +            clocks = <&os05b10_clk>;
> +            reset-gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
> +
> +            avdd-supply = <&os05b10_avdd_2v8>;
> +            dvdd-supply = <&os05b10_dvdd_1v2>;
> +            dovdd-supply = <&os05b10_dovdd_1v8>;
> +
> +            port {
> +                cam_out: endpoint {
> +                    remote-endpoint = <&mipi_in_cam>;
> +                    data-lanes = <1 2 3 4>;
> +                    link-frequencies = /bits/ 64 <600000000>;
> +                };
> +            };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 663e86eb9ff1..c85915d5d20e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19234,6 +19234,13 @@ T:	git git://linuxtv.org/media_tree.git
>   F:	Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml
>   F:	drivers/media/i2c/og0ve1b.c
> 
> +OMNIVISION OS05B10 SENSOR DRIVER
> +M:	Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
> +M:	Elgin Perumbilly <elgin.perumbilly@siliconsignals.io>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/media/i2c/ovti,os05b10.yaml
> +
>   OMNIVISION OV01A10 SENSOR DRIVER
>   M:	Bingbu Cao <bingbu.cao@intel.com>
>   L:	linux-media@vger.kernel.org

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

