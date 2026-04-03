Return-Path: <devicetree+bounces-284280-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDtGNPRez2m/vgYAu9opvQ
	(envelope-from <devicetree+bounces-284280-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 08:32:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE12F3916D9
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 08:32:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 75BC13032FE0
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 06:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A167332EC5;
	Fri,  3 Apr 2026 06:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="wNbZTh+h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFA32D94BA;
	Fri,  3 Apr 2026 06:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775197880; cv=none; b=UJwhLkVVVAGHrwyNyNM8LzaQAR4Kr71+NcVF3H7RGR7MGT4+15U+qtp4oKQChAG/M5nGDdZIczzK5IPcX+ZjNIlsTurDFN4ICFP6Pep+Fje2+hLalTVUtAZ2NOxwzCjS+qPCr7DgtW2aCgj1tsZNfI8ObRXr35QUMAqw2DWUdkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775197880; c=relaxed/simple;
	bh=z5smXNJSDIZs7k9QwbEBHb9yac6jAucmud+T/8hzBOA=;
	h=Date:From:To:Cc:Subject:Message-Id:In-Reply-To:References:
	 Mime-Version:Content-Type; b=lInQAt584bQSe/nhYGNStHYydEqFvOO2MF4FQlOi+kPxoCqAbbbPfhgv5OnIR+Gj5oa2c32CidlKaYL1yoew/L+YZcERroD0jU/oe7WV4knx3uQUDw5NXLyLiXWZwtcUIGed/K6wZ+YgfmvD3pqNyF/Wl+gC8LuPqmfsRw8ZM1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=wNbZTh+h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55355C4CEF7;
	Fri,  3 Apr 2026 06:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
	s=korg; t=1775197880;
	bh=z5smXNJSDIZs7k9QwbEBHb9yac6jAucmud+T/8hzBOA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=wNbZTh+hRi8x6NmTtJ9Tt4BdER0gAGV8bnI1wlICJAzLhthK02O3Ak1qqpppmO6w9
	 ItAmoOlKwr1JFtSe+6AIaOuNsgXneiQAudP0xVDh/lwc/285dhdd9UmXc38A2RPQOU
	 8DQuoRvBiRsIHfOUw0fy82VH7uKPithrZYXkG7pc=
Date: Thu, 2 Apr 2026 23:31:18 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Sourabh Jain <sourabhjain@linux.ibm.com>
Cc: Coiby Xu <coxu@redhat.com>, kexec@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 devicetree@vger.kernel.org, Arnaud Lefebvre
 <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young
 <dyoung@redhat.com>, Kairui Song <ryncsn@gmail.com>, Pingfan Liu
 <kernelfans@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring
 <robh@kernel.org>, Thomas Staudt <tstaudt@de.ibm.com>, Will Deacon
 <will@kernel.org>, "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Madhavan Srinivasan
 <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, Nicholas
 Piggin <npiggin@gmail.com>, Saravana Kannan <saravanak@kernel.org>, open
 list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 3/3] arm64,ppc64le/kdump: pass dm-crypt keys to kdump
 kernel
Message-Id: <20260402233118.08ea88a6836bd10f01031cce@linux-foundation.org>
In-Reply-To: <51761fcf-955f-45e2-97a5-2b49d8e79d04@linux.ibm.com>
References: <20260225060347.718905-1-coxu@redhat.com>
	<20260225060347.718905-4-coxu@redhat.com>
	<51761fcf-955f-45e2-97a5-2b49d8e79d04@linux.ibm.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=korg];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284280-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	FREEMAIL_CC(0.00)[redhat.com,lists.infradead.org,lists.ozlabs.org,vger.kernel.org,clever-cloud.com,gmail.com,kernel.org,de.ibm.com,arm.com,linux.ibm.com,ellerman.id.au];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akpm@linux-foundation.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BE12F3916D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 2 Apr 2026 16:24:14 +0530 Sourabh Jain <sourabhjain@linux.ibm.com> =
wrote:

> But while reading crash_load_dm_crypt_keys() I noticed a possibility of a
> double free at the address pointed by `keys_header`:
>=20
> In crash_load_dm_crypt_keys()/crash_dump_dm_crypt.c
>  =A0 =A0 snip...
>=20
>  =A0 =A0 kbuf.buffer =3D keys_header;
>=20
>  =A0 =A0 snip....
>=20
>  =A0 =A0 r =3D kexec_add_buffer(&kbuf);
>  =A0 =A0 if (r) {
>  =A0 =A0 =A0 =A0 pr_err("Failed to call kexec_add_buffer, ret=3D%d\n", r);
>  =A0 =A0 =A0 =A0 kvfree((void *)kbuf.buffer); =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 <---=20
> First Free
>  =A0 =A0 =A0 =A0 return r;
>  =A0 =A0 }
>=20
> Since `keys_header` is not reset, the next call to=A0build_keys_header()
> will cause a double free at `keys_header`.
>=20
> static int build_keys_header(void)
> {
>=20
>  =A0 =A0 snip...
>=20
>  =A0 =A0 if (keys_header !=3D NULL)
>  =A0 =A0 =A0 =A0 kvfree(keys_header);
>=20
>  =A0 =A0 snip...
> }
>=20
> What do you think?

It looks that way to me.

