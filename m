Return-Path: <devicetree+bounces-269181-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHKjIiJ4oWnJtQQAu9opvQ
	(envelope-from <devicetree+bounces-269181-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:55:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B39931B6408
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 459AA3017791
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B575E3E8C56;
	Fri, 27 Feb 2026 10:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziswiler.com header.i=marcel@ziswiler.com header.b="kvaOnlAQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.perfora.net (mout.perfora.net [74.208.4.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE0B1F92E;
	Fri, 27 Feb 2026 10:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.208.4.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772189726; cv=none; b=ZxlusgcudxgqqknYMZ1Z3vqJvVW+sB5xx4m41Y7ALg6qupE29CP/bicLCz0kK1+Gu1boW++jp1rr3Ez8AG+mV892HKu4ow470ga2xR2K6rIp1YJnsU6oPFFyXcjUVDzNFz3Jj1F8l4g0XOVPiq5bQc/HLSQ6WWH6nTilrezA5P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772189726; c=relaxed/simple;
	bh=JyFGZnhkCDmplKwplIYatSCSWGTAEQ+3aRFjhHnYafc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RRw2vam6UfVL+BOO7bRuS8w3gtFCHZZD7Ft/lr8ndQ1dLLwUvbOjkqtaxPglkIrB8R7F8vqXxF0TFJ4U1tO6eUTNywM1n89qyQjFKgSIdNW1+qs/I+PIi0Vp9lZuF/Km6TiHNv0W5R/ulLL+xxkAiO7Nf7ar7nYSIC8FRbyKjno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ziswiler.com; spf=pass smtp.mailfrom=ziswiler.com; dkim=pass (2048-bit key) header.d=ziswiler.com header.i=marcel@ziswiler.com header.b=kvaOnlAQ; arc=none smtp.client-ip=74.208.4.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ziswiler.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziswiler.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziswiler.com;
	s=s1-ionos; t=1772189713; x=1772794513; i=marcel@ziswiler.com;
	bh=JyFGZnhkCDmplKwplIYatSCSWGTAEQ+3aRFjhHnYafc=;
	h=X-UI-Sender-Class:Message-ID:Subject:From:To:Cc:Date:In-Reply-To:
	 References:Content-Type:Content-Transfer-Encoding:MIME-Version:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=kvaOnlAQi+lwkujcaUXQnO6rygGM08xpCHqocpHdxZAq+EUe54z6NtSg4kN8OAcu
	 O7Rclntg1NwDbiWloFpfvnQLASw8vkGN79sZZI+LiIO1uzjHG+q48X/GAL98xcUeO
	 Ne4p6js+PxJ15UHUkpoeUqiZ6OPQ11KsWA8YhUiALyItOrNvSPfW0E9n4yKyQh4gr
	 iPYdQMN3BkE+s4rk8xSlDB45MpNhTk3aEeZ7of2CT6WTkuZBcudMvJjcz3sKOrsGd
	 /ErBldEDbPwKKGBoEi98UU5jpWe88JFzHvzw4rcidh3Lluka4iaeY4CiNkKcbzGzz
	 An4df2cAcC2VnvnZ3Q==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from client.hidden.invalid by mrelay.perfora.net (mreueus002
 [74.208.5.2]) with ESMTPSA (Nemesis) id 0MfFYy-1wKaBm3H4s-00XVO9; Fri, 27 Feb
 2026 11:55:13 +0100
Message-ID: <d4e44b3659859e8967a1cee7cbbeeeeb399a4536.camel@ziswiler.com>
Subject: Re: [PATCH v3 00/22] riscv: Memory type control for platforms with
 physical memory aliases
From: Marcel Ziswiler <marcel@ziswiler.com>
To: patchwork-bot+linux-riscv@kernel.org, Samuel Holland
	 <samuel.holland@sifive.com>
Cc: linux-riscv@lists.infradead.org, palmer@dabbelt.com, pjw@kernel.org, 
	akpm@linux-foundation.org, david@redhat.com, linux-mm@kvack.org, 
	devicetree@vger.kernel.org, surenb@google.com,
 linux-kernel@vger.kernel.org, 	rppt@kernel.org, mhocko@suse.com,
 conor@kernel.org, lorenzo.stoakes@oracle.com, 	krzk+dt@kernel.org,
 alex@ghiti.fr, kernel@esmil.dk, robh+dt@kernel.org, 	vbabka@suse.cz,
 Liam.Howlett@oracle.com, apw@canonical.com, 	dwaipayanray1@gmail.com,
 joe@perches.com, Julia.Lawall@inria.fr, 	lukas.bulwahn@gmail.com,
 nicolas.palix@imag.fr
Date: Fri, 27 Feb 2026 11:54:54 +0100
In-Reply-To: <176613180179.3684357.1299267450443574866.git-patchwork-notify@kernel.org>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
	 <176613180179.3684357.1299267450443574866.git-patchwork-notify@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (by Flathub.org) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Provags-ID: V03:K1:UUplK9QahItW7favaUm4Q5d915hat+h5jRewnwaVbhTw3M+iOKz
 NivRKam2ukd6XrGztVMAx7ufnqFaS0o0H8sAT8En/yEU0449jeV6Yxky+IHFvxmzpiIHgqc
 e+oTWRBAZrV/b9JQcTj37R2Sw37SqeYcqEsP05M7zjZyx42P7HmWzbZLugPhPEWO73Nwlya
 she/PX5fYi+oGB3VOdNGg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:+OThauVM/dQ=;T3PrC/aB3MTcKDZ+nVQmVOqdEzy
 N2dU66/j0l3knCkOxj2rAa+UJg/YnO5J1PIzW6lESBJD6kbcdblu29UNdIdexnMyMo5TD7mLi
 xESeyHnrqswHRBgoTrLyF4z8EkmVVcf159QIUGcYwNsoHmlt2GqMJpl3Jlfq6X6vUoeCvW4Qw
 EpGJ8jHXrd/cdgRe0UTOeoG8ItQxw58irA8JBh3osLS3KQoaJ7jVaFGN3ClT65DPL+e4q+iwU
 G7h6mnG1tsz6MXmFgemKc/9RFQ8XiJYXoQLHLr5+8cStFq2o+hNptRm5XB1XIeN8d/5CLPapC
 PHUyXxQAsqvWlNydi2rKGqFDL3qXSV2RQLmWH6PgEtDKnOE7BwEsmFyeY4U3GBeBc+7ND5voB
 EymOExcGAtoMaudGa3ODaRMiXG+zwzfDm15svkSNXeQU+vo8H+8lgzRtJNVLJdeQTiR3mTCOF
 7CscIhpLNsE/hHOd2Rch2OboqBLstKm8IbvCsKvXSIIuzM6LwAbOVAryP7H5z8hu9ACpF/w+d
 TzQJXjoTKtExhIns58/uDKt/FtqAr0HjPbmyOslIxYKWckkY9qq3aviEEOXzas6z7eFy6HHaQ
 hDnWevq1H9cXkwhc2iH0/U6TRNP48auqCeXyX+oaDv5P5pFU0AcFkmfKydm5UzBS3hGDGrZI2
 nZx6pwYAv5X04i6sc+vZb7J+WJg9S8xKErLFlnBxYU8g+lrl2I8cc3X/TUPz5rLO+EMBMpGWM
 KY4yMDBgChMOWfyFl4ju+copjhjJM+91bO+Y4SytOJ9sLq3JwWxuoQwJNFkQ8tt9ybvhItoMH
 DPmzdUlYciRUuQHVZAzNO6mXRKtov+xLyhVWnookBjNUUEBBI33VkoXKKphBhsJsVetJtkwhM
 byWhnSmGkTn7ok6pc9PC35OyJBiBOQN40yOfRj2AlKc7vfgaGqdwOtjMCGEjF/WDu6DZkrBt1
 zYcj4+M1OWxoy4+FZChdsX1auRtC7hXIKpzIKZcVyzlbbj9EOW/wifIbXzXy1f1+1eWsji9FG
 EjnDC2UfmcxsrQOueVdfMDddtKauvjq0kRl3OeDfUZMyhbAibXgCIjPagD1uXX3W7JDUIcl4b
 a1pPFbRPXgzxeVSb2iwy47sxyDrIOfNXsadHHiqKOl8x3p/CzRMo6ljG4tKtE/mG9/WdUvpLW
 9uPnvImuZ80X20rqPEqha2mMSy97lkrQsh0Oc8u4bx2IH/WltVVox1mXfcLPrJrj9uBBL1iR/
 jLtm7wyoOjakrucwgWhn0xsbBetL1xFlMPWS2dFvE+fnfgnti8e43NLDobz35JtA/X/RqZjgg
 P5mEyZdvdy6du3mbJuh1awV8wkGjXjFWoWV7IkcP4vrdzMPJYoBBLF8kuRItqQXJu8KbrTWOm
 to/3YCUwAlnXrM/JUQNMsKK9VOem1Q+iQXIiSwB7vxcn+CPwM+jteLn4LJ2YwtKTrw54BTd2h
 NBFxAFjRtRO48jN7+Rx5qGPd6tGGztTEEeFX6AC+yOxzNNFh0afUEOBaynVGMftjHK8Tp+0Ds
 GIRShmHNQoCBlDUCU11nTd13FkikovWXCQCqLBiBe/h3/XV58rGjtuuv6HezhlDQNA0oT7e+p
 Sq3KKjkzU9RuE4lFbHHkHFdg3q0CNE61wXE6QKU+Ue108FZt8pSZZsWIui2pg9mGA5j6rMzfi
 Z4GI4rJ8F/3zTi3qyYNxmEREKnbcSah2nJ9OGhkbAF0PzwAm9DdaRx7ZEqMwoF4qRxOc2lz2C
 1vAvmQX1rVRN0HtJM1f92+Oy90sRnGKBMTqQBU9MH/GYOGZ/rUL+Z9Q0=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ziswiler.com,none];
	R_DKIM_ALLOW(-0.20)[ziswiler.com:s=s1-ionos];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269181-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,dabbelt.com,kernel.org,linux-foundation.org,redhat.com,kvack.org,vger.kernel.org,google.com,suse.com,oracle.com,ghiti.fr,esmil.dk,suse.cz,canonical.com,gmail.com,perches.com,inria.fr,imag.fr];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcel@ziswiler.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ziswiler.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,linux-riscv,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linux-foundation.org:email,ziswiler.com:mid,ziswiler.com:dkim]
X-Rspamd-Queue-Id: B39931B6408
X-Rspamd-Action: no action

Hi Samuel

On Fri, 2025-12-19 at 08:10 +0000, patchwork-bot+linux-riscv@kernel.org wro=
te:
> Hello:
>=20
> This series was applied to riscv/linux.git (fixes)
> by Andrew Morton <akpm@linux-foundation.org>:

Any idea what happened to patches 04-22 as I don't think anything other tha=
n patches 01-03 ever got applied
anywhere. Or am I missing anything?

For what it's worth I carried an updated patch set through up to v6.19.4 [1=
] and latest -next, which at least
on EBC77 seems to work fine.

Thanks!

Cheers

Marcel

[1] https://github.com/riscv/meta-riscv/pull/602

> On Wed, 12 Nov 2025 17:45:13 -0800 you wrote:
> > On some RISC-V platforms, including StarFive JH7100 and ESWIN EIC7700,
> > DRAM is mapped to multiple physical address ranges, with each alias
> > having a different set of statically-determined Physical Memory
> > Attributes (PMAs), such as cacheability. Software can alter the PMAs fo=
r
> > a page by selecting a PFN from the corresponding physical address range=
.
> > On these platforms, this is the only way to allocate noncached memory
> > for use with noncoherent DMA.
> >=20
> > [...]
>=20
> Here is the summary with links:
> =C2=A0 - [v3,01/22] mm/ptdump: replace READ_ONCE() with standard page tab=
le accessors
> =C2=A0=C2=A0=C2=A0 https://git.kernel.org/riscv/c/11119b19f62d
> =C2=A0 - [v3,02/22] mm: replace READ_ONCE() with standard page table acce=
ssors
> =C2=A0=C2=A0=C2=A0 https://git.kernel.org/riscv/c/c0efdb373c3a
> =C2=A0 - [v3,03/22] mm/dirty: replace READ_ONCE() with pudp_get()
> =C2=A0=C2=A0=C2=A0 https://git.kernel.org/riscv/c/b4e53984f240
> =C2=A0 - [v3,04/22] perf/events: replace READ_ONCE() with standard page t=
able accessors
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,05/22] mm: Move the fallback definitions of pXXp_get()
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,06/22] mm: Always use page table accessor functions
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,07/22] checkpatch: Warn on page table access without accesso=
rs
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,08/22] mm: Allow page table accessors to be non-idempotent
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,09/22] riscv: hibernate: Replace open-coded pXXp_get()
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,10/22] riscv: mm: Always use page table accessor functions
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,11/22] riscv: mm: Simplify set_p4d() and set_pgd()
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,12/22] riscv: mm: Deduplicate _PAGE_CHG_MASK definition
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,13/22] riscv: ptdump: Only show N and MT bits when enabled i=
n the kernel
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,14/22] riscv: mm: Fix up memory types when writing page tabl=
es
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,15/22] riscv: mm: Expose all page table bits to assembly cod=
e
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,16/22] riscv: alternative: Add an ALTERNATIVE_3 macro
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,17/22] riscv: alternative: Allow calls with alternate link r=
egisters
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,18/22] riscv: Fix logic for selecting DMA_DIRECT_REMAP
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,19/22] dt-bindings: riscv: Describe physical memory regions
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,20/22] riscv: mm: Use physical memory aliases to apply PMAs
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,21/22] riscv: dts: starfive: jh7100: Use physical memory ran=
ges for DMA
> =C2=A0=C2=A0=C2=A0 (no matching commit)
> =C2=A0 - [v3,22/22] riscv: dts: eswin: eic7700: Use physical memory range=
s for DMA
> =C2=A0=C2=A0=C2=A0 (no matching commit)
>=20
> You are awesome, thank you!

