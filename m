Return-Path: <devicetree+bounces-237258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06284C4EEBD
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:04:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97C723A6171
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774F1369969;
	Tue, 11 Nov 2025 16:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="pz7LyHwH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0767082A
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 16:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876967; cv=none; b=bL2i5euaFL5Mw9eYpx/WHnyc+E9mar2XWH/M5A0ESOzAkOlKYmeILGaJKr4bTZTFkFa6+Be0klePAXGyoH8Hx10r0oS3sfprxGM1ksfgnb7kkViPDMZPO7RP0uNd2UkYXOsUxLw6YkLyj1ghcUPUcI+ScuO7k0Bv4QrWj+cD0BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876967; c=relaxed/simple;
	bh=MQijt4CwckEgJm6q4AxePYM79/LzCpf3iwRr0lRZsZ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FPwGlA1WyCju9TUCgj0m8yPj303wr4WqEHl8LWCTTBMOoZqxEcuXhvGQXRwvgCQgo2KaapMR2c8g421Sc78blvjxaDKwpUkx7cznPfzKpQpgDfTDMZZdSfM6TtxUsE0iQgeq82bp6hE/36OcrjZKWifDjCjvorG+ZnmGskCC1QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=pz7LyHwH; arc=none smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-63e19642764so3678939d50.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 08:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1762876964; x=1763481764; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7VGf93EH4RNxVnue1hBByCb93RrqwGsGg2pi+iF8gn8=;
        b=pz7LyHwH4YJxk66i6NYCBO3VixcyIRjWatJYjkzHQNr5WpGZstcoHWiAYij83hbHvX
         sSg2/gey/XNV60LGs4DMl2jkungdkJaBXZovX8UMfz1p0BSVkQaiuTYr3WS3toEH25j0
         9SmBQirO9PZZxXq19or7i5YoHJ5pVjJJVmxnNiJhHi0N+sq5h8GVudE2ZigW1+1hQta/
         EKzC7rpMf+jcGCXjoObIu3Hd5cnNWM+WhAV7hm1gQwmWUsHGg9/AvQIRB2kx8nf/mXs4
         rNoJdjcLjCVz50auXyXjHiIZcA4h9pjJGVMXJrjcBjF601a7l7Qb3SMJgHjVUztwxjdH
         +FOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876964; x=1763481764;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7VGf93EH4RNxVnue1hBByCb93RrqwGsGg2pi+iF8gn8=;
        b=UleQuVhZA35bAh1mh+8ElqGK3zHOPd2S9OBlM+5h3VsCw5PuHnQTdALA+duuxT3Php
         4DABE6t0F9QMnMrCiT+4tbiI07X/mV9YvLMaIn4oRxKRS2lOkvMSdon89zBUFMYP6kv9
         8OX7sTarwhi9ufh8GwvZQRAKcvC/A8Y8RNaMtDIXbaSodh4mRkRUvs1/pG+lBYoVe+yF
         NHUkx/o9UgbHFtdNVub1DQFpnOlik4e78vsVMvZkr8yPb29e4vRFO2W6CUAsynXA6UrV
         /Xx3mthzzx+e0iwpNrUKOPwYaMnG5NOoz9FgCX3n9+4UAb6nWJJCICPYYVAsJqc5/VIX
         RlYg==
X-Forwarded-Encrypted: i=1; AJvYcCWyic8mOqyUyB4Dlp4clu5uCp5xY17SbykWg4LTaiJoFJqHlC8YWyuOawz/AVESOJOGo/+0W5/ZWJcj@vger.kernel.org
X-Gm-Message-State: AOJu0YzE6uGA85N6zsNnJ1Aja6rGHcKbhg4vj+JzJywwKzQUDt0H90O3
	nAn/FYBtHpOCQM+6zI+d6s5eviZXvO96Pk2PoHLuNMXeqWtTY5DCF2L4VYogRwvCDxA5wlzgGM2
	owlYoBXsfA/gKJ0Hxgzc2QdGuZQmqde7dzvgu+ExiVQ==
X-Gm-Gg: ASbGnct03IBWhnfxYqPgeTi60fasjdvliinc3QKoGYe8jgVSo4Fb33uPtHRppOXxHJV
	/XMmeAmf2frVPg4WZmz5qWN1s7xaqpHqP4MXooyDlQAv6et9lvWnpveS/cwqwUzBAnwc+Zip4dV
	PwdQ4ImLfmEKwIaFcuFq6kgNIfslDFXZKmZlZhLLsmxlg0F8fp5bcio8jOPsT6GixnOEbCIxIza
	4POAHQ/Bs0WOj7Chb/1qs7NglG6/lDCLTeK2kS+UG1tDkeFXRgINfRe7mUUAFQhFbkrC2j6f6ui
	+mJ/kECWokmtKOe7/6cTN+lqqaA=
X-Google-Smtp-Source: AGHT+IHxVfzcMnjoT9N0Epbh4e69UMgZVPS9gWPURg0lmuKfEkoOqup3rLUdLbDvLJaDIqxZPliyLE1m1nVnk7BWeFE=
X-Received: by 2002:a05:690e:165a:b0:635:4ecd:5fcc with SMTP id
 956f58d0204a3-640d45b7544mr8090631d50.41.1762876963963; Tue, 11 Nov 2025
 08:02:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111-b4-adv7180-vpp-sub-device-v1-0-9877fe9f709b@pengutronix.de>
 <20251111-b4-adv7180-vpp-sub-device-v1-1-9877fe9f709b@pengutronix.de>
In-Reply-To: <20251111-b4-adv7180-vpp-sub-device-v1-1-9877fe9f709b@pengutronix.de>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 11 Nov 2025 16:02:26 +0000
X-Gm-Features: AWmQ_bmAIYxWZ7diJ1TLx2sT3u4adg74eDkUo7h0AihqpsN2m5_Gy1r6II0S33E
Message-ID: <CAPY8ntAAbXq--N_=Lk-GeNMOt7Ucpm2zfkKOnvXB2bhY4i84zg@mail.gmail.com>
Subject: Re: [PATCH 1/4] media: dt-bindings: adi,adv7180: add VPP and CSI
 register maps
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Content-Type: text/plain; charset="UTF-8"

Hi Michael

On Tue, 11 Nov 2025 at 14:50, Michael Tretter <m.tretter@pengutronix.de> wrote:
>
> The ADV7280 and ADV7280-M have up to three register maps for the VPP and
> CSI. The address of these register maps may be programmed via registers
> in the main register map.

AIUI all the ADV728x devices have at least 2 addresses, signified by
the ADV7180_FLAG_MIPI_CSI2 and ADV7180_FLAG_I2P flags in their
adv7180_chip_info structures.
Is there a reason that you've restricted this to just the two chips?

adv7281 - CSI
adv7281-m - CSI
adv7281-ma - CSI
adv7282 - VPP
adv7282-m - VPP and CSI

The adv7180 and adv7182 families are the only two which only have the
single I2C address.

Thanks.
  Dave

> Allow to specify the addresses of the VPP and CSI in the device tree to
> solve address conflicts on a board level.
>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  .../devicetree/bindings/media/i2c/adi,adv7180.yaml | 44 ++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml b/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
> index dee8ce7cb7ba..4bbdc812442b 100644
> --- a/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
> @@ -138,6 +138,31 @@ allOf:
>        required:
>          - ports
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,adv7280
> +              - adi,adv7280-m
> +    then:
> +      properties:
> +        reg:
> +          minItems: 1
> +          maxItems: 3
> +          description:
> +            The ADV7280 and ADV7280-M have up to three register maps, which can be
> +            accessed via the I2C port. The main register map, the VPP register map,
> +            and the CSI register map. The main register map is mandatory. The other
> +            register maps are optional and the default is used unless specified.
> +
> +        reg-names:
> +          minItems: 1
> +          items:
> +            - const: main
> +            - enum: [ csi, vpp ]
> +            - enum: [ csi, vpp ]
> +
>  examples:
>    - |
>      i2c {
> @@ -187,3 +212,22 @@ examples:
>                      };
>              };
>      };
> +
> +  - |
> +    i2c {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            composite-in@20 {
> +                    compatible = "adi,adv7280-m";
> +                    reg = <0x20>, <0x42>, <0x44>;
> +                    reg-names = "main", "vpp", "csi";
> +
> +                    port {
> +                            adv7280_out: endpoint {
> +                                    bus-width = <8>;
> +                                    remote-endpoint = <&vin1ep>;
> +                            };
> +                    };
> +            };
> +    };
>
> --
> 2.47.3
>
>

