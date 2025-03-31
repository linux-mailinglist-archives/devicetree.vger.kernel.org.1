Return-Path: <devicetree+bounces-162043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C17A76789
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 16:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67BBE3AA0B9
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 14:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1B34214213;
	Mon, 31 Mar 2025 14:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="isTD4uHP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BFD213E7B
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 14:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743430519; cv=none; b=rREhsb+AAXSjEMepAJSfZ5Ub7uWmToKbkRAx8Y4Pkf2AoNz7xhgqqSgdJi/GDNJn/hnhHx8pyl5QtPhYG925xF1byPA8zddRw/Mphwc2UqGZfhdv5gmO9f29v5HW5cfxy95KXf0y9bLAeU3M88AYa86s8x2+DFqc1bmDWZ0CGdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743430519; c=relaxed/simple;
	bh=krD3/Z3OPbYLp3IgYiahlOc6cVZ30a4t88A+7DxbDXw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=usTAXcBySOeuIikk+u4dDYyBXQtsHA+cA3cZZQaCaO/QU9qCnBCZwAaitZkcht5kym8aUvk+siO3cUMqDvthOd+oRIMyAhj3pzb5cTfoOWhyzCyg95HNx9BgUTpLLEWzv2xT2+pJJWvsdUi1nNygYrhWt0/qFENggx4vCrltIvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=isTD4uHP; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7c554d7dc2aso795049185a.3
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 07:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1743430516; x=1744035316; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uilIRFs2fkU4eR9GAFrL/1p6PHfB3ZqJuGaH9P0XKJQ=;
        b=isTD4uHPmiA0GPpGdafKmojy7RpMZIqJgiUCkG2+DoQX3TaXSpv4btlpDxEntVuYfy
         L6alVIgc5XjYhO4iWZzaxATNco2h+h7DqKqW/AcMS9Rk/ifcupXQKKNWx70hHCvBfYR9
         FzwN0ceYwt32JRjvseYve7DxdmeP7bb2vMP41ipxIqddqXoZk3LhXJnQ3Ssscd/VfZPz
         2mm1G424vBpuUemABqFNkJT2yuFm+kJ6L35gapW0gd519vjIMkMDFcYFO5WCWit3z5aU
         de/YU6lDn1s+oOAryS2hplLpe24gLGp++Oio+DW8v33JJ3YQAFGAvWsu9VTpZkhFEAX2
         qWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743430516; x=1744035316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uilIRFs2fkU4eR9GAFrL/1p6PHfB3ZqJuGaH9P0XKJQ=;
        b=aEfFYopT34Z3G5OJzr9Qa/0Ck9xwyjV8RJVd4O/HnPdg9fMPsTmm8JvOq0XGAsa/rg
         elIPjNt1QIyofCgQfPgPoEorOXw/TwSkqg36IL+WHfoppo8vZ4eZy/aUF5DrL9z5yZXx
         OO49n9Z4aBLyoB73f5SzANRCCB0Kb4sZJ3zLQDDBTQaT9amQsFAHjKuntSQZsEBU8Iit
         zAqpWI9cDDlD/U1mfAuQ6cOvFTSX/neP1KUxPK7qm4ubYe+QeyP4EzUFhATN/ZzOSTSb
         cMNu+Nx9FZGrByEO5yAMQgpTYF6XHgo5P+gcw+oSHmtld+akXTH8MvUorSVDy+LHA44g
         0khQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+uc/3gnw8NFlaPCujJXL5y+BIhVTg7cEQECMdU/nm73m0Sd0y6UPKQogE3xZIVFT736544xHWfU3z@vger.kernel.org
X-Gm-Message-State: AOJu0YyXbf/dIU3klO/TWrS85EHh5zZucKiRXiMEwRtzTv3LIJ5MVmPb
	R85DWxbuRmrQ0F3LSdhyg2fAuE5znVIcGYwgdsNv3Ygcj/2XkA8KJ/nqo7IYmcv43tuWXLqwVZI
	q8aX/o8iE8v6m0VR3vb1XgjD4rFUG0QZosthJxg==
X-Gm-Gg: ASbGncs9JXMLpwOHEU8ES5kqbZ0xda2mKm+1OHZpSCFURW7FY5SP3zoKlCCwSdbGuHt
	hdHI0eQB2Fq0kbSaKYUXHaU85UtK+HpIAoihml7TIdFssYU8Cx8hgqjHqS9blhBXR7o4jOJRwxj
	zaPzYxkgoSNlhohyES37w+Q24ycGZx
X-Google-Smtp-Source: AGHT+IHwKPuhE0mLVpPOzEfJh1Mnr0mMmPaWzdIwh1+ajVxJybRw9uFP9nUtH4E5/UPKuBrBWXEXNN4JNzUBzRRwv0Q=
X-Received: by 2002:a05:620a:454b:b0:7c5:3e22:616f with SMTP id
 af79cd13be357-7c69071e2c0mr1334826685a.21.1743430516023; Mon, 31 Mar 2025
 07:15:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
 <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
 <CAHh=Yk_j1ZnJ+=XQ_geN1sXMaye=P4jk-vduwj0-1soM7d+wQw@mail.gmail.com> <ktmanz3mufxvme3gspm46p7vyjxsmzfxckqxg2e5a2mbqc5pxe@uc56iqoryuzr>
In-Reply-To: <ktmanz3mufxvme3gspm46p7vyjxsmzfxckqxg2e5a2mbqc5pxe@uc56iqoryuzr>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Mon, 31 Mar 2025 22:15:04 +0800
X-Gm-Features: AQ5f1Jrt8kMW7N7ZEfeyIa8owbZaaEs8PpD6g-s-CGlZi-isOIhZl7S-Ol9dZ94
Message-ID: <CAHh=Yk8jNbhYp3goxu3zvdatz_tivcK_JocvFXDRL2ZCKELAag@mail.gmail.com>
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and algorithm
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2025=E5=B9=
=B43=E6=9C=8828=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=886:27=E5=AF=AB=
=E9=81=93=EF=BC=9A
>
> On Fri, Mar 28, 2025 at 05:41:37PM +0800, Nylon Chen wrote:
> >  * (T) period.
> > > > The `frac` variable is pulse "inactive" time so we need to invert i=
t.
> > >
> > > I'm trying to understand that. You're saying that the PWMCMP register
> > > holds the inactive time. Looking at the logic diagram (Figure 29) of
> > > "SiFive FU740-C000 Manual v1p6" that is because pwms is feed into the
> > > comparator after going through that XNOR where the lower input is alw=
ays
> > > 0 (as pwmcmpXcenter is always 0) and so effectively counts backwards,
> > > right?
> > > In that case the sentence "The output of each comparator is high
> > > whenever the value of pwms is greater than or equal to the correspond=
ing
> > > pwmcmpX." from the description of the Compare Registers is wrong.
> > >
> > Hi Uwe, I've contacted the spec's author, and he is willing to correct
> > the spec-related error.
> >
> > Based on your suggestions, I think we have two approaches
> > 1. First add comments explaining where the spec and implementation
> > don't match, then after the spec is corrected, submit another patch to
> > remove the comments
> > 2. No need to add this error explanation part, because the spec will
> > be corrected later.
> >
> > I don't have a preference, so I wanted to check with you - do you lean
> > more toward option 1 or option 2
>
> I would go for 1, mentioning the version of the broken documenatation
> and the expectation that this will be fixed in later revisions. So there
> is no confusion when the documenatation is fixed but the comments not
> removed yet.
Hi Uwe, thanks for the feedback

I understand. I'll proceed with option one to handle the patch for the
next version.
>
> Best regards
> Uwe

