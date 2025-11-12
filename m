Return-Path: <devicetree+bounces-237368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D97CC50253
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 01:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1882C3B255D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 00:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D35935957;
	Wed, 12 Nov 2025 00:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="L5myIdjF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B9B1A23A0
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 00:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762908377; cv=none; b=DfaAfOQ1mjPNH7XZ3SoCKe276Z6FBWzI0GWkC/TrKd+h0cMYDAvMB1UoL44C/UiPmYCsjyT9iCLwbUhKHb7/nNMqccuyntPhQVQlX+B0LusByXR/fUaBRcq6rNZfpMzuLrlJt6NIrWvAHeMPtK1pwSZEohqd2ZqMgh0wwiUQ13Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762908377; c=relaxed/simple;
	bh=nn9DqkEOUPjybyNwmQN5bJ3yaDcI76mdLXLWz0yIres=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=aFuuZ0rSoVyg9e8q0+7ZRtqGggA5wdixQdxnwEFk/N0wr5iRt7aXwk9odBr8b1dgbwbhll1O8SHkS8iJA3dZdRBKRbtYSisgkKYD2j7Euqs/tq+eNOo33QnSNAEK8dfwQ8WBFOrQt6VNRX1IBidykj8/SRzKMe6QzCt88ojgqMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=L5myIdjF; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C8E14404C7;
	Wed, 12 Nov 2025 01:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762908372; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=if7axbwbe4fKbPUmhcwwb0aTP2Nc4YP0ZBLTIgS45yc=;
	b=L5myIdjFpLQoD27hfe5TV4E53mITkvjtquH7QPjM3Gucx6BPWXzi9hC2SJQBcw47tb2Z6T
	vfBy84RnjjCk8bZdWFghNE2OLDFvdbguSXVRV9+1CbsqvZ6zQLujRCjtYUDZx4Kpfvl87s
	nENkFwKKF2L07lC4dPziH32pOLu1nPOCSnJbbm9vyXsUVyUOuBLxUe6LIjQpnwr03Ob56o
	K2uH7el2RDRjYdO2FzqBYghoaP4x/UwItBPjhz2zvCJ2EsvVBLTq8Rgiwdvkzw3wmyFDf2
	UzouRWh33ILBIc317NFDhOf7wzV3hUHWbPw69xIH9jjVwZKhIMjCsBAQiUKiSA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org> <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
Date: Wed, 12 Nov 2025 01:46:06 +0100
Cc: "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Wednesday, November 12, 2025 00:26 CET, FUKAUMI Naoki <naoki@radxa.c=
om> wrote:
> On 11/11/25 23:33, Dragan Simic wrote:
> > On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naoki@radxa=
.com> wrote:
> >> On 11/6/25 02:48, Joseph Kogut wrote:
> >>> On Wed, Nov 5, 2025 at 4:15=E2=80=AFAM FUKAUMI Naoki <naoki@radxa=
.com> wrote:
> >>>> I'd like to clarify the situation regarding the v6 patch series =
I submitted.
> >>>>
> >>>> The original device tree work for the Radxa CM5 and IO Board was
> >>>> authored by Joseph Kogut. I took over the responsibility of gett=
ing it
> >>>> upstreamed with his agreement.
> >>>
> >>> I'll confirm this. I've been in communication with Naoki. They ma=
de a
> >>> large number of revisions to my original patch series, which I th=
ink
> >>> have technical merit. I suggested they submit the patches themsel=
ves,
> >>> and gave them explicit permission to add my Signed-off-by and CC =
me.
> >>>
> >>> I assume this was the correct way for them to continue the work I
> >>> started, but if not, please let us know the best way to proceed.
> >>
> >> Can anyone help us?
> >=20
> > I'm not exactly sure how to resolve the current situation, but for
> > Signed-off-by tags to be present, in this case you'd need to have
> > Co-developed-by tags as well, because the final patch versions,
> > which would be submitted by Naoki, would differ significantly from
> > the versions that Joseph actively worked on, if I understood
> > everything correctly.  Though, for Joseph's Signed-off-by tags to
> > be included there, he would also need to participate actively in
> > the development of the final patch versions.
>=20
> https://www.kernel.org/doc/html/latest/process/submitting-patches.htm=
l#when-to-use-acked-by-cc-and-co-developed-by
>=20
> If
> ----
> From: Joseph Kogut <joseph.kogut@gmail.com>
>=20
> <changelog>
>=20
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ----
> then I can submit my patch series?

Actually, the Co-developed-by tags would be pointing to Joseph
in that case, but as I described it above, this approach basically
cannot be used, because Joseph's original work differs a lot from
what you'd actually submit to the mailing list(s).

> Or,
>=20
> > Another option, technically a bit simpler, would be to include just
> > Originally-by tags for Joseph, which would indicate that Joseph gav=
e
> > up on the development of the patches and handed them over to Naoki
> > for future development and submission to the mailing lists. Though,
> > that would require Joseph to publicly state exactly that.
>=20
> I cannot find any documentation about "Originally-by".
> Is this correct?
> ----
> <changelog>
>=20
> Originally-by: Joseph Kogut <joseph.kogut@gmail.com>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ----

That approach is the only I see applicable in this case.  However,
let's hear opinions from other people as well.

By the way, what you called changelogs in the examples above is
usually called patch descriptions.  When they become merged, they
become called commit descriptions or, sometimes, commit messages.
Using the standard lingo usually helps. :)


