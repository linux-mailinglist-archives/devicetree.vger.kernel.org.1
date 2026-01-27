Return-Path: <devicetree+bounces-259799-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGHcIWmJeGmqqwEAu9opvQ
	(envelope-from <devicetree+bounces-259799-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:46:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5E691F98
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:46:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 375FF3047069
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EFE73321B9;
	Tue, 27 Jan 2026 09:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzaT4wyU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4252E2665
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769506888; cv=none; b=H+8+z9Iz1QO3TfO7JEyFm06bqLt8/Tvbl1vzou2oyiH5ew6nGuvxAg2K6h0uIXBvB/dDJddzklU1bd78IM9jQQT4VjNZEWEDTsVPhjxGTwU+1NQfbfdpR7QhtXHufDuY8iKAELIh8eea6YnJiYUAp2qcQd/YDjTm3NHfnJ4yT8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769506888; c=relaxed/simple;
	bh=o5tRYiCZhPJsvWOlkTTg3PRVVKQuQ8t8E/qc5ck9C+U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CpnRTces1D9IuSa6yi5JeDVtOTourvyOWkbDhZ7T40wCMyPBcd0Cr3bz8mTJtwIbuFhsumUxzKotI9YEZJ2FyAhPwkakuLjZgJDC9fhETIk5/7oSgfbzZKWXrkeoAkssQeycC3u+8NUhvONHFTvUtYDVaXU+BXYkYy1KbSFT5F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzaT4wyU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01C94C2BCB4
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769506888;
	bh=o5tRYiCZhPJsvWOlkTTg3PRVVKQuQ8t8E/qc5ck9C+U=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=nzaT4wyUWQxI1dv0wnlJVhEnDZKpPOdFJ+SnFiOxgW6jKxL7z0EaYc//PMBupDWC9
	 pHer/77KxXBLkwPdztfuqpcAa6KKVYFK7ktljwdwdDjFxxe7yUOr041ClbhL8vc30x
	 aIYUgUfIyRzLPI7Jqw6x1UChRwd+RrF9PdvCNSZYT9T18DhryerXcTrWJebknYcBfg
	 o2rWeHU3Yy4XT5olAC/Lp7tJGUkUPAosF3cQna4/KyiqiDeX4+EG2Hj1s+JdV8xodL
	 cCB+ZBtN0boFGgzlmlwHQ2I9pXPYSA6SG9whCw5ZFhIxM5j+ec+gjZ900Um3uWB1ng
	 deJchx+7sh35w==
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-6495d592c10so4342377d50.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:41:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXU+LqV7/dj+enQAcy47qAI2nTono8tLgOUQrAIqvI+FJvR82J5pFx1Td2qzsFAsHO64gN/xQKeZEXm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+5lPejbdbjYAWVelWcPHeM6rSq29CPaLZgUTjR+Rsq7GCSKG1
	cFIqqJYr8YvbOXA8cgcOK8CnCRLYhV7/95l47wRRhI3pBM50KxKJ5qqTPPTj242iC1cdk618jAp
	YBbQz3eT+F7WbCxD1xLUSEfBVb0FO4P8=
X-Received: by 2002:a05:690e:408c:b0:63d:bfad:6c7 with SMTP id
 956f58d0204a3-6498fc3ff38mr681563d50.58.1769506887301; Tue, 27 Jan 2026
 01:41:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123-dev-b4-aaeon-mcu-driver-v2-0-9f4c00bfb5cb@bootlin.com> <20260123-dev-b4-aaeon-mcu-driver-v2-4-9f4c00bfb5cb@bootlin.com>
In-Reply-To: <20260123-dev-b4-aaeon-mcu-driver-v2-4-9f4c00bfb5cb@bootlin.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 27 Jan 2026 10:41:14 +0100
X-Gmail-Original-Message-ID: <CAD++jLnar=EgaaqfLDRBgic6NGPY30M1kzf=8Ps9j7Z4kAme+w@mail.gmail.com>
X-Gm-Features: AZwV_QgLmP7BaRH9fF1BxEIrjgPtkrDiEeJYWc9U8rpAiPtk6YcoXHb2cAV8Lbc
Message-ID: <CAD++jLnar=EgaaqfLDRBgic6NGPY30M1kzf=8Ps9j7Z4kAme+w@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] gpio: aaeon: Add GPIO driver for SRG-IMX8PL MCU
To: "Thomas Perrot (Schneider Electric)" <thomas.perrot@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?SsOpcsOpbWllIERhdXRoZXJpYmVz?= <jeremie.dautheribes@bootlin.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, Lee Jones <lee@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259799-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,bootlin.com,linux-watchdog.org,roeck-us.net,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,bootlin.com:email]
X-Rspamd-Queue-Id: DE5E691F98
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 10:55=E2=80=AFAM Thomas Perrot (Schneider Electric)
<thomas.perrot@bootlin.com> wrote:

> Add GPIO driver for the Aaeon SRG-IMX8PL embedded controller. This
> driver supports 7 GPO (General Purpose Output) pins and 12 GPIO pins
> that can be configured as inputs or outputs.
>
> The driver implements proper state management for GPO pins (which are
> output-only) and full direction control for GPIO pins. During probe,
> all pins are reset to a known state (GPOs low, GPIOs as inputs) to
> prevent undefined behavior across system reboots, as the MCU does not
> reset GPIO states on soft reboot.
>
> Co-developed-by: J=C3=A9r=C3=A9mie Dautheribes (Schneider Electric) <jere=
mie.dautheribes@bootlin.com>
> Signed-off-by: J=C3=A9r=C3=A9mie Dautheribes (Schneider Electric) <jeremi=
e.dautheribes@bootlin.com>
> Signed-off-by: Thomas Perrot (Schneider Electric) <thomas.perrot@bootlin.=
com>

Looks Good to Me!
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

