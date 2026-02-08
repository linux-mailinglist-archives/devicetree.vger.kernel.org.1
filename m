Return-Path: <devicetree+bounces-263656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yr6mKormh2lcewQAu9opvQ
	(envelope-from <devicetree+bounces-263656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 02:27:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F250610784D
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 02:27:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B4953011842
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 01:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E4A63002D6;
	Sun,  8 Feb 2026 01:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTcR+S51"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B68981AA8
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 01:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770514055; cv=none; b=CflekRI54gP8aaZhQ/4QTmu0myoUFsk0//YxoEnQZiFn+yhCWr77r8mB2m05aq2uBSG+9il4H5BvFoDkpnxBNmws6bRI6IhUM8RloGLRE8Cx01xfXuCwwnGDbQehZyUWvvxyNVnVfVu8SjEwRGZf1uurLEsA1SOn0YVSDvzXSs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770514055; c=relaxed/simple;
	bh=E7P8zn8SkOqfK6Lhfvl3FSA/eexLP6U4z99vJKnQhTY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZFJDOKqxWPLfq+OOULc/Vy5bWxH0bAxieeKQV4yHb+tH6D93/s9WAUDBWZM4FZxLXAf1qX+Li1x3CmRn2jwwuptcVX2PBwUH67kiDIVsOT+wsM46Wp+5qXSRHSKyMl00qWC8MSZ0/t5305XeI8fgKZvM9fahCIchJXkBGD0uPBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTcR+S51; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 985F3C2BC87
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 01:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770514054;
	bh=E7P8zn8SkOqfK6Lhfvl3FSA/eexLP6U4z99vJKnQhTY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=dTcR+S51wiY5JJmW99RAi1e7TIVi0OIRLT7F0KpiT/VzzO0eqPk0Fisjn/k85MJDA
	 D8S8jU+EvYHqw4bIF1gJNMOylp4kTS30f1mIsfCnQM7Lk3ZcV+MTvCqj/0gyYOGUZw
	 7VrTiSADndPnpXA1+MAUzBFZM+LnLSIrg8QeJ4gXKZPha7knIYcBMRhu6J9iscwIqu
	 6PmVppHpeYsbL8zO5htqEIePTF0CoQqBHqL8TTWyAqCOuPFfzets/z6x+JRYUL/jp/
	 zbP4lWMshjmz4yG2xtyIGaGuqhTpuFtMwEAWLzRKOgWGrQ84mGC6RvuaXZj4s9l6A8
	 6NIqpIt+S/+HQ==
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-653780e9eb3so4409014a12.1
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 17:27:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWuvGjCmBnfM6zs8bh8ki574MmpAKzR8MGRro0urzde95l5/nyyCyarc2CQr6DSo40IwbiSgFOV4Rds@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9KJ2O0LlLbP1FZczb0mWS3ZDYbMiI8Fri6o+ZgJCz7tD3nulT
	X/IusSudw/Ku3Q0fw5iRrDSwM1/57bIna5CCUtJV4cXrJcAlQcS7Du6VauxkCVdWFh5EIjkrOow
	YLYIW//Tm7bbUvzAJMRCzYVEuV9qF0xE=
X-Received: by 2002:a05:6402:3551:b0:659:36de:6d20 with SMTP id
 4fb4d7f45d1cf-6598413d07cmr3640827a12.14.1770514053368; Sat, 07 Feb 2026
 17:27:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260205070640.10653-1-manivannan.sadhasivam@oss.qualcomm.com>
 <bfba9d62-2741-47b8-8325-2d932c20c9e7@oss.qualcomm.com> <lnzmgsdjckbf6u5hxfqm4kzlmcg2cqvszcg7otmkqxaj3yzdfq@vu232xx5kts3>
In-Reply-To: <lnzmgsdjckbf6u5hxfqm4kzlmcg2cqvszcg7otmkqxaj3yzdfq@vu232xx5kts3>
From: Saravana Kannan <saravanak@kernel.org>
Date: Sat, 7 Feb 2026 17:27:21 -0800
X-Gmail-Original-Message-ID: <CACRMN=eu7n+wCD3vRY-7GSKpqf3VG=oyDoQdeauiEHGK-q9pPg@mail.gmail.com>
X-Gm-Features: AZwV_Qj_FXfuqtNbiLuc57OTK7D3Dyw4bQfFYHBT6WOVHb87zyCIiSHuhyyXSeo
Message-ID: <CACRMN=eu7n+wCD3vRY-7GSKpqf3VG=oyDoQdeauiEHGK-q9pPg@mail.gmail.com>
Subject: Re: [PATCH] of: property: Create devlink between PCI Host bridge and
 Root Port suppliers
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, robh@kernel.org, saravanak@kernel.org, 
	andersson@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	qiang.yu@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263656-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[saravanak@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F250610784D
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 1:01=E2=80=AFAM Manivannan Sadhasivam
<manivannan.sadhasivam@oss.qualcomm.com> wrote:
>
> On Thu, Feb 05, 2026 at 09:50:20AM +0100, Konrad Dybcio wrote:
> > On 2/5/26 8:06 AM, Manivannan Sadhasivam wrote:
> > > In the recent times, devicetree started to represent the PCI Host bri=
dge
> > > supplies like PHY in the Root Port nodes as seen in commit 38fcbfbd42=
07
> > > ("dt-bindings: PCI: qcom: Move PHY & reset GPIO to Root Port node"). =
But
> > > the Host bridge drivers still need to control these supplies as a par=
t of
> > > their controller initialization/deinitialization sequence.
> > >
> > > So the Host bridge drivers end up parsing the Root Port supplies in t=
heir
> > > probe() and controlled them. A downside to this approach is that the
> > > devlink dependency between the suppliers and Host bridge is completel=
y
> > > broken. Due to this, the driver core probes the Host bridge drivers e=
ven if
> > > the suppliers are not ready, causing probe deferrals and setup teardo=
wns in
> > > probe().
> > >
> > > These probe deferrals sometime happen over 1000 times (as reported in=
 Qcom
> > > Glymur platform) leading to a waste of CPU resources and increase in =
boot
> > > time. So to fix these unnecessary deferrals, create devlink between t=
he
> > > Host bridge and Root Port suppliers in of_fwnode_add_links(). This wi=
ll
> > > allow the driver core to probe the Host bridge drivers only when all =
Root
> > > Port suppliers are available.
> > >
> > > Reported-by: Bjorn Andersson <andersson@kernel.org>
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualc=
omm.com>
> > > ---
> >

100% NACK to this patch. You are touching a core part of the
fw_devlink code to fix it for one specific case. This is not the place
to special case for a property or a framework.

Please fix it on the PCI framework level please. Couple of options:
1. Revert the original patch causing the issue. The patch was from
Qualcomm and they didn't test it on their own devices?

2. PCI does this weird thing of setting the of_node of two different
devices to the same of_node. Now that you have this new node, I think
fixing that behavior to use different of_nodes for the two devices
might be a solution that might work here. I forget the technical terms
used in the PCI framework, but I think one was a the bus device and
the other was the root node.

3. Just create device links if you know you have a weird case of
dependency that fw_devlink doesn't pick up? It's generally more
painful to get fw_devlink to ignore what it thinks is a dependency,
but thankfully that's not the case here.

Please continue cc'ing me in future patches trying to address this.
I'm happy to give guidance if you get stuck.

-Saravana

> > [...]
> >
> > This is not 'required' in bindings and device_type=3D"pci" doesn't uniq=
uely
> > identify root complexes (as can be seen below).. but I suppose this is =
the
> > best delimiter we've got
> >
>
> Yeah. There is no way to uniquely identify the Host bridges in DT. So I h=
ad to
> settle for this.
>
> Maybe I can check for 'device_type', but that will create devlink between=
 switch
> port supplies and Root Ports.
>
> > Perhaps it could be made 'required'?
> >
>
> Nah. Linux will generate domain numbers on its own. Also, this is a Linux
> specific property, so we cannot make it mandatory in dtschema.
>
> - Mani
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D

