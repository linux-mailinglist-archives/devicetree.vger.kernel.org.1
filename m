Return-Path: <devicetree+bounces-257613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJP/FUP3b2m+UQAAu9opvQ
	(envelope-from <devicetree+bounces-257613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:44:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C584F4C716
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 738409EE893
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08DD533C1A3;
	Tue, 20 Jan 2026 20:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAec5GRL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2F23AA1A1
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 20:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768941538; cv=none; b=INqXJDUeKun0DRkPiTkbuQ5CAV37asC6W2PPLduiaFY4NcfHisw6C116dH7gFK2YQIAXi/3+o1/nRD5AGbOBiQYZJtfw95K0zi5AWlv0TWDwsQrUkL7+7b6v3nkn2ogdLUBqIMZ0tlwEi4vejg7rOAHf5fuzbCZVwRNSERg9MWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768941538; c=relaxed/simple;
	bh=uvPYENYteRdmw6w232vZVanaRgiOQijJrHU/5wK5r7s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SK9uMj9EEwj4q02zbWzgf3WkUDJ4U1b3/6aLJgFVd1buRWZ3NHrTQABcaLTo5BTWsWK1pAw3M6856jD4D9VMjIigcJJKED7JbdCzdrdpyQaGkaLLIcduDjwjoMPWJ19o9oLV5hoWsMA6usQMPA26an/4wH6f3IFul74Y9sjxdko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAec5GRL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C82BC16AAE
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 20:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768941538;
	bh=uvPYENYteRdmw6w232vZVanaRgiOQijJrHU/5wK5r7s=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=bAec5GRLWcvsSuxgNE41lfMbTN5H6VzhNqIIE0aDj+qZmmIc4/zrCa1yvKzgUJgJJ
	 MXpxgtXGv3Ge9wKgVE4jhCuNPmRIxgk46fD5iuLdyyQ9kz7avxvdPFpwsVirV4Fyg6
	 /5V2msVdj+wvp+A+tGHk1xqegu9uuhFf9/RBZsXxJFovz+AD1nunutoPLO5sezzI0k
	 3c7Tap/KTxRvEQ0lnpzdF00H/EYXawJx6QrG6BekYPW8+KKlinVuuJ+8QHVjOUQY3U
	 /aL1N1Bre+yeBv0oTYyBQ8JWwpj3uW5qVHA5Zl87BS/pfDJGqsaAvbwK+yW/YUv9iF
	 YStFmdQbgKfCA==
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-65801ce918eso2113320a12.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:38:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW2vhumluwIxErE+OXT7TzLhEaa2eJoIAIQHYtGMaPE7RpCXrfxw1frI7KCZN6gIIXcXt/FqXqAHqeW@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqh9wLR/ezrWUicUDfKi3eDWmCu1mhAF3jg4+hnavHLJnnXLGr
	3nlpwTaqRB17J6+zHS5r408/66y0hbtbQHMerEPJUQOwuonCtzEvN0NQbX1DBdbAfYea4i5Pj7a
	xoh60kwM5YnzpKk/tVF1folRIle3soA==
X-Received: by 2002:a05:6402:270d:b0:64d:1a0f:6969 with SMTP id
 4fb4d7f45d1cf-654524cf13dmr12391632a12.5.1768941536898; Tue, 20 Jan 2026
 12:38:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112142009.1006236-1-herve.codina@bootlin.com>
 <20260112142009.1006236-3-herve.codina@bootlin.com> <aWgxAVfUYMUy9mz1@zatzit>
 <20260116100934.7d522b1a@bootlin.com> <aW29fwFEB6_qjVEc@zatzit>
In-Reply-To: <aW29fwFEB6_qjVEc@zatzit>
From: Rob Herring <robh@kernel.org>
Date: Tue, 20 Jan 2026 14:38:45 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLdKMPYq0q1Tw+8Ts9uD=AZR2HGDF2W9iY6Y=EGg=ujTw@mail.gmail.com>
X-Gm-Features: AZwV_Qj7jkaZl8qV5GM7q3K8zKEntvaKvwM3ox7-PhbZyht2MSIMKZKq0rANS_8
Message-ID: <CAL_JsqLdKMPYq0q1Tw+8Ts9uD=AZR2HGDF2W9iY6Y=EGg=ujTw@mail.gmail.com>
Subject: Re: [RFC PATCH 02/77] Introduce v18 dtb version
To: David Gibson <david@gibson.dropbear.id.au>
Cc: Herve Codina <herve.codina@bootlin.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Ayush Singh <ayush@beagleboard.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, devicetree-compiler@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree-spec@vger.kernel.org, Hui Pu <hui.pu@gehealthcare.com>, 
	Ian Ray <ian.ray@gehealthcare.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-257613-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,mail.gmail.com:mid,dropbear.id.au:email]
X-Rspamd-Queue-Id: C584F4C716
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Jan 18, 2026 at 11:18=E2=80=AFPM David Gibson
<david@gibson.dropbear.id.au> wrote:
>
> On Fri, Jan 16, 2026 at 10:09:34AM +0100, Herve Codina wrote:
> > Hi David,
> >
> > On Thu, 15 Jan 2026 11:12:49 +1100
> > David Gibson <david@gibson.dropbear.id.au> wrote:
> >
> > > On Mon, Jan 12, 2026 at 03:18:52PM +0100, Herve Codina wrote:
> > > > This v18 version will add support for
> > > >  - metadata in device-tree blobs in order to have a better handling=
 of
> > > >    phandles and unresolved references.
> > > >  - Addon device-tree blob (successor of device-tree overlay)
> > > >  - Import and export symbols feature
> > > >  - multiple trees in a addon device-tree blob (i.e. root device tre=
e and
> > > >    orphan node tree)
> > >
> > > So, once this patch is applied, the rest of the series pretty much ha=
s
> > > to be applied "atomically" - otherwise a version built in the interim
> > > will be lying in saying that it supports v18.
> > >
> > > I therefore suggest moving any changes that *can* be moved before thi=
s
> > > patch, should be moved before this patch.  That will assist in
> > > reviewing and merging the series piecemeal, rather than as a single
> > > giant blob.
> > >
> > >
> > > Regarding the content itself.  It seems like this is a pretty major
> > > change to the dtb format - maybe that would suggest bumping the
> > > version by more than one (e.g. like we went from v3 to v16 in the
> > > past).
> >
> > I see your point.
> >
> > Maybe the Rob's idea related to 'unknown tag' and the suggestion I did =
[1]
> > related to the generic tag value definition to support those 'unknown t=
ag'
> > could help here.
>
> Having a standard encoding of tag length so unknown tags can be
> skipped is a reasonable idea.  I think you do need provision to mark a
> tag as "safe to ignore" or not - e.g. something like FDT_BEGIN_NODE
> could never be safely ignored.
>
> > As a reminder here, this generic tag value definition consist in:
> > --- 8< ---
> > A tag value is on 32bits. We can define the structure of this value.
> >   - bit 31 (msb):
> >      - 0: This is not a new kind to tag and so it doesn't follow this d=
efinition.
> >           All existing tags are in this category
> >      - 1: New kind of tag adopting this definition
> >
> >   - bits 30..28:
> >      tag data length encoding
> >      0b000: No data related to the tag
> >      0b001: 1 data cell (u32) directly follows the tag
> >      0b010: 2 data cells (2 u32) directly follow the tag
> >      ...
> >      0b110: 6 data cells (6 u32) directly follow the tag
> >      0b111: Tag is followed by a cell (u32) indicating the size (in byt=
es)
> >             of data available just after this cell (including any paddi=
ng
> >             if needed).
>
> I'd suggesting giving a byte length not including alignment padding.
> That way if you wanted to encode a bytestring in there, you wouldn't
> need a way of encoding the unpadded length in adddition to the
> standard way encoding the padded length.
>
> >           Because this size include some possible padding, its value is=
 a
> >             multiple of 4 bytes.
> >             The offset of the tag + 4 + size points to the next tag.
> >
> >
> >   - bit 27..0
> >      tag specific identifier
> > --- 8< ---
> >
> > I mean dtb version v20 could be:
> >
> >  - New header size with dt_flags added in the header (if this new field=
 is
> >    kept).
> >
> >  - Support for the generic tag values and so the notion of 'unknown tag=
'
> >
> > With that done, everything else added afterward will have no impact on =
the
> > dtb format itself.
>
> Well... maybe.  It's not entirely clear to me whether all the new tags
> can be safely ignored by something that doesn't understand them.
> e.g. a consumer can't safely ignore the tags which give unresolved
> phandle references if it then expects the phandle values in the actual
> property values to be correct.

I think we'd want some higher level "this is an addon or base DT" than
presence of tags. Maybe that's just the version. Perhaps a new header
field to say this is a base or addon DT. Or both?

Everything in this series intended for the base DT should be safe to
ignore just as __symbols__ (and __local_fixups__ if you add /plugin/)
is safe to ignore. It's only software that understands and wants to
use the new "addons" that needs to understand.

Rob

