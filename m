Return-Path: <devicetree+bounces-267117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFRVBPnpmWlnXQMAu9opvQ
	(envelope-from <devicetree+bounces-267117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 18:23:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7381916D5F2
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 18:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B36B93043ADB
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 17:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0874D2ECD1D;
	Sat, 21 Feb 2026 17:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gXj6zt3v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792F42EFDAF
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 17:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771694579; cv=pass; b=QcKTvK7V9k5i9BnpNWTSG0EsIy/Gb5huiem6Q33+azBqIkp0fInKWVLNDm81y6lVEwgKn5D21b1kGUjptykReLyUUBFDkuUPyVTlJkcEL/bsg3gJvbd6q6Mwk1iUMHWM9dI0k7OQjELGS4fBD3C+nds4zTOh6FnqO1OJ5jhIMt0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771694579; c=relaxed/simple;
	bh=jbtqQplmr94njxCtT7sNZ9MrDY71nd0xaZagySc7WhQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uzu/sWVdko/M3arcwwzFAwoXyNhKWyG1lXeaupV4BaucFLj3sE1PWcsvbUFjvgJA+jGFXjj48C4OFTHub6nZj6+4WZ1XJojzW0MkH3NhZxfOp4NrMqpIT4iQOYGg4+rNsFDH8KUxNLT091kMM1aVbvbdfic6bUQHuU+Ib8z0z3k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gXj6zt3v; arc=pass smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-790b7b3e594so29389727b3.3
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 09:22:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771694576; cv=none;
        d=google.com; s=arc-20240605;
        b=hzEA6mDs8tfOq6mQgFuVvjA9XoiAG0rQ0GoVrgYEIYQA8Y1mjPG34L8bQGEkOWXzs2
         y2XXrNQPQRoE6t+69LGsLD/u9a3yrF+G4oeXdZUy1LpAdHNxsFZeyw0800OTOvZ1WQkE
         Yt/nvoyc3lUiN61u8C6FvknbKlPP2DfG8SAu6ihAnB+EBPyOC0tQLXmwiBTtONZRBQt1
         d7SpG7XMV4zPFaavNWd1s4E/CDKXT+N3LFfltbKtkhB1xBatxzY+V5Bjjrpvgs9xclI5
         lmFW2DExmcj47MUNi0hRR7CFnGOTmHLf17pePhXcj7J/dZdyi2BDTE3pOrnzkn7d/P4L
         3ATA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jbtqQplmr94njxCtT7sNZ9MrDY71nd0xaZagySc7WhQ=;
        fh=NUtzoNTA3qhYN611Z8oUbJ+Z8XVgXVuAVfB/znr0tzM=;
        b=METxWlGZW+7rDnfj9n97O+DiyMg2KjbTPnuX3wQczT8ZjuaRszlh0H2XkjZajyEZth
         94R74+JR38KRf7kdZPDzfKnJrV5Vx7fzCysluL5eLZBo6Odq4341kqch/eZrtljtuy1S
         DziKSJB+5/UDM1swBe658N76B0D3J7nEX3q7PWcPlU1vlCz9JD9RJbtCJskQID1afQKv
         kzo9cCgztaeJc05d3VmlQr09ITSCdAlmrdvw4XiRjt2wKs9kmY5jhPRvWaDFJzCr1bsp
         /+JGn0gzndNmGmnmFhkaXf2ToGXM+M0bubMV9TnqtY5oioRecMrgRMow9PXlIppU6QAr
         Hfqg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771694576; x=1772299376; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jbtqQplmr94njxCtT7sNZ9MrDY71nd0xaZagySc7WhQ=;
        b=gXj6zt3v9QpFcVjW4KzSpmkHGK9s1zhp6F4kYGgnQXuTJreI8uC8ojTknxAbYHkviV
         fnqc916ijmPo49qcUTgN4PTjXAsjfahM7PWd0+yQz9a+w0hPgwfRokL/mwSJFv6Lwtin
         0NTsrXxrwvsOM0pccm7TjQ2EewTLsN1sf8T1Kq6hvjUTiyk5liZKMV2d33XOy+W7MAsT
         mhCaLZu8a3XnInTZoK4R/phHIaKACl7VicHmxX1BvRDbbUfY2sHohiYqXltKgqpsedfl
         YgrOOoHDxpwxxbTwDS+2odmMrEjl1flP1FfSRT1lLn2zB9ynKM8DLVUdIYQ10QsxXWHn
         RuXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771694576; x=1772299376;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jbtqQplmr94njxCtT7sNZ9MrDY71nd0xaZagySc7WhQ=;
        b=ga2k2xP5qb+sO6FD0wsR043isrMSyHzAtC22uwLI5Lsya5aeTxM7Ky10WYxm/I1kqh
         WRxn9KOA2fLCaRDY/4BHvUQfMdzvGTbsp9A1Q6Gb/3fN/gMmkMtFRGij6i0og4sdjnGT
         6uxyK8n8aXF+zGeh/Jn58tMXOVIp0tJIg+ByWbcR+zK81unswd3bYE5wfcQSmvPY9P88
         JSQav2FeBDOouZkD7adpocGcDWwnBqxJU2jkMars4cwrO84+fLhN4MOO+En6bN0igdvw
         Itdt2k+LTJB3jGfaXBGKpjov/pT423H9zH0QbujvNfmU/Cn1eoXDcAz5Rl7uFu0d+Git
         CN2A==
X-Forwarded-Encrypted: i=1; AJvYcCXtbq70h/XT9a/Xp2NN/X2xXzEitGdRzPHC8H4zWzOPywSZvrvvkhm4VjXBcdAixboTP0E7orc0CckR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy3MEA4jJLYidkWPNmWQxZ5IzwnYgU8AeZw1Xbx6J1KXCLKBxk
	qWh52wdb0V/EzhJD3K6y1EUkSJ4CrlSEQGCgpIo9H2Z3n38RHrR9gGZV8VotpTis6x3nFDdkKNG
	+4znfCA6XeD8TaWsOX69Ukt/YknhUeQs=
X-Gm-Gg: AZuq6aKon4PJO77lfdO69XL4mI1OYS5tWdCSYx/MCN9VieqMs/ur3auJCTiej1RhT6A
	LwpN0HiXFeAonUhqMUanhyEDszjAPDxydX2e/3YACMByibaiYAxm7e6M8hFu5b1gP3zdAniPNyc
	X1pXnRFOfcjUXE5I+pHbx1VsJmcuVy5QTBoaiL4BLwYjjHUKCCwqKpX7E8jM39FHlSZ8RHNtGEN
	3ytjMpkWGxlZuMWXLfsryz4Db0hr8yRXgwj5EPvEAy9UGrIx3i51S2zVHyqy2KVyfD5CwXJVoBo
	gT53vLubSQOmzLtgo9EXZvURdWKeCjOas49zGwMysEFI7zOlua76yPuorypFU+OO8xoz
X-Received: by 2002:a05:690e:419b:b0:649:ec59:726c with SMTP id
 956f58d0204a3-64c787d60fdmr2864184d50.21.1771694576227; Sat, 21 Feb 2026
 09:22:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220-ayn-vendor-v1-1-292cbbb682b3@gmail.com>
 <20260221-proficient-eggplant-salmon-5544cd@quoll> <CALHNRZ8JT34J024TvG77LW2vN03q9te+xXmR0e7DMOz3GqouEQ@mail.gmail.com>
 <7a96a82a-f856-4bee-b4d5-2d1e71b92f23@kernel.org>
In-Reply-To: <7a96a82a-f856-4bee-b4d5-2d1e71b92f23@kernel.org>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Sat, 21 Feb 2026 11:22:34 -0600
X-Gm-Features: AaiRm50YHJ2oT_TFwGqEk9w32YJhEJszQR6mE-m9shw_9ibq3xoWw_1yVepkWBo
Message-ID: <CALHNRZ9zzY=KW-XGqvGy1znF5tx0vQRLafXjc=+8RjS90GCQ2g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add AYN Technologies
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267117-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 7381916D5F2
X-Rspamd-Action: no action

On Sat, Feb 21, 2026 at 10:56=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 21/02/2026 17:31, Aaron Kling wrote:
> > On Sat, Feb 21, 2026 at 4:55=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Fri, Feb 20, 2026 at 04:11:11PM -0600, Aaron Kling wrote:
> >>> From: Xilin Wu <wuxilin123@gmail.com>
> >>>
> >>> Add an entry for AYN Technologies (https://www.ayntec.com/)
> >>>
> >>> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> >>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> >>> ---
> >>> This was originally submitted as part of the original Odin 2 submissi=
on
> >>> [0], but that series stalled, so submitting this separately. The pref=
ix
> >>> was renamed to ayntec as per the review comment on that patch.
> >>
> >> And why do we want it without the rest? Answering: we don't want unuse=
d
> >> binding and nothing in the commit msg explains other options.
> >
> > You have told me repeatedly to not do monolithic series that cross
> > subsystems. So I am working through support for the AYN qcs8550
>
> So why is this patch not with the rest for the same subsystem?
>
> > devices and splitting that into a bunch of different series. Several
> > of those independently reference this vendor prefix and may progress
>
> Which one? I see only one in the patchset pointed by [0]. I really do
> not understand why you are doing it completely different than every
> other upstreaming which you can find on lore.

I literally just said they're not ready yet and that I was trying to
get ahead of them with this. There's almost a dozen new drivers,
several using this prefix, that have to be submitted before the device
trees can be submitted. But fine. I'll just pre-req this to whichever
sets of drivers I get ready to submit first.

> > in any order, so this needs submitted separately. I am submitting it
> > early to try to get it in before the rest are ready, so I don't have
> > to list this as a dependency to all of them.

Aaron

