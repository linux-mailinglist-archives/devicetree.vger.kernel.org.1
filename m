Return-Path: <devicetree+bounces-259784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMX9INSCeGmqqgEAu9opvQ
	(envelope-from <devicetree+bounces-259784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:18:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A28C291986
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B8BAA3006014
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78072D8398;
	Tue, 27 Jan 2026 09:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdwzgVt2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942AC2D59E8
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505485; cv=none; b=SdBM1qmtO+gZ9QXRvr2/I4CDoYdaiSnpicfGbk5aIugb0NY9rhB7m/UrjMUP5gNhToR4i3PHHAmndvEfUTi9rYWjiA5/eEOQyCg2/xosf2Ze5Gl094zDaod8CQEjmnymKtIB1M1ggeV4G+dnheTyHUP+o4vgss2i4N+nOncNWJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505485; c=relaxed/simple;
	bh=yQ966Njn+FfjMMlR6gQsKtYlPJxHyIq42u5ygQh+r/s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=meYnF+EHZ/aBHHJ+afWqHRd216Nv49ztvBEt+Bv9kJpDoLVTeuzWRqB8rMpAiSlx4NPQsq10xK+lTCiTNkN85i4stphuvs54AYOpXIr7toHR8eNwWo8kj64TOaZLXkqcOUOEotgCWkENgyvDX8A0WxU1RBs7m/ZiWKTDBkKdcQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdwzgVt2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74064C16AAE
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769505485;
	bh=yQ966Njn+FfjMMlR6gQsKtYlPJxHyIq42u5ygQh+r/s=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=YdwzgVt2AxlbYuTOspMFsTHS/4X8Mp0UFv72qD4KPLeL6kxPy8MuO5TavGiSsolp2
	 /j10zvQ2CF8KVEjoL5nLxHAX4lqc1n2dKBvI2PWqKjjhbydTERJlUw+LxZ3DyAk8bI
	 H3uHvi0xr0G6DYC2bBy6ENLy2dwZJf39/ioG6bylXKhrWmY80dmb2fAmM22G0hR7Nj
	 P8gn7e9gxTJM+iUHamfexFDglK9QB/0dj+UqGBN5d3zQpu2lxdtPXpkdAMHQn24a26
	 a9PX+TCcS6FvU+QSUtAibUYbxCNE0Z0zY+PqS5pFUR25xNwMI66pOEYPtuTduUS+5k
	 Kn77ddULPA8pA==
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-64970870c0dso2075430d50.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:18:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXuh9TsJNyiPtFo3D2S8YkmO2BGidlS6Sqtj4RbVpmQlw0vc9qwwc6Cjy6RSCaDdh2ot3q+C+hEGr6j@vger.kernel.org
X-Gm-Message-State: AOJu0YzOs1NiCRruKlpBxdE97gD3IKLJA1r0jnTPk8kAjLG7RvhxG9zo
	FJkg2H3kpZr7XUKOEnBJlazfrzem2KFYXfIVXyP+ScQGdS9IllPIkAQa7MnTNoL33pAGPu1vHRU
	vZQdeGqFkcgWwdIf5HBoNkEfcCRaf3sE=
X-Received: by 2002:a05:690e:130c:b0:646:7a21:f03c with SMTP id
 956f58d0204a3-6498fc67a09mr562209d50.81.1769505484808; Tue, 27 Jan 2026
 01:18:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120115923.3463866-1-khristineandreea.barbulescu@oss.nxp.com> <20260120115923.3463866-10-khristineandreea.barbulescu@oss.nxp.com>
In-Reply-To: <20260120115923.3463866-10-khristineandreea.barbulescu@oss.nxp.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 27 Jan 2026 10:17:54 +0100
X-Gmail-Original-Message-ID: <CAD++jL=oAyWmP=2LhqK4rdQSOb5WJvCTGRUxSdEnttX6i5s5+g@mail.gmail.com>
X-Gm-Features: AZwV_QgpziPUFNsf8KU23ZSvXoPFeeWSMMPX1f5j49l0bdt4rKMCsorpnxg7oYA
Message-ID: <CAD++jL=oAyWmP=2LhqK4rdQSOb5WJvCTGRUxSdEnttX6i5s5+g@mail.gmail.com>
Subject: Re: [PATCH v8 09/10] MAINTAINERS: add MAINTAINER for NXP SIUL2 MFD driver
To: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	Lee Jones <lee@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Alberto Ruiz <aruizrui@redhat.com>, Christophe Lizzi <clizzi@redhat.com>, devicetree@vger.kernel.org, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, NXP S32 Linux Team <s32@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, 
	"Vincent Guittot devicetree @ vger . kernel . org" <vincent.guittot@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259784-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,bgdev.pl,kernel.org,gmail.com,suse.com,nxp.com,pengutronix.de,linuxfoundation.org,redhat.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,infradead.org:email]
X-Rspamd-Queue-Id: A28C291986
X-Rspamd-Action: no action

Hi Khristine,

On Tue, Jan 20, 2026 at 1:01=E2=80=AFPM Khristine Andreea Barbulescu
<khristineandreea.barbulescu@oss.nxp.com> wrote:

> diff --git a/MAINTAINERS b/MAINTAINERS
> index f1b020588597..37d80ff0ea4f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3183,8 +3183,10 @@ R:       Ghennadi Procopciuc <ghennadi.procopciuc@=
oss.nxp.com>
>  R:     NXP S32 Linux Team <s32@nxp.com>
>  L:     linux-arm-kernel@lists.infradead.org (moderated for non-subscribe=
rs)
>  S:     Maintained
> +F:     Documentation/devicetree/bindings/mfd/nxp,s32g2-siul2.yaml
>  F:     Documentation/devicetree/bindings/rtc/nxp,s32g-rtc.yaml
>  F:     arch/arm64/boot/dts/freescale/s32g*.dts*
> +F:     drivers/mfd/nxp-siul2.c
>  F:     drivers/pinctrl/nxp/
>  F:     drivers/rtc/rtc-s32g.c

Isn't this a good time to also add yourself as maintainer for s32g?

Yours,
Linus Walleij

