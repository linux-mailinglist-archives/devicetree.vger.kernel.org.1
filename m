Return-Path: <devicetree+bounces-234761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5B5C30787
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 11:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 935D63AB9A0
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 10:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3741F314D04;
	Tue,  4 Nov 2025 10:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="i+Ef7W2B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A94B314B68
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 10:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762251666; cv=none; b=Z4s03mVIKtKi3ZmGeC+RUkGHKUzcke67u38j9dLl/PEnGIpDCfSxA3c+TXC1BCewUvklic5AwKmWuNluqz80hQO87G9Mi5hxgvB0brWCngrfnkxRXL235KCKQ2jNkgHaLVUh9MnIr3e07/En08/EKJX6+WGg4QflqaigG7hB76I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762251666; c=relaxed/simple;
	bh=5J988xgzUoKhpnIV8wJJmIThAQtBkhT8F7us5dAtIOI=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=McmAPyBknIMaBYq0Joq7bVKT4oQLb7gbkTKmez7RoQW0GSX1r4eiQ7dtPN98DR3hiNwFzrRN2zjAl6h1ww8NeDWLgtTnElwvwbqUCOLlpn+j7jcdoLAi3+tYuux7kn63/Jrntz1P7tfRQcjapa8eildt6NQ2JC18lhhV2FJbT88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=i+Ef7W2B; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so982252466b.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1762251661; x=1762856461; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/RFo3UdyJ5uBJavOLzu9OBwxixnA2BpiywkHJoYEzQ=;
        b=i+Ef7W2BajNHzs21IFAtNFyykvGoKg3sW9vTirYNJizgQSaEkLdQxJGQ6VrF19CuwK
         OV7ttoJIDL+1szbTbGBp/wKU5QbpBR18iGndfdGNLDKdY8ftp3Xs/Zda10uClHHIiHOv
         mHQSRYK9vwqIQ+yDmy2MCiTk3cZpoBq7bzD8L+isd+tIkZg8VbCXf3+aw/JeRQeuEDZc
         MMElD66FDHO/GEQUXqABAvAMrT/RStIMdVswU2KYia1BeexFHcy1HmK13fcZG94TReAF
         zJ0AxP8STtZHmt84zMUHcBQmfAjTg0+k/ExKm5kB+fKtZAOMj5i37uO7Bp/L7ILyB9tt
         df9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762251661; x=1762856461;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6/RFo3UdyJ5uBJavOLzu9OBwxixnA2BpiywkHJoYEzQ=;
        b=jshUqdpeu09d5Cg4g0u/rD8PcJHuM3TgtxzDjo2LCJwpM7e62TkcorylLR+CyuN+d7
         nSbjbfcwlTrWtrglzmqUnhVtmSSTjfbdRq6uqV1gWHrMiUWpANkf5Y9h3Vka5qQSEiTL
         UVvOeR36MSw9FyyWr93DNfUPflXQHXqmqs/NVugMCCPk7vi0VrpqKgedupKFVKgv6gWd
         Y4Ug27IKKljojTfQyph9WOcQ9lYaYBgbe8JSwSQ4nnHUBuSd1RGsixdoPq56QF8Ir3B1
         8w61UhtXg13hFy2nM0Ct3/nOWr/uKAYRiYzxBh7avCAKCa64inrt/WCQf2TtrzhdHDfm
         96LA==
X-Forwarded-Encrypted: i=1; AJvYcCVprq5eVH5ZhNW/uJ5WGdBIXfoEeAotF0nBeDR6bdSZLQkAJwR7fx87PYGZK0jD80oY7izR8TIDNrse@vger.kernel.org
X-Gm-Message-State: AOJu0YxaDnYwQ0xnKDfIyFrSV+ybrwT3nXHRS9l0A89/UmOUy0vpR5zs
	gzSF6zTNtbGU15CmRB8jcQ/Kz22PM3UMn6RQYqNdAXbVtP/IsvxTMEXp0rt85YjurRA=
X-Gm-Gg: ASbGnctRG7EWRwiUbzakU9B7MM8GMen0CuXvV8NJKqljWxoVIkTkeoyg5gLXVe2tBh+
	4vRLRb/IG5zerlYyEvFBcdcx7ickP+e/ops4tUHBvvtp2QPysgc90QCtQc0OcjEmALPVTR2Ci07
	XmkeOzHjPxtB+jqH2w6DJ+BjsS825s4fmdex3zXEHFHWG4o5fYFPsELmuSq/5xI9NOSXeNrimP7
	XZ9j3YiYvV7H4D24tppYlBWpOkkS1sQwJzH82wHO3XgYCaL8et/oxXF2BOcO7eXTPuM2rbcGYLn
	0vZXXzeJmNB5gOiZPagc76dBKHNGaAV31BPe0viuSF6+CW5Pl7t4zncXAHeFpKaBw1l1JhWaxfS
	sfi8++Luor9RXQbsGvtbNrjriwrc9ykGMGLe3MZXCtBqN5JbFQCTh931XM4XlAhpbfIla9KW1Bp
	ooQUaHE5DAHlcANDuwoGmTNTizQ/pWfM7daJEJ3GrQJKPaTQ==
X-Google-Smtp-Source: AGHT+IFEjC7oZkjOCH8J2UshvPQf+tsl/dOaxiMblcsbQfzjgzuRO+SX63ddsnmaYogAi/EotKBWQg==
X-Received: by 2002:a17:907:7e8d:b0:b6f:198e:c348 with SMTP id a640c23a62f3a-b7070630cfcmr1768373266b.46.1762251661432;
        Tue, 04 Nov 2025 02:21:01 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d3a378asm170655866b.5.2025.11.04.02.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 02:21:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 04 Nov 2025 11:20:58 +0100
Message-Id: <DDZU2RL00UD8.39GS3LN0SW7YA@fairphone.com>
To: "Vladimir Zapolskiy" <vladimir.zapolskiy@linaro.org>, "Mauro Carvalho
 Chehab" <mchehab@kernel.org>, "Sakari Ailus"
 <sakari.ailus@linux.intel.com>, "Hans Verkuil" <hverkuil@kernel.org>, "Hans
 de Goede" <hansg@kernel.org>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: media: i2c: Add Samsung S5KJN1
 image sensor
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251023025356.2421327-1-vladimir.zapolskiy@linaro.org>
 <20251023025356.2421327-2-vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251023025356.2421327-2-vladimir.zapolskiy@linaro.org>

Hi Vladimir,

On Thu Oct 23, 2025 at 4:53 AM CEST, Vladimir Zapolskiy wrote:
> Add device tree bindings documentation for Samsung S5KJN1 image sensor.

Awesome that you're working on upstreaming support for this sensor!

This sensor is used for the front camera on the Fairphone 5 so I'll give
it a try sometime soon. So far I've been using my own version of the
driver in my tree.

Some comments below.

>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  .../bindings/media/i2c/samsung,s5kjn1.yaml    | 103 ++++++++++++++++++
>  1 file changed, 103 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s=
5kjn1.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.y=
aml b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
> new file mode 100644
> index 000000000000..f0cc0209b5f0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
> @@ -0,0 +1,103 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/samsung,s5kjn1.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung S5KJN1 Image Sensor
> +
> +description:
> +  Samsung S5KJN1 (ISOCELL JN1) image sensor is a 50MP image sensor.
> +  The sensor is controlled over a serial camera control bus protocol,
> +  the widest supported output image frame size is 8160x6144 at 10 frames
> +  per second rate, data output format is RAW10 transferred over 4-lane
> +  MIPI D-PHY interface.
> +
> +maintainers:
> +  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> +
> +allOf:
> +  - $ref: /schemas/media/video-interface-devices.yaml#
> +
> +properties:
> +  compatible:
> +    const: samsung,s5kjn1
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    description: MCLK supply clock.
> +    maxItems: 1
> +
> +  reset-gpios:
> +    description: Active low GPIO connected to RESET pad of the sensor.
> +    maxItems: 1
> +
> +  afvdd-supply:
> +    description: Autofocus voltage supply, 2.8-3.0 volts.

This is not part of the S5KJN1 though? If you have a VCM for the lens of
the S5KJN1, this is a separate DT node?

> +
> +  avdd-supply:
> +    description: Analogue voltage supply, 2.8 volts.

The datasheet calls this VDDA

> +
> +  dovdd-supply:
> +    description: Digital I/O voltage supply, 1.8 volts.

The datasheet calls this VDDIO

> +
> +  dvdd-supply:
> +    description: Digital core voltage supply, 1.05 volts.

The datasheet calls this VDDD

Regards
Luca

> +
> +  port:
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
> +            items:
> +              - const: 1
> +              - const: 2
> +              - const: 3
> +              - const: 4
> +
> +        required:
> +          - link-frequencies
> +
> +required:
> +  - compatible
> +  - reg
> +  - port
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +      #include <dt-bindings/gpio/gpio.h>
> +
> +      i2c {
> +          #address-cells =3D <1>;
> +          #size-cells =3D <0>;
> +
> +          camera@56 {
> +              compatible =3D "samsung,s5kjn1";
> +              reg =3D <0x56>;
> +              clocks =3D <&camera_mclk 0>;
> +              assigned-clocks =3D <&camera_mclk 0>;
> +              assigned-clock-rates =3D <24000000>;
> +              reset-gpios =3D <&gpio1 10 GPIO_ACTIVE_LOW>;
> +              avdd-supply =3D <&vreg_2p8>;
> +              dovdd-supply =3D <&vreg_1p8>;
> +              dvdd-supply =3D <&vreg_1p05>;
> +
> +              port {
> +                  endpoint {
> +                      link-frequencies =3D /bits/ 64 <700000000>;
> +                      remote-endpoint =3D <&mipi_csi2_ep>;
> +                  };
> +              };
> +          };
> +      };
> +...


