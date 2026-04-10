Return-Path: <devicetree+bounces-286647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCk5CdCJ2WlDqggAu9opvQ
	(envelope-from <devicetree+bounces-286647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 01:37:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C9B3DD82D
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 01:37:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07F073015E02
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 23:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD5A37FF7A;
	Fri, 10 Apr 2026 23:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNTF2OFV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF30346E57;
	Fri, 10 Apr 2026 23:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775864268; cv=none; b=YA552OI4UAngcNT7OSU9skDYW0+oJ3Y1ot4JtfBWbJGnxyy1ghDdQVUsQ1VxfFXLuQsAJPazdWEV1+1Lkc7L6CFrtjDtxyatL3Pj3BXpi+bEsJXc+8XwUy8+orSLa3QKhoEq7u1MEY5UN4/kdftC403LfOoeXtxFb011AF7xKU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775864268; c=relaxed/simple;
	bh=9nyWpvl587TXnw2WHO5q+qP+iVSustuNqLD/U3XMv24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f7vo8Tn4BBA/BRNC+NcMml+VdptUPLjSpG0rFsS+EqbwP7CYgor+2nTHTDy1z4Bzs67Jz4CbqATVzpO2+o+jUi1LpMYkAhZ6KPazyS27j/y9B21Am1i6eiUPjtr24fdwkrE9zDu8w9r3S1dwrJY6dbPF46eoC8Y32azFmzmE5zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNTF2OFV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4360EC19421;
	Fri, 10 Apr 2026 23:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775864268;
	bh=9nyWpvl587TXnw2WHO5q+qP+iVSustuNqLD/U3XMv24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iNTF2OFVv6rlhpMPVLGC+iL5F/WSz2Ou9zFlHB24lyGAb8rY2iRQ01M9hYtEXtKbg
	 9lzVb4h1hhLNMNbaeq8zIFpV8w+34Je76IAJbFh+U2DBC6HuGiDzwU5yVm1zabkvVw
	 ZIIC7RQqZul1N8xHXtf1+VwqxZD9FGCtcKmEGTbmHqnr9VWm7wJC0oMsboonlD1U2q
	 eA8yiYXsE/4fqTO+0H0UsOLxbm46bfgyqVWLEGuiOn5HgDapTGZjzY9AN3CcAZijjY
	 QCIAgPpBv7QFFIDxu0ibTSk20g2kr2aXQ3YrO5FxdA9heCdDTuo8xQqALxJlLIj5VW
	 6GmJvWyuUcOkQ==
Date: Sat, 11 Apr 2026 07:37:46 +0800
From: Yixun Lan <dlan@kernel.org>
To: Linus Walleij <linusw@kernel.org>
Cc: soc@kernel.org, Yixun Lan <dlan@gentoo.org>,
	Arnd Bergmann <arnd@arndb.de>, spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [GIT PULL] RISC-V SpacemiT Devicetrees for v7.1
Message-ID: <20260410233746-GKA1167630@kernel.org>
References: <20260403123040-KYC0145825@kernel.org>
 <CAD++jLkQfUwhvDOCkhK2NtRyXrb6y9rwpDckR6h0G3+dzYwW3A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD++jLkQfUwhvDOCkhK2NtRyXrb6y9rwpDckR6h0G3+dzYwW3A@mail.gmail.com>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-286647-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 99C9B3DD82D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Linus,

On 00:19 Sat 11 Apr     , Linus Walleij wrote:
> Hi Yixun,
> 
> I looked into this pull request.
> 
> I'm sorry if I do stupid mistakes in handling it, I'm new to maintaining
> the SoC tree. Bear with me.
> 
> On Fri, Apr 3, 2026 at 2:32 PM Yixun Lan <dlan@kernel.org> wrote:
> 
> > Aurelien Jarno (7):
> >       riscv: dts: spacemit: drop incorrect pinctrl for combo PHY
> (...)
> > Yixun Lan (9):
> >       riscv: dts: spacemit: pcie: fix missing power regulator
> 
> [Fixes]
> fatal: Not a valid object name linus/master
Could be the problem that your master branch isn't up-to-date?

> Commit: c68360c0d636 ("riscv: dts: spacemit: drop incorrect pinctrl
> for combo PHY")
..
>     Fixes tag: Fixes: 0be016a4b5d1b9 ("riscv: dts: spacemit: PCIe and
> PHY-related updates")
Above commit was merged for v7.0 cycle, while this PR is for v7.1
The fix isn't that critical and didn't cause any run-time issue, so
I do the fix in this v7.1 cycle..

>     Has these problem(s):
>         - Inspect: Target SHA is not ancestor of Linus' master branch,
> which means it is fixing commit in your branch
> fatal: Not a valid object name linus/master
> Commit: 8a9071299dec ("riscv: dts: spacemit: pcie: fix missing power regulator")
>     Fixes tag: Fixes: 0be016a4b5d1 ("riscv: dts: spacemit: PCIe and
> PHY-related updates")
>     Has these problem(s):
>         - Inspect: Target SHA is not ancestor of Linus' master branch,
> which means it is fixing commit in your branch
> 
> So this means you introduced bugs and fix them in the same pull request?
> 
> Why?
> 
> The practice is to squash such fixes into the offending patches when
> presenting pull requests. But I went ahead anyway, trying to not be so
> picky. (The commits are there, in your branch indeed.)
> 
Glad to learn this, I will keep it in mind..

> - Checked that it was in linux-next OK
Right, I think the commit is actually in v7.0-rc1

> - built DTBS OK
> 
> Pulled in, thanks.
Thank you

> 
> Yours,
> Linus Walleij

-- 
Yixun Lan (dlan)

