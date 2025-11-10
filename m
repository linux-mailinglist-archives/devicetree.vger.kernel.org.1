Return-Path: <devicetree+bounces-236944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D47C49A74
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 23:52:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6F9C1889A88
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 22:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 934F92FF662;
	Mon, 10 Nov 2025 22:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qBbJc/F3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6180A6BB5B
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 22:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762815166; cv=none; b=hhVof1rYYJ5Kl84wSG8xPMvZKfMVljyO44Fcq7MqzyCt5qJs3VNx6wui3mZ9Y7UFeBBMDacUY6+k0GaV8m641FjERrhA2O298BGBOiNtMa34C7bvMIsDa5NtSmSaFGEjAi+i6qwwBdUnUAKuMurU94k/5+sSr2rBjjnEQy4t5Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762815166; c=relaxed/simple;
	bh=e1py0u0utYWHo7/l1W7Je5JBWA2HdEgA99GWQqp1Jxo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oeikuj127ujRYWa6dB8Bp13b9f1eVX0nwyjOQDuwDNZV1HINq8Qsg8hmRNJnWyXNK2RwwN0FtRTDksDoUWbMVUyKurGtT+niD/bpdxmr2ElXQ7ZyFF4N9gYbXQ/X42tcfWge1gCqsWsGOfThkDbQaU/XBP+MeP8OQbGoYfAvPAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qBbJc/F3; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-640f88b8613so142873d50.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762815162; x=1763419962; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e69bzKGqU+9xaMHquTs0eaIXXjQzWHdQrkisPshqz9o=;
        b=qBbJc/F3buGOF/kqHDhz3VQ3kX2VhTHpeyYs8sR3jEQX3JONZhYUIEf0pY10Iy7e2S
         LP4fT7e8h6B3EHDJGAyaDFCpXwvPGYTGQu5X1s2Uvcl9SPQSVjGnOpF2FVK8XDCFP5Vi
         7mkPoESH3a9XyUMJh5+XqaTTOfkdKfPIOsB+QowCeRA6wQXCBA5XeFcLk0k3RXyxOTnU
         OwDBBNckErBocVZrCcO8i3fqyuuOchJWVCw/8Rj5rn7GmKi3xSJG9FTJM6e93FF4O1pD
         3bLH6XaPJAt63vCIoFpVQNYelWrjSQFVgF/BeG2I/ZatxxWe8A39Rof1jPIbvr4Wq32p
         gJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762815162; x=1763419962;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e69bzKGqU+9xaMHquTs0eaIXXjQzWHdQrkisPshqz9o=;
        b=PEJaVMDS+2dR8Ql6pFTW3HM/Mbs+UozJfcdr4gDG5hyeFZCYfRn4pGA1sezP3+M+2w
         rdHowkNsGWn0+i3Ag/wiOd5iSfsTVPSUTtqRDnku7qv5o746/TMAOXgE4JKjL90p332X
         igr5Jm5XWcN3V+vthOIpXoU63zOSggFpnY3XwNkgZghcPglqkUdL+NUO5O+C/JCy8esU
         pQr0ZS6dboXzME8lcu0AvKksP4CD0gc2cx7Jf4CmMSyHfhmGTSxoDX6EllFpFbaFSWVa
         VtgeAWHJbc1O50WciUsxU+9X41p7VrPdKM40+lBcRrFP/S/h3BwoL3Lm98lmzkqaK9+e
         keXg==
X-Forwarded-Encrypted: i=1; AJvYcCUNcXVusfLD6jeLZSdWcyI0BqcwqULMd3+AOUv1SLpxqbwEE9Y/3HPgXQRiaua74vaHdWR44UGQx9ND@vger.kernel.org
X-Gm-Message-State: AOJu0Yy82Sgmqh8Uur99JctG9wGUWbymJZZTzPlyd5tHY97bRrbxNaxD
	V7xem5FprGIzWuQQ49BBzKw92cJl6CriPASdNdKnfWqAne1IJXqfpt1Mh3YjRAFjktOQoUvsiGq
	NbMxjhONiboVAj9jQ2RBoiSDEA5LtA+xXV8IBenJPTw==
X-Gm-Gg: ASbGncsIDOfrc2Wui8Wwb1FAfFwvvoEvymZOyYfNgrYz3v8GUyeS1dA74Ox1qj08QRL
	CVvIe+56vNidhaRcDTvO9EyzpDVMYM2oiH/fLD1awhuclcYAGaT5d+0d6o+7CDdp/RTY81WwEGs
	xA+Shz7S0aooSx/gCV62nqQeygAhl8s9krBc9yGCdcoe++C2Sr9homGh/NDZR/48qsQFVtlhfLa
	dActvrJH4KYiEZ1tzHihXnf5rtwV7ROgSw3r/Fv0awzmF7ktsSmwh4hCS2U
X-Google-Smtp-Source: AGHT+IHBmRt3S1iPiXw2thNDNCdZasn+AuQ/RS/ehj83SprtweqPp18ZkHRLWpz/3jwXQRhojABpABGJjki8F1WXwFM=
X-Received: by 2002:a05:690e:15d5:b0:63f:ad02:8d8 with SMTP id
 956f58d0204a3-640d45b7539mr6601936d50.31.1762815162228; Mon, 10 Nov 2025
 14:52:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105163610.610793-1-jelonek.jonas@gmail.com> <20251105163610.610793-3-jelonek.jonas@gmail.com>
In-Reply-To: <20251105163610.610793-3-jelonek.jonas@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Nov 2025 23:52:26 +0100
X-Gm-Features: AWmQ_bmtS8b8Vht8lnhMRbctSoyy40cmfZtuyTPFxm5FtvZFqQQEfuMzy_HkNpM
Message-ID: <CACRpkdabTaVsqXOhy_QOdi3WNM3TPfEodt1miQkdcSrYWyYGxQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] gpio: add gpio-line-mux driver
To: Jonas Jelonek <jelonek.jonas@gmail.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Thomas Richard <thomas.richard@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonas,

overall I'm really happy of how this has turned out!
Sorry for not reviewing very intensely the last two weeks :(

One review comment left:

On Wed, Nov 5, 2025 at 5:36=E2=80=AFPM Jonas Jelonek <jelonek.jonas@gmail.c=
om> wrote:

> +struct gpio_lmux {
> +       struct gpio_chip gc;
> +       struct mux_control *mux;
> +
> +       struct gpio_desc *muxed_gpio;
> +       /* dynamically sized, must be last */
> +       unsigned int gpio_mux_states[];
> +};

Dynamic arrays at the end of struct is a bit of a security pain
and we probably want to avoid them if we can.

The typical idiom should be:
...
    u32 num_gpio_mux_states;
    unsigned int gpio_mux_states[] __counted_by(num_gpio_mux_states);
};

> +static int gpio_lmux_probe(struct platform_device *pdev)
> +{
(...)
> +       ngpio =3D device_property_count_u32(dev, "gpio-line-mux-states");
> +       if (!ngpio)
> +               return -EINVAL;
> +
> +       size =3D struct_size(glm, gpio_mux_states, ngpio);
> +       glm =3D devm_kzalloc(dev, size, GFP_KERNEL);
> +       if (!glm)
> +               return -ENOMEM;

(...)

glm->num_gpio_mux_states =3D ngpio;

> +       ret =3D device_property_read_u32_array(dev, "gpio-line-mux-states=
",
> +                                            &glm->gpio_mux_states[0], ng=
pio);
> +       if (ret)
> +               return dev_err_probe(dev, ret, "could not get mux states\=
n");

We use this pattern in the core gpiolib for example.

With this addressed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

