Return-Path: <devicetree+bounces-259577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHbBGGKXd2n0iwEAu9opvQ
	(envelope-from <devicetree+bounces-259577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:33:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C41F18AB4C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0181F302769C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C6A133A037;
	Mon, 26 Jan 2026 16:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glECKte0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE6931B10D
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769445207; cv=none; b=hF7FcrniBNBlg0Y0JCCSNpPL4XHMjQzDB88HE1sgEekaZ5flqJzvKfxsul9fkkNinYhDY5vJlrD+IDGbcpQTVOTqX9g3PD67s2nl5pMSbF0OYPHAQ+OrRpaazhCiddnGo97DEDSVVQ3ubORX0v+FhfjBQxcX1cUOaInLfc8XbQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769445207; c=relaxed/simple;
	bh=1110P4O7LSi8WXqTz4jJ2LZI4BaN9AEgj7xeGQ57r+U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PBAC/E8jmUKlnK1NSpJIrwxA4XW1COG1xvns9xsidkFtg8R3BHZ5fD8Kqp7l2hygTkHmnVX9ZQL4DHz2KevQdCpBgKnj3jEiL/eFIs9G/E2d9PBAeWMwlneQ+MpvPiMkd30X1EWtvkLeSCPrUQtF5EpC0UthdYcmn0UBWpmviqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glECKte0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 846A6C4AF09
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769445207;
	bh=1110P4O7LSi8WXqTz4jJ2LZI4BaN9AEgj7xeGQ57r+U=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=glECKte0WuS1YaFZsotEBg9TsBrqPwW3Bmaqw+8bw+t94iKX8xFkDbiwMSPxOR039
	 E+LVjcee3NO/cjovpE9rIvAv89/EPdT6BuUAdDGFjpV6IbF5Rqe90jUwA0bSx93kZg
	 8Lm7QUmQlG5sdwKcN+W7s/YVREHZBDRXgcg2pcI94yqWk2ckiXayUn2fvE5V7FXxOk
	 R1rSGT7j8AGPp9x3xIyCg6gFigG90GRLLcOR6UjTljc+Wn3gx/+uRkTa3AIZ75nTri
	 gobdHZNZxddV5Px+L1FCv7Zia/QVpcCbft+oR/PAMTMmMANX1RDYURX68wXmPdETRF
	 P4cdrj3qoQrLw==
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65808d08423so7216582a12.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:33:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWmOF3KU3M/FLQ9jW64UClCY6jdiTGfNjrZe1WjVfVCj8X13yS1abhy9bk42cz0iTpO6VuJ4ji8DLWE@vger.kernel.org
X-Gm-Message-State: AOJu0YyRgkD5JwAdfSDaYkdimaTLYnkV5JNAnnAdjvlzVkecv88c4+as
	1smlzHWUjjKCIsastDXsxPZaunW1Qk8elv4M3BdUAmoOnkZgJ9x4/gpcP9ZUHUtc4VMkIEHDdx/
	3K+vX/D0MOnE3zDuP+Fn82F46N0fXOw==
X-Received: by 2002:a05:6402:51c7:b0:658:330c:f9af with SMTP id
 4fb4d7f45d1cf-658706de926mr2985790a12.23.1769445205840; Mon, 26 Jan 2026
 08:33:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20251210002053eucas1p1d1408ad0fb49a49bf4371687f8df7395@eucas1p1.samsung.com>
 <20251210002027.1171519-1-oreoluwa.babatunde@oss.qualcomm.com>
 <X-TH#1.CAL_JsqL6VVQ7K_ZAbHJ8Gb7ei_jusLx6wRn=AdOVgV50dX0ejQ@mail.gmail.com>
 <99dc91c9-59fd-47c5-b1d9-157bda86ad59@samsung.com> <CAL_JsqK5QEZfyRTDY4z88mX_eYENibea1ZM8H_bEfCCsOOwY4A@mail.gmail.com>
 <89f8895f-436d-4a73-a2c8-d61a2f4ee41a@samsung.com>
In-Reply-To: <89f8895f-436d-4a73-a2c8-d61a2f4ee41a@samsung.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 26 Jan 2026 10:33:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKWd2H0bV9Z8REMBYd2hPMTjDO1T4dYehM-QvemB9zrDg@mail.gmail.com>
X-Gm-Features: AZwV_Qi4bswXzMTlSSlXlrhMA8xIhaBGN8wj5n0NOyn4w1lHAZaZH4If-414C3k
Message-ID: <CAL_JsqKWd2H0bV9Z8REMBYd2hPMTjDO1T4dYehM-QvemB9zrDg@mail.gmail.com>
Subject: Re: [PATCH] of: reserved_mem: Allow reserved_mem framework detect
 "cma=" kernel param
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>, ye.li@oss.nxp.com, 
	kernel@oss.qualcomm.com, saravanak@google.com, akpm@linux-foundation.org, 
	david@redhat.com, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, 
	vbabka@suse.cz, rppt@kernel.org, surenb@google.com, mhocko@suse.com, 
	robin.murphy@arm.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, iommu@lists.linux.dev, 
	quic_c_gdjako@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259577-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:email]
X-Rspamd-Queue-Id: C41F18AB4C
X-Rspamd-Action: no action

On Mon, Jan 19, 2026 at 4:38=E2=80=AFAM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> On 18.12.2025 15:42, Rob Herring wrote:
> > On Thu, Dec 18, 2025 at 3:55=E2=80=AFAM Marek Szyprowski
> > <m.szyprowski@samsung.com> wrote:
> >> On 10.12.2025 15:07, Rob Herring wrote:
> >>> On Tue, Dec 9, 2025 at 6:20=E2=80=AFPM Oreoluwa Babatunde
> >>> <oreoluwa.babatunde@oss.qualcomm.com> wrote:
> >>>> When initializing the default cma region, the "cma=3D" kernel parame=
ter
> >>>> takes priority over a DT defined linux,cma-default region. Hence, gi=
ve
> >>>> the reserved_mem framework the ability to detect this so that the DT
> >>>> defined cma region can skip initialization accordingly.
> >>> Please explain here why this is a new problem. Presumably the
> >>> RESERVEDMEM_OF_DECLARE hook after commit xxxx gets called before the
> >>> early_param hook. And why is it now earlier?
> >>>
> >>> I don't really like the state/ordering having to be worried about in =
2 places.
> >> I also don't like this spaghetti, but it originates from
> >> commit 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved
> >> memory regions are processed") and the first fixup for it: 2c223f7239f=
3
> >> ("of: reserved_mem: Restructure call site for
> >> dma_contiguous_early_fixup()").
> > Honestly, this code wasn't great before. Every time it is touched it
> > breaks someone.
>
> Indeed it got a bit complicated and needs some improvement, but first I
> want to fix the the reported regression. This patch does this and it
> looks that there are no ideas how to fix this in a different way. Rob,
> could I apply it via dma-mapping-fixes?

Sigh, yes.

Acked-by: Rob Herring (Arm) <robh@kernel.org>

Rob

