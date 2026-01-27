Return-Path: <devicetree+bounces-259782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELg2LsiBeGkzqgEAu9opvQ
	(envelope-from <devicetree+bounces-259782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:13:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34742918AB
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:13:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1E4C3031025
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D2A6332EA5;
	Tue, 27 Jan 2026 09:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYQLFVSx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2989B3321B9
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505219; cv=none; b=ERGJRoSxC+J3hAJYYyT90KpSVrNVaSoZJ4tn+fqyqIG7ubIo/qQXDJlxtNmBCCNzLKsEs9v5wbTYJQrgxMDCMgrgHU4D7CjIwVGRdybmhMwZXzWjymgHKuQtX1HwJjcYVWd4naiKE8hePcrWj2TmX+F+BZx/5KlBe9l61U4HBYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505219; c=relaxed/simple;
	bh=41rVnxvkISTHwRblA2rsSFI+6MXia1K7fzxYtKEjBpk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q/OPB6X8WE2EPHt2oii0VEE7+KlQmwBTY9WKUry1IQGJoj3QE7QD3UylkovvPihSJHSZhg21RRU/Fgi/SYOKVStoe8KuU62sBpUkfc6Lnoc+DE0DCV76MZdrpdb5DPvwwqj4OJ0hYRjgXkRLKestiTBrG+UJuAfWRQdn1+cHrgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYQLFVSx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE6E8C2BC86
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769505219;
	bh=41rVnxvkISTHwRblA2rsSFI+6MXia1K7fzxYtKEjBpk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=dYQLFVSx5Rfyajg72DgFUkh8KsjIpNoWUrOwqIIqV2okmnImzo6B+K2I7sW5Ic2Oa
	 HSUzebOo00gTTt2CqvBiDPsiJ0g/+OC4CTjgDsoIzxTKEQ2xEVV1G0EPCc3X6wOTYD
	 97Usj4ilzbDHnP9S9FFEKuP4efdRxNjVLqE80GuO0GGkUcb6kvNJjhO/6HQKAfckVA
	 k+RwgptXkEFDmHpjxaDo3MlVUlJmWaaivUb2dC+fnwEbQjAa2b7wYafv8mTAC0QFBY
	 Li2aQn8CBDe99s+Gvy9D2IL7SV2BCZAplaXnJfwxLwtpGrW/RwBI4ivrvBBhjqSuB2
	 DVmjtGkJ9pY2A==
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-649488dc7bdso5099678d50.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:13:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVP4riwWm6TjN4hP1JMpSc4e42PaMYPVb5uAwoHrgrvoH2mLlmiErjTr0/dET1vnsNz94/xoicY9gtC@vger.kernel.org
X-Gm-Message-State: AOJu0YxFlSD+DgFxFsi55YjWFGK+1FAy6S6oAMbnip+fZo9b506ffKUY
	2XRiT5xasK+yeC2DHxF1y+C2Cm84tZg9lxsKoriJstE807NZ+dz9KwE0amAjzGNVIpuZ9oZgmNA
	13/6HlOTszYIW7ey/DwsOlwCkS6EUqzE=
X-Received: by 2002:a05:690e:12c2:b0:649:6ae3:59f0 with SMTP id
 956f58d0204a3-6498fc3b237mr547352d50.50.1769505218201; Tue, 27 Jan 2026
 01:13:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120115923.3463866-1-khristineandreea.barbulescu@oss.nxp.com> <20260120115923.3463866-4-khristineandreea.barbulescu@oss.nxp.com>
In-Reply-To: <20260120115923.3463866-4-khristineandreea.barbulescu@oss.nxp.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 27 Jan 2026 10:13:27 +0100
X-Gmail-Original-Message-ID: <CAD++jLkJCoSWM+cy2OTyF9BigRcP-4iF1oGxGzEX8_53YWhArg@mail.gmail.com>
X-Gm-Features: AZwV_QgSaniB8mBIbI3QW613Tst6pG7m7pLrw8AiZD8eyiExQaEqOjZBG8ImutQ
Message-ID: <CAD++jLkJCoSWM+cy2OTyF9BigRcP-4iF1oGxGzEX8_53YWhArg@mail.gmail.com>
Subject: Re: [PATCH v8 03/10] arm64: dts: s32g: change pinctrl node into the
 new mfd node
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259782-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 34742918AB
X-Rspamd-Action: no action

Hi Khristine,

On Tue, Jan 20, 2026 at 12:59=E2=80=AFPM Khristine Andreea Barbulescu
<khristineandreea.barbulescu@oss.nxp.com> wrote:

> From: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
>
> This commit will switch to the new mfd node for representing the SIUL2
> hardware. The old pinctrl binding for SIUL2 will be deprecated in a
> later commit since it doesn't correctly represent the hardware.
>
> SIUL2 is now represented as an mfd device. Move the pinctrl related
> properties inside the new "nxp-siul2" node. The latter one is now used
> to represent the mfd device.
>
> This change came as a result of upstream review in the following series:
> https://lore.kernel.org/linux-gpio/a924bbb6-96ec-40be-9d82-a76b2ab73afd@o=
ss.nxp.com/
> https://lore.kernel.org/all/20240926143122.1385658-3-andrei.stefanescu@os=
s.nxp.com/
>
> The SIUL2 module has multiple capabilities. It has support for reading
> SoC information, pinctrl and GPIO. All of this functionality is part of
> the same register space. The initial pinctrl driver treated the pinctrl
> functionality as separate from the GPIO one. However, they do rely on
> common registers and a long, detailed and specific register range list
> would be required for pinctrl&GPIO (carving out the necessary memory
> for each function). Moreover, in some cases this wouldn't be enough. For
> example reading a GPIO's direction would require a read of the MSCR
> register corresponding to that pin. This would not be possible in the
> GPIO driver because all of the MSCR registers are referenced by the
> pinctrl driver.
>
> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
> Signed-off-by: Khristine Andreea Barbulescu <khristineandreea.barbulescu@=
oss.nxp.com>

OK this makes sense.
Acked-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

