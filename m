Return-Path: <devicetree+bounces-271058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qI7KJuY3qGkTqgAAu9opvQ
	(envelope-from <devicetree+bounces-271058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:47:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BCF200AAC
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:47:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 172FF30101C6
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3863530EF91;
	Wed,  4 Mar 2026 13:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="imS/u9Bv"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445917080D
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772632033; cv=none; b=NcvpW9L6cBKUcg3HTS1ASqoEOvgIcBqgDHiyYQDq8Lznd0ff41hdbf3v6ejzLxR0VrqJOzNxRUOVMovHngYJSRPUmtrZjFP2Sjsk5Cg92jmBIkmmGuWskZ4khq3P1TPEQpz5wFZtDb0tmabHtKr2AYYS4rDaQVg6E+5YzYR4b6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772632033; c=relaxed/simple;
	bh=jfR22FUwMmCvTi7NYfd8DE+kvcEe7FKYu52SljU3y0U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l5SzoN1eg5nC0zZyCs+RBL8W/5DUguVKwyqsn18z2UHdIXbrbPor1y7qqa5YlDJFTPZ9D9JuA3IX1KR5A7LoobmOxXdrGLwAK+1lHtaZziRDskWfuBSot+t9/tKB0gK9L5q2yFcPqAMUJNZPdkJP42PNvUI2VSJtd+K5AJvmMnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=imS/u9Bv; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id A9825240029
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 14:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1772632028; bh=XvWO//MuUaF6FBIn1Hrn9Rw3nUdY24HmHHsAA/muNLo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=imS/u9BveXyiCdVz3nuiVXmt0F72RQBrDvQqnbvEjJKKUIBqKC/hovKSaG9kra/WP
	 2BFeOlA9f4dAgXaT5dblKaaepKJWe7U3MSXbC1Q+c7rKa7KZOIjX3T0qNabn1peoWN
	 zr7bUkZVmrEFQymu8ApIyz0wTJEhRRsY+Xh8CMq2jGLDhVB4wOQR3EOUNQwQu2n8BL
	 WYGCfKT/bNLs9gmMp8tDMf+O6a0szmYcCX965XBQ+9BaW97d1rWpR/+95WtAPDZ3hx
	 rlI5a/V9oGoMlcL0XoVKvjD9/FPaLaZsXmD7/+fycM0mikxUHHVF/t4exNVg/G9Z/z
	 qtEz1UBYsbcow==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fQv9Q1f3sz9rxc;
	Wed,  4 Mar 2026 14:47:05 +0100 (CET)
Date: Wed, 04 Mar 2026 13:47:08 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: j.ne@posteo.net, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND] powerpc: dts: Build devicetrees of enabled
 platforms
Message-ID: <aag32bMA9aiEbSIP@probook>
References: <20260303-mpc83xx-dtb-v1-1-592d27492019@posteo.net>
 <CAMuHMdXZYuDn5RRFFUp7kXFDn_fMZuqHbXmSJie4ofEv8NxXfw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdXZYuDn5RRFFUp7kXFDn_fMZuqHbXmSJie4ofEv8NxXfw@mail.gmail.com>
X-Rspamd-Queue-Id: 43BCF200AAC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[posteo.net,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[posteo.net:s=2017];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271058-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[posteo.net,kernel.org,linux.ibm.com,ellerman.id.au,gmail.com,vger.kernel.org,lists.ozlabs.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j.ne@posteo.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[posteo.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,posteo.net:dkim,posteo.net:email]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 10:34:26PM +0100, Geert Uytterhoeven wrote:
> Hi J,
> 
> On Tue, 3 Mar 2026 at 16:56, J. Neuschäfer via B4 Relay
> <devnull+j.ne.posteo.net@kernel.org> wrote:
> > From: "J. Neuschäfer" <j.ne@posteo.net>
> >
> > Follow the same approach as other architectures such as Arm or RISC-V,
> > and build devicetrees based on platforms selected in Kconfig. This makes
> > it unnecessary to use CONFIG_OF_ALL_DTBS on PowerPC in order to build
> > DTB files.
> >
> > This makes it easier to use other build and test infrastructure such as
> > `make dtbs_check`, and is a first step towards generating FIT images
> > that include all the relevant DTBs with `make image.fit`.
> >
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> 
> Thanks for your patch!
> 
> > --- a/arch/powerpc/boot/dts/Makefile
> > +++ b/arch/powerpc/boot/dts/Makefile
> > @@ -3,3 +3,158 @@
> >  subdir-y += fsl
> >
> >  dtb-$(CONFIG_OF_ALL_DTBS) := $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
> > +
> > +# PPC44x platforms
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += \
> > +       arches.dtb \
[...]
> > +       icon.dtb
> > +dtb-$(CONFIG_EBONY) += \
> > +       ebony.dtb
> 
> This fits on a single line (many more below)
> 
> [...]
> 
> > +# MPC5200 platforms
> > +dtb-$(CONFIG_PPC_MPC5200_SIMPLE) += \
[...]
> > +       tqm5200.dtb \
> > +       uc101.dtb
> 
> Even when it wouldn't fit on a single line, having separate
> 
>     dtb-$(CONFIG_FOO) += bar1.dtb
>     dtb-$(CONFIG_FOO) += bar2.dtb
> 
> lines not only makes it a little bit shorter, but avoids the churn of
> adding a backslash to the previous line when adding new entries.

Sounds good, I'll do that for v2.

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

