Return-Path: <devicetree+bounces-273070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKJ2BdMSr2nJNQIAu9opvQ
	(envelope-from <devicetree+bounces-273070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:34:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B21823EA38
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 470383013D74
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 18:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0FD634A797;
	Mon,  9 Mar 2026 18:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ls7KhSab"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D89340A59
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 18:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773081283; cv=pass; b=KHGDXiY+9P0FMO1t69OR7s2At5aShWcOboeHIP3Cp3UzmiNIrElo6Lx0DWwCXN7daFvu2r9vQwU584Z5HlYujS9A20nWHbbLwKyix6h5wUtKfj+9u38kGcs+lfkpN5iFUGHHNAbqJ8ux0JXZrktEkQ9iKrFRtCoeo1BYKkiaaK4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773081283; c=relaxed/simple;
	bh=nrRcaBEzpRcULN7gKFTCVsNJUuuezDvP0uC3H3YtDbs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=maNyFN+hob/efnK1KyaVsw4rU/X2wK7Ek0wpEz5DYlUvzUePl4mFGGGlm1OUUEJ0tXlxq0DLthRqWXy+EBNpE3VH6pqHEVoJ1H2OqLfkN8qgXPkj9E4ADpZ/eeTEIRf1M+sV1wtLxmbd0W5wG67+MaiNAv9uLnbRV6fuNtiXahQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ls7KhSab; arc=pass smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-82985f42664so2609513b3a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:34:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773081280; cv=none;
        d=google.com; s=arc-20240605;
        b=Lfh2+gDkYR5zz+5di2aZmOPsQWU0nBcvvX0oOpoOwlBNq7wjtKnIpoRsLsGwHs879Y
         UFc1gaHBxjkwEGd7Dey7me5LAMIzfYXilk5glUH6YLGZ5wmRzBMeeNANkcSvALjRaVvi
         ENAjVLTc1ZoYPzKj1vIjiH2BFz8F9WSyh4/EbU2tROa4NBxPqU4AK+xjeK3UstVnV8GB
         4V+ApoXPxq1tkCSdG36Su4fVx2pBKC5Zbs6Dw/9d7SCin9aq2w3xaxY05wnN1ZCL6b1G
         pCs8PlkIueicLRPN0q9GhQmqVMd0O93y+ZOfrbGOoS3R4f43tUbsxWT8rA94BAFPoNPu
         /zmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nrRcaBEzpRcULN7gKFTCVsNJUuuezDvP0uC3H3YtDbs=;
        fh=kZ6erQ0l6aPbt4TQQNYhnOmWlNHP9IRfV8Slr8lB6SA=;
        b=F4H1/BoSM++dcXTfV1RqMFkHYl8DmzUr0Xg2Unp+LEli5VITZzYM0MEIVZfYJLdqCW
         TUS6A7zWORfr+N7MD+ay6jCYJ60rXutGRTGLyhJjSHQDNAExPdQWrgPrFtWksQJAaZxE
         by4rS3WP63PqCJe36Q1OgLYRHjmB9ofi42pLVT3I5s6F6R21LTjKDGsLSN4fhdyx7UM6
         EiyHFbdrfMdjIJbc2kjKa6QwVtUbmYOHJQenyUkC5ekmGg6R2EpVu6dzXbPXIaCYOMBS
         PZC8mJLF15g9UWPSjtf86c/D5qlXBoLXet9EUOR3nkigsB7l5/MWF9T0y818V/tnykQe
         beIQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773081280; x=1773686080; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nrRcaBEzpRcULN7gKFTCVsNJUuuezDvP0uC3H3YtDbs=;
        b=Ls7KhSabr6vpQOiFl0S6VukS8sep9Oav94FkNNOoyJz4f5Z4SBuAce98DTDO5QQJQC
         avQgzSgPImmXFQKC7blR2TfIRV5OTjEUXVN3H2OgT9u4g07B+ijOqefw5lx3mFL6R9hC
         Yt/JfG84gsQPauGTrLUmo1sHDONDTVl9yRJofb1nkh1ebm/2f4/E5dxu72abGF3b3Paf
         GeX29K4gTYA2W1XMJESu1vH8Drg96tDHVkAtGyMCNO+N26T32AO23tHgSQw1CAGZrQzo
         GueSSun5HIGIYVoeTsX1yGknZaPp5eNjuqTYgvpiWIVQE0K0ouHnZ44bh3dPcK+rd7U4
         Arag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773081280; x=1773686080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nrRcaBEzpRcULN7gKFTCVsNJUuuezDvP0uC3H3YtDbs=;
        b=YAIZSWPPJIA9P/HuGf7h45U6XTozgFAZtKKOk/PF7XlacO5l5IwTvQD7oRP1jipHlP
         Z+tpBEJC6SncRuyqOfab1Ckv3p0ZLtPTe7f+rec/g0tv9BUDeoZLRUq8V40bKsY1S1nF
         Fq5YqBErRO1+VlZTnnU7YDcLf4W+jXEa0F3XPL7bvzOp2Mjh0kWJh6im4AK5o5I82ueV
         f2DczOLtcqnhbxc9Ch4+g8rQCK7nDbUWlhjpENFTcTV71Fc5C6LrkFBmfqQlVc+4mYU3
         wz1qXeUORit0ASh/wAkc8WN5Ax3DojMpmkRQQXwWE4hX7eaczQXtyWTxG+LJV3RWtOGv
         PACQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnNLoMyWeYo5HqTRGJP5447aP83hizUdkWsfVmnURJwld/JMi231u59J4Sof7GmGR1UlqczpMWirqW@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw3VY1oJtpeh7a7v6iY1GTqmhbBeZNpXrRaiilMfqw8AWupzXd
	06LwIRLIh4DK1Yef1WhBo4LyEkG0c/f25zSuP72KET/VtP21Bk7Z8BPBiMfDdcpLdFmSgrl+ARI
	F6/HIexepIiqLJJ2eKIsJ3Y2CgyTAuDs=
X-Gm-Gg: ATEYQzyd5SlRlk7rLzYnSCVxzZm5b53CpBx240TKWU6XYGUlVCAcvrXfKFNSsJbIKIu
	VWR3NZXR17/36Cpoozk2OWXxga5VKRsS53Ayc37TiB2SbrRQX7gT6uRNb22HUug+qawEjuA7tED
	OuFbLett2isHXRWcgtea5RiuafyKKbxzgz1uCVpXESOZJN1gfRDgV+moL/Sz345sA15jS7/dQrX
	TWAdzpGX14q570qgDOGabqRofHNr9ksXzZIni6I1JXo/jgEE96CSDvsiG2J9mo2oVT0ULkT3yEX
	jqDgQxGbPLa4CuA=
X-Received: by 2002:a05:6a00:8d4:b0:828:fba4:f738 with SMTP id
 d2e1a72fcca58-829a30cd00dmr10989334b3a.63.1773081279962; Mon, 09 Mar 2026
 11:34:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
 <20260223-yv5_revise_dts-v5-3-fc913e902488@gmail.com> <391b9b912492c07fd1fd7a737b7f49382d361fe2.camel@codeconstruct.com.au>
In-Reply-To: <391b9b912492c07fd1fd7a737b7f49382d361fe2.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 9 Mar 2026 11:34:21 -0700
X-Gm-Features: AaiRm50UUFPrZASIttjIHF4s9Vp0-viz-S5hm4dYkV_SMFCL3uBX0HPxRWEoCcI
Message-ID: <CABh9gBe2BcgnONwx=cmcOAsT15HgVGjxSChgFMvckTAW_8JfMQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] ARM: dts: aspeed: yosemite5: Add new SGPIO line
 names and rename signal
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Amithash Prasasd <amithash@meta.com>, 
	Kevin Tung <Kevin.Tung@quantatw.com>, Ken Chen <Ken.Chen@quantatw.com>, 
	Leo Yang <Leo-Yang@quantatw.com>, Jackson Liu <Jackson.Liu@quantatw.com>, 
	Daniel Hsu <Daniel-Hsu@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 6B21823EA38
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
	TAGGED_FROM(0.00)[bounces-273070-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 6:41=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Mon, 2026-02-23 at 19:17 +0800, Kevin Tung wrote:
> > Add new SGPIO line names for user space monitoring and event logging.
> >
> > Also rename PADDLE_BD_IOEXP_INT to ALERT_IRQ_PMBUS_PWR2_N to match
> > hardware naming. The original PADDLE_BD_IOEXP_INT is unused, so this
> > change does not affect current system functionality.
>
> Why are these two problems being solved in the one patch?
>
> https://docs.kernel.org/process/submitting-patches.html#split-changes
>
> Essentially, your use of "Also" is a bit of a red flag here.
>
Hi Andew, sorry for addressing two issues in a single patch. I will
split them into two separate patches.

> However, on the specifics, why was the PADDLE_BD_IOEXP_INT hardware
> naming wrong to begin with? What changed?
>
Originally the signal was named PADDLE_BD_IOEXP_INT by the hardware team,
but the name did not clearly reflect its actual function. After
discussion with the EE team,
it was renamed to ALERT_IRQ_PMBUS_PWR2_N to better match its use as
the PMBus PWR2 alert interrupt in the system.

> Broadly, it feels a lot like you're revising platform designs, then
> trying to make the one devicetree fit the current design, and are not
> explicitly communicating that this is what you're doing.
>
> If that _is_ what you're doing, then we can come up with much better
> schemes to handle it that aren't a constant stream of compatibility
> breaks.
>
> I need you to engage with this concern.
>
Thanks for your feedback. I realize there may be a lack of knowledge
on my side regarding the best practices here.
Could you kindly guide me on how we might implement a better approach
that avoids a constant stream of compatibility breaks?
I=E2=80=99d like to ensure we handle this correctly and align with the
expected workflow.

> From inspection, I only find patches 1, 4 and 7 of this series to be
> something I'd consider applying without further discussion.
>
Got it. Should I split patches 1, 4, and 7 into a separate series?
This would keep the current series shorter by excluding items that
don=E2=80=99t require further discussion.

Kevin
BR

