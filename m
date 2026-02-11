Return-Path: <devicetree+bounces-264694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHztDlNQjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C56A8122E95
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0499730071EA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D59366565;
	Wed, 11 Feb 2026 09:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxPS6QQr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F171636655A
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803277; cv=none; b=F/4Ds3+UR7HI7JFDlHyagvYtNy4CcJ/ErMNmlnJCT/5g5ADMfFoi2Kfd/CJXe8PShxBMenasLtJFdywclnvB8V9Uuds0Hpy4QMsUAanUt+VdwweJjIhbhLs7+0EaTn3THBVdwhNlR0XuKEPloDrgSzuUkNboRcfA87RVM0n329k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803277; c=relaxed/simple;
	bh=fP4SfOgARQ7v/Brjb9O3+lwzxomBul6ME0wlt0f7dSM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eJw7VxHPy3I3GhFeHey3/nFTGRSKDukqa3UZU/GMkHYAmZMoyQlAfIlJ6wYzn0qnXI70wZ14L4NnedVxaB3hSseA2RZrDIWxSZpnxyf/vu4awPRBccY10GvMDbyiIRLFSjp9RHLNKTSTTqpGSf/S5d1fYfwab4E1cnA5ofvG/R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxPS6QQr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F7B7C4CEF7
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770803276;
	bh=fP4SfOgARQ7v/Brjb9O3+lwzxomBul6ME0wlt0f7dSM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=jxPS6QQrjrPMrsSQhMh/wWB5EpDpCaVZumokW8m+WSKUXusJqx717HuMsa46BkvYo
	 4fWdrGtt6jTureCnwwfPQZ1isxZtQ83dooeF+7G6LK8QvorYweVeOS5uIGsf2tL/8h
	 EXJ15RB2jvqRCyg/u/8GaaX/RbxM74rK9jj2qk8ZfDSWDIYFGNjYd28WCfFjmlfX2N
	 a31hCwsVFPdfQWBRwPsGrdhH2BlufKBt0X9G+dKpjB/Z48JeYza0Ti37sehaU+1Pf+
	 a+wccplsz1kn2i/hNRLwcGZY7vaCGqPRONVwCjguDKBmSENq62cXyGuedwN5qU4Fn4
	 OuQkI0UJixPgw==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-382fb2bb83dso40176891fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:47:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX+6N7zaRYpHd3coRr4sMUd6OawVN5Aynbu9PSdBo6SgZGJX9PRbW16YSiu8DzUOwB97ihgeUWhRsTR@vger.kernel.org
X-Gm-Message-State: AOJu0YxkX2YIj7jkSh1CkymxXiPCCANE5je+FTrz9eKjjtiPCh1nLQgQ
	gZjhcURSvIc4X1J4cTX50Bbo9paPqp5kM3jVjKKKFOtoZdS6jAc1y1YG/bN46bCxktuN/F2t8gI
	/RgPPjAAnYB3sl11kI7u3xO6v8syIoEveyJcpkfhUsQ==
X-Received: by 2002:a05:651c:31d0:b0:385:9b50:91a2 with SMTP id
 38308e7fff4ca-38705403fffmr5340821fa.10.1770803275257; Wed, 11 Feb 2026
 01:47:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com> <20260211081355.3028947-2-james.hilliard1@gmail.com>
In-Reply-To: <20260211081355.3028947-2-james.hilliard1@gmail.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Wed, 11 Feb 2026 10:47:42 +0100
X-Gmail-Original-Message-ID: <CAMRc=MfgoKmsNAmn3rO2jDL-ZArMX2Jh-n4SnV6rpzRY3KSwuA@mail.gmail.com>
X-Gm-Features: AZwV_QhOgiVsYyK_jjpPbKXaVcpSjcjhcm9AGxleSbT7RLMOVXp0xwFXS4jxvVw
Message-ID: <CAMRc=MfgoKmsNAmn3rO2jDL-ZArMX2Jh-n4SnV6rpzRY3KSwuA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: aggregator: add gpio-aggregator DT compatible
To: James Hilliard <james.hilliard1@gmail.com>
Cc: linux-gpio@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264694-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C56A8122E95
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 9:14=E2=80=AFAM James Hilliard
<james.hilliard1@gmail.com> wrote:
>
> Add an OF match entry for "gpio-aggregator" to support plain GPIO
> forwarding from devicetree without delay semantics.
>
> This allows exposing selected lines as a logical GPIO controller with
> stable aggregated offsets, so consumers can reference forwarded lines
> instead of physical controller offsets. It also allows creating bundled
> groups of named lines that can be exposed to userspace as a convenient
> virtual gpiochip interface. Using "gpio-delay" for this case is not
> suitable because it enables delay features and requires 3-cell GPIO
> specifiers.
>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> ---
> Changes v1 -> v2:
>   - Split DT schema into a separate patch
>     (suggested by Krzysztof Kozlowski)
>   - Expand commit message rationale and use-case explanation
>     (suggested by Krzysztof Kozlowski)
>   - Clarify userspace use case with bundled named line groups
> ---
>  drivers/gpio/gpio-aggregator.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpio/gpio-aggregator.c b/drivers/gpio/gpio-aggregato=
r.c
> index 416f265d09d0..a09752fc5fe2 100644
> --- a/drivers/gpio/gpio-aggregator.c
> +++ b/drivers/gpio/gpio-aggregator.c
> @@ -1635,6 +1635,9 @@ static int gpio_aggregator_probe(struct platform_de=
vice *pdev)
>  }
>
>  static const struct of_device_id gpio_aggregator_dt_ids[] =3D {
> +       {
> +               .compatible =3D "gpio-aggregator",
> +       },
>         {
>                 .compatible =3D "gpio-delay",
>                 .data =3D (void *)FWD_FEATURE_DELAY,
> --
> 2.43.0
>

Regardless of the DT bindings - this change is perfectly fine. We do
that for other "virtual" devices like gpio-sim, gpio-virtuser, etc. I
would just ask you to document it under
Documentation/admin-guide/gpio/gpio-aggregator.rst.

Bartosz

