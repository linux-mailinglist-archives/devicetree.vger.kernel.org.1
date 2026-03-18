Return-Path: <devicetree+bounces-277486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBtBOFoau2k+fAIAu9opvQ
	(envelope-from <devicetree+bounces-277486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:34:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B702C30C3
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:34:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF568305B2A7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A2BC388E64;
	Wed, 18 Mar 2026 21:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ziw9kxCH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F6038644A
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773869435; cv=pass; b=Xup0hR6HChL+b8aqyk9F16LKVCQ5JHphe4PzFI5f9uS9Xx8/5D7Ln7dY+1TuHG0RNWQ+CLcoL0vXbu7qxSmPTvNbB/h4t9K7WiR8WPhrHOrp6ZUmohlKZBAHfGYgBGYFYP9lac7ZgnFRxARA4iUS6PUG8Xkoce23oGcweHPM0co=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773869435; c=relaxed/simple;
	bh=c459NjjylC4DFrFzhntCSH782/XOuifEBUc6ew3uGZ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DVuoVH4pYyVIU7V97IG3AziBnL4kWaQ7l4pxWn9AHF2DeBEgWlKCoAGOfFstwfCWaAhXEys/XYTqVEnp3Vo1oBfOe6lGaxhXfxBezOWB0Gl3IzLnT0fu8Q0RP5iRyKvcS8guDj8HbAKLBpe3dm7w9uCzw2eoi3D7MLijxd5Yblw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ziw9kxCH; arc=pass smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-43b4d734678so247180f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:30:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773869432; cv=none;
        d=google.com; s=arc-20240605;
        b=cc/lM4DnCS+V+BBoUpzBi2VDYTW3S2JLJARRashanUehvqbPL5hm2sT1bkkDiQ7PH5
         GYb/vB4YSnEFFfiv5Xbyp0E6DV2KUxtonuF2+NjUHaueS8SsO1FVizgT8t+qcfMaeEVM
         wu8cwEH7TUA6lF03OWbc3qGMN9nrLM9y3g5W1GtaQolPSVT6owfmRHYNRygZu6mZFqPW
         sLS/6s7wKSfJcAaDGFlp9MMfW9M2a/GM3BP2U7rWDJpr5FF6QQlK7Xiqhc/tpbEKSXVb
         wbzfrrtmLGRhJv3v6iawlCxpePKSEyCaJeH1lOqErxoDpJI26Jif856pQL3NXc8qGfom
         OlOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZyhjZuvEaxXX2v5n0TSA0ikgRXGcSbp95m6O9R5zvps=;
        fh=kKLe+CDiqsTdphSb4ccYKlVtVoMAtaOKv53XtLKHoD4=;
        b=DJK8i66t0gFQUlLkBB9TA8mKr1pA79DTUxzNGJd7H0bilrIxBPYagycqtSF+p84e36
         RMMRR7xbT6exa1zrXtzvipFafo1wSZWbZERhsbeltErNZFOmuMBQyJOomCs3ErMwb6fL
         DxGg8AHEO6D4DQySxWKfEe/1MK8ThdY/PuX6LGUypMijw3oePX0jYoyP4s9BDojZleA+
         hWRIMV0dB33/TekFRCcKv5UkChXj01FTE0eGzPwjQKKeQoOHPC+GtFlSFn8Dc++tdvQU
         5eNDQ+BxOOsgfsknp1Q5i/PmWiI26IeAb85cpFvlP8n2t58TdtM/xso/DBLfdd73Tbwi
         TF1w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773869432; x=1774474232; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZyhjZuvEaxXX2v5n0TSA0ikgRXGcSbp95m6O9R5zvps=;
        b=Ziw9kxCH5t9Bf1X5SXh7I9266pOcavsdA87ayusUBpL49bN0QXPTNl2WFkt6vVebVk
         2BixmEmpqBtXODPG1yhGruMJPR1t/c+CJ6cFAixg3MPe20N7dIoOgiYD2fJ0KJrkWP1R
         FwhF2xZe29Gklfw/yYrVkoNvcyuB9awfkFCOwkaOji+9I1C7GoL4/aYlMxgNuUBPuL6E
         segZ4TLYgv+FVsfKCio3A1U/IRNi5rHkmmIWckaXNUoQYzQRXDBIgZZybihnpGBBx6bQ
         2ZsFzbtXxtLOj9mboqeufmDm72rITgW0GRF9t1cBJtf5MVeUlIW8KNksLaql+KiXjLK0
         x27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773869432; x=1774474232;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZyhjZuvEaxXX2v5n0TSA0ikgRXGcSbp95m6O9R5zvps=;
        b=IF5hdk1BIXcPDYy2UyscgSVY0wsSMQSGDwW4zjMGfXcBX+6Bfnj6kAKLUSo+IfnWoC
         y3EetDlcB+MJ/ZrLwL+fWz6kr/iCq3PFkYn9v6g4ODnSTpOD4mqI27x6zkfFEdEbnnu3
         U+ES6u+fa2l5QuiXutCCNgX2xMJApmlIrfhIqM56L8vZRM68H6evTnbXt7ECO9vwhDVf
         iiQ9EbeXB59iYal3XGdBcAuVceUqPNY50a1+7QAVV/U3jI7gDG8ps+uHFTGIerUhRvFY
         L7X1FQ88X6/g+P48hPS0Fl17zty7w9AGh8kNcJEfMO5YqfaST10pJceaQy722s5Cdq5k
         nNnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVN3y/Jafm93UbcYwnLHPfKchTKK3j8EEfZr+daT0AgCBuQuQ55GT6xknffbu7u7Zbko3CAeYCqWpLF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8hUH2JVb690ggcv2A8YQhS49gq8ggLiF4GaIHbVmLtaVxFApz
	lqG5qbQhLiREuO+ZN5CiNNkV8Ir1JeTNNpXIc67P55JznDDt9PWIGZdrKItr1JhmxoaLVJxGpjy
	Y7ISFFGdfloywyxLu0dxT5Y0gGANdHMQ=
X-Gm-Gg: ATEYQzxn6ec6ar5FJJwNSQOMpM4bHFXxDzZgHk8UgMYDvuMqs2KPDDz9PG6ATjFgmpC
	M8VV0G2DsE59T4YJo7uyZwZwz8D4nKhWqFO1XSf+quoTIwlTkbAX+JkXK+DK5C3ZNZeTFsUVvNN
	uj5A2XH9SBZjBtxMKc1yzKs7x8mcKHmN8Saib49s+v2ymYAfV1+XXdKSMdy0TgWgNm4U5x5iJD5
	v4/N1VYjN8luRo60iUa+7CqufSxq0AhaTHzS3EGhTeSFDhsqVoC8kLfMN5PitTS01ifEyiJQvKQ
	ctJigRjv+VPPx3sQOCxh3t7nkfsn5drg6lEh9PpegfaBIH2ODn0bsf+waqwtNZyqA57GLfU=
X-Received: by 2002:a05:6000:2403:b0:439:b991:5c07 with SMTP id
 ffacd0b85a97d-43b527c812amr7998467f8f.40.1773869432250; Wed, 18 Mar 2026
 14:30:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251014191121.368475-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251016-dimmed-affidavit-90bae7e162aa@spud> <CA+V-a8un1cF=acNjG=79_v7oaR8gzBQ+3z1As8AqrJnOnk-OUw@mail.gmail.com>
 <CA+V-a8vq2EvTb_hXxRzW_Rbp+BPLSaLsEVkvaTjc1zRin-RV=Q@mail.gmail.com>
 <20251208-headgear-header-e17e162f0f52@spud> <CA+V-a8s0gPbe2ffmN1G_7ibVL4+=FKUEQZu3_CwQL=U0T3--DQ@mail.gmail.com>
 <CAD++jL=J2UpxQSNrZhCMw2fJ0umM8NRtNys2zMBouAFBoK0m2A@mail.gmail.com>
In-Reply-To: <CAD++jL=J2UpxQSNrZhCMw2fJ0umM8NRtNys2zMBouAFBoK0m2A@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 18 Mar 2026 21:30:06 +0000
X-Gm-Features: AaiRm50eA_D4E1jWsVINHhsu8y7aHr1MUbAlUX-x9rRsI1Rjgut52QbZHmen1d8
Message-ID: <CA+V-a8vNeJdbjJ6K9QkedHgAprC=Z0ckUztwe1ZapSiqjPKEsw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document pin
 configuration properties
To: Linus Walleij <linusw@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277486-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.347];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 56B702C30C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi All,

On Mon, Jan 19, 2026 at 12:10=E2=80=AFAM Linus Walleij <linusw@kernel.org> =
wrote:
>
> Hi Lad,
>
> I think this back-and-forth must be a bit stressful. Sorry about that.
>
> On Wed, Jan 14, 2026 at 9:53=E2=80=AFPM Lad, Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
>
> > > > > > > +      renesas,drive-strength:
> > > > > > > +        description:
> > > > > > > +          Drive strength configuration value. Valid values a=
re 0 to 3, representing
> > > > > > > +          increasing drive strength from low, medium, high a=
nd ultra high.
> > > > > >
>
> > I got the feedback from the HW team "The RZ/T2H drive strength
> > (driving ability) is expressed using abstract levels such as Low,
> > Middle, and High. These values do not correspond directly to specific
> > mA units.
>
> But they do correspond to *something* electrical inside the
> silicon do they not? Then what is that?
>
> I think it is just 1, 2, 3 or 4 driver stages.
>
> > To determine how much current the pin can actually drive,
> > the engineer must refer to the electrical characteristics table.
> > Therefore, the drive strength in RZ/T2H is a parameter that switches
> > the internal output transistor mode rather than directly representing
> > a physical drive current.
> >
> > Consequently, expressing RZ/T2H drive strength in milli- or
> > micro-amps, as suggested by the reviewer, is inappropriate. To
> > accurately reflect the SoC's hardware specification, introducing a
> > custom property is essential."
>
Sorry for the confusion , there was a miscommunication regarding the
specs, but it=E2=80=99s all been sorted out. The drive-strength settings on
this chip are 2.5/5/9/11.8 mA, I will represent them using the
drive-strength-microamp DT property and send a new version.

Cheers,
Prabhakar

