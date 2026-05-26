Return-Path: <devicetree+bounces-302932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELI5BJBkFWqCUwcAu9opvQ
	(envelope-from <devicetree+bounces-302932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:14:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 738CF5D3184
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:14:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F235F3049E22
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 582193D4121;
	Tue, 26 May 2026 09:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ly5quGx2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9727E3D3CF0
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 09:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779786639; cv=none; b=QhQy3gGbCBsJwHZro9MaWmGZcwC8WIkZBc5PRp7OQSNlDBWDglkf2mdHducf+WFyQ3eO4YQV0vM/eLpRd6MM29vcK7M+eI66YgL/OOrjgG8nkNFg+0I7sD05OM7i5JivLC5s26mxogXE0Woy3KnWeAaLR0ZAP+S2LtqVLGG6nUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779786639; c=relaxed/simple;
	bh=CDdXageqFFnS1lt5ITJVCOsjjz8dlepjGjcjcaqiSHo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ouUrmB8ulx2VqzpcsEWx+pbpe7svWvIpPAGv5ZTxI+qUMnx6Ac97nrSWNagtkWyUEi1BShTD2Y9S2YIWpxiEkcb8hpLa3uIirE4aP/eqkFDvrCFQGXmwZ3hZNNBEtFVrR24rfEgSGYNwB7fRMzQjAfqhHzUK1d2tc7a7DqZQg2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ly5quGx2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 621271F0156B
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 09:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779786637;
	bh=CDdXageqFFnS1lt5ITJVCOsjjz8dlepjGjcjcaqiSHo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=ly5quGx2+ckHTMiGFoEyXLa6kpNtlQybVxrA48joySieh7gI6Kt2iwbvjzpv2MKHw
	 ILQCB8npQo/yjF3LTlfXSR8YLf6/JMGO791rsbn+hKZsit1mxo2IdDqYSaaogvFzUx
	 vFiRWXoVxuih0ZZTPC6clq0A95lEghtsrfqPnZyBxXJG+dppw39nL04tSqTCu67kpq
	 ysKrPJTp+Ea2bsychtkA0p/HqGOe8v/cT4h2ewLOtLnAo6zEkJjg/plof7dP6ruVoi
	 bE6McKMcAq/lCJEsKmtaeTLOLNPoyv7G1PrtxhFgYy85K0JdN3ay1peRWDeOS7kJLI
	 mL7C4TR7c3xxQ==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3939d2bd739so80365171fa.0
        for <devicetree@vger.kernel.org>; Tue, 26 May 2026 02:10:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8zZ4bcOIk2GTLI1Kxk8FsW91WPfpuMdqDQ3oPBaV21yIcwoUlJc0F9dLUvv7Sfzu9AFS1xUJb5vBvV@vger.kernel.org
X-Gm-Message-State: AOJu0YzUsTVD0mdckfRIIHQ8KT/++Vy6oOHSycOhcPS/LIoHt2l9Buou
	mcOyOo91sRHPZqQu11k+bhoLdriQPubQqKW4X0RAenEXqWKPR5g11wM1DRkUOaTkBWP5/mQlgoX
	ft1PNh3tY2YBoifwkYbkyYW6ywUsqoI8=
X-Received: by 2002:a2e:9b97:0:b0:38e:a883:6303 with SMTP id
 38308e7fff4ca-395d8c1a2ddmr38195081fa.9.1779786635862; Tue, 26 May 2026
 02:10:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260522-strict-provenance-redux-v1-1-0880b65fc17c@kernel.org> <CANiq72kwRam1yk_w+B2n2osXLEVdofDbisBs+FYoukZ7GYNcog@mail.gmail.com>
In-Reply-To: <CANiq72kwRam1yk_w+B2n2osXLEVdofDbisBs+FYoukZ7GYNcog@mail.gmail.com>
From: Tamir Duberstein <tamird@kernel.org>
Date: Tue, 26 May 2026 11:09:59 +0200
X-Gmail-Original-Message-ID: <CAJ-ks9=XDsBMuNCX5UQn7OytrDbM8ZnnX0Nci3Zrb37fa_maCg@mail.gmail.com>
X-Gm-Features: AVHnY4KT-C0ZHAIvDzjLKDNNdT3OK_8WcJCT2ljZF23KYVsYFyqdDO1mFxY4Yss
Message-ID: <CAJ-ks9=XDsBMuNCX5UQn7OytrDbM8ZnnX0Nci3Zrb37fa_maCg@mail.gmail.com>
Subject: Re: [PATCH] rust: kernel: use strict provenance APIs
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Lorenzo Stoakes <ljs@kernel.org>, Vlastimil Babka <vbabka@kernel.org>, 
	"Liam R. Howlett" <liam@infradead.org>, Uladzislau Rezki <urezki@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Almeida <daniel.almeida@collabora.com>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	driver-core@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302932-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,infradead.org,gmail.com,garyguo.net,protonmail.com,google.com,umich.edu,linuxfoundation.org,collabora.com,vger.kernel.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tamird@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 738CF5D3184
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 25, 2026 at 9:48=E2=80=AFAM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Fri, May 22, 2026 at 7:19=E2=80=AFPM Tamir Duberstein <tamird@kernel.o=
rg> wrote:
> >
> > Suggested-by: Benno Lossin <benno.lossin@proton.me>
> > Link: https://lore.kernel.org/all/D8EIXDMRXMJP.36TFCGWZBRS3Y@proton.me/
>
> The linked suggestion seems to be about enabling the lints, not using
> the provenance APIs (which we have been discussing for a long time).
> Do we want to enable the lints after this? Or what am I missing?

You're right; I carried over the tag from the previous iteration
thinking it addressed usage when it actually suggested the lints. The
lints can't be enabled yet because they are not stable (not just in
our MSRV).

> In any case, some of these are not equivalent to the `as` casts, so
> they are not a mechanical change. Could we have, at least for those,
> the reason why it is OK to perform the change? (perhaps as separate
> commits?)

Correct. There are both behavior-preserving exposed-provenance
spellings and cases that deliberately avoid exposing provenance. I
will split those as you suggest.

> Thanks for cleaning this up!

Thanks for reviewing!

