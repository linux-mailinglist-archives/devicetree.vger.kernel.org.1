Return-Path: <devicetree+bounces-232887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0EFC1CA54
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 19:01:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1140134C7EE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA682E7BA2;
	Wed, 29 Oct 2025 18:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bD9KaN9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B0E273D9A
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 18:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761760870; cv=none; b=hg3bxeoKMnhE0IULkLqB9caAMyvyOCk1zHRk2dhZ/IQwd0t1S2iNqi63jHs4FHmdzowQ9v8ypYMdqtzGc9LrO/7OKNKzrU17E5WLhsOip+nhj22wXGfJ6CMimO18Hp1CeJxjpxkHp+N5ptJU1lMCEj5COIQB+IeTyVeIXyBf0Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761760870; c=relaxed/simple;
	bh=MPCogZd58amTwUvKy4XcMBhyGogUHomDrlGBuiYzaG4=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=TNC13DQojdqH1eoEizmiKkwTDg8J8Q+QDNyeqeLY7gJjcQij5mtnUuvv17n4lC+Su7oc5F3Rs7ZqEUTMnFv9qWZyClr5qsuutgOytfqvkhStoSJAxPMG9ijQqeaRvYbam0tE2btZ8V0DiaHT37PgZJVsGLCWEgdImlRuhQVUc+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bD9KaN9Q; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-781ea2cee3fso212797b3a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761760868; x=1762365668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gbssRci/vHGmHOd8+cbdEKN3kF4NLOmkPHSLIdISFlM=;
        b=bD9KaN9QGHCA3Ul/MXKrsgrCP2Za99e5IJiIFvS/DZPMGiRUDTnLtjEZMefTdVgUcP
         UW5LlPYlIgUMpOinhm0TBxjk4E+7YBTTVEkmXqo1895ZFMNG47+eyu/8EJZ4M2WPurTd
         EmXSu7VkthxybLdb+QbqF3r9js9iw/kPkeTuvRtb0FB3e+IiRRMxDP+ya+Y9VceN38la
         Wpp+/nBehD12sSGbXdOyhw3ywevUOQ9njX9gOdRZkH49+vT8v7y1fEVBmihOZenm7q5u
         eTi/ekHP4zMs8Fe6nvaIJ1/BeetENikdOB3hX95A+WGpXV+b00sD3/bbs7FXnf4AAc29
         wDUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761760868; x=1762365668;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gbssRci/vHGmHOd8+cbdEKN3kF4NLOmkPHSLIdISFlM=;
        b=kecZcmDjwLzoWMl44NbwZSS/zmfEqkcnwS52eUpCi4P6Spk/jNV83h6C872Ta3SVCs
         iQzm8QzJPiFdo8iLIN/2f+2fyK0qa7rK+k3EDV5nbu4ueA3u1TL84eWZ+iFrOnemSnKF
         Z7cmuwXYf7tcZOGEoj1XZPymIZ9bFign1J+J+EFwj3gnvAuVxOc7CN+vUmLn7w/NlV+e
         WryZVhpNgmbt3ikIXBOneIRmQbRQnxkW4bulDAKOjJcwgW0AJWpjmnf6HD3XSVlf7qFe
         y4hIrcOLBVhZyHXmQ9KExEIRvkas7z3Wh4AzgG4+Nei99NIJTupkm9K74DREO+Kez9A7
         WUdA==
X-Forwarded-Encrypted: i=1; AJvYcCWGuSH/Fi/su86Z9kzprzzQ9FXZCn6K11LFUrH/Bnw+aG7lQkbRx16FT5TxBIUiXUoYgdr8knD9UMMf@vger.kernel.org
X-Gm-Message-State: AOJu0YzF2q7U1rOI4Z7UM8N3RXvXEqAYHEmpiD85VQveNUOqFYWSlGpH
	v3oa1bP7tnY5MwKq66+gRty5oOVKHDNiMgRU8wDYMl3dfLches2lE7Pn
X-Gm-Gg: ASbGncvB71+qPudcGZDLy9I3tRqacMpjJCUVN6dTnPnoECtsz2a+L70OQX8CmjunfGZ
	pYExLffd5GRojt2K0iHvgJoQ5olW8lvZM8rRbi2rV10AspJA9meqlaZ4nG5GdjGbsSGP1mpIjam
	TwEdeyyTng3VafCkn9+EEJrq2tQHh9ToMEqbZX8QSo4s0w8/KgtnamE+y1gqHGeR+HRKM01M4S5
	0rLZM0/RDxedkXUhQ81yfbpnrvn5iDz5EsqzsF+YhYQ3Jgo/vzQFuYvhRaiqgKiirTk+le7BQgj
	Tz/y0ZSA5aJ7W2iPaf/5VG6qEaaA5IaNguQ5M2mQBjYzczoZ8AClXE+IYfsOaVDop4JlSY1bN/h
	zxddulkOhuMSSTMLbi9jNL+inNSjswJcA+tay665Swj+ruFAHOl/NUWZWCaMBnCA1zGUnKrQY19
	a4JSu1xOWHH38=
X-Google-Smtp-Source: AGHT+IEK7EeZVIM4eFqBddBlc5fujpHTgJwOvNfrZ2enVKLzN/V/zlDV72wpwI//cQqfhNOcBy1gRA==
X-Received: by 2002:a05:6300:210b:b0:334:992d:ecfa with SMTP id adf61e73a8af0-3465381d8ffmr4700279637.18.1761760867622;
        Wed, 29 Oct 2025 11:01:07 -0700 (PDT)
Received: from ehlo.thunderbird.net ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414032c71sm16133366b3a.25.2025.10.29.11.01.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 11:01:07 -0700 (PDT)
Date: Thu, 30 Oct 2025 02:00:23 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
User-Agent: K-9 Mail for Android
In-Reply-To: <20251029-reseller-unsavory-5461fe7f6cce@spud>
References: <20251028-semicolon-audacity-dd5bdd418207@spud> <CALj3r0hWzH+pmkbJe7DdqEzwqcpSQdkfPFtv3S7m-H8gZp0A6w@mail.gmail.com> <20251029-reseller-unsavory-5461fe7f6cce@spud>
Message-ID: <8C82BBEB-2302-49F7-A441-600014D7E250@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On October 30, 2025 1:24:55 AM GMT+08:00, Conor Dooley <conor@kernel=2Eorg>=
 wrote:
>On Tue, Oct 28, 2025 at 01:04:32PM -0700, Coia Prant wrote:
>> There won't be any problems at the moment=2E
>
>Please stop top posting=2E
>
>> Just out of habit (because when writing code, variable names cannot
>> begin with a number)
>> There may be some misimplemented parsers that cannot do this=2E
>>=20
>> As a practical matter, the branch of openwrt has added support for
>> this board in advance, and openwrt uses the DTS name to initialize
>> some default settings such as LEDs and bridge
>
>That sounds like a problem with the WRT development process=2E This is a
>trivial change, there could be more disruptive things required to
>satisfy reviewers=2E Why was it submitted there in advance anyway?
>
>> I'm not sure if he will affect the version that has been released=2E
>> But maybe it's not a big problem=2E
>>=20
>> If you feel that there is no problem, I can send a new set of patches
>> to fix this problem=2E
>
>Please do=2E
>
>> 2025-10-28 19:46 (GMT+00:00), Conor Dooley <conor@kernel=2Eorg> said:
>> > On Tue, Oct 28, 2025 at 12:38:10PM -0700, Coia Prant wrote:
>> > At first, it was to avoid problems with the beginning of numbers=2E
>> > What problems does starting with a number produce?
>> > Given that it is already used by downstream projects, we have retaine=
d
>> > this to ensure that users can seamlessly migrate to the mainline
>> > version=2E
>> > What's the actual impact of changing it from "nine" to "9" for
>> > downstream users? This is a board vendor, probably nothing is even
>> > interacting with the board-level compatible at all programmatically?
>> > Please don't top post=2E
>> > Thanks=2E
>> >
>> > 2025-10-28 19:35 (GMT+00:00), Conor Dooley  said:
>> > On Sun, Oct 26, 2025 at 10:36:44PM +0800, Coia Prant wrote:
>> > Add NineTripod to the vendor prefixes=2E
>> >
>> > Signed-off-by: Coia Prant
>> > ---
>> > Documentation/devicetree/bindings/vendor-prefixes=2Eyaml | 2 ++
>> > 1 file changed, 2 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes=2Eyaml
>> > b/Documentation/devicetree/bindings/vendor-prefixes=2Eyaml
>> > index f1d188200=2E=2E37687737e 100644
>> > --- a/Documentation/devicetree/bindings/vendor-prefixes=2Eyaml
>> > +++ b/Documentation/devicetree/bindings/vendor-prefixes=2Eyaml
>> > @@ -1124,6 +1124,8 @@ patternProperties:
>> > description: National Instruments
>> > "^nicera,=2E*":
>> > description: Nippon Ceramic Co=2E, Ltd=2E
>> > +  "^ninetripod,=2E*":
>> > Why ninetripod instead of 9tripod? That's what the company uses and i=
n
>> > the marketing fluff for the boards=2E
>> > +    description: Shenzhen 9Tripod Innovation and Development CO=2E, =
LTD=2E
>> > "^nintendo,=2E*":
>> > description: Nintendo
>> > "^nlt,=2E*":
>> > --
>> > 2=2E47=2E3
>> >

Sorry=2E

I already switch to a new mali client which support bottom posting=2E

I will send new patches after test with install PCIe CLK=2E

Wish have a good day=2E
:)

