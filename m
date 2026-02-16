Return-Path: <devicetree+bounces-265677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Pk9FCrfkmlvzQEAu9opvQ
	(envelope-from <devicetree+bounces-265677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:11:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 740B4141DDD
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04E5F300BC8B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA48C298CB2;
	Mon, 16 Feb 2026 09:11:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755E7296BDA
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 09:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771233061; cv=none; b=NwKBJGP+4V+3eOBqyW6xeI+G+qrv2D+TKjVrqmjKrEOII5g/RuCtbXxbSLR2rCd3F820SIVQ2QO1L9sNRfYuXxN02u3ka71rirGLyWxvQTR9uyMSAKYCaEkkRRPkzwXelMZjs60qdj8LpkoAxsTHpt8YPmJnXs/RUWeWt+tIM0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771233061; c=relaxed/simple;
	bh=Ahk89U9EfYRDVMHRBAIJvuJ2i5XHUYct3iLUAzphgLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nQ4aIxEv/MbNPP0dyIzaw71u0l4HPA94lT+jFCMRUiZSKIDhDuVMYSW7TcbfzeA2wutBnMQuuk0bzRhmv1IlitTf08L4AvjbSzI5pts8RrHMO5mD+WvWc5rCL930VucoEejMQsK/ijC/YiUvu8KsmXHtf2ofgIitJnypjoBo8+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-56637565faaso2722829e0c.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:11:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771233059; x=1771837859;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=60QQHHZFbfd+e38v4pt2DHtcmrviZg0lmyBGAykloWw=;
        b=dvuhQo9RsDeMVxFg38cwh9lZwu0z3EGDZR/bb0/TAOGaC85Dt3rzw5GOHdyXlOzrrN
         Cu+fXqifUZiBbMzy6uIRNMO13Lf3zvqM5yUbceW5LRpKhJhfUQgo+QLLgBd0bqzAyl9m
         utvu0hWiQTiW2Biz4gAiD0guJ4cZunurs9zfIOjJ9ieVoKAOoe6rF960PK4gylWDTB0p
         Yx/bnf4cFcMKGkNTB9WFHFgn79d69T1t8GLVBbqhL/73obpAvvpW81BgUpLl3YqZo3Ju
         /iKbnBVCcjpABvbtNeUuTFfhf7ltTD1LUhhCVLgGM4jMSKqyMKPLTME+CryIUbixHeje
         h6wA==
X-Forwarded-Encrypted: i=1; AJvYcCXY9fuj8MuUV9/beRuX9mp6dkKMUnAMXl4V7c0aGtV8MZBEpzOz45HXXDtQEhe6lIM0/QE3flE9QP0j@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0DH2Plg61CPGlICIDh5gBAh4CQcYKkxzUbk1TfBnMNOtYwnF7
	9EB9ibwkaqLiHZQtonJxeuZRnpZa0pkYgwUJuDSd84sSylHAnJXcGUJFmz2RklQf
X-Gm-Gg: AZuq6aIJvSYiiWqfqF8sWD1Mkjm2H7xOq22crJnmpmbJ9KEcec74ickKc1bFObVKyum
	aCLWQLzSif2hVR2OQG8tykNn8vmizy/g54TYsoyMOhWzSRR9zwzhK4q6oFBIF0uR44OjbAHnn9y
	7E5zsxIjZ4zWKRBUQPpWMF3dNPgnIRPZXjBa8FkOSGsIvcvm/nF/Mh4G19a/mvSPpq02NfO4nOe
	tmSHrBzcJcr2d9raa6+o36nb3iRZKn03jJqjv0W3AF742lFWa7z3OlCrOlwYJpGZoFtDvcpONC2
	ZFjdHZOnMio86/nkPX2jvpEKD5B2ahi7tCYHejWxK7YkRLt5Ynwl9QFhdh7yLDZinc8yHhf1gYl
	hcyZuvMYlWwsu0P4AvGscixrkZ/vpkqA0YIMlccQkW2N7S95OSI+ofw0KNXLyvJGFnJ81juAwEw
	TXDgVc5dHdqnIWKEXJYquVU7/mckP4Sy9ZnO+wC/iB4aubyPQURDkZaFGuD2u0
X-Received: by 2002:a05:6122:4585:b0:560:2368:191 with SMTP id 71dfb90a1353d-5676aa7aceamr3276400e0c.10.1771233059394;
        Mon, 16 Feb 2026 01:10:59 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674bc76b6asm7766380e0c.0.2026.02.16.01.10.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 01:10:59 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5fe086fb0baso1991477137.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:10:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUKrI2+DKWXHnZOH3bS/alj0TlSmS7m+JBRjfmIKNkIffCuO/64IemVFHuHBYzthIrgNlSHWawHqpAD@vger.kernel.org
X-Received: by 2002:a05:6102:3f15:b0:5fe:f14:e701 with SMTP id
 ada2fe7eead31-5fe1ae114c0mr3782052137.24.1771233058784; Mon, 16 Feb 2026
 01:10:58 -0800 (PST)
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
 <20260212195423.GA787785-robh@kernel.org> <CADvTj4rPq8D5piqEijCdAjkWmZtq3Bi_Kxv-4F0aU4xi_O5WKg@mail.gmail.com>
 <CAL_Jsq+Fb0vOggHWkNGusCBcwTQubD1Lc+0=U4+MpZacXqc_ag@mail.gmail.com> <CADvTj4rfgEjMNkjg-A0Jn=brO1SUBzQtL_+wra8RWdgBDVdU5w@mail.gmail.com>
In-Reply-To: <CADvTj4rfgEjMNkjg-A0Jn=brO1SUBzQtL_+wra8RWdgBDVdU5w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Feb 2026 10:10:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWb341BvvbT145bG5izBRezmvWP0hY5jHZsnJiEgLkc6w@mail.gmail.com>
X-Gm-Features: AaiRm53uKC3K7zyL1juGzj8ev3y3KxgFabjCrX4ds5DVREDYC94YS-Q9FOgQDlw
Message-ID: <CAMuHMdWb341BvvbT145bG5izBRezmvWP0hY5jHZsnJiEgLkc6w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: James Hilliard <james.hilliard1@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265677-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email]
X-Rspamd-Queue-Id: 740B4141DDD
X-Rspamd-Action: no action

Hi James,

On Fri, 13 Feb 2026 at 23:56, James Hilliard <james.hilliard1@gmail.com> wr=
ote:
> On Fri, Feb 13, 2026 at 7:34=E2=80=AFAM Rob Herring <robh@kernel.org> wro=
te:
> > On Thu, Feb 12, 2026 at 3:22=E2=80=AFPM James Hilliard
> > <james.hilliard1@gmail.com> wrote:
> > > In terms of userspace vs kernel drivers...the current situation
> > > for my hardware at the moment is that it's effectively a hybrid
> > > situation, some peripheral board components like eeproms and
> > > temperature sensors have proper kernel drivers, these would be
> > > on the i2c lines for the connectors. There's also uart lines as well
> > > for high speed communications and plug detection GPIOs, reset
> > > GPIOs and reset detect GPIOs on the connectors.
> >
> > All that should be in a connector driver IMO. For purposes of the
> > binding, I don't really care where you handle things. I do care if
> > where is influencing the binding design.
>
> Would a connector driver require moving all driver logic to
> the kernel? Or would it allow for hybrid architectures like mine
> where userspace retains significant control?

That is up to the driver.

BTW, if you connector uses only GPIOs, you can already use the GPIO aggrega=
tor:
1. Write DT bindings for your connector, with a real compatible value,
2. Add the real compatible value to gpio_aggregator_dt_ids[].

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

