Return-Path: <devicetree+bounces-291830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GK6yDmYf82lsxQEAu9opvQ
	(envelope-from <devicetree+bounces-291830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 11:22:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 855F149FCDF
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 11:22:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C67843009B32
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 09:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7B739FCDC;
	Thu, 30 Apr 2026 09:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j82fFM1x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C843839FCA0
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 09:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777540962; cv=none; b=R6f+pZWMLY1GYlGxsZYhsnow8Lb36zE0Fcjd1k96v1oXoBnsWl4OLy3bAAI0vgBneh+wAYocbV7olzXWTK1BeDdQfh5NH7e1zxdfzt3LD4kmx4vXmjOM+jKntVBPjFq4tSdz7IQB/tlX/l+ToRlSBPiBzRrro4Sney/mZ7LDPrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777540962; c=relaxed/simple;
	bh=1hbv3+qsz7CdCFW9e9Eg5avIqTaq6+B/xrpTsHNZWcU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J5DQYkyCBJvmq0JSbZkMWchUPJU2jt+AKC2PChlYYH+gKoVyR0AcNGv19ThXOiSho98PBDF056S91/VEedLuZ0bOfPrgIG4TzRdNNf+exQKtkR4CfnPO9E3A8gotj4mK8M+h3enGKHyrgIMsrTW29IvPGWwsfn/0oC6YKZDV8y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j82fFM1x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B719C2BCB3
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 09:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777540962;
	bh=1hbv3+qsz7CdCFW9e9Eg5avIqTaq6+B/xrpTsHNZWcU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=j82fFM1xn8zlxId+gbDTSJSCPju0dIdXfaFzxG3aFwOhw1Fufqk7nxfeco6Xz0Pwv
	 A+MEUm+K5N5AnKG/k8Fis4cxBr4IKYoWIqzFIJfiYpdHvtuF72Drl9NIKCSyzZyQXl
	 y3K+eR70mcUpMx5V+lWFoXKWvcPSJMXB8l5ieq9FonPp9Lb5ghf2h/ugOLC3xqE+NJ
	 80TH3mej9hZ4hpokOBJgcSvLseu8YXlHNtzbyDdm975yBj4z8PAUhOAjE88XnnaX5o
	 vhq/zZ+/bOXMdvGxLeqCMdEuKTGG0csniR8wbqeeNHtl/DDxUdKX13aBafkoofIfhB
	 nPuUerAPpr7Qg==
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5a0faa0d15cso646871e87.0
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 02:22:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+u6+AesioDhHzhXidMQD3SUs9zxlvLFb6KW968dSlzFLuawnsk28eYaE7/A/5brb7KEj2uNkEsUWCE@vger.kernel.org
X-Gm-Message-State: AOJu0YyVoTdRCEmKxKvHNp32re+5pjXi42MB6tcXO8n9MsO1e/i8ANYN
	dnDLT/3j9t/pfQRX6C8ul9dxSAtcV5q0xZ8zw1wD8Vlr76drmsNEIb0MQaOcm1FRY2IdA4e9NEf
	PgxLtSc584hMSMIcHwUEvZhArvV8+8Bc=
X-Received: by 2002:a05:6512:10cb:b0:5a4:157:5354 with SMTP id
 2adb3069b0e04-5a8522bc5ffmr721493e87.12.1777540961140; Thu, 30 Apr 2026
 02:22:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260428114308.113253-1-clamor95@gmail.com> <20260428114308.113253-3-clamor95@gmail.com>
In-Reply-To: <20260428114308.113253-3-clamor95@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 30 Apr 2026 11:22:29 +0200
X-Gmail-Original-Message-ID: <CAD++jLkU-G38xtzzfAV_otiYuM2G5NHdCdtjFjsy2AjpG22_rg@mail.gmail.com>
X-Gm-Features: AVHnY4JNoOOgq4asQaW05QkAmgJoAjyrhDY2aKkW9L0o-hpZE2efG82M63foOSM
Message-ID: <CAD++jLkU-G38xtzzfAV_otiYuM2G5NHdCdtjFjsy2AjpG22_rg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Input: isa1200 - new driver for Imagis ISA1200
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 855F149FCDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-291830-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]

Hi Svyatoslav,

I just saw this thing:

On Tue, Apr 28, 2026 at 1:43=E2=80=AFPM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:

> +/* HCTRL5 controls the PWM high duty cycle of internal channel */
> +#define ISA1200_HCTRL5                 0x35
(...)
> +struct isa1200_config {
(...)
> +       u32 duty;
> +};
> +       /* Duty cycle */
> +       regmap_write(isa->map, ISA1200_HCTRL5, config->period >> 1);
(...)
> +       if (isa->clk)
> +               regmap_write(isa->map, ISA1200_HCTRL5, config->duty);
(..)
> +       if (isa->clk) {
> +               ret =3D device_property_read_u32(dev, "imagis,period-ns",
> +                                              &config->period);
> +               if (ret)
> +                       return dev_err_probe(dev, ret,
> +                                            "failed to get period\n");
> +
> +               config->period /=3D ISA1200_HCTRL6_PERIOD_SCALE;
> +               config->duty =3D config->period >> 1;
> +       }
> +
> +       if (isa->pwm) {
> +               struct pwm_state state;
> +
> +               pwm_init_state(isa->pwm, &state);
> +
> +               if (!state.period)
> +                       return dev_err_probe(dev, -EINVAL,
> +                                            "PWM period cannot be zero\n=
");
> +
> +               config->freq =3D div64_u64(NANO, state.period * config->c=
lkdiv);
> +               config->duty =3D state.period >> 1;

So you don't need the same code writing
regmap_write(isa->map, ISA1200_HCTRL5, config->period >> 1);
above, just use confg->duty which contains config->period >> 1
(...)
> +       device_property_read_u32(dev, "imagis,duty-cycle-ns", &config->du=
ty);

I'm not sure about this, it works for me when I set this to 100
resulting in a register write of 100 to ISA1200_HCTRL5. But are
we sure that this register is expressed in nanoseconds? I think
some calculation is needed here (and probably another value
in my device tree).

Yours,
Linus Walleij

