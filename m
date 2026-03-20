Return-Path: <devicetree+bounces-278285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YElqGctLvWlr8gIAu9opvQ
	(envelope-from <devicetree+bounces-278285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:29:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3942DAFB9
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA4F630C09EA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9239A3B27FB;
	Fri, 20 Mar 2026 13:28:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9E21A6817
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774013304; cv=none; b=u8Ey2oTxwZa+i/B36v5ZLptum3zjA9rJacd/axyqvhQFexah7F7GzLqLXndKEhZX4xoxs9fUk1Wwb6ekhkRjIgXW9dH70JXWcszdXIOUwakARFFH0nM4WKd6YGYqRhnCeZ6X2QiMnQPpucgO6TDdVdt7JUfGpd3L46vet/eKilo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774013304; c=relaxed/simple;
	bh=zOS8ljRIL8AvsCSBDP2a0G/OZJiR8ZywmMS7+RWDzSQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mtfwnzHB4vjkJVsLJeSYlj8mGgJ2OcKGfLkPoR3Iu0pQ5GzA48Qq2smEeVg6+7GVY87dcyLHGBP07hEp3BB2gG3fSsSyZRhU+m3s45q+9ftZwkKxKbGntlkYPFfE0wdFyGWJ+pZZXMjk/v0LMxCP1TDY3oD/szz0I2mbNtNauHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-7947cf097c1so6113827b3.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 06:28:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774013302; x=1774618102;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CnHKasPdLyWom6p+vZgOC2nZ3uHo78ylYD1IwIAQSc8=;
        b=jK/XNB1A1t06qyRmC0hytftV14ue7r145RrDLuStXDVg/tE1yg6gATauEvxNFfY+5P
         +LObwbEUle7jFS6zfdmf3wHonWM3qnedxoislTK1YZDlHWxxEMOSnGOP7SxAMJfc1os6
         oUWVixqSL9ukEVXHePu9tP1uhbpWxf7XYhZZrYazVVd19qYcgJK0lhMcTZxRVvGjDNSw
         Mr4GVK5C2gPMy7orXm6+ayRxa02pJEp8bQkYVsU4054FI+6xoofVb8dRFrvE5CgyqJay
         GwPoP862xUSk2r/ZRc1wVNAbeNMQ7QOqHYXzfQZUPUNiBHcA0eB8apR+DvfxIhF95PKj
         d6Lw==
X-Forwarded-Encrypted: i=1; AJvYcCXP//LG7jJncBy0x0+zVr1K5GV5iJ6eOzHPxzJYjyNADue9xvJHgezNuw3Z8+tFD81UeoxWsCur/yMf@vger.kernel.org
X-Gm-Message-State: AOJu0YxK+3Z+CQWT767ursTpVpt0hYmHeEMyvBrRQUcFRKzNYiouHtuw
	WTi04NSqLk44TUfNYBvdqaMsGXiygi1c8xuG3rCIld3xEIqROpCxogrZMNXGJGdg2/A=
X-Gm-Gg: ATEYQzwKPYi4Rs+SV+XjyPWLycSFoOlkdfEAbkrj0JiBPTy4uwKHXWeD3lLby7MMXdX
	fG/0P7aEL/C4rJci+3DZgabRUJ2nO+Ml3rt/p6iLbOOWex9oVJcqng5eB/z3Mr/TRG0tlm5CuOA
	A5uBlBn160I4iSsNZGWWLoC+j7IjqBco+bK1sXmDBEsoEpVBchgwBO4A2Fm3lvCZ8URiNOP7MZN
	t94X0+p62i8qnHjqsgNuHFWRyw9tWGLuwit0m1XrBnK9hdSKpLaSahse9UXFcCTA47N7XMrhl+n
	AjlYRkcDR80JdFg7pieRQHd7SdW6RGQU3I3sdodV0z0YrWwGZzgINFT7hAZN4OFSanrNfDOczJd
	ZvbO/NwAoG71HV5HEhy6Mgot7yBFPQ0LuPZ0MVm5pU5b+KZ/UFgbNapYenKh11/CJBDtPoufQpt
	pnbS2AvJJfTkXTK4PMfCT/UiTU60axmVRGCLGnN5frOxzZ0yuEcHl5+MYNzgtVkyZ0cxpflPxJS
	cMJzzvuNE9ZE1YVDQh1JFuBC3Lwp++mgK6tOMznag==
X-Received: by 2002:a05:690c:f06:b0:797:a316:1e6a with SMTP id 00721157ae682-79a90c0a34bmr30219427b3.41.1774013301961;
        Fri, 20 Mar 2026 06:28:21 -0700 (PDT)
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com. [74.125.224.42])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79a903f5a20sm15036497b3.14.2026.03.20.06.28.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 06:28:20 -0700 (PDT)
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-64937edbc9eso624541d50.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 06:28:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWlY7OwFnyS+ZptIcxLfRGXYYsRaecGCymuqfIjQlaaMBlrmBH7bBXpX8KmwcVR/dFNxx1TkoOuZwsP@vger.kernel.org
X-Received: by 2002:a05:690e:250c:10b0:64c:97af:5b07 with SMTP id
 956f58d0204a3-64eaa876062mr2412781d50.76.1774013299949; Fri, 20 Mar 2026
 06:28:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260319190738.151614-1-email@sirat.me> <20260319190738.151614-2-email@sirat.me>
 <c59cfc77-b49a-48c4-b975-026ccd3be31a@kernel.org>
In-Reply-To: <c59cfc77-b49a-48c4-b975-026ccd3be31a@kernel.org>
From: Sirat <email@sirat.me>
Date: Fri, 20 Mar 2026 19:28:08 +0600
X-Gmail-Original-Message-ID: <CANn+LW+zdT-kHN-SyHeogEk9FdsaXYkkobia=Tn9-FQmVv2nOw@mail.gmail.com>
X-Gm-Features: AaiRm50SJtUUGE-fgAQPU3OhbCzpjkCBsW8VSo4GBa7fcT40d-apXhHGJ7fci9A
Message-ID: <CANn+LW+zdT-kHN-SyHeogEk9FdsaXYkkobia=Tn9-FQmVv2nOw@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278285-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	NEURAL_SPAM(0.00)[0.198];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CA3942DAFB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 6:52=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 19/03/2026 20:07, Siratul Islam wrote:
> >
> >  properties:
> >    compatible:
> > -    const: st,vl53l0x
> > +    enum:
> > +      - st,vl53l0x
> > +      - st,vl53l1x
> >
> >    reg:
> >      maxItems: 1
> > @@ -21,12 +24,17 @@ properties:
> >
> >    reset-gpios:
> >      maxItems: 1
> > +    description:
> > +      Phandle to the XSHUT GPIO. Used for hardware reset.
> >
> > -  vdd-supply: true
> > +  vdd-supply:
> > +    description:
> > +      Phandle to the vdd input voltage. This is physically required fo=
r operation.
>
> Drop the description. Schema tells that.
>
> >
> >  required:
> >    - compatible
> >    - reg
> > +  - vdd-supply
>
> That's an ABI break and nothing in commit msg explains why. You need
> rationale for this, but most likely everything was working fine before,
> so supply should not be required.
>
The vdd-supply is practically required by both the drivers depending
on this binding,
But the original driver author did not specify the requirement on the bindi=
ng.
The driver works with or without the binding (it falls back to a dummy
regulator when not specified),
but specifying it makes the intent clear.

Upon discussion, Jonathan and I agreed that we make it required while
making sure that
the driver gracefully handles older DTs that omit it. If you feel this
is still not appropriate,
I'm happy to revert to optional.

Thanks,
Sirat

