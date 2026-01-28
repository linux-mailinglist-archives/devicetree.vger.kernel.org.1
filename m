Return-Path: <devicetree+bounces-260500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cG4eAyExemkx4gEAu9opvQ
	(envelope-from <devicetree+bounces-260500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:54:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4268CA4AC5
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E47F302E78E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8077630C626;
	Wed, 28 Jan 2026 15:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="O0nuKrLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A048309DD2
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614979; cv=pass; b=Ewq0jtNJ52VICtxlftcvonoIV+09aGeZUCkL1mz7stdn9DGFoNFQ2tKb5a8AgcunKDtVgpSyTavMeJlAhQFcMtK1/tWz7Cu7smxhPx3IRmVwoxZ5fv26nCwyDiRDX40T9Vl8PjFxxqe6zaxOeR+dxPUV6J2AhYL5VO3PfDG+250=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614979; c=relaxed/simple;
	bh=yr7VieMCX6D3WLrE35b3fqXI7IBsFPaH+PdpaLXKVfE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F3F2eWpgX+sRtRe1E99MNRDQacfVI/f1d55l6V9xOMFvKy9PThz3wBZiaQcBaHAEHu1kMlB1L+13ILMZMvpWR2SYSvlvAQbx7QK0pxdzuV2PGVxQwPxxpNBInwoB4CKxSvhZlrbbvW1reBSsLT/oObDkTtyIZUFScVSxKUgV2uo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=O0nuKrLR; arc=pass smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-6496804204cso4200503d50.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:42:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769614974; cv=none;
        d=google.com; s=arc-20240605;
        b=by+zqFYvsIgkRr//cCjFDBN87M7XaYPEfmbhMTDPN//i1XWeEBYfPsFWrNav0g707/
         fdv1hp+3T3ZL22oG5fFQi1zblwjAZufdSHA6rn56D8I37ZJJco51Hhzq1H0Z/zhLhub6
         SsL7yiPhPZdfwCmGbpcytJXQOxlJ0Zu9svfwY5nmQ9HqoOlfsVNpPtP+snqVZcPEfLgP
         5BEfPiXZEnH1iCSXWwyUJUpKO/sxQmpaF2yjszhdMVxgR8SJdS4YvUc8zbjwmMPQNoT3
         MZhWjS5STm8HrH1kxVuBHE/2khOZZx0b0nK04Xu2aUcZsJJeCIpgbcZIvPBlpX+4fVBE
         toPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8HL0HkET+dj1w35XFDXNOqZl3z1k2yF2PBoeKmcws1E=;
        fh=s4d/Th+U5LmJnWsHg4m9WwEE2gpxDEHq5dD4CFiUdWA=;
        b=hpAEYYgcABCeCXQFLD4Z/UHVdwzGDFbqjvRbba9lYCUriCQg9wPldPLecJ5vX1SPxL
         uBH5wuoSQrF/umZR+8jeiou7x4r/ui/0PqNFPA3HUpy1LshG/Zmjl1UqAVSrg5XrDsAB
         +SiTTnbjXbnqVGYPz8j2axJQzC/zQd6uZwl9Yebemwcy+5e7akGu2J0gj+MjDfaauf0I
         g2gzj/cEh6MndrdFF3U6Hqxy+zg9/lzCQLGS+HtiU/po6WGimXjYQ1PY0hWeJYcGKSWT
         ZmDY0jEo71oTKM6Ct003tZ+Foey0QVfb4P517DkBJiCCbtXnVzRqTlFtVazCAZCoyzR0
         ZBMQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769614974; x=1770219774; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8HL0HkET+dj1w35XFDXNOqZl3z1k2yF2PBoeKmcws1E=;
        b=O0nuKrLRTgMfQoXmwJaEAaxzjRyNfQtng/Xs/HNPZI2kjQnGIUmkO8NCpya0rark3i
         H5oZWqMJFx/450TONcR9JnwRc0B+ZLG1lpthsMKePSPaOLfA1RVORg/9U1kxu9nw240V
         OwY7atQGR6VkdtNXd4wAuOyw7lUYZ3GJjcbciYJIu1ZLp3BgK/FyS8K8Gto+jRyFZbY3
         ty4DoVhP04CgopcyLFarlijW1FWaW34fgeFAT+U0WQcAXIN5eGsp6QZpZoV2gOFGk49H
         H/dUKEc0aEX/nKiPQVqegzQ1NRBD63/SURisn9i0Yvc9yz1tY5QlfTYJ0kpZLT4qIi/6
         jXJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769614974; x=1770219774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8HL0HkET+dj1w35XFDXNOqZl3z1k2yF2PBoeKmcws1E=;
        b=j2qhuvYQbrFBCh+REIppTS9QNEfKmfa+dvtkGdpqsKcIo3HDxXdceIWnEUzXEeJKYk
         gzrgBCU5mZjeEfURI58bKTXQxXM0OwqDjBtzOkVyxY58kY/qkMr2i3y7s91cUil22Zla
         5QEZM7bd0WR21mXOovqggnyXzO8CmLUeSwxOpzIt2KN0Osg2k4+Lu57qhggIrMTTECcb
         MZJE4XBmWYd9fk0b+ijtyI5gz8Wwtehn9y+ywzywgN0lbRRJwZ/6z2BrtyE+d6zRvOyt
         /wUgY8XAJzl9Dy8nWYBIyEubHlK7sJk0IHoSfKKWgy/bNYAB2S3dxanEZvZhsgKdAL4f
         lBVw==
X-Forwarded-Encrypted: i=1; AJvYcCXzIFJR0r+5L8MuUjXsuMX9VrLH760wYkRVh9IKxJDpD74mvyAoeIp/AEu93G7n172lGpVMfzipH+qI@vger.kernel.org
X-Gm-Message-State: AOJu0YzbnSekAK25ZICWRctKc2wZT+l11ZdL3+3LgwWguv6odIqicHi5
	WyW9cyWMEOuLbhDcpQ6B8E7K10t0d+1zy8ImhCLcAI49LZigj8DT6cFLaYDI3McFZHSk/eUWnoa
	zGkgdADffUQY2m5MuxHFhAcxDt4jL6UYdK/tc2V7rcQ==
X-Gm-Gg: AZuq6aKN47B8gqBHlWmNBrCLGB7AnvE2Bm/0HyRAP0XDSr4otYTM22599Q1YaysnLgR
	8HPuyP4lSDop73x+cHHDxsUCBpwEkS0yfqATBJFXQQBtjPpTWOpXUs1kwycLx+CTN8C/cf0nNww
	i2uiQw4UhC/Ux0I5VBJUJCCpbYT0OGcQFitxYKJ9tT4j2ZUp4qFe40IYWIZrxKjmzk0vBfqtbV7
	mUD2g6Y1HTuILGC4esxzXYY47otNvpCBMSwc1OynbnL1qYE3LGbu8dVTz5vRBwxOhmyMxU2PH6e
	Y4LK7pO87tm9xrDZD5/kAZtYRxr/MSaY/4d5kmFNwNebK75qBwTJPMkBT5Xm
X-Received: by 2002:a05:690e:1481:b0:647:108c:146 with SMTP id
 956f58d0204a3-6498fc469cdmr4118109d50.57.1769614973756; Wed, 28 Jan 2026
 07:42:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
 <20260126-atlantis-clocks-v3-1-b016135551b7@oss.tenstorrent.com>
 <20260127-mystify-carmaker-150aa3fcd6c6@spud> <CAEev2e-p28J_H2oWdrtgGJ0Z=2iGn8FjFBN8ggU0t_Wtbi62rA@mail.gmail.com>
 <20260128-duckling-confess-88e64fabe752@spud>
In-Reply-To: <20260128-duckling-confess-88e64fabe752@spud>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Wed, 28 Jan 2026 09:42:42 -0600
X-Gm-Features: AZwV_Qi-uXOx5p8xPeM0zhwGXZ9arE9COUg5t7UOd-tNyeJsiugC1O9p5HwMOKM
Message-ID: <CAEev2e9Y95bYDdvhJQ2954K2q5yMrGA3UF2U=QN83ZNbZ5LJBw@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260500-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4268CA4AC5
X-Rspamd-Action: no action

Hi Conor,

On Wed, Jan 28, 2026 at 9:02=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Tue, Jan 27, 2026 at 05:39:33PM -0600, Anirudh Srinivasan wrote:
> > Hi Conor,
> >
> > On Tue, Jan 27, 2026 at 1:58=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Mon, Jan 26, 2026 at 03:07:14PM -0600, Anirudh Srinivasan wrote:
> > > > Document bindings for Tenstorrent Atlantis PRCM that manages clocks
> > > > and resets. This block is instantiated 4 times in the SoC.
> > > > This commit documents the clocks from the RCPU PRCM block.
> > > >
> > > > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> > > > ---
> > > This is pretty suspect sounding, if the PLLs for !rcpu are controlled=
 in
> > > the rcpu register region, why is it not a clock parent for the !rcpu
> > > prcms?
> >
> > I saw another clock driver doing it in the manner I did [1], and
>
> The example is using it just to check lock status, which I think is
> different than what you've got here? What you wrote implies that the
> whole configuration for these PLLs is in that register region.

Yes, it seems like that example actually needs one regmap for
configuring and another for checking lock status of the PLL, but in
our case only one is enough.

> > thought that it would make writing the bindings and the clock driver
> > simpler. Each prcm node would have a single input clock (otherwise
> > there would be a differing number of input clocks for each prcm node).
> >
> > What would you suggest that I do?
>
> I suggest that you model the clock tree correctly in devicetree, even if
> that makes things more complicated. One prcm node having more input
> clocks isn't something to be afraid of, it should be pretty
> straightforward to handle in both devicetree and driver, and is not any
> more complicated than having to deal with the syscon phandle that you
> use at the moment.

Understood.

>
> btw, where is the code for the !rcpu clock controllers? AFAICT, this
> series only has the rcpu portion and I can't find the code that actually
> uses the phandle. Why is the patch documenting stuff that has no user?

I haven't been able to completely test the clock driver for the other
subsystems yet, so that hasn't been posted yet. One of the comments on
the previous versions of this series was to document the complete
bindings, so I've tried to document all the 4 PRCMs.

>
> > This would also avoid having the clock tree in the driver contain
> > multiple entries for some of the PLLs (one in the rcpu subsystem where
> > it is defined and another where the same clock is referred with {
> > .index =3D 0 }) which could become confusing.
>
> I don't really understand what you mean by this. Can you elaborate?
> If you mean that multiple clocks produced by the prcm would all use
> index =3D 0 as their parent, that does not sound abnormal to me. Without
> being able to see the !rcpu driver implementations, I can't even make
> guesses as to what the clock tree looks like.

In the clock driver, you'd end up having something like this

static const struct clk_parent_data osc_24m_clk[] =3D {
        { .index =3D 0 },
 };
.
.
static const struct clk_parent_data pcie_pll[] =3D {
        { .index =3D 0 },
};

Both point to index 0, but one is for the rcpu prcm and another is for
the pcie prcm. To me, this felt like it might confuse someone looking
at the driver. But it doesn't affect functionality in any manner.

