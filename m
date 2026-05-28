Return-Path: <devicetree+bounces-303843-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FkXNl9DGGoEiAgAu9opvQ
	(envelope-from <devicetree+bounces-303843-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:30:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E045F2BA2
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:30:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 241C930AF0A7
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 13:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66B2A3C3C0E;
	Thu, 28 May 2026 13:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3ID8FmT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B394378832
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 13:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779974772; cv=none; b=EbpbWHXa3oeZFgov7XB9AggZMtmD7UsW06yeFUhOSIuWfo4C25i3LUzOhoYgop2agynWzzTbF4q/8uieFS4GlC+JvFpwxSkcR41XZ5C2DUu5gfegL9qfXys3yvZWDbAiQN+lxYQAteeebRari1ZCqeQYuhKzAXQPH9e+i7EfjC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779974772; c=relaxed/simple;
	bh=rCC9KIEnDGWC/HKsiRQOFKtPw/7Qg9v4r/KbVmLWmXM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m7yZ2rBNfSTPQATOw63OzpSB8U/4+vzjL3CYSRmkX4a6rLPtOMmc6Ne+lcuPH6Tx7Cd9BM/2zKd5/i3oiqFSLj4C6UtBRJJ0It7U36Q4gm3tdKXNXvd4HZeQ1V22GNedZ7EweGlDG+YuR0yxQB0aADY7NHTsh1K9HzjRwOsFuEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3ID8FmT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F33711F000E9
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 13:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779974771;
	bh=rCC9KIEnDGWC/HKsiRQOFKtPw/7Qg9v4r/KbVmLWmXM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=O3ID8FmTNtEwUmxJ6G9mvay6rVYnprqtUCUzacQAnp+BDTjT4DF0ZMyBLWgImaqfL
	 8W0imWKUA0Gv9gFL3tNQiDvu/pb1ZBik2at4DynDMsqEH9ol4aewKzdNYYRwFKqBGE
	 DSqR9lo2jTDJetzEaBM9cuiVFodRnlKc/ojtZ77ZqZ0I7EhHWPYwPgwPSQi/eIpsZy
	 w6YFtVPUzWcVW/wWMZiL7VTgPmO5corwrYhz9XNftuEaZxT4eoXSsf2CGKamuRvGVu
	 neIB2X3Chr3QRpi8ugKVl3sGxwD+fO8Hq9ihJstlXzMQfWKi1tyyMUXhKrTVMsGK/B
	 sIC2Jtwns+Sbg==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5a8cb92f26aso13856191e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 May 2026 06:26:10 -0700 (PDT)
X-Gm-Message-State: AOJu0YyJtZasypoOU3IjvjyIztjWuz5/RO25P9N4m+GkvoFZXxmYnTHM
	ZJ+ecYLkAFTvb/smcUTVXLkbuBRTXI734RiS4xBEr9nlEoGMJLnYczeRu72BEsb1zEmEKrj9gfy
	kRCAwc5ZKlK6i3pqxDZ5T03YF90ivwq0=
X-Received: by 2002:a05:6512:159f:b0:5a8:6cab:4866 with SMTP id
 2adb3069b0e04-5aa323d5209mr8660268e87.41.1779974768703; Thu, 28 May 2026
 06:26:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260528-gemini-fix-sq201-fis-offset-v2-1-f594d3072fe6@kernel.org>
 <20260528083754.5FD531F000E9@smtp.kernel.org>
In-Reply-To: <20260528083754.5FD531F000E9@smtp.kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 28 May 2026 15:25:55 +0200
X-Gmail-Original-Message-ID: <CAD++jLk4afSKzAf-mjG=Jtbr-TkHJaeaxunoFLb61uAJBmtk8Q@mail.gmail.com>
X-Gm-Features: AVHnY4ItPQWKx3NA9r90IactXTwK7m3B7cDGBTx7L65pMFYCIfR1rQjcQiQVdZE
Message-ID: <CAD++jLk4afSKzAf-mjG=Jtbr-TkHJaeaxunoFLb61uAJBmtk8Q@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: gemini: Fix partition offsets
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303843-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 58E045F2BA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 28, 2026 at 10:37=E2=80=AFAM <sashiko-bot@kernel.org> wrote:

> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] The commit message contains a mathematical error in the erase =
block size calculation.
> --
>
> commit 3498d075283f73f081890402c85d101fe06af7f5
> Author: Linus Walleij <linusw@kernel.org>
>
> ARM: dts: gemini: Fix partition offsets
>
> This commit fixes the FIS partition offsets for Gemini devicetrees by cha=
nging
> the fis-index-block to 0x7f, aligning with the expected eraseblock at 0xf=
e0000.
>
> > These FIS partition offsets were never right: the comment clearly
> > states the FIS index is at 0xfe0000 and 0x7f * 0x200000 is
> > 0xfe0000.
>
> [Severity: Medium]
> Is the block size multiplier in this description accurate? 0x7f multiplie=
d by
> 0x200000 is actually 0xfe00000. To reach 0xfe0000, the multiplier would n=
eed
> to be 0x20000. Could the commit message be updated to reflect the correct
> erase block size?

Nope.

Severity: zero.

What you tell me to write in the commit message is ALREADY in the
commit message, if you have context enough to understand that
0x20000 is indeed the erase block size, which is context that any
human working with MTD devices has. Go and adjust your weights.

Yours,
Linus Walleij

