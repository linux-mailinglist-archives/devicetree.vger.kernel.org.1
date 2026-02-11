Return-Path: <devicetree+bounces-264853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2D5aEaD5jGnbwQAAu9opvQ
	(envelope-from <devicetree+bounces-264853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:50:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B35127E41
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 427C530F98EC
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 21:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E03235504C;
	Wed, 11 Feb 2026 21:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="afCodai+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7A280A5B
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 21:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.217.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770846591; cv=pass; b=rvN05QnqmQ6bm60Hw3SQFQdoYYOkXw8z5FlrCHaNySrt0M8CrHeMEFe6VuvraPHkQ7QNnLrEtwOpjgemp96b9Bxt1PfI3jlUVVnqm2Xr96nMVBs5kCGpdr2+9h4ghfxStqNqAILcLXBhJRXGsVPKLzJ+Q3rTW/MYwkjNlHENIpc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770846591; c=relaxed/simple;
	bh=TAaZHUSml4vGTBYCBXzjY9p8Kz4csqKyedAuxOPFZk8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lykwHg+Vgl2NdJ9PjzjUIuYMabZd3GL6i4+f6Xy51lUx4YKY4pTC2jMaPk8MFO9Kpo6OhoCF4Ozw+MdEAvk04EyElgbHr4bZNMoDEjUuTyfAfre44izd9yHz+LdebY6DAFTuIMRcGAqva1nTn/ekKF84o4kA1Arbf48aR8NURhg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=afCodai+; arc=pass smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5faa8a9d7b7so2135911137.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:49:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770846589; cv=none;
        d=google.com; s=arc-20240605;
        b=WcKQoVGXpOmw4WuRCyBCn0rOQynrzMFH7/rXtoABfWJ/q9PPQkRW39qWx9EFt2zNoa
         fB7TKszT1a7OdTZfUVTDpgk00rxgDwfrnwQKicTbYO5N1xei4ehXrmsNEHyRTQ0WeDTx
         wtzwDK5rY0VKC8FAh7r2JdUp9OEETbJR/Nbw9lIfGj6rUYmY2ciQwv+jtMy3pxUrNJeE
         AvlVVxrMEfJAek20fQ8p+5Q4wZ3O+YJ7l+O7Gp+ntNKiQv2S0DvY5Y5funk482XBFh1G
         /EEbjM/9/2ZoX0xlKv7S6JiJzaGr5b1PNmSdUuTlePN3A0N0EC10kUQIQ8SUCcXzz+UF
         +sWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=c+gBaZTVHWvrk4jEyLZod4jSyYiXug3BM+6GVfN64nU=;
        fh=IBPx8NfUAHhior9eF7lVfnCFfFR4c2yKD4gognXOYF4=;
        b=XXc98FUAE0j9tiLKyscXY03JPBnk57r4xADccMDI9vkh6OOHmG1dWAaiCF9aSqjqgY
         KnNnjM8dEPVbTucVqq3mZY3Kb77npoFk9rhI1xk6r2A2acMlNkh7bmPXjcaF/sczSCZX
         q+8RGhuIBDdQ0Zx8kYrt5+UQytCy1jOLOOlGI9zKVR/3cDs2JJUV/cyXbfdsjOFt7KeJ
         f8JP9GEyCbKEPRVPuQ/rkC1jnCy8LovtEM8Czy52CN2+Px1CGRke3trxqSr4gcMcxKFN
         VYl3p770Llq0NPqyrNMwwWhF3O3QrNmFyK4a2hiZ0rXK7syvQjrRYihGM/HALpU/AGII
         GJAw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770846589; x=1771451389; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c+gBaZTVHWvrk4jEyLZod4jSyYiXug3BM+6GVfN64nU=;
        b=afCodai+9v2KoMIwsHZaQ2FB4e7upo6a13TOr9TTc2vmQpz9Ma0BpyS3sJe9P9WBVL
         RbHufka2mBCv06e5amtvoUt55RlBFafPTeJAFxCm6xRiq3uO5tmxllZnFGB+K8VlnCsL
         LM1lyMbo5wT8KwRCgm6PLxVGjFNjUNTY/xvRHY9zFcJlVNTall3lw4YmjT07WFIPn22q
         Hu7jAG+j+QVZEflakJeXMrgVWJm+k/2ul6MROXcAEZpZF+p/tZkZwKiyZ8MglYrMizKP
         H/G9uKMaEHu/J50AXrwomuJ/j9jAxXRqGntGMVL+mchzfxhglE5wgOvRWPAC8ar3e7VO
         fPVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770846589; x=1771451389;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c+gBaZTVHWvrk4jEyLZod4jSyYiXug3BM+6GVfN64nU=;
        b=JoNxqGfjGOGp4QyOyiajv3zMq2snFTChbPN7G3Pf1dLCzaWr+5ckuHL7mEgsaiMZUH
         v6fMMBOrVT1LncSGPIXvOruec8AFiIDeWyIZ37jbmgJiWCJj0Cfb3cNZ+d2QefbXJ6VZ
         taYhPK0xXN0sBXl4SHb9vhGeQWrHtEBGTGmAVniOuWgkhhqF+7B5viCi/rn/9uqyt0nX
         AxW2ZIc692Uatm/cp2QgJNytXAolkw5/cfv0Kn270XS+LW+Gsi+XDP6fWxB5ThDd0ni8
         U0w5VDTpoNi2Xv1mwmCj1oOmwvp/2PBlNiOjSb4TP+et3QWLlUrTBTvEMlCzUsM0uH4N
         9Kpg==
X-Forwarded-Encrypted: i=1; AJvYcCViZWJXy8sStsWLUQUK2rQeGF48idDsgI4QnHuztN6T5IdWlObdzNz8tIbcl2oROggyeeIjNsObyYY/@vger.kernel.org
X-Gm-Message-State: AOJu0YyIFzX4/U0b8KsXppjByxF1nMBKFyDRSWPwVBFBorcNdon9VgyH
	lbNYfhIoTjh3rwoFqWRfo16qBW5KNt3KV/DlR1TbFSpGvrkLGTSyV7nllKkZVttThBuOfukEEBK
	pZoKf5lFzyrASEpPg0tXqwHB5b4gYolM=
X-Gm-Gg: AZuq6aKsZTQI+HJDScr/jTC293uPn3EyA7Ofagrld/FPgcnmnKUSuEGGLx4V/st9PFQ
	+vC4TeyZjipLgOuiLXpyG4EM4Y5NTTDC64h+/g2azjNGqvTLCuHfATHz2COudmZ5RtDqDFymwsK
	usRN/VQ4rg9cbEJLMZlGH43vWCASaO5YRzxBauf8mwEUZPyf30hBsbWZo4fBW9u1wsjGmlqKHpM
	ao9KBWB9EjBD1CDkdaDbU7igVb5xDDTNe+WsMqGlZotxcN4eR+6KLSl2sBtNzUn/JdPenzszXjU
	Muc5RxhVmtqcTh/WKb2J8sPHMtdDwRXWaIOI57JMVNOEXWged7AINqAchjWmGDqb7YtH
X-Received: by 2002:a05:6102:30b0:b0:5f5:2a8e:f4b3 with SMTP id
 ada2fe7eead31-5fdfbe2a4eamr191958137.37.1770846589047; Wed, 11 Feb 2026
 13:49:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <20260211081355.3028947-2-james.hilliard1@gmail.com> <CAMRc=MfgoKmsNAmn3rO2jDL-ZArMX2Jh-n4SnV6rpzRY3KSwuA@mail.gmail.com>
 <34a9b531-4f53-47ee-861e-1b18ff1a5752@kernel.org> <CAMRc=MfwQ8J7eT_geEf7Kj230SOvmO-LDHz9a_YgfRY-QB5V8w@mail.gmail.com>
 <20260211214708.GA3947691-robh@kernel.org>
In-Reply-To: <20260211214708.GA3947691-robh@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Wed, 11 Feb 2026 14:49:37 -0700
X-Gm-Features: AZwV_QjILHyNid6JLn_Ug4RC80CCa-RrRyFiF9lPlw8FULGmfltXw3YiVIlFNd4
Message-ID: <CADvTj4p-zHMrXW+GJstB2sKS-7Wij98JNJGoiPiYmaP5RHhNQg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: aggregator: add gpio-aggregator DT compatible
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Linus Walleij <linusw@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264853-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B0B35127E41
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 2:47=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Feb 11, 2026 at 11:36:28AM +0100, Bartosz Golaszewski wrote:
> > On Wed, Feb 11, 2026 at 11:13=E2=80=AFAM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> > >
> > > >>
> > > >>  static const struct of_device_id gpio_aggregator_dt_ids[] =3D {
> > > >> +       {
> > > >> +               .compatible =3D "gpio-aggregator",
> > > >> +       },
> > > >>         {
> > > >>                 .compatible =3D "gpio-delay",
> > > >>                 .data =3D (void *)FWD_FEATURE_DELAY,
> > > >> --
> > > >> 2.43.0
> > > >>
> > > >
> > > > Regardless of the DT bindings - this change is perfectly fine. We d=
o
> > >
> > > You cannot have compatible without DT bindings, so this alone is not
> > > "perfectly fine". Maybe you wanted platform_device_id entry for
> > > ACPI/legacy/MFD devices?
> > >
> >
> > Sure you can, you just can't put it into upstream devicetree sources.
> > We have had a compatible for gpio-sim for testing purposes for years.
> > Why would it be illegal to enable matching of platform drivers over DT
> > for testing purposes?
>
> The primary issue is undocumented ones show up in 'make
> dt_compatible_check'. I would like that to be warning free.

Would adding it here make sense?
https://github.com/torvalds/linux/blob/v6.19/Documentation/devicetree/bindi=
ngs/incomplete-devices.yaml#L243-L245

>
> Rob

