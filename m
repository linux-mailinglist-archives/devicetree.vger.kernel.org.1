Return-Path: <devicetree+bounces-266744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCFKFrKOl2lv0QIAu9opvQ
	(envelope-from <devicetree+bounces-266744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:29:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9458E1632F3
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:29:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 213CD3004C41
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85D9932BF25;
	Thu, 19 Feb 2026 22:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZlrnUEyP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0BA2D7D47
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.217.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771540143; cv=pass; b=YXbtQUhEhQX0rChux69vaS3dfwp6hG0Ul4SVaX761DBuypcti0hdYgOv4WJTN9wKpj2cE+7V7XPteBx5ijSD1pyQTqut35dR76R9KXzfQJBLUrPtbl2tfYhPV53ilQsRF7O5O1wAu+AAloS/5yoM2ynx7MZWqGu1d1jDHVaTsTE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771540143; c=relaxed/simple;
	bh=1VeFjbT7hW9sFhCytM1OthSfHXRi/0vutjljh9R7GVU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DPo93yOQ02fYx8j7hgJFa9L8DU4AY0zalYHCRoPDSZxRnBVsBZtFNqUmf4VTlnKJPXbN/z4xTgxahO5oSu317yHnrzxz8Owsvuuc4URvQl3o76nC6LWKjV/B6wmToIebZ0XECDKKdF8jbqVTL2e6Mb58jk4j1laR0ITNNHNMMG0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZlrnUEyP; arc=pass smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5f9ed174ebcso857833137.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:29:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771540141; cv=none;
        d=google.com; s=arc-20240605;
        b=aORtQBCG4CKZln67upOjqzc5oUQb/xcPtCxqffceySaJ12InY6ppWcfpOOVbr6LJQP
         hsTMyroHKcr90hGKPo6obwfAOkf/UNxvrYiKZlogFu1/uNxH9Cq+J3M7DDT/viVlqoRT
         nhiKwtWs8kWpqZRQLfzWWHIu6eHSn5WFy8acc+VX5b5IcHCLFugCkZw5B1Tfzsd2Xs2O
         3XtPaP4/syPcJy8EvIitVGP9dcaL76UP0UbJ/Ys81xJUSIWNLV0FPvQGG1dUrHSJKYBF
         AHRCfgvWxKOIWVsjb6/7XcfywBOm86vQUIYClgecXYVhw2rZ4LEaV4+donJI438uGcQ8
         asww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1VeFjbT7hW9sFhCytM1OthSfHXRi/0vutjljh9R7GVU=;
        fh=knrhVe+xdV2gOLKALotpWkM1NDAgxGymuafN+P50slk=;
        b=KvHz6V0ccmXYPCCO+NXol8IAWB0/HpH0IbyihhfkCczsTuFut8Yt/wwtmEIHZs78lJ
         O++GLFF1x7/O8SK6mWucU2byTsu/lnjEuVrOZC3lpj1Iwfcjbmw3UZK83owmHF4epGYa
         gsFAsoCLlfByhsUtD0H05HNKnPM7VgmRgfmrZHXucQQQehiEV6U7mJHkRVrpHyM2uTO+
         K5/+HM0FTvOgDlutQe5AH+6apqVBkgi4Zp+799b+cNTa16grex+AESqOtgJbwpg7xoYV
         de4VoRhSMLhZkAKny98MafvuORNgNMdlZtEZGct37/yINEL3SSetoypzTkE1ntTvN2s/
         pKsw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771540141; x=1772144941; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1VeFjbT7hW9sFhCytM1OthSfHXRi/0vutjljh9R7GVU=;
        b=ZlrnUEyPxSQQKGKg8iM6xwD8MV2z4iYIgpml5iFBrczR5E/nZVeYPQD/9wH/IuY5qR
         Xok4CcKVQgQqyORF5TBCSpDovbW0JWDVEvErym1K9JDOXt1zawHQoVBITI/+HyfvqJvx
         458Fm333luSlkXI59s4IhNMqIsblpTja7A+vw9XYwzR9DuHb+c1T6Pchc1KJG+3PlxSe
         84Yo7iGOpOi1yGaIfs/7RNkVZ0bbPV3lms1mSf1121sg8iWcKZ9cYjpW1G6DcDFzPdYw
         Xd8k4DygbDovGHx8ItB9ztATlAYTAChYtGt6ZGwpjlIrH0HXmpok5rsL2n/zJdn16k+O
         Umvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771540141; x=1772144941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1VeFjbT7hW9sFhCytM1OthSfHXRi/0vutjljh9R7GVU=;
        b=EiJ9WDuUKu3Q9Ff9ybXVMjyc1ioprWhauKdeXoVc3IpN3DTk+oB4SLaQUW6yfnwXCl
         VvEv4zxTnIqMDkCsmJ1p+g0IlicgK5ae6x750DM7AWZcC5DYTiJeQip66O0+R/NCEepj
         ruL6l5qMufNnSU3qoPT4Ep52upaQJMLVZ6QTjWdo2akAHlgp2POVpROj16ZQIMBNCs/s
         ULwqbSNPpRq6jzm0nmzMgAgMaMGTyQUyWDYnwhPUeLtMOdbp2w6rPAyq1pjJ+toFM41I
         FaBgvP4lro6nprFEIEU6U47rdi/6IwOzTQVv8caHsAuzFUIGUs3eUxtWI8chh0R2phbC
         FcUg==
X-Forwarded-Encrypted: i=1; AJvYcCXSpHm0sdtEvKYwNvOfoIBH9FJwKn6ziVCSA1wZnvOrNP4TVo7ndc9Sl4Bwp47bxIXMJcb7nqF6ZQgf@vger.kernel.org
X-Gm-Message-State: AOJu0YxR5CVe+pSq5YEAhSV68ce9YZuQMlwPIs9IcL4ez3k+trcBfg49
	h6j9pZ12cFDIlHybMVDJ09Xmmtq3lhZvZaLLJCARiPvu+DvazFBYgxq93BE3xX3sh24y3CfA/ft
	dRxnBBgy84puChJpb3dTInz3qys3xP1FcnA==
X-Gm-Gg: AZuq6aK20R5Gh+BHVeo5MAoB8r1l+TYfLJ9J2TkwGWsOvmIlygbh40DPpNL4nWNPV3E
	rTOPiwUB+Fk4OxHKTXH7xmBBtgpaGZ4NmsWGNuEHFJhIPrh84zQ09ZNNIAm/755a1GDAy8cVXKf
	fFxSBQgScPJQPyFAmKlZ6BZ0JUsFps1JYXfBFbELsUSG2e27IgkS97/LQxNc/0YIY0iwaY89Ggc
	vHKRcoVUiuP6qxhUymkSB3jq0M6o/LZhtMubAu+BBn4l5io/RJW/1JocVaxkqscX8UgwveafUSd
	UCTN39uwZwdMhg/DUX8gQGsyot4opQ0a1U5ZFkGhilaIMesyb5ZAO6XXLJ+iGz8wUfM=
X-Received: by 2002:a05:6102:c47:b0:5db:ca9e:b57d with SMTP id
 ada2fe7eead31-5fe1aceb197mr10870183137.19.1771540140910; Thu, 19 Feb 2026
 14:29:00 -0800 (PST)
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
 <CAMuHMdXmMVgPJv=HhkfttiRnSwFC6c2PnFjYwmL2hu3ikv+t3g@mail.gmail.com>
 <CADvTj4r95E2rLA0ZhOYPeFYpFbj0EXfb=omCN2Mab-Dj4T-cYA@mail.gmail.com>
 <CAMuHMdXTg8w3R1BVq3JO2z=gvTdB=qXY=aXvC7Lb8FtkEqz9ow@mail.gmail.com>
 <CAD++jLmp+47f-Ah4YdFJ+9dU0OFrnQdOcVyrQ61p0-_P61eBrA@mail.gmail.com>
 <CAL_JsqJK7PwyB=NoM+uXOgQk-RT49h4emogvYAfUAbZUpnd6Vg@mail.gmail.com> <CAD++jLkJE0ruzPeRMuVKJbJTjHoa-fTKn8djN+0es+hpqhELFw@mail.gmail.com>
In-Reply-To: <CAD++jLkJE0ruzPeRMuVKJbJTjHoa-fTKn8djN+0es+hpqhELFw@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Thu, 19 Feb 2026 15:28:49 -0700
X-Gm-Features: AaiRm50JFGFiJi_UErn1QwgM1XN64BckNk7aSA7hOrVufKPtG3K9PTpuvYnqvF0
Message-ID: <CADvTj4rd3jS5VAPK1wyC8wKqohZ4kAX4tAJ9CfnBk64+cqrMUw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Linus Walleij <linusw@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Bartosz Golaszewski <brgl@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266744-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 9458E1632F3
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 3:14=E2=80=AFPM Linus Walleij <linusw@kernel.org> w=
rote:
>
> On Thu, Feb 19, 2026 at 7:29=E2=80=AFPM Rob Herring <robh@kernel.org> wro=
te:
> > On Thu, Feb 19, 2026 at 12:00=E2=80=AFPM Linus Walleij <linusw@kernel.o=
rg> wrote:
>
> > > And as such it would be pretty half-baked wouldn't it...
> > >
> > > Probably Geert's suggestion to use the aggregator is a better
> > > idea.
> >
> > I don't know what that is to comment. (Please don't reply with "you
> > reviewed it" unless it was more recent than last week. :) )
>
> I only think it's half-baked if IRQs don't work and you say they
> do with the right interrupt-map so that's all fine.
>
> I'd say James have a go at gpio-map + interrupt-map for external
> connectors and see how that works.

From my testing, gpio-map does not allow renaming lines.

>
> It will certainly be more lightweight.
>
> Yours,
> Linus Walleij

