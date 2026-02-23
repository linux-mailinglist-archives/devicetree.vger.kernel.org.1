Return-Path: <devicetree+bounces-267348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MxqCB4vnGkKAgQAu9opvQ
	(envelope-from <devicetree+bounces-267348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:42:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B19D1750C6
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:42:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43A163014A2E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B653435CB68;
	Mon, 23 Feb 2026 10:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q1cjsye0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F47335C183
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771843345; cv=pass; b=iVFd0r7woPGCYqErliysZUFHAONEc+IgMou59IO+P9Fcz9zaH2Y5RxPw9PT9YGDy9gA7BlumRvJcNKDCIzku37rYHBxdiWSLvUu1gb/FfCmM7Fd4nVYGR2BiQflqvMbNfM/FYXBu2LFEcgftW92xusdDqPupEJ2epKVisEcO8oY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771843345; c=relaxed/simple;
	bh=P41ECaBtVGR0u+MMMSObmf7Jb+y0JD0AdOXmIS3DHAU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P1RTZSwI5rbTRXjUX6GMUgei1uiBGnSBo5rtPwyCMujX4V0I8GSPXKAnl1nM+sEbgoNW5P3R6QIRg366GFehG/XSpTqNFrhrWuDnPj6PujV52EerhIjh6T4LukmwLOGJwTSrSdit1i5sHDNGkybxjA+DnQBEXuKRFP7leHoPRxI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q1cjsye0; arc=pass smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b8fa449e618so662911466b.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 02:42:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771843342; cv=none;
        d=google.com; s=arc-20240605;
        b=SGWjMTa9FLwiHR1UxGTTh7GnJwFFGmkVeElnamiPl6tK1XS4hSwcAzEB3S6Kr7VxPZ
         p3QWUhxtko/EfdRaUbomDCPcbr+tTtESCka2XHA8+ucmNEm7YkN0RTzd5Hk5OAmLc+Mz
         Wd539di5xSFMvZ1Bgo6yi5+Fhb4qIEgQR8sgqihhzCK8WT6TM5nRILK1nFpFLpULGWm5
         AwdHFrx+oQmApL6gXd/3R1Qk53n4uxLflfEV06rzh7qVOurlcUA5TvDtsMgfr+FiDsij
         ITEPVnaUY1GsY5jAhiqJMseMU6ip51hID73kaFHGtyFph2pPAOzsRSRaBkVTUJIvUNBT
         Yc3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=P41ECaBtVGR0u+MMMSObmf7Jb+y0JD0AdOXmIS3DHAU=;
        fh=+j6Bo7S1+goc7ZYDS5iVFryRK4qwvZsQta28AQhICu4=;
        b=dWL/u9X1pqXF0flk/KN+KSaOFRrlcfZ9m1IyYJF+sAx8T/MRl2v2CPr+Za6J04Eivn
         qGZbdbN0dW1nsrwzF1J5Tju8qqVsx4Awpmb/cPZgfWcTnDod7+NKt2EYNeBpW2CcOo4u
         VMzfCT+4dYHiYVyzfO+VtfKK5r6PCm/B+m+v+cEh4QuonBDbOFAPRNfjsWIE5+uZT1NR
         xgzgmKJyAYSbzZ5k3R/AvJ0UA+U2loUhArIkK3VBVkI8AnTOMuLDoDsMF/IpHxROnG3m
         kSwJCEyW7jkvuVVquo07NL1dUt5+yQBjDSSrRDShRuj2bd79UDj5lqn6Rc9y9ydmDlB4
         74sA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771843342; x=1772448142; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P41ECaBtVGR0u+MMMSObmf7Jb+y0JD0AdOXmIS3DHAU=;
        b=Q1cjsye0K3kzkv9EFEJ3OGVamMLTrJOqSkc1o9x7sRzUESbN/Kehs51F1ijM0J3kQ5
         TP0PfvBayxozaHAwRggwzWY7dD1o78gd/vsDIuBGPf6TrN80c6rZSOosjYtuXXbW0lHu
         wakRTH2ieQ2BCyM9fD0MhrOhqnmyJV48xJflt39UyFK7G+Mn+5bCxrl2l8zCjGiDrKMC
         LJ3PLVJKK2beVg8LwSq8PZwUSYJxhrRoSepk2ivbOu9epjidcoCFuXxcYqIHHSD9Hrd3
         e1hhMHpdFXInJl+sBxO4IDkB1yQVi1QSljZvm7okbg5OJ2i+AsxADmwXqnmgPo0CbqOy
         mP3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771843342; x=1772448142;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P41ECaBtVGR0u+MMMSObmf7Jb+y0JD0AdOXmIS3DHAU=;
        b=le33/piknGYHOhVwANByjQyKgdRSxpz/EjUXZyJSKkzISgDe8nkuWwhopAgo0kHInT
         vPEgS1G9pboLnzbJdrlTfQ+HCNi5+UR1UZOEu7a2NlWSZ1gPVv7cgsfRbUg8riQo5btP
         maOCFoSObWg6qFEqLYzyemI0VPEegeWMCkcNRK0OQXwjEsMEn0iN9UOT8/Y8uBXpA8Q8
         uvUR/eHCxuSUfL1Wo6QyqEuiLoE3d9ihRVl3uzVdbTzZJL1xYmOp1B51MlpNSuYe66i4
         Ouj5gS97P3KQkm5jc1w3QDYGj0vg/Hdp6rEKpVu6fAmJmrEmEoINXdoXHIo5m+cekRXQ
         o6IA==
X-Forwarded-Encrypted: i=1; AJvYcCUN5YjLs05/B8HlMz63/NfKy1BCAagY6yLxAD5KFfvBd9reciXLfhQlDKCdUQ6w+8wr8MsvaCWrRcN7@vger.kernel.org
X-Gm-Message-State: AOJu0YxS/4A6sK1ft6wnUeaKre51bUvpgJJPPVOoiil4qoj0wGndCRww
	vxFrBNTiy1QJWxSFR1MTybxBV71jG/wMwzE2Io2PTYkL7ybZp7ReT+ZKc7bN1T2ZrR4ZjYTq7n9
	3MwuLEkkdfwM5jLwMCZvuXRRZ6xG6arM=
X-Gm-Gg: AZuq6aL3cZl44wvWH3CYYteELUoyBych0TcQ/wo8L3Curbiat0pbRXNgA4nzbq929VS
	OTyg7dczovkl4C42LmxjjObYM80/gtx31hJ8rJpZMZD2d068WstR3xRCwUu5qm835+TqZWIrcLM
	Tk7OICXgO3EHNRZfHNzFOW6wosHeMG92i0Qg8aSl9C/z92F8gwEU1IOJXT/aEqMq7BlWDPYGrxm
	H4RK+dle7M3c08nU64gKyfRmg8DdvtVD7+uIJiGbbioCRx8fzx/90s4425Z2sLfZ3kNv0a2oTEC
	D19zMbZSgGPA8MOVm+iSfxv5x62NQHHIoNz9HaAx9753iHtWHzpU/8jgKwsrsh+oJVbiXMnzAnL
	R7oSV7oA=
X-Received: by 2002:a17:906:ee8e:b0:b90:3593:654c with SMTP id
 a640c23a62f3a-b9081a2aa1fmr456630866b.21.1771843341409; Mon, 23 Feb 2026
 02:42:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260216-adf41513-iio-driver-v7-0-b0ed387ab559@analog.com>
 <20260216-adf41513-iio-driver-v7-2-b0ed387ab559@analog.com>
 <20260222172912.60a103c0@jic23-huawei> <aZwYshRxNgSh3CWk@smile.fi.intel.com> <zb752y7tnjzsc35na572o4sip6efwv3i4lha4ls6fhdrr52h5v@bfgy65cmae4p>
In-Reply-To: <zb752y7tnjzsc35na572o4sip6efwv3i4lha4ls6fhdrr52h5v@bfgy65cmae4p>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 23 Feb 2026 12:41:45 +0200
X-Gm-Features: AaiRm52vOvWGhar45YMmK2bKJVNTzdmE6K0RIepFykMpsJ41Aa0DMBAQ9J054Sw
Message-ID: <CAHp75VdSV2QDMR0DueCuP=Ds-5A1NsNjqPWtmRbG4NvoJ=LjXQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/8] iio: core: add fixed point parsing with 64-bit parts
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>, rodrigo.alencar@analog.com, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Dmitry Antipov <dmantipov@yandex.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267348-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshevchenko@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,kernel.org,analog.com,vger.kernel.org,baylibre.com,metafoo.de,lwn.net,yandex.ru];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,analog.com:email]
X-Rspamd-Queue-Id: 7B19D1750C6
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 12:37=E2=80=AFPM Rodrigo Alencar
<455.rodrigo.alencar@gmail.com> wrote:
> On 26/02/23 11:06AM, Andy Shevchenko wrote:
> > On Sun, Feb 22, 2026 at 05:29:12PM +0000, Jonathan Cameron wrote:
> > > On Mon, 16 Feb 2026 15:02:17 +0000
> > > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kern=
el.org> wrote:
> > >
> > > > Add iio_str_to_fixpoint64() function that leverages simple_strtoull=
()
> > > > to parse numbers from a string.
> > > > A helper function __iio_str_to_fixpoint64() replaces
> > > > __iio_str_to_fixpoint() implementation, extending its usage for
> > > > 64-bit fixed-point parsing.
> > > >
> > > > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > Hi Rodrigo.
> > >
> > > This looks fine to me, but given earlier discussions I'd ideally like
> > > to wait for a final review from Andy.
> >
> > It all depends on the series from Dmitry Antipov.
> > Can somebody help reviewing the patch 1 there?
> > https://lore.kernel.org/linux-hardening/20260212125628.739276-1-dmantip=
ov@yandex.ru/
>
> can we push for the exposure of that function to kernel modules?
> We have discussed that in v6, and I understand that:
>
> EXPORT_SYMBOL_FOR_MODULES(_parse_integer_limit, "industrialio");
> in lib/kstrtox.c;
>
> #include "../../lib/kstrtox.h"
> in drivers/iio/industrialio-core.c
>
> is not a good call...

Yep, because it's a temporary band-aid. The proper solution is to have
shared code provided by the lib/. So, the wrapper to parse 64-bit out
from the constant string literal should be part of the lib/ in the
result.

> > When it's in, we can continue on this one. TL;DR: for me this is on hol=
d.
> > But if you see the need to have the driver being in IIO, please add a b=
ig
> > fat FIXME to make sure we will get this all being sorted out in the
> > (nearest?) future.
>
> I could add the FIXME into iio_safe_strntou64() doc header. It explains
> the context:
>
> > + * The implementation of this function is similar to _parse_integer_li=
mit()
> > + * available in lib/kstrtox.h, but that header/function is not availab=
le to be
> > + * used in kernel modules. Hence, this implementation may need to chan=
ge or
> > + * removed to reuse a new suitable helper that is properly exposed.

Up to Jonathan, I hope we can move the above mentioned series forward.
Without that, as I pointed out, this one sounds to me suboptimal and
unneeded double effort.


--=20
With Best Regards,
Andy Shevchenko

