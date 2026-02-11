Return-Path: <devicetree+bounces-264757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMzZOUZojGkdnAAAu9opvQ
	(envelope-from <devicetree+bounces-264757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:30:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C003123DDA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:30:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78C013016922
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F6636BCEE;
	Wed, 11 Feb 2026 11:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K/x5kKtw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825BE36B07B
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770809397; cv=pass; b=mS+dYeqDYvvf0i3tTnGPJFUjwlZf54p1cTzv8rdzASIHUsj+yDZ/mDtxDI+CVdHkDWfRhZ1NzV9Lq9L/nX6VOAvpwdCpV46MWQRVMPn01HILGCnR6/1TmHv50eFQEFlTkJaXDaOtSw3Pxttxnzh95eXRKre6cykAgwcs+z5DYLU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770809397; c=relaxed/simple;
	bh=sLnOa71h29WYuZ9LNj9fnvGyP/4g4rt7bz1/6hf6FC0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RnCyCmr83+lQie4Fg/RDGiiY77sxPbd5QywjiNU4oKEkK8FkkVv4yFmuMjWrVyKHHbRCzEsQJUe9J7KFEwSrs+c+ms93qQu2li+3m7KsqpicgVYgYbqXaDvhvjZjxZFMUMRjdcw86urJx9lqYaJGRdH/ETlE2UfQwXhM7qzJ+n8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K/x5kKtw; arc=pass smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a77c1d5c3bso8326675ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:29:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770809396; cv=none;
        d=google.com; s=arc-20240605;
        b=atECJmvXEXCOGuj9LbmTaPGvHFPm1PkqlEmF/9PWIMy9/3UdbLDePYAQJo5EW/ltRY
         HcDlSDTbSizFiPKsMGKE5yze5H+Nx/ofq4t2ZxF63mG/AsfMdr2qeUkMNAlj1SJnSS1L
         MYkJW8Ack0+DkxjO6Am0XEJ0Y9Ad21Z4JMRE6OvrVRO+7plZKnU51uHB+Oj6BYkV2Fue
         /5zAxsSHRCg0wIehpz/cIdak37IVbRiE7A4Pvk0ipO0Q97esFBlltWWyrizdasLyxPal
         Y+BtR0L3QEV/GTaRYCZYla0e0C2wR5nW+j5QY52t80vHiM9MYo4JSdKo7wy/Koq3gEcF
         8J0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cMkh7cnzDv96CNvbeCbaRTyM6wLKZu/qXnz0rFwQJdY=;
        fh=QEXpaIwMrpFIMK0B93i4YjIw9QLN1OSUFxw9r4y+7YY=;
        b=Ukc/E5Km8KJL9mMxjY/LVyGKY2Ai2Oi/nVv357gWipmz0mI2CHivz7bOGIUYQXdcII
         8vN0sLkDD++JyDjEBIjbJ+jM9FXV1uUb5VH4V6w2bMyQeH3mua3jpsKR5W4GLhqKc8Hx
         pd62E+K4+LkfKCyxhcSvig2kYqrFeACWOdri9fG5UBjJ9AELQtLKjKhhvaBZO2GmkVp3
         pSQcwEd+A1UBuK14WOhXzI+lAJLsyCk5GQUM3FWMpScwyOvb+SA6vMyKQddIGvuJrN0q
         5SiubsvALS9oSI85d2mf/DdWKZyqP0h4Bf8Ds5B3Nntc1TzZD6rb4/Geu8FEI1L1aH/T
         0eiA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770809396; x=1771414196; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMkh7cnzDv96CNvbeCbaRTyM6wLKZu/qXnz0rFwQJdY=;
        b=K/x5kKtwqkbRsAOPp0C2IMLHa86pRws/mouUgEnLGFhShfaYL0V3et4nrOFf39sCsQ
         lY30nML6mrjYliISKC/TYSumKvdIrtcwLn0YUkOV6BZHacUPeIjQQOAp+0Z/XomnAxbK
         FfjyyUyPFOmxU/PZcgX0lTO37uwRAzx5IADd5VU8EM+jrI7eNRyGxsfTzTSGTwakppII
         xKChENQBIti0bL59ZI6BxkcQeTEuGoImp90eoHUf4AQr1QK7RihWT7L0TCE0Hgd7yajQ
         Sr6CzGtQd+kxCmBaWym8eqBu1Ox/wp7wOvlJv6GWKIMW0bqB0uBV4cYza8MnK/ZJWQQN
         lOhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770809396; x=1771414196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cMkh7cnzDv96CNvbeCbaRTyM6wLKZu/qXnz0rFwQJdY=;
        b=lPxj0zu4Ts8AC3Z54aKMg5kt2ywiASgiB2UkfVVguKtfda4BZ9uAK3xQErqcWGOGTh
         fFuedaJq19JIq8oWt2uc3F7LYyK1PAGSWlsCoI8fi9jBZqUZWjgXIxzujV4jF6pgsP/F
         LT45kwb5AcklKgd8/FChMd2TsQcwb+7zTlSjn7ps6ypRRBZPpZnokFB/yhDgairxKyZI
         b8318wRCwupR+7tcHPnz9tEFtq9kOtopke6Dlqs+JzO6TFW4E6AUyWUFl8KNJby4bloK
         gH2qb6iFHLwZxUAAddH/t+UusIiq/Wz3NOJeGbtpf0jHiNr1UNEwjcw5RW/v8v2vJCz5
         MFnA==
X-Forwarded-Encrypted: i=1; AJvYcCXrgUce1but79JWCGOL1yiLlB07WZri0b33+ryOPOb0dl9Le85MaqdhPcqnX/7xWUGrV/noTdmzt/iZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwNt9B9IOpzn6z6+5Uh34kEMJUFAhAOv5K34t/OKVvfP00WEEyj
	AHFbDaX01cUA98aav0a/XbQqt/nzFx8wQ3bOlrFJGlTwkdhtl6QzVpMOZmyHm++p/VYIBOsGljT
	5df4VOKwGnTS9riDrq+YTBczPltTXzJw=
X-Gm-Gg: AZuq6aJEUj/RRUwqZZDhdlJaoLiljLlTe25Dr/kHKzsFzRv+7ZTDQvXmdO4p1m6tBna
	K0ZHs4EYcV/xonTJ83fx/u+2yh52Pu+RnEL4jp4NacfYzVydfjtwoQh8R/5NKfVaTNnMvbUe29H
	WhuLsYHigtxXSvb24URy8QAse4Jng9L9LG/4d8SRWCLgBmEzc+57X6doR2nkDnqA0Nd+t4JoJ0s
	S4tldqfnXTeeUTLwTQL5tdHuZE2TLnHR0eZ1UAsY06e6Kyeop3pIkpCR2f1Pb3EJz52GlpWBpY0
	8eJEDgbn5w3OJe7Hkfw=
X-Received: by 2002:a17:902:d4c2:b0:2aa:e6c1:cea1 with SMTP id
 d9443c01a7336-2aae6c1d148mr108095975ad.17.1770809395707; Wed, 11 Feb 2026
 03:29:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
 <20260211093527.2892297-4-shengjiu.wang@nxp.com> <aYxl-84o20htTnNt@smile.fi.intel.com>
In-Reply-To: <aYxl-84o20htTnNt@smile.fi.intel.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 11 Feb 2026 19:29:42 +0800
X-Gm-Features: AZwV_QgnSiInqQGmLAwo2fh7tDu38fawLdb6UdwB4QGSTTwD8LZCvKhPLMw4ToA
Message-ID: <CAA+D8AM6SxpfUpZJQAT9cif+7+cXwQCOmFqOXcNyQj=jd2VpJQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ASoC: ak5558: Fix the supply names
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, perex@perex.cz, tiwai@suse.com, 
	ckeepax@opensource.cirrus.com, nichen@iscas.ac.cn, 
	kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264757-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,iscas.ac.cn,renesas.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 5C003123DDA
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 7:21=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Feb 11, 2026 at 05:35:27PM +0800, Shengjiu Wang wrote:
> > According to the binding document, the supply name characters are
> > lowercase.
>
> Same question. If it's okay to convert, please elaborate that it doesn't =
have
> any side-effects for in-kernel users. Also, check if these names may come=
 from
> DTS (some old DTS might have it, in such case it's a documentation issue,=
 or
> driver needs to support both).

Thanks.

I go through all the DTS,  no DTS uses DVDD/AVDD or dvdd/avdd for ak4458 an=
d
ak5558 codecs.  so there is no side-effect.

I just am thinking it is better to fix it in document,  it is caused
by converting txt to
dtschema.

Best regards
shengjiu Wang
>
> --
> With Best Regards,
> Andy Shevchenko
>
>
>

