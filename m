Return-Path: <devicetree+bounces-157715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D31A61FA4
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 23:00:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82EAE4614BB
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 620EC205E3E;
	Fri, 14 Mar 2025 21:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="k+sGneMA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32ED1C6FE8
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 21:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741989538; cv=none; b=scTLX/V3U7KkJ1xmUDt+AwIAukOpCuHtO1yE6WsZzQm0jFtFMM8LRJSS/JlTjnPU4gkwGr0MuGgG57e9obHezcev/fXAMXTlg57o7uyLUQZXz1h4SOVmER258GkpeDvmKmNt2wF0dtOc9PZ1ENjeO4MMuXGKqS4NnfmXg6uCnnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741989538; c=relaxed/simple;
	bh=CKhlM71HHWzhYTD7pWKMXzC0UBFFhRub+4ucFciopmk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fzksRUJCwxuubnZdT5MdxVfFt7QRu5/l1Sxg9alfnqgxn2klGryWh6DPGPX1P9Vt6XRq4tINXnTsfTk+LsP+Y7ZuCaf6wa+IlNITcfg3S2PMr0aEBHuNaneFo74lQihkADtNC9gJUuEL3uws5e8j8IZAOrrC1LVAV6E7B1fhwTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=k+sGneMA; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30761be8fcfso28250911fa.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741989533; x=1742594333; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+G1znUUY7rtTf9DzLNl5P+qD4jbuh64Bw3HveeQEA0=;
        b=k+sGneMAjDfXVM+6MfhMurTkAiqpoeCqkT+6UEDX9GLingylidLihAv/qEt+bxs2ni
         GS1Hb2SZHKvLjImpm0eZRhWpLmTL50DpI7AkNwqGcKvcbY8TIMxprTMj9BRTjEY2uqTI
         Lp7ylu5pxh/t6RTuh1+wcQTd4oWMJg7vFfts4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741989533; x=1742594333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+G1znUUY7rtTf9DzLNl5P+qD4jbuh64Bw3HveeQEA0=;
        b=wv2BM3xDuyazay5H59jj1SjmqC7wyvfsKLhss56lCzyj5SBJ7gd0tDx+wdpfIBvxNH
         40yioNCdL/AkFTuXzGIXe+2GDm0B7Zt7kCe0XiSRR9WyiMtMPMNlKUAGK9wHhhkXPYsh
         xe3ZnsfBXUDxyFU9vh+1qRPaL2QFNNugf06j+MoHvtfErPb5A1mXW22amK3MARVbzu5b
         1fag1JC1efmDc8T7lnditgszj64f5NHQ+jJvzarf+LpzWVyZoQwOBuxGPdCeeFDUu2N6
         qhjwaw3YikO9RWqZIiZ7K5+uemgaTA4ksA5VUt6LBN4gymbx846wwbAxVwzVNesSqI3L
         a03Q==
X-Forwarded-Encrypted: i=1; AJvYcCWU2JYXr5qDlXjxo4r36SbZGlvS07attHDQVNEWYFxhcoy4pq08F+26uAZ/m18+mk8b3vCjILsZUUQy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1jIpU0oS/jsAHC0wTd9mlyyTeFruxNp5o3HnEjCVsdYCEgEQz
	qSR6fIx18VmMoDe4RauI1kJV1C7PFsZelcGBNiqByozaxisty6zGYjwxsvA8jigVUvYQW/mVyyc
	CqJ4p
X-Gm-Gg: ASbGnct3X2sNDq8Bx1tJcvAYtz6m15SFVhuJZwj0s6Ik7TgE6rzoLfzDgKeL7RazF39
	GGRoeDJ3XxCjwyhHUALcnSnaPKIWgNKZhCFLmglpPYmz21QDvoYB71yVPHXUrFMiJIN8G0w8JFl
	ysLdFUmkE2KEsC/0EVcWZz3sKHUOrFbkxHHN4VEmtqenhnYNdjJkJzy1Fopb0G+iIqM4pmB8gv+
	ye9uwVn5imip3TIrx8mw9TpQ2mpQkgO9kLaieAA9Sh6Mv2CJbzCt7OL2uWLnHFPs8FNoG12mB6q
	IPLmoLxW/opBA4p8qP5zST3+Y6gKj2EKrZoKluIdGq/ELdSPCRZnROTm4V/RC/bO1X+1hxIwQNU
	m3GzYLk0K
X-Google-Smtp-Source: AGHT+IGkVB1QBGW+eswNjqTWOAeBqLiA2w+hEqs//ifiUH2NNfIBXtPynoQW5jRZ72YH3gluQvTdLQ==
X-Received: by 2002:a2e:be21:0:b0:30b:d44d:e76d with SMTP id 38308e7fff4ca-30c4a8d8fabmr15943351fa.26.1741989532984;
        Fri, 14 Mar 2025 14:58:52 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a8bf7sm617598e87.223.2025.03.14.14.58.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 14:58:49 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-548409cd2a8so2932565e87.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:58:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUm8hSlZfngn0Eu8SfR6XdT6lvUSQBrs1OBVqZTUq29f2rmD6U9lCfQZyFnk+oiUSTsPrFXyQc7h8lv@vger.kernel.org
X-Received: by 2002:a05:6512:3d02:b0:545:c7d:1784 with SMTP id
 2adb3069b0e04-549c3988b84mr1398468e87.43.1741989528244; Fri, 14 Mar 2025
 14:58:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250312104344.3084425-1-wenst@chromium.org> <20250312104344.3084425-2-wenst@chromium.org>
In-Reply-To: <20250312104344.3084425-2-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 14 Mar 2025 14:58:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X14XEdikE3hP4y53uZec12O_ZPtU+GyJ+Tf8R3DK89AA@mail.gmail.com>
X-Gm-Features: AQ5f1Jqp4S31G39Rg1NsczcQY3Hb3QPTaquvIuzNNpiFQjs9eAjzZVdMi2mJRe0
Message-ID: <CAD=FV=X14XEdikE3hP4y53uZec12O_ZPtU+GyJ+Tf8R3DK89AA@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: HID: i2c-hid: elan: Introduce Elan eKTH8D18
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, chrome-platform@lists.linux.dev, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,


On Wed, Mar 12, 2025 at 3:43=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> The Elan eKTH8D18 touchscreen controller is an I2C HID device with a
> longer boot-up time. Power sequence timing wise it is compatible with
> the eKTH6A12NAY, with a power-on delay of at least 5ms, 20ms
> out-of-reset for I2C ack response, and 150ms out-of-reset for I2C HID
> enumeration. Enumeration and subsequent operation follows the I2C HID
> standard. The eKTH6A12NAY requires longer times for both parts.

Somehow the last sentence above confused me. Can it just be dropped?
All you care about is that the new trackpad matches the timings for
"eKTH6A12NAY". Not sure what you mean by "eKTH6A12NAY" needing
"longer" timings.


> Add a compatible string for it with the ekth6a12nay one as a fallback.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  .../bindings/input/elan,ekth6915.yaml         | 29 ++++++++++++++++---
>  1 file changed, 25 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml b=
/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> index cb3e1801b0d3..81c391952ccc 100644
> --- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> +++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> @@ -4,14 +4,14 @@
>  $id: http://devicetree.org/schemas/input/elan,ekth6915.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>
> -title: Elan eKTH6915 touchscreen controller
> +title: Elan I2C-HID touchscreen controllers
>
>  maintainers:
>    - Douglas Anderson <dianders@chromium.org>
>
>  description:
> -  Supports the Elan eKTH6915 touchscreen controller.
> -  This touchscreen controller uses the i2c-hid protocol with a reset GPI=
O.
> +  Supports the Elan eKTH6915 and other I2C-HID touchscreen controllers.
> +  These touchscreen controller use the i2c-hid protocol with a reset GPI=
O.
>
>  allOf:
>    - $ref: /schemas/input/touchscreen/touchscreen.yaml#
> @@ -23,12 +23,18 @@ properties:
>            - enum:
>                - elan,ekth5015m
>            - const: elan,ekth6915
> +      - items:
> +          - enum:
> +              - elan,ekth8d18
> +          - const: elan,ekth6a12nay

The "enum" above is weird, but it matches what we did for
"elan,ekth5015m" so I guess it's fine? I'd leave it up to bindings
maintainers. I guess the assumption is that we might add additional
touchscreens to the list...


>    reg:
> -    const: 0x10
> +    enum:
> +      - 0x10
> +      - 0x16

Again happy to leave it to the bindings maintainers, but _maybe_ just
drop the "reg" parts here and below. It doesn't really have to be part
of the bindings.

