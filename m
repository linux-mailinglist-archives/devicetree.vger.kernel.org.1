Return-Path: <devicetree+bounces-241803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 40803C82E8F
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 01:10:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3C7D44E176D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 00:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DACC3282F5;
	Tue, 25 Nov 2025 00:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIQz9Ev4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58C01F92E
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 00:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764029438; cv=none; b=sPWan7AVvq52qBIA1kYNocjHSaLKTlQI2avN8F7GdYuGGc3yAP+4GOfYfD71sExKfmE1JGOyY5vWoSZU8tP2hJ4YxoOhwLizazEux0NUkLx4cLfMDTiwiz2RDOiuiFOVFnB13VHB277CfKEM8dUH7/hys7LgEiZTjU+jHkqJda0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764029438; c=relaxed/simple;
	bh=UfIvDn1uwYWK2cSb+CV7h+BUzMIoM/RGg1Rtiy1DEL8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lt1eXFb2TegKDr3JGpxl155S2cQoMBIS/EZQvb/ULf9+F/aCoommv7vQ2DjKFZ0KqfGaKz+if0WV7cB1+kqO0kFoRUeaSjbi1QY4koaWV0xBuVS77DbTRtDBnJcKzVcIoV8S6CpyLgdAmqBI4VrusURDpWAggAoU4eWMOmn9eJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIQz9Ev4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49734C19425
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 00:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764029438;
	bh=UfIvDn1uwYWK2cSb+CV7h+BUzMIoM/RGg1Rtiy1DEL8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=lIQz9Ev4djX0vj5PMQvZ/Qr8jDoV4lxV0zLOTrDmTLyROxQ/fI/3Hub/TESNzGutr
	 tXlb8vvjjVW0Czt7ZmwJoJdzTKscEhayOCHfyZv2Ka+slon43yeRryilUFE1LLXrIf
	 0FxFK++Vebklb//TmDIOqVjWETMRnxf/nLkfGkwNKToUiw24cBT6CaN28fBJPoFYXc
	 gUiA0/hNbX4PNdphLd7g5tQ8V3AiluN5mzKjkeUryfjdl05OV7Zogj02A3SxvDeR97
	 12yxtIZ31Dg1bSc32NXs5igGKuyQtP6X9DvvmSYuE4tO3pyz3dyG+TNG2I25oiDUml
	 dt+0w0IVVpl3Q==
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-641e942242cso4128795d50.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 16:10:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXdVQ1Z7DOgu0dPWx8kCM/oAQw7jywg+uooEx+VDf3Wr9A8O44Rsxlz9jHiJU/P5cOrtigVpiBkfVhQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwV+oUvgf1nG8t5kwbJuifGSShNGGGxLRIpdxrkG4sJd5K/KPzX
	v4bdrZvyhIsfJ5tgl5wxsJujApLiENXf958szu66WvjQLP6AgF4EmO1auYZXiAz4lBeF5lBuuk4
	MtULRRgiuUAnHkx2GDa2roBBXAB3zyEA=
X-Google-Smtp-Source: AGHT+IEvQ6ixv9HJzCdIJfSrsIbFsZ6bAYryG3/OH6r1eK7qZnHOG19G4WcJvlUeXUpu95cLSF44Dilf2mapPmdVUr8=
X-Received: by 2002:a53:e882:0:b0:63e:3994:4ae3 with SMTP id
 956f58d0204a3-64302af17b2mr7149841d50.41.1764029437406; Mon, 24 Nov 2025
 16:10:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-lantern-sappy-bea86ff2a7f4@spud> <20251112-improving-tassel-06c6301b3e23@spud>
 <CACRpkdYQ2PO0iysd4L7Qzu6UR1ysHhsUWK6HWeL8rJ_SRqkHYA@mail.gmail.com>
 <20251119-bacterium-banana-abcdf5c9fbc5@spud> <CACRpkda3Oz+K1t38QKgWipEseJxxneBSC11sFvzpB7ycnqsjBA@mail.gmail.com>
 <20251120-silicon-oyster-5d973ff822d9@spud> <CACRpkdaM3Hkbxx99uXx6OVdSbdhNNc3voS1FoUsz2oAUEc1-qA@mail.gmail.com>
 <20251121-epidermis-overdue-1ebb1bb85e36@spud> <20251121-skimpily-flagstone-8b96711443df@spud>
In-Reply-To: <20251121-skimpily-flagstone-8b96711443df@spud>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 25 Nov 2025 01:10:26 +0100
X-Gmail-Original-Message-ID: <CAD++jLm6iDJkUHQyQ+JnH76yC8FcWtjon9s1yhavoX9Y3=wZcA@mail.gmail.com>
X-Gm-Features: AWmQ_bktdDObpyWY5XjLyGYCrqS9NmTn6uyte7CToAu4Rk-CgfuczbXLhFak6tA
Message-ID: <CAD++jLm6iDJkUHQyQ+JnH76yC8FcWtjon9s1yhavoX9Y3=wZcA@mail.gmail.com>
Subject: Re: [RFC v1 2/4] pinctrl: add polarfire soc mssio pinctrl driver
To: Conor Dooley <conor@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Conor Dooley <conor.dooley@microchip.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 21, 2025 at 12:21=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:

> ngl, I forget if there's a shorthand for the bias part, so I just want
> to know if is this an accurate summary of what's exclusive?
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml b=
/Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml
> index cbfcf215e571..6865472ac124 100644
> --- a/Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml
> @@ -153,4 +153,66 @@ properties:
>        pin. Typically indicates how many double-inverters are
>        used to delay the signal.
>
> +allOf:
> +  - if:
> +      required:
> +        - output-disable
> +    then:
> +      properties:
> +        output-enable: false
> +        output-impedance-ohms: false

Looks right.

> +  - if:
> +      required:
> +        - output-low
> +    then:
> +      properties:
> +        output-high: false

Looks right.

> +  - if:
> +      required:
> +        - low-power-enable
> +    then:
> +      properties:
> +        low-power-disable: false

Looks right.

> +  - if:
> +      required:
> +        - input-schmitt-disable
> +    then:
> +      properties:
> +        input-schmitt-enable: false
> +        input-schmitt-microvolt: false

Looks right.

> +  - if:
> +      required:
> +        - drive-open-source
> +    then:
> +      properties:
> +        drive-open-drain: false

drive-push-pull is mutually exclusive
with each of these as well.

> +  - if:
> +      anyOf:
> +        - required:
> +            - bias-disable
> +        - required:
> +            - bias-high-impedance
> +        - required:
> +            - bias-hold
> +        - required:
> +            - bias-up
> +        - required:
> +            - bias-down
> +        - required:
> +            - bias-pull-pin-default
> +    then:
> +      oneOf:
> +        - required:
> +            - bias-disable
> +        - required:
> +            - bias-high-impedance
> +        - required:
> +            - bias-hold
> +        - required:
> +            - bias-up
> +        - required:
> +            - bias-down
> +        - required:
> +            - bias-pull-pin-default

These is a bunch of "pull" infixes missing from the
above.

After looking at it for a while I concluded this
is right as well, if just the right names are added.
I would add a comment like

# We can only ever allow exactly one of these,
# they are all mutually exclusive.

Additionally:

drive-strength and drive-strength-microamp are mutually
exclusive.

input-enable and input-disable are mutually exclusive.

low-power-enable and low-power-disable are mutually
exclusive.

input-schmitt need to be added as deprecated.

Can you cook a patch? Maybe test it on the existing
device trees first to see that it doesn't wreac havoc.

Yours,
Linus Walleij

