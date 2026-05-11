Return-Path: <devicetree+bounces-295402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIseHXahAWpKgwEAu9opvQ
	(envelope-from <devicetree+bounces-295402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:29:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC18E50AE40
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:29:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AEAA3100522
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928F43C6A56;
	Mon, 11 May 2026 09:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjtxSWaF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2253C65FF
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 09:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778490025; cv=none; b=Zkvf0BYds6Q2XZdCDsFwsh5qngjtrcdgskYgTZTGyYM4D7SrxAJr4FFf7NwW5C6k9ltPrc+NwOhF9qPqzv1sIUuyPhC1jx2gIxY5o3E2C5ecaRvxInjoI0ZctI0sc3UeM/J/4O/JMiaToS+Cl8MYuvieHnKsnN2FnZYaBj3NZ98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778490025; c=relaxed/simple;
	bh=CFVno9Nsq/hvsU0eZZtsglitWo5gwSvgnKfW0LBnyoY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MjePBLqISwIWeozR8oKl+J3tDsF5lRgLn6R89d91fxgXevWbPSBpGb/4oQf95RmBTXD19PHTW3umZkPHgUGJDdCxzF1wWdPId2+DbKmDj3r/Z1FO9MhbpcAAgyNHbVG92Zw+ka2Z2AjIsD6whR3n6WaVe8Uhf5fzSgCxbep1jsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjtxSWaF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A2A8C2BCB0
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 09:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778490025;
	bh=CFVno9Nsq/hvsU0eZZtsglitWo5gwSvgnKfW0LBnyoY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=sjtxSWaFwSHnBPJlWokNikhrDROBUVO7kpRTksldimqi3KcRz999PzClGGVcHInkr
	 gQraInGvBx/5NfC2r92z/Ld2iCuq5M4Hcqvznhs51hknYafsUtwO13D9IVL/CRfRZI
	 nkE4Hb+TX+4b2K4O2pox5RaVRMUAVFB7U95g7Ey4iTJpKdRgHEv05G5eHK55Z2O38v
	 xLsV0zbRTsnAbAYtOirwiSQuY7jWBo9muOqz5Ib4Zm6tqy2HniOQJy1xTikKGfuLAx
	 LEsJe5HbOPoSvoLKhdupTVy+Ngk7LfM7PHG3PjCZ63YcsIghem7UYA7kKgyaSQ9YrQ
	 BaP87DrqC/D6w==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-39380e79936so50941041fa.2
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 02:00:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+eFy7E5lZLmvpTGeSk2jmEAutqqGc2jk+Cs8P+GPTWevYw1m6+Q94FfQ/n3a37ZKu7C6MR7mk6rLEq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc6qGSc0LrO1LkVDMAIwcHX6dWeCeRVKQDegVGsOfkQ/SsVx+Z
	1QQDjK1SccbTGnLadnu7WBUuBqixoG/aXYtmgzTqUgegpCGP9kqZOs+tXkZmorpk6vXZKoHaiAk
	0oaAYg1zgFaju6QrQsX7u9gDIvJ+xI2c=
X-Received: by 2002:a05:6512:6181:b0:5a8:d1f3:4f8 with SMTP id
 2adb3069b0e04-5a8d1f30770mr777984e87.26.1778490022755; Mon, 11 May 2026
 02:00:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260429-send-v7-0-b432e00d2db8@gmail.com> <5379905.31r3eYUQgx@strix>
 <CAD++jLk02QnkXYwJ0b6x=qw9stR4nPrjD3sYPOvWAQz8t9OsUA@mail.gmail.com> <23095518.EfDdHjke4D@silicon.doe.home>
In-Reply-To: <23095518.EfDdHjke4D@silicon.doe.home>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 11 May 2026 11:00:10 +0200
X-Gmail-Original-Message-ID: <CAD++jLniQfWXGe3dK=StOGv62mi_3fEHVdipUavsFGSrNm6cLw@mail.gmail.com>
X-Gm-Features: AVHnY4KhmRCq90-NzUXRaDHZYtk0xNB10BVaq7CG7fH-NLC_5K23qELlHwCuUpk
Message-ID: <CAD++jLniQfWXGe3dK=StOGv62mi_3fEHVdipUavsFGSrNm6cLw@mail.gmail.com>
Subject: Re: [PATCH v7 6/6] ARM: zte: defconfig: Add a zx29 defconfig file
To: =?UTF-8?Q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Russell King <linux@armlinux.org.uk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Drew Fustini <fustini@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: CC18E50AE40
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295402-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Fri, May 8, 2026 at 12:09=E2=80=AFAM Stefan D=C3=B6singer
<stefandoesinger@gmail.com> wrote:

> So I read https://docs.kernel.org/process/maintainer-soc.html a few times=
. If
> I understand it correctly at this point "pull request" still means emails=
 sent
> with p4, correct?

No it's the contents of an
git request-pull v7.1-rc1 git://..... tags/my-soc

put into a regular email and sent to soc@kernel.org.

I'm sorry if the terminology isn't always clear on what a pull request
actually is in the kernel world (as opposed to e.g. github). It's just
an email with request-pull contents and some cover letter.

> Or does someone create a git repository on git.kernel.org
> for me that I can use to send actual pull requests?

We can pull from wherever as long as you can sign your tag
with a GPG key that we can (in best cases) trust. We can also
just inspect the result of a pull request from a branch (no tag)
if we wanna, it just involves more inspection and trust.

> As I understand it, my 6 patches then go to the 4 corners of the kernel:
>
> Patch 1 (dt binding) to devicetree@vger.kernel.org

Nah as long as the DT maintianers ACK it (i.e. Reviewed-by) we
can merge that to the SoC tree.

> Patches 2 (platform), 5 (DTS) and 6 (defconfig) to soc@kernel.org, but no=
t in
> one series but 3 independent ones

In an ideal world.

> Patches 3 and 4 (UART) to linux-serial@vger.kernel.org. I think this can =
and
> should be a series of both patches belonging together

Yups. Greg merges those.

Yours,
Linus Walleij

