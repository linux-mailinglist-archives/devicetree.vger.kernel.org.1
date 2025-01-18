Return-Path: <devicetree+bounces-139453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBB0A15D4A
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 15:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DA8216601C
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 14:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A8418C039;
	Sat, 18 Jan 2025 14:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NkCrQWnf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAFB1F94C;
	Sat, 18 Jan 2025 14:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737210166; cv=none; b=WqxI8zKNigbHPzaLZTqoRsqzB8NMx9CRgriyRUrB9Df5kgCkPBie32CFyf9kId5VQEoM6veDmiOGGBXrbcGZDcRFt8xEjkks3V+TPFQRJ6gDw92DE+8IMAYveRPKv4H++4Ci3RBF03j4rIrIVEATFb7frvMMivbfEY8K+PWh8RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737210166; c=relaxed/simple;
	bh=OwZa3F5A0ktsunB6i1++QjF81UAeOZxfW3LxTOTxWrk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ipKui3ZSkqNwe6swr9y10TFU68pBU4bUFdW9Gz1VPg2CqyREpsFBuVfH4/B80h6zKo7lizbV/UdzC/NfKpyskAdKv3jFSqzNpScOV2ohuajZCHsvtH9ZTdT1WoZoTFxL63MPx1um8lVwnZI/WCjpB2zGMqxhkpcPlKP1ZxP9YLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NkCrQWnf; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5da135d3162so5095204a12.3;
        Sat, 18 Jan 2025 06:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737210162; x=1737814962; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c1hO8Av0Prvv+mSmsQTFT06Ds8pT2IeI8pcHdJToW/w=;
        b=NkCrQWnfKBpM6gt4rk4n9Oza3J4AdxVNXU1m9TZO6Yl9hLYlCYm5vC8FyAKFe9Hhx9
         zxbcJMtlx2lYU2jW0A71PVLaGBUFQFBu4Ex729ObzkYK2KGax62BivDVp3wirr0lGFyx
         BCYY9Q16Um97xSLdF1CWN8kgGszaGmYqVjx31d5gpbN+XDdyIToJZVdM5pys+LCqFCSp
         N9FG5OrR9mbA9xHOnW1kAwCBBHMxmFFDPaUOZqRclEvLkbF1Wtfr3bY5AbWPwZzz3YBG
         i/mLEUQXNGj9RnK4OrnBxhVaouE2Jm3Pqn375qDHKUqRed8IXF53i2xFqf+esaC8N1gw
         06KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737210162; x=1737814962;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c1hO8Av0Prvv+mSmsQTFT06Ds8pT2IeI8pcHdJToW/w=;
        b=dBsKCOza9ksTXHKjtBegxLyotUTNEZWzfq7RvblQefHc9RNB6TAYJ8DflkkR2EzmVc
         qKJptLrVtdsuuRTO2IwEC6HOOHDvMxILI1spuUQ/9lgLtdPV7wsmqtdRysm0Lm0Qo27y
         RRD1g5c3tuksaDoXx13an71NOX4gc310B0gnwwjAAQre1dVfqxI/Ejzxe7AuQaiDVRyH
         +eTosB+Qfa4BSkcSKmTtaqJjFxN/gLyQOvbLLk+uu8si1HzGZP043ECCLXJwC668ZdDv
         rem0AYm9wEaygw0RMas7DdBa/yxyPlNvWx6k55tOegnddV5fAq/uiFHDak1UVB34ObVo
         mgmg==
X-Forwarded-Encrypted: i=1; AJvYcCVjBArf3lepK6L5nWR0OXXV4lQfhWLV/Rch6A1xCBRvorBPAvvNtJ8CRt6d9OSPhnNg0ZymhwrUZTkC@vger.kernel.org, AJvYcCXSaBC/HbteKn/9xo2kbbEi8Tsgnt2NV/Ef2XqsOeqra6zsHFMdq9XLgFVEHEEbKbJOP8EZwIvVub4VBxfd@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Z10/CbUi816P9vc8cLQdk2dgEIS6L51vXa6vfb2hhgXZ3hPT
	u4FJGU682+hC1BM3EP8LdI5DcvPk0jrMkjJR3lb3n+uvvMkqPcXkyOGG49gw0TodsQIqFRwktZj
	um0a+4fF3XiTTJsag4n0aXHBDnqQ=
X-Gm-Gg: ASbGncsMOenonQ1c/xfIA86k0WbgvJm0vdsskHlQHEja5SInNIg3zLOTR8XKu5MR6VE
	T6hXvHiMM3djyt4U+AXQyy4Egev3osbm8nnJ/2PeSFLV5/PTy3TIv
X-Google-Smtp-Source: AGHT+IGLL45byqpbtcLY0ncWpmTsQggsOXGlEPKO1ncdAy05bHozMgobraeG+t4IuqfVynnkyLGDLBuv/oWB1vGYnJI=
X-Received: by 2002:a05:6402:1ed4:b0:5d2:7199:ae6 with SMTP id
 4fb4d7f45d1cf-5db7d2f591emr5966574a12.9.1737210161654; Sat, 18 Jan 2025
 06:22:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250115012628.1035928-1-pgwipeout@gmail.com> <20250115012628.1035928-5-pgwipeout@gmail.com>
 <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org> <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
 <1bc91b4214a1099801aaed6b3ef81ef3@manjaro.org> <dcfb46e8-f29a-4eee-b8f8-1ff774f272ce@kernel.org>
 <60ced7df829e7c10e264627cc0947762@manjaro.org> <20b474be-301e-4dc3-9eb7-77e9ef075191@kernel.org>
 <3d9ce9fd9b6309553b5669e111bc4200@manjaro.org> <735d89df-9954-44bd-aca6-4bb165737626@kernel.org>
 <7ab853de15e1c183ef184d2700a13d98@manjaro.org> <df2e466a-cdaa-4263-ae16-7bf56c0edf21@kernel.org>
 <f54375ebd12e8741d8da8a6bdbf40a80@manjaro.org>
In-Reply-To: <f54375ebd12e8741d8da8a6bdbf40a80@manjaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 18 Jan 2025 09:22:28 -0500
X-Gm-Features: AbW1kvb61bOALz4Ew8jQ2cOtmtpTFEbsHfgnIGuykWKPRpLnyKSgO4zvlfTRTz0
Message-ID: <CAMdYzYq3AbdEJJRV4N52p9Mn56V047wteZDnQH+KQRdo7wMJ=g@mail.gmail.com>
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
To: Dragan Simic <dsimic@manjaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Heiko Stuebner <heiko@sntech.de>, zyw@rock-chips.com, kever.yang@rock-chips.com, 
	frank.wang@rock-chips.com, william.wu@rock-chips.com, wulf@rock-chips.com, 
	linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 18, 2025 at 5:45=E2=80=AFAM Dragan Simic <dsimic@manjaro.org> w=
rote:
>
> On 2025-01-18 11:29, Krzysztof Kozlowski wrote:
> > On 18/01/2025 11:10, Dragan Simic wrote:
> >> On 2025-01-18 10:52, Krzysztof Kozlowski wrote:
> >>> On 18/01/2025 10:43, Dragan Simic wrote:
> >>>>>>
> >>>>>> Please see the commit bdc48fa11e46 (checkpatch/coding-style:
> >>>>>> deprecate
> >>>>>> 80-column warning, 2020-05-29), which clearly shows that the
> >>>>>> 80-column
> >>>>>> rule is still _preferred_, but no longer _mandatory_.
> >>>>>
> >>>>> I brought that commit, but nice that you also found it.
> >>>>>
> >>>>> Still: read the coding style, not checkpatch tool.
> >>>>>
> >>>>>>>> 80 columns is really not much (for the record, I've been around
> >>>>>>>> when
> >>>>>>>> using 80x25 _physical_ CRT screens was the norm).
> >>>>>>>
> >>>>>>> You mistake agreement on dropping strong restriction in 2020 in
> >>>>>>> checkpatch, which is "not for years" and even read that commit:
> >>>>>>> "Yes,
> >>>>>>> staying withing 80 columns is certainly still _preferred_."
> >>>>>>>
> >>>>>>> Checkpatch is not coding style. Since when it would be? It's just
> >>>>>>> a
> >>>>>>> tool.
> >>>>>>>
> >>>>>>> And there were more talks and the 80-preference got relaxed yet
> >>>>>>> still
> >>>>>>> "not for years" (last talk was 2022?) and sill kernel coding
> >>>>>>> style
> >>>>>>> is
> >>>>>>> here specific.
> >>>>>>
> >>>>>> It's perhaps again about the semantics, this time about the
> >>>>>> meaning
> >>>>>> of "for years".  I don't think there's some strict definition of
> >>>>>> that
> >>>>>> term, so perhaps different people see it differently.
> >>>>>>
> >>>>>> To get back to the above-mentioned commit bdc48fa11e46, the
> >>>>>> 80-column
> >>>>>> limit has obviously been lifted, putting the new 100-column limit
> >>>>>> as
> >>>>>
> >>>>> "Lifted" on *CHECKPATCH*, not on coding style. Do you see the
> >>>
> >>> Repeating myself about because you are not addressing the actual
> >>> difference.
> >>
> >> Please see below.
> >>
> >>>>> difference? One is a helper tool which people were using blindly
> >>>>> and
> >>>>> wrapping lines without thinking, claiming that checkpatch told them
> >>>>> to
> >>>>> do so. Other is the actual coding style.
> >>>>>
> >>>>> You claim that coding style was changed. This never happened.
> >>>>
> >>>> It was obviously changed in the commit bdc48fa11e46, by making the
> >>>> 80-column width preferred, instead of if being mandatory.  The way
> >>>> I read the changes to the coding style introduced in that commit,
> >>>> it's now possible to go over 80 columns, up to 100 columns, _if_
> >>>> that actually improves the readability of the source code.
> >>>
> >>> The commit is for checkpatch. Point to the change in coding style.
> >>> You
> >>> are bringing argument for checkpatch, so only a tool, as argument for
> >>> coding style. Again, coding style did not change since years.
> >>
> >> Commit bdc48fa11e46 obviously addresses
> >> Documentation/process/coding-style.rst
> >> as well, as visible in the quotation from the commit below:
> >
> > Yes.
> >
> >>
> >>    -The limit on the length of lines is 80 columns and this is a
> >> strongly
> >
> > 80 is here...
> >
> >>    -preferred limit.
> >>    -
> >>    -Statements longer than 80 columns will be broken into sensible
> >> chunks, unless
> >>    -exceeding 80 columns significantly increases readability and does
> >> not
> >> hide
> >>    -information. Descendants are always substantially shorter than the
> >> parent and
> >>    -are placed substantially to the right. The same applies to
> >> function
> >> headers
> >>    -with a long argument list. However, never break user-visible
> >> strings
> >> such as
> >>    -printk messages, because that breaks the ability to grep for them.
> >>    +The preferred limit on the length of a single line is 80 columns.
> >>    +
> >>    +Statements longer than 80 columns should be broken into sensible
> >
> > 80 is here as well.
> >
> > So now to your original statement:
> > " but the 100-column limit
> > for the kernel code has been in effect for years."
> >
> > Where is 100? Only in checkpatch. There is no 100 limit in kernel
> > coding
> > style.
>
> Yes, "100" is in checkpatch only, but the coding style explicitly
> says that going over the 80-column limit it fine if it improves
> the readability.  Thus, going over the 80 columns has been allowed
> "for years", whatever one finds that term to mean, or more precisely
> since mid-2020, and having "100" present in checkpatch establishes
> "100" as the effective "hard" limit.
>
> > The change in coding style and checkpatch was partially done because of
> > your understanding: reading checkpatch output as a rule. But this was
> > never a correct approach and still is not. So whatever checkpatch is
> > telling you, e.g. "100 column limit", is not coding style. It's only
> > checkpatch, a tool trying to help you.
>
> No, that isn't my understanding.  I don't take checkpatch's output
> as some kind of mandatory rules; however, what checkpatch does and
> suggests should be based on the coding style, and if checkpatch
> advises wrongly, it should be fixed instead of being accused to be
> invalid and pointless.
>
> Though, in this particular case, checkpatch does it right.  The
> coding style explicitly says that going over the 80-column limit
> is fine if that improves the readability, and checkpatch follows
> that by allowing up to 100 columns.
>
> >> chunks,
> >>    +unless exceeding 80 columns significantly increases readability
> >> and
> >> does
> >>    +not hide information.
> >>    +
> >>    +Descendants are always substantially shorter than the parent and
> >> are
> >>    +are placed substantially to the right.  A very commonly used style
> >>    +is to align descendants to a function open parenthesis.
> >>    +
> >>    +These same rules are applied to function headers with a long
> >> argument
> >> list.
> >>    +
> >>    +However, never break user-visible strings such as printk messages
> >> because
> >>    +that breaks the ability to grep for them.
> >>
> >> I think it's obvious that the 80-column width is no longer _strongly_
> >> preferred, but has been demoted to some kind of a bit weaker
> >> preference.
> >
> > Yes, but this is not what you said before and this is not what I
> > questioned.
>
> It is, if you read what I wrote above carefully.  The 100-column
> width limit has been in effect "for years", and has been defined
> by the combination of the coding style and checkpatch.  The former
> says that going over 80 columns is fine, and the latter limits that
> to 100 columns, to prevent some very long lines.

I'd like to say I appreciate the 80 / 100 limit on code, as it pushed
me to separate out my driver code write operations into a separate
function and significantly clean up the code.

I apologize if my submissions aren't perfect the first time around. I
admit I'm still a baby developer, this is not my day job (although I'd
probably love it if it was). This is only the second driver I've
written from scratch (first, if you consider this is the second
iteration of a driver I wrote before my motorcomm driver). I depend
heavily on checkpatch and the feedback from maintainers, as well as
the coding style from similar drivers. The style and coding policies
that employed kernel maintainers and developers have committed to
heart I need to look up every time I submit something.

So, thank you for your feedback.

>
> >> Also, please note that the coding style explicitly says that the 80-
> >> column rule is to be followed "unless exceeding 80 columns
> >> significantly
> >> increases readability and does not hide information".
> >
> > I already said it earlier... so yeah, we keep repeating ourselves while
> > discussing original point claiming now something else than we actually
> > discuss.
>
> I think it's again about the semantics. :)  Please see above.

