Return-Path: <devicetree+bounces-265103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPZXMI/pjWmr8gAAu9opvQ
	(envelope-from <devicetree+bounces-265103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:54:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A3012E9DE
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BBB2830CDF9D
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 14:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 254E935CBB7;
	Thu, 12 Feb 2026 14:50:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECAF3382F7
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 14:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770907807; cv=none; b=GY47YlsQvypgq/5BrOKnlz2PmrWBXhKwgY9BAJjem2gC7Z8piRiMxFbsNI7ZNb1cUUAW0XSYdGpz6l68/NOYyWvj+i9BJbesmcFY/PRAcoHzL0UBlB543YWqkFKrtQdJ/jN+175RmmJTMJOUoenBG4rOkDVHahm9glX9mK/vieA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770907807; c=relaxed/simple;
	bh=zx6AgySWs3CQJ/r8IU+PeotcYw8+mqITBNN+IS1KfvU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EVwQusK+RAot0OQHu2J/6TZYJxYP2EdN9C11NABvFDNhahaD6lEJ4bI7cHRmmq+z2XeXShs0YI2FW41NHuQ9GUijYreFPFSsPdmP4AeQ6ngC+8uoZpPHOKwqV5dYPB5cFTdk1LCh2wmwQdFKeExzN6YQswbMz+h3MLGRGFblNCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5662c2937fdso1769672e0c.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:50:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770907805; x=1771512605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0NvQO/wNdDzAnDN3kqPLti/mAGnL7J/5+U3O5NXismk=;
        b=dRR2hSFeaWnBoyO4TvJonoJrCMgypqjrjHeKeIRo0CcPUr2hXKGTSsB3WzGnCvQ83w
         WVDGQetXFogcjRVgXTRpzDANBJC/Hn08Qw12n4NTreJ+lmIKxyH0+9oTxyoiPYr6lWjW
         cFtjHItT+8FCX8ouKzgMqI1ggoLY1PDv01vu4socOAb0tqL4TLOilvBdLcBSDLTwmTsz
         ftDS7PVeMo/i/xrpi2FXXpkW8hQt+9dXj1LKTv1e14sv1UJtO+S8+htke5cKDUHUNmph
         Nro+2FPO5sQeg6YClPWo2b3fMqFz34xt+lLc9uA8I2hpeYNtokn4t8vE1Y/GETOAUFpF
         bUPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWYAxYXHhOA3uhIbtHbuEsGcnGeM+68NxkzBDl9fRA95EgWQGRyVCqBj9vKRX0bCiHODJxbAUhl7RG@vger.kernel.org
X-Gm-Message-State: AOJu0YwG/b/5UdNcv24UVyPuT580N/AmMLkgeUrxlKw4G4qxDWHKha8q
	Kq3a3/oM0CxG3XeQe5CSezBRdmHE1bwMEcgs6O+FMmpTo8blcGFWlgxPjviJKJ9n
X-Gm-Gg: AZuq6aIv5SRlojmKKS2aXfN0JxB1lyD0NVYzqXSBcUEqhJQCfziXukQehTaSCpMhNco
	l4hoEg3xpnjR+aAMjpDRVRZtjMo7Uv4to1C158yXTnUTEs87MD4zqOtmDOfFPOq24OlMMGNgnzN
	BA7VjEs3Kj1jZm0R5ywu3OGR/MQuOIbjgXR3dfF1GIsFoS3PBjEYCnPPC6Fu3cFvomzO3wF8BNY
	/susvKsCZard23/dVIXBCJmHq0U72/s2gSDrerqfmGaqL0yk2U/oJr5tGlJRFkFZvWfXaGUjJh0
	Xoscad2kvoWFlah/7zNoK+Qr3xRl8lpFHneodvNYhB64tV5QJz55p3rPMATmf8n1ttVoqpg9E3G
	Kf7JhOIS8J2v/OvdA2LWH7zTIjePpsAvJv6DBEfGJIJmq4Et2A8viBxWKHIhRmjIeKN+BRTS9cg
	gcYFL641xMlfeQJoHpJMLMuI+hOpnnj5BMeamBYiB2RLGXfVbQ9EnuRuI98bxl
X-Received: by 2002:a05:6122:4d0e:b0:55e:82c3:e1fb with SMTP id 71dfb90a1353d-5675a4020aamr748644e0c.10.1770907804758;
        Thu, 12 Feb 2026 06:50:04 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674bc76b6asm1938884e0c.0.2026.02.12.06.50.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 06:50:04 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5fa3f2b8f7dso1410885137.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:50:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWG9GlY1bs52QrTnCx4Gv3ByVEOGoPo3RrLMASQShaYvfx7xzOwBC8tSXXCayGDHKhERt9nULKMdnxl@vger.kernel.org
X-Received: by 2002:a05:6102:b16:b0:5f9:2ac5:2fc4 with SMTP id
 ada2fe7eead31-5fdfdf15952mr936376137.17.1770907799750; Thu, 12 Feb 2026
 06:49:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <338e6575-ec44-4179-94af-9086a7ca79ac@kernel.org> <92359c6d-06ac-4f8d-baa5-6fa45a536455@kernel.org>
 <CADvTj4q74H__JZftOiXkdsY3+E_Xmcx6Y6i70RQDJ0K09=XOHQ@mail.gmail.com>
 <30026ed7-cd19-4be2-adbb-e8bb155a75b8@kernel.org> <CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxHOV8g@mail.gmail.com>
In-Reply-To: <CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxHOV8g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Feb 2026 15:49:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW4oNeGY4VP7zajOS17apnjqS050H5L+Pxqe9bqqt=WNQ@mail.gmail.com>
X-Gm-Features: AZwV_QikOS80PENLHmR1lFwFY0-ZpGoOD-VsDMq5xij9EK0PUpviHol_KwwKmZs
Message-ID: <CAMuHMdW4oNeGY4VP7zajOS17apnjqS050H5L+Pxqe9bqqt=WNQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: James Hilliard <james.hilliard1@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265103-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 60A3012E9DE
X-Rspamd-Action: no action

Hi James,

On Wed, 11 Feb 2026 at 18:01, James Hilliard <james.hilliard1@gmail.com> wr=
ote:
> On Wed, Feb 11, 2026 at 1:44=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> > On 11/02/2026 09:28, James Hilliard wrote:
> > > virtual gpio driver though so AFAIU it's not hardware specific.
> >
> > You can give example of any hardware where this is useful. You need to
> > make your case with actual arguments.
>
> The sunxi h616 board I have has hundreds of GPIOs, only
> a few of which are needed, I want to map them in device
> tree overlays since there's some minor variants with different
> hardware gpio configurations.
>
> Setting the gpio names on the parent controller is not practical
> since doing so would require setting hundreds of values for
> gpio-line-names, you also can't really combine sets of pin
> names across device tree overlays AFAIU.
>
> > > Use case is I have a device with something like 300 gpio
> > > lines...and I want to name/group a small subset of those
> > > lines for delegation to a userspace app rather than trying
> > > to set 300 or something gpio-line-names values, also I'm
> >
> > So if I change the approach in user-space or use different user-space
> > app then I change the DTS?
>
> The idea is to make it practical to set gpio-line-names for a
> subset of the GPIOs that are wired to peripheral boards.
>
> Say for example I have a control board connected to a few
> different peripheral boards, there may be different mixtures
> of peripheral boards, some of which can be used at the same
> time as they use different GPIOs.
>
> The idea is we load device tree overlays for the detected
> peripheral boards with detection done in uboot based on a
> GPIO pin strapping based detection.

Sounds like the work being done in "[RFC PATCH 00/77] Add support for
dtb metadata and addon device-trees" [1] can be helpful for you, too.

[1] https://lore.kernel.org/20260112142009.1006236-1-herve.codina@bootlin.c=
om

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

