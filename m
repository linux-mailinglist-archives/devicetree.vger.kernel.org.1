Return-Path: <devicetree+bounces-39217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5602984BC27
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 18:36:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 125CD285F66
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 17:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E566FD9;
	Tue,  6 Feb 2024 17:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="14eBsMkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92314D51A
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 17:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707240868; cv=none; b=PumqbjYQRDggOEmaUor/7taAflc6OKBoL0qF8+ffpM/yrx+xOiaUynfOZ3GmM3kRWHhf9RVrFRa6drlUJ/s/kDvkacsKzK0V7irnkbeZvvJXHs1h7VI16OKLjNCgpNvsx8T0Ny7diGQUDo5K2c5v8oY1IXqFjw8806KYmSKDz8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707240868; c=relaxed/simple;
	bh=BGYgn4pwip7xm8wZ1TGqp7QgodhzA/a+8J+7CXk661c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f9Q6FTQEEKcI0uGaB9bcqOEeFFn5HnGHdIs6jW/j5KjwwxGRKBS/BEHWRNjCsJ3ujHKAHMyKNtGAzYGank1RVmiXxfMLIt0sZe0A2rkLGOc6ebUvVnYUxf74Pi+6xjGZqcAucqDXbEBxkDVUXnmegwl6Mx/65duV16ghJfJ2Gow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=14eBsMkD; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2cf206e4d56so81277181fa.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 09:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1707240864; x=1707845664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZpmnZurxd3Ncre4ry66TEipTMru+C8BAh2dBgzUnWpc=;
        b=14eBsMkDUc9gezEe/s8BYcTt157KxEyD121V8Bt8QksVs/mHnTugZXycIC7lJ3TPjP
         Bv9YoMeD0n6/Gn9r6f+0ZgHJm42UdNHfIhU7c4iDmFy7a8U6mLPrKauwKPsB/f2bWSHJ
         xlnJk4UFM4Kxs7l0Efh1F8WApCuVMbQvu8Adp2dSxKq62fZbgKkAPqkxgmc1bx9g2AaX
         QdXYcgodDN+vs6EoiTZ7l69svRWOW8JoqfCTDLGXpTwJkaneynIK0z915zPcx1FWOdxT
         75qfpKagLmOzfu6W0+tq+2XvMekdrwtqZFVuFdHLHLis8Nte3KINVcKw95SM2ljL40v5
         zLjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707240864; x=1707845664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZpmnZurxd3Ncre4ry66TEipTMru+C8BAh2dBgzUnWpc=;
        b=Wq72K3viUo/fgTsr6Jsmb0IzMU7nMQmDQtrDqV/x7Oy+Tuld7Gn8C7ab3eX9V0DouJ
         41IfqbEzmXEdq5/EyAE+qxVRYQtFi3ua3FbELf7919QdskVPvBeTzkRdMnjvbY2bYEwF
         jI3tHJlhOJYLG+Wq8VF8MNn94LeFobNm6y2ONePeML5JCX9iLX3UwgsirmGS2jcoBz+i
         T02VqMbPErsSUx88SzfAZztMbu7Y6DJ9LII4+M4XKFE0NWTqrqLs9wDJ5igpkyH0EGf8
         EveZ2pbT4ejYuA/qrqE2FXVHH7DQLP5Hx8sOntaBslTlQZLdViw3iTZW541HTjif9ftz
         XaSw==
X-Gm-Message-State: AOJu0YxwtJ+37Dv8+lH3l0ifewogc0whmhYagFYo5qzuxFCAoT+UZynE
	n1SE/iOTUq3MR85u25aPBJT7ClZNFS2kXb8xrUfUvv8c8NjD0LdwBOSc0JA23458Dt5znLRNwQ7
	mUB1K/zVMwYM9K3pGCNdandxkbeXLzllEbM05fQ==
X-Google-Smtp-Source: AGHT+IHeO+vgPTOIdvMuGjPatUo0mlDXrgtJyq8JotpLBwIQn4VQzamYSWR9VNr613H7eBXZT5jM1Kx3+NpKtIU81Us=
X-Received: by 2002:a05:651c:23c:b0:2d0:a464:747 with SMTP id
 z28-20020a05651c023c00b002d0a4640747mr2286725ljn.49.1707240864576; Tue, 06
 Feb 2024 09:34:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206-ad7944-mainline-v1-0-bf115fa9474f@baylibre.com> <20240206-ad7944-mainline-v1-1-bf115fa9474f@baylibre.com>
In-Reply-To: <20240206-ad7944-mainline-v1-1-bf115fa9474f@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 6 Feb 2024 11:34:13 -0600
Message-ID: <CAMknhBGG_RS1t0OJw6_UnNQ_=S4YgN4i1YN26V8n=f9y28J9hQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: add ad7944 ADCs
To: linux-iio@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 6, 2024 at 11:26=E2=80=AFAM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> This adds a new binding for the Analog Devices, Inc. AD7944, AD7985, and
> AD7986 ADCs.
>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
>  .../devicetree/bindings/iio/adc/adi,ad7944.yaml    | 231 +++++++++++++++=
++++++
>  MAINTAINERS                                        |   8 +
>  2 files changed, 239 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7944.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7944.yaml
> new file mode 100644
> index 000000000000..a023adbeba42
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7944.yaml

...


+  adi,reference:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [ internal, internal-buffer, external ]
+    default: internal

...

> +allOf:
> +  # ref-supply is only used for external reference voltage
> +  - if:
> +      not:
> +        required:
> +          - adi,reference
> +    then:
> +      properties:
> +        ref-supply: false
> +    else:
> +      if:
> +        properties:
> +          adi,reference:
> +            const: external
> +      then:
> +        required:
> +          - ref-supply
> +      else:
> +        properties:
> +          ref-supply: false

This seems like something that could potentially be improved in the
dtschema tooling. Since adi,reference has a default of "internal", I
would expect:

     if:
       properties:
         adi,reference:
           const: external
     then:
       required:
         - ref-supply
     else:
       properties:
         ref-supply: false

to be sufficient here. However, currently, if the adi,reference
property is omitted from the dts/dtb, the condition here evaluates to
true and unexpectedly (incorrectly?) the validator requires the
ref-supply property.

