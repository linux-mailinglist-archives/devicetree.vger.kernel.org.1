Return-Path: <devicetree+bounces-253891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E7ED12664
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:52:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8D98C3010568
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08D233563EE;
	Mon, 12 Jan 2026 11:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWCPZP4l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2BD2D7DDC;
	Mon, 12 Jan 2026 11:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768218716; cv=none; b=XOWyysgA8VlMy+KmlhsAUGivUKF7YbU0Sf8/9XYMA8eIj9+Sq1qa9vvN+eo8SpEOvlWL0eKm6byKzyTKzV486J3V9+ojy8YmlMsXb/u085sgofV/4ZRX+10F3T+TrRr6vrwJ/kH+MP8+sOX+UMGnT5Yxxq3krrxSpEKQ2BVDpf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768218716; c=relaxed/simple;
	bh=4+ENTmlTNBOGzSycLbBOVvNBumn0w6g3F+pCD0BKh+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cWd1eSre5tSbKxbbZvKz09VEnRrdenVAVpop+5mTsq/3mRbbAGfdDEM2BO0KxSOGZBf+AJweciAMlQ/m4hkxXT7YYt7o197JeYz8NcKDwi0m29h7fnT/LkmYwdtldIvq0xhA2AOQ/hcd16xa27cF4tYO7O9z3AKY/YMwvVn8RWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWCPZP4l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1928C16AAE;
	Mon, 12 Jan 2026 11:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768218716;
	bh=4+ENTmlTNBOGzSycLbBOVvNBumn0w6g3F+pCD0BKh+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eWCPZP4l2hPGRPc3BwG28QHgJYlLCtSQlWANHLXbGWw3ZRfFY+ptq2Ok+T1fk6mFt
	 4N8AiuCnXiRTnWpLF+nZ+nQXOkBF6NMlGWyh+MHv3AV18sFFmpAlXSHgOgJzr58r0a
	 raQUxVxZYqdOmUcemUVSmCQrbk8l5ObuBzHL2MeNvHItGaH2XiyxQuNRJPB04iwykD
	 nV/kBWThBtuKuLZ07mrtwVzvSTBR6L+7GLPjUF4GIn18ZF9Www/SQp2A8lUVv4W+e7
	 YM11CPPozOUTSwbLKyotx2iDTg9rzfkBuB/rtYYqq7NocZS2YbhEsuRlkdE/7r6JyH
	 EOUSeXPNcVNrA==
Date: Mon, 12 Jan 2026 12:51:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Robert Marko <robert.marko@sartura.hr>
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] reset: remove the reset-tn48m driver
Message-ID: <20260112-determined-misty-porpoise-c77a2a@quoll>
References: <20260112064958.3837756-1-rdunlap@infradead.org>
 <7a8ba1af-0b52-4174-8d8a-97d4c050b8bd@kernel.org>
 <CA+HBbNGT+7x0Bs9p5=bNVUSHt66vd38RuFdjm_GxPWX6C6XDNA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CA+HBbNGT+7x0Bs9p5=bNVUSHt66vd38RuFdjm_GxPWX6C6XDNA@mail.gmail.com>

On Mon, Jan 12, 2026 at 10:16:44AM +0100, Robert Marko wrote:
> On Mon, Jan 12, 2026 at 8:26=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> >
> > On 12/01/2026 07:49, Randy Dunlap wrote:
> > > The reset-tn48m driver is useless without the simple-mfd parent, which
> > > is not present in the kernel tree, so remove it and references to it.
> >
> > I don't understand that sentence. simple-mfd is present in the kernel
> > tree, so the condition is clearly false.
> >
> > Driver has proper instantiation mechanism, thus all out of tree users
> > can properly use it and there is no ever requirement to have in-tree
> > DTS. Otherwise you would remove half of the kernel drivers...
>=20
> The simple-mfd driver itself exists, but all of the TN48M drivers
> depend on a symbol
> that sadly, was reverted in [1], and thus you cannot build them, nor
> are they instantiated without it.

Ah, so missing is MFD_TN48M_CPLD. You should just say that driver is
impossible to build outside of compile testing, thus it is unusable.
simple-mfd is rather confusing in this context, because itself exists.

>=20
> I am sad that was the case as the drivers work, and they were planned
> for expansion for more
> switch models but it ended up in this limbo state.
>=20
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
ommit/?h=3Dnext-20260109&id=3D540e6a8114d0
>=20
> Regards,
> Robert
>=20
> >
> > >
> > > Fixes: 5cd3921d16b6 ("reset: Add Delta TN48M CPLD reset controller")
> >
> > No bug to be fixed. Or at least not explained yet...

In that case I would say fixed commit is what you pointed:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/=
?h=3Dnext-20260109&id=3D540e6a8114d0

Best regards,
Krzysztof


