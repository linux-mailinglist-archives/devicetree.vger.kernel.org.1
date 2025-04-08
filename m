Return-Path: <devicetree+bounces-164115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF0A7F398
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 06:30:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F9733AFF19
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 04:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01AD9202C3E;
	Tue,  8 Apr 2025 04:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hWdMTvDP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437981A9B32
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 04:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744086629; cv=none; b=e0dgZdrbnRjN/ZZQnr0fxmwSb2++LpNucQwv+nXigrhpq/QgCAZSM45eTXg0xkObw9xo/ssiwlmdqLtLW+G5xOcUjRB8tT8xlBQrOL4H96wpBWc7DqvUNQE655CEffMwoyOv8CAMuxGbhQ8DKu8qzz5T1bBV4yicKwaZOe1A9Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744086629; c=relaxed/simple;
	bh=iyXwAoHuhvl6gMeqiYjfxKQ6fYCfi84EobhT7OOmjNU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lxt8usqdWJ/cOQPq5m9xm6ZHzMon3F5Q4D1ugvtdRcSH1Cd883hRFbCXQMGNXv6MJUnJPCvav63gcKZGC7a0MRUv6B+7c6vngKH775s+Egahb+SjZw/92ex0/ExnPdmuFhM3T2yU4CNm80VrWGGBLRRwd4Owgdxga2i5LySjta0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hWdMTvDP; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2c2c754af3cso2559595fac.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 21:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744086627; x=1744691427; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k4OEy6OZhlILwQSjnmY1MsVbpm/U0GgRRZk6ChIa6gk=;
        b=hWdMTvDPugpBVtPx8KCTgOfOPxZK2Ss9BCJt9XMckJJwGBEHW3ed32bnE/dT6B556a
         LdvQUwpSEyY1+Bly9ATUYgxH/DocMVAMkJlESPsesyZ8VfNDjPVYFh9Sw/cKZ2XoWtxm
         1iM2md0D2xPoMaD6afaYf/8oyZTPBQsq7Q7ng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744086627; x=1744691427;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k4OEy6OZhlILwQSjnmY1MsVbpm/U0GgRRZk6ChIa6gk=;
        b=KqobFwYPraTgEo/2v2a4L0emuquukSaJImkzYT47oBzrBi1i1Y0ujqtaJUYYKuwZPB
         J6EmWAkSh2C/sOBJC1Vl0R8xDftgNp3xEg0q7uymju/pGGyRP53zOsoxPkOgIakvM0qg
         XCfYRxybP3lD9MRog630ux5/eOaUGBTmWgfx7rWiMu9gECN45q3MfgJOnd2m3qNbr82T
         vBY9KDGSpF0r0KLFYTLI71gyljUHXToS4LHvlz4mdKmug15dTGDNKg87gpDEBwPa0f2y
         6OupGL+FGscOYKd32D8JpWj8OarU/bQkMm+OVHF73LdPCWvRjJyZJC5qCUDqLag+DrdL
         UaMA==
X-Forwarded-Encrypted: i=1; AJvYcCUTcjfxiykgy1YQbP+vg2e7WXUmaD/KkCdT34NB7/rnnrwf0aMNA2hH0IhHp5bm5H+odH3ehYyYRVrc@vger.kernel.org
X-Gm-Message-State: AOJu0YyrG6n+cHjRA0KnpXPk6Qv/7cg2dsC+jKBxGAeiqdZFOvgqI8i2
	zd1TCEqld1sLUfQ4JXmbs8r/YfNDif7l6/5S60etgvqiSP0FRDE4VFFCRUu76jOqWwZUQAwQuNf
	nHm8w1SMZITsNGGvbLOXjY5ejfjE8SSG6wzyJ
X-Gm-Gg: ASbGnctC4pMkczciO8d2bf5YtsvkoTt5O+haAZA/4c19h4D4z46HBIZBn2v6Nnhlu9p
	diKexw96YYA22cKF3GcINYfVc57vNgIoTInGGSUf9NegVKoPNgrDkBCBmIx6keosOcXbsjn1Xwy
	wrk1NWN6/wMCA8lYVaXJnBnCyLxSy6CbZ/Bwo3gdScTvEMTZmy0E1m3w==
X-Google-Smtp-Source: AGHT+IGIaWa+KfgK8+1VG5ShGQowLo7UFNgp7dmEufosO5bvsNVXRW6PMAFRdrmAeiUK8d7+qNV0I3u3wqhsch7YYTc=
X-Received: by 2002:a05:6871:a4c2:b0:2c2:d2b8:e179 with SMTP id
 586e51a60fabf-2cca187da20mr9125832fac.4.1744086627210; Mon, 07 Apr 2025
 21:30:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250328082950.1473406-1-treapking@chromium.org> <20250331-loud-micro-booby-e0fd4a@krzk-bin>
In-Reply-To: <20250331-loud-micro-booby-e0fd4a@krzk-bin>
From: Pin-yen Lin <treapking@chromium.org>
Date: Tue, 8 Apr 2025 12:30:16 +0800
X-Gm-Features: ATxdqUFiEcJNcUtOjwZOM-aq3gBXz60X9bqBSIobqCxKWQP0Fw3DK0sWRPkE5Yo
Message-ID: <CAEXTbpf9crpkTGctoWseoG1fz=jvUbiTi6e2adZy0JJu78dTgg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: Add binding for PS5511 hub controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Kaehlcke <mka@chromium.org>, linux-kernel@vger.kernel.org, 
	Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Thanks for the review.

On Mon, Mar 31, 2025 at 4:09=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Mar 28, 2025 at 04:28:45PM +0800, Pin-yen Lin wrote:
> > +
> > +title: PS5511 4+1 Port USB 3.2 Gen 1 Hub Controller
>
> s/PS5511/Parade PS5511/

I'll fix this in the next version.
>
> > +
> > +maintainers:
> > +  - Pin-yen Lin <treapking@chromium.org>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - usb1da0,5511
> > +      - usb1da0,55a1
> > +
> > +  reg: true
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> > +  reset-gpios:
> > +    items:
> > +      - description: GPIO specifier for GRST# pin.
> > +
> > +  vddd11-supply:
> > +    description:
> > +      1V1 power supply to the hub
> > +
> > +  vdd33-supply:
> > +    description:
> > +      3V3 power supply to the hub
> > +
> > +  peer-hub:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      phandle to the peer hub on the controller.
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
>
> I don't understand why do you need OF graph here. Children are already
> defined in patternProperties as usb-devices.

I would like to describe the connection between the hub and the USB
connectors, which is similar to commit c44d9dab31d6a9 ("dt-bindings:
usb: Add downstream facing ports to realtek binding").

I'm aware that Rob expects a usb-hub.yaml binding in [1]. Should I do that =
now?

[1]: https://lore.kernel.org/all/20240301175653.GA2469610-robh@kernel.org/
>
> Where is any upstream DTS using this schema?

The device using this schema is still under development. We plan to
upstream this schema first and then upstream the DT after the device
is ready.
>
> > +
> > +    properties:
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          1st downstream facing USB port
> > +
> > +      port@2:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          2nd downstream facing USB port
> > +
> > +      port@3:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          3rd downstream facing USB port
> > +
> > +      port@4:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          4th downstream facing USB port
> > +
> > +      port@5:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          5th downstream facing USB port
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - peer-hub
> > +
> > +patternProperties:
>
> patternProperties follow immediately properties, so move it up.

Will fix this in the next version.
>
> > +  '^.*@[1-5]$':
> > +    description: The hard wired USB devices
> > +    type: object
> > +    $ref: /schemas/usb/usb-device.yaml
> > +    additionalProperties: true
> > +
> > +additionalProperties: false
> > +
> > +allOf:
> > +  - $ref: usb-device.yaml#
> > +  - if:
> > +      not:
> > +        properties:
> > +          compatible:
> > +            enum:
> > +              - usb1da0,usb55a1
> > +    then:
> > +      properties:
> > +        port@5: false
>
> No such property.

Actually, I meant:

  - if:
      not:
        properties:
          compatible:
            enum:
              - usb1da0,usb55a1
    then:
      properties:
        ports:
          properties:
            port@5: false

I'll fix this in the next version.

>
> Best regards,
> Krzysztof
>

Best regards,
Pin-yen

