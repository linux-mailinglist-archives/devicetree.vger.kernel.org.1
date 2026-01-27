Return-Path: <devicetree+bounces-259790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLzREayFeGmqqgEAu9opvQ
	(envelope-from <devicetree+bounces-259790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:30:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A299A91B9F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9DFE5300A63E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 188422DBF47;
	Tue, 27 Jan 2026 09:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Krbghzmo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C582D59E8
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769506072; cv=none; b=HGZcJuE0pFjm5KkfgUg6psGW1A/XJ5pHYUeCIJKNBir2z7gYXOuNYhJKthUiyzhFabJWW1cE98g3sh2lASHpO0ZA5R722Uzd+tI1/q6wfvYIyeFmsoML0qDw0S2sSVdXzytdyC2oA0BGNplaeBUnFycDHdSr45i9E/H+M2HvvQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769506072; c=relaxed/simple;
	bh=TczY4ontvr8kDGLySbQdgDqbhFN+poLRAgZ3hIRq/hk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CsdSO2cG6fn5e/TGDHidDXO/vlPo4kIT3rUoWakUCjlF85zRFl8G1fNu7rDuqt1oI3sy4nWim+jZrXU0pTVYhFB8POGCq+H5QveUL2dctKpkd8cUp5bQSSJChQPCF55VfRLBZiqoYA3LNRTOxhF3V7jyFMkVSZ07Ub8V0merxqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Krbghzmo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0831C2BC86
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769506071;
	bh=TczY4ontvr8kDGLySbQdgDqbhFN+poLRAgZ3hIRq/hk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Krbghzmo5gEuAYGlw6wNCAulTSU4C/SSybparYUfzXRk1SY6L7UGAcmCGJbI0xZi8
	 JrEu31viOL9qux0lgOO4kHH9ckSTkJLLUF2RiKq8x3bx8EJqlG9cUxQeMIU6qh5ehX
	 wggNgZ7cLMWRERMOxDq6rVIPBO1SjtMcZf6wElDVNoESrxaKBk9oGPYpC2TkjXhTj1
	 umchbK8fFm29IzwzIQ94LV/pBTVexDaMTkFfNaqycT2F9a6XmQTfsVODF84hL0DDPv
	 mpf0kgV9DhrVO1iOaoCqSnyrimIDtQOh1uDKGCuYSUcnTviP5cU8YetBhoWYDAm57H
	 HdGf338HouHew==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-38316445a67so44215381fa.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:27:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWjfAVT7I2RFyLYJmL+nLqV5whfexXfIuYaw415elk5UrAzN2SA2Ka2EHdDWiDKrVfe69nv7TD/Q4s0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4M9HsP1N8tEbGVLiDPMsSMwQNdtRrUWfXd7Q2wNN7d0Ik7Vu3
	Jtsja0Li34d1w9pNpX0s4wvinb4DfuBf7Au+RoUqndpC6JNukWAv60dKE/5rLHAKaeIbC4OoDgJ
	6fUilFqruLMzErSzYBLmLeQtvMalpi0R2VKF+Hv8QCA==
X-Received: by 2002:a05:6512:3b90:b0:59d:e3e5:d0dc with SMTP id
 2adb3069b0e04-59e0402ec27mr430530e87.42.1769506070276; Tue, 27 Jan 2026
 01:27:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123145743.75705-1-antoniu.miclaus@analog.com> <20260123145743.75705-3-antoniu.miclaus@analog.com>
In-Reply-To: <20260123145743.75705-3-antoniu.miclaus@analog.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Tue, 27 Jan 2026 10:27:38 +0100
X-Gmail-Original-Message-ID: <CAMRc=McxxctNFRwKcHnZA2XjjDT3UKX_K67v6Z1nH9KpBimboA@mail.gmail.com>
X-Gm-Features: AZwV_QgRja2_1IGQotO0UkzEEHD4QygIrxBvXfRZygcH6UeeKcw2vEtsV1sxoxo
Message-ID: <CAMRc=McxxctNFRwKcHnZA2XjjDT3UKX_K67v6Z1nH9KpBimboA@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] mux: gpio-mux: add support for enable GPIO
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259790-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A299A91B9F
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 3:58=E2=80=AFPM Antoniu Miclaus
<antoniu.miclaus@analog.com> wrote:
>
> Add support for an optional enable GPIO to the gpio-mux driver. This
> allows the mux to be disabled before changing address lines and
> re-enabled after, preventing glitches that could briefly activate
> unintended channels during transitions.
>
> The enable GPIO is optional and the driver maintains backward
> compatibility with existing gpio-mux users.
>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> Changes in v5:
>  - Enhance code comment to explain high-impedance (high-Z) state when
>    mux is disabled
>  - Add context about downstream capacitance maintaining signal level
>    for analog multiplexers
> ---
>  drivers/mux/gpio.c | 35 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
> index 4cc3202c58f3..b95d2c7a53ca 100644
> --- a/drivers/mux/gpio.c
> +++ b/drivers/mux/gpio.c
> @@ -19,6 +19,7 @@
>
>  struct mux_gpio {
>         struct gpio_descs *gpios;
> +       struct gpio_desc *enable;
>  };
>
>  static int mux_gpio_set(struct mux_control *mux, int state)
> @@ -27,10 +28,31 @@ static int mux_gpio_set(struct mux_control *mux, int =
state)
>         DECLARE_BITMAP(values, BITS_PER_TYPE(state));
>         u32 value =3D state;
>
> +       if (state =3D=3D MUX_IDLE_DISCONNECT) {
> +               if (mux_gpio->enable)
> +                       gpiod_set_value_cansleep(mux_gpio->enable, 0);
> +               return 0;

This is optional so no need to check for NULL. Also: GPIO value
setters now return errors so it can be:

    return gpiod_set_value_cansleep();

> +       }
> +
> +       if (mux_gpio->enable) {
> +               /*
> +                * Disable the mux before changing address lines to preve=
nt
> +                * glitches where an unintended channel could be briefly
> +                * activated during the transition. When disabled, all mu=
x
> +                * outputs enter high-impedance (high-Z) state. For analo=
g
> +                * signals, downstream capacitance typically maintains th=
e
> +                * signal level during this brief disconnection.
> +                */
> +               gpiod_set_value_cansleep(mux_gpio->enable, 0);
> +       }

Same here.

> +
>         bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
>
>         gpiod_multi_set_value_cansleep(mux_gpio->gpios, values);

This is not part of this change but would be useful to check this
return value as well.

>
> +       if (mux_gpio->enable)
> +               gpiod_set_value_cansleep(mux_gpio->enable, 1);
> +
>         return 0;
>  }
>
> @@ -71,9 +93,20 @@ static int mux_gpio_probe(struct platform_device *pdev=
)
>         WARN_ON(pins !=3D mux_gpio->gpios->ndescs);
>         mux_chip->mux->states =3D BIT(pins);
>
> +       mux_gpio->enable =3D devm_gpiod_get_optional(dev, "enable", GPIOD=
_OUT_LOW);
> +       if (IS_ERR(mux_gpio->enable))
> +               return dev_err_probe(dev, PTR_ERR(mux_gpio->enable),
> +                                    "failed to get enable gpio\n");
> +
>         ret =3D device_property_read_u32(dev, "idle-state", (u32 *)&idle_=
state);
>         if (ret >=3D 0 && idle_state !=3D MUX_IDLE_AS_IS) {
> -               if (idle_state < 0 || idle_state >=3D mux_chip->mux->stat=
es) {
> +               if (idle_state =3D=3D MUX_IDLE_DISCONNECT) {
> +                       if (!mux_gpio->enable) {
> +                               dev_err(dev,
> +                                       "invalid idle-state (MUX_IDLE_DIS=
CONNECT requires enable-gpios)\n");
> +                               return -EINVAL;
> +                       }

Can we check it before and then decide whether we really need the GPIO or n=
ot?

> +               } else if (idle_state < 0 || idle_state >=3D mux_chip->mu=
x->states) {
>                         dev_err(dev, "invalid idle-state %u\n", idle_stat=
e);
>                         return -EINVAL;
>                 }
> --
> 2.43.0
>

Bart

