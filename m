Return-Path: <devicetree+bounces-260161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJxjMsVMeWmzwQEAu9opvQ
	(envelope-from <devicetree+bounces-260161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 00:39:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7035C9B730
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 00:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D6366300BB95
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2A62EC0AE;
	Tue, 27 Jan 2026 23:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="PjqyaNLd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B7D2D879F
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 23:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769557188; cv=pass; b=Uq05n26xLmf4KjxeL7W+WjCFSTZ/GQzoCWxMP9a3q5zU2mLabKuzH2eN/yLnA90/r86kAdw6t/XY9FXFvoEKxdGgQElmJZu9bovP3TSFdkPELc2sBS5yVOAOM8bxUzjkIo9Rj4ekbk06tNjDPoR4Yrqw27e+lZ11mSeziDfmsCc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769557188; c=relaxed/simple;
	bh=gPUgnxSD/COAjPWxazc5+6dYIjSjUxVzMbhilrZJ3L8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ug7i6tu1mA+fNuiv+gKseFXGK3Hex0kf6NX6NlktqwJSn1EelzQWZmCQgp5inTlJjDPkK2u6UYjxI1zwyi6WBDPBXyfPfpx4W075x3zOWq/k/0ULNuQmWNb16Wdp2uwa0sW6LhzbM/iJhLLcU9isd2UAT2RZVxWczD8bJDgOooQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=PjqyaNLd; arc=pass smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-79456d5dda4so31647837b3.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:39:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769557184; cv=none;
        d=google.com; s=arc-20240605;
        b=Ll1ZdNNclyFMNmKLuqeGzTd2LYE9vBLOEYxTYo3EuwSxZqrWGt+thbmR0AsEGrYeEI
         9/ZLkcY8f1lehLcvMJv3XhFWrFXo34nJlEh40e9sCYflQPy4nz2+1AGtp6IG4CKQl70y
         84ASHeks4c3IoBzbDkBEU/558mpmuVrQ23u63WSwxlVsA/VaLcuSnxsvBg8hsFTx4bVo
         Re0t0HI5H0Jp6j6yUhYVs3JF0pY7XNQjJ3lJwRfobGyyhxbf1BioqwoiG6z3Txb+8sAt
         w9KKfYD/6+ETer7zqwlQU+/OunOCWt9B9pmDSbFeEOwx+5fCVm9tBPInJ4slTCr2Pa9L
         VAMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HLfEbFRwaaXoEu5p3+t5bvDBAaOn+hEnCv527EKjzLg=;
        fh=4X/FOPKhFnIWrCz9rYlR+yyY1UXFv+z1LmCRFrdjppM=;
        b=F1xRcbCe+8VluR9lj/KVr5LmkSOSOvVc6roJt+gMAtwPP4jT7yBJfWzxAsCyzIamu5
         DlEpNM8DT9Z8ZRMSZDv7X2fS5eFnhzadRY8xrZbeKYx6IiDGjo6+L9qHF19C1+w9UbQX
         hT68xUnpd3jJl0r2bAA9x9QvDPQM9L1333mTJtY91qvOBB1/zb+8udu3AFg/hP6eZalO
         0ugtFspOoL4vcWbNfkUZXYrfgqveO6Axez49M6wc2e1UIJ6EOCgNFXNpkBIKtYaBPsWe
         Ipko7xqGdKtFNSKe4qxiwq2KV70q6HFCi50NGjUA5ECwAlrCVoxT86awrY3FT6D6jr/o
         nO6Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769557184; x=1770161984; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLfEbFRwaaXoEu5p3+t5bvDBAaOn+hEnCv527EKjzLg=;
        b=PjqyaNLdR1P6agYHzo+g2U4qdb5I85CCflsqRFdIWOE8luMRKkW8baXF0OewlmL78M
         8mmFdjt4jwhTztpju2EKX92sJxoqcRX5MDCZRQwKRUmVUp3HTa35lgkjeCkAJ9Sn0MHd
         gOvsXGWj9LxVGYsP0PMRtHBgLB233kb9k3v3K7JYn7hhhiW1+mMkFL7ejYWWIAWYa8Kb
         t6NsJq/Ys97Huzpzr3jUir/L69kmfGyRvVv/mfX1h3DMVUhoU0Gs9gUQzpoG1X0EEgSL
         s+SC600vuBmTXtM5qQORS28lIZ7kuyhlwdnnG9/h8ND2HPi2oSpL1GqniIHjkvRUIDc4
         ZVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769557184; x=1770161984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HLfEbFRwaaXoEu5p3+t5bvDBAaOn+hEnCv527EKjzLg=;
        b=qqMrkwtVaBO6vCnQ5s9YTQ/d8F9x62xDGs5GawGSQU69NIGqF8EMyitk4D6k2jRsUM
         QDO0iW2BU9AGiJh3d6yViNAtNyihsy+oza+V73a3TMMNrRMkDmCwwkgA+d6exHHQZkRJ
         hm8AZdxNuIQRjxugv16H5uNoQQt+V4R4raHNsNi4zDUTfcI7CwFYg0GM2OUpMjuot+98
         FlkmANadoo/gLoStGE2zqudhV7rHDUftR92ns2t17GNMOci2uGPYeSvoFe2939ioGobg
         0u8onFqObNds+65cXaaN6btICZnFew20y/9pbuE5ZPa+CfrNjR04ffIn3vTTLVEI6uFv
         uhaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMvomRmgt6483edlcwi28/4d+4FGSTnZl/sya9pa6gS7PNjmXlZc0TprPt9tUT8LLszKlcrYIiST3o@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9+vv1TDcvUDMNaYNmtoqvdu8E6FKsvKsB/3XWO+hFxQkMdDYR
	TuEKVdwyqj7/8tg6lP9tA3tt9A5NysCqVmfrz8cCRynlAuqTlUet8iEQGDjS6LvBZusmkoNfBaw
	O/iMbIdkYEEhwS+eHqk4vg8O/ryW2ayMUELTONbxe0A==
X-Gm-Gg: AZuq6aIDCOABu60PRavsTHLy4Vw34JBLda8fH6GbXcRmY0k30Y+JlZ3jziuFulYGUzH
	vlZtpS3gw0EvYLk8HaGifkxlPCj87ZbUQbPwRHhzsXq36W9JgLY0mFrrMd7VHNWfkiC0MmqNh4R
	LKa89K4m0NBo7D0BVVjvlGe9HGRANe4rEzAyQu5MsQB0/ExeKb+2cadWp9hgFgKzWauDqmZ/bO8
	UPa2AspvLYocwtGY2xbeMnt2QF0qxCFMbqNrdEXjed55wLqXqcw1KaW5s+o9kt86oRep5/4ZPWM
	Rar0nL4x9Lv+YMHfOWS/tmkrrue2sKDFizkXSVI6wr79btE+cQN5YXeE1CbW
X-Received: by 2002:a05:690c:c384:b0:793:a2fa:b980 with SMTP id
 00721157ae682-7947ac02c85mr49512957b3.44.1769557184251; Tue, 27 Jan 2026
 15:39:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
 <20260126-atlantis-clocks-v3-1-b016135551b7@oss.tenstorrent.com> <20260127-mystify-carmaker-150aa3fcd6c6@spud>
In-Reply-To: <20260127-mystify-carmaker-150aa3fcd6c6@spud>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Tue, 27 Jan 2026 17:39:33 -0600
X-Gm-Features: AZwV_QgU-_hZ5EIV6MqaVF_pm5xoRa9QBwjZNyO1hs18RpJ3g9G6LAL8JmHvLPM
Message-ID: <CAEev2e-p28J_H2oWdrtgGJ0Z=2iGn8FjFBN8ggU0t_Wtbi62rA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm
To: Conor Dooley <conor@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260161-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,tenstorrent.com:email,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 7035C9B730
X-Rspamd-Action: no action

Hi Conor,

On Tue, Jan 27, 2026 at 1:58=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Jan 26, 2026 at 03:07:14PM -0600, Anirudh Srinivasan wrote:
> > Document bindings for Tenstorrent Atlantis PRCM that manages clocks
> > and resets. This block is instantiated 4 times in the SoC.
> > This commit documents the clocks from the RCPU PRCM block.
> >
> > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> > ---
> >  .../bindings/clock/tenstorrent,atlantis-prcm.yaml  |  82 +++++++++++++=
+++
> >  MAINTAINERS                                        |   2 +
> >  .../dt-bindings/clock/tenstorrent,atlantis-prcm.h  | 103 +++++++++++++=
++++++++
> >  3 files changed, 187 insertions(+)
> >
> > +
> > +  tenstorrent,prcm-rcpu:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      Phandle reference to RCPU prcm, needed by other 3 prcms (PCIe, M=
M, HSIO)
> > +      as the control registers for the PLLs that drive these subsystem=
s are in
> > +      RCPU prcm's range
>
> This is pretty suspect sounding, if the PLLs for !rcpu are controlled in
> the rcpu register region, why is it not a clock parent for the !rcpu
> prcms?

I saw another clock driver doing it in the manner I did [1], and
thought that it would make writing the bindings and the clock driver
simpler. Each prcm node would have a single input clock (otherwise
there would be a differing number of input clocks for each prcm node).
This would also avoid having the clock tree in the driver contain
multiple entries for some of the PLLs (one in the rcpu subsystem where
it is defined and another where the same clock is referred with {
.index =3D 0 }) which could become confusing.

What would you suggest that I do?

[1] https://elixir.bootlin.com/linux/v6.18.2/source/Documentation/devicetre=
e/bindings/clock/spacemit,k1-pll.yaml#L22

