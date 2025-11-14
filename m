Return-Path: <devicetree+bounces-238496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 551CBC5BC7F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFC233B8649
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC65261393;
	Fri, 14 Nov 2025 07:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="oxKEkRmb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EA1242D7B
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763105173; cv=none; b=bI8z8Jj0UtjBDjibd7LJd/GL3zrQx+DqJpMhB2KoiobSk5GNN0KebXNk0FNIO9Zo1qjBNPOtHaFcQCFDWsdIwRpwZTe2Ek+WtrsaU3S1eJOWzUGRw/1X+9sSQ+jfQbMEXORJ0brm8xYkB+rDHq2J+AbN2z6+2IqWH03mM/GK3LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763105173; c=relaxed/simple;
	bh=/QD7YQkGGm76FxfPOQ/MDPLOwJqF5TROMM8XEWvvVvg=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=Srm9afMTT0OCPCtrSJW5UvJPP9lUxg8Hh9FuYyMAEX+MgNm8QEUrij3f1ilZ4kF1GUaHFXJEwP9IqzQmzZ4kAV4rKrgNM9TnaIbFVWieJ3vtWQA8V3WHED+gZcEqcOL4iC0Hz4jAbDgoqWx+M+mb2yZDWNCRzrkrX4L9NjcOIvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=oxKEkRmb; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 822C840534;
	Fri, 14 Nov 2025 08:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763105168; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=6hUGEM/BGb1W5SEEZAqcVzyTcpSh+/gGCSh+3OizHHw=;
	b=oxKEkRmbYMK/culjSVeZyEaYAIX4VO1Q5XfPtXCFSiALfJY3WGx3o4Svic9nm677tY3mfb
	oxnGa13IH4kQs/Z4uRx1Vp7D4fFp7eyILAFj08eOgsvoAYJwXhCGm8dfYwj7+wGmyPG6rU
	4tKY+/Xi96ne7D1DL58DOkcdK7ccLY6LmNK1/YBiUOKcYn/XKSDwDXXRVqxxI2WzukIcvH
	ruwy+I9NP9R1fx2BJxMIhaKRcIhroBYVkUXBQCN3mU9Qair5GPIALET3w7IFlcJLsGzQsz
	VltD+g2e/Y3pAbVQ0jJqxPO78A03QOekkL+D+NSJ/0e0n8tsH05IN9CZssFllw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <7ed7d24a-5395-429f-b999-1374ac910441@kernel.org>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
 <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com>
 <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
 <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org> <7ed7d24a-5395-429f-b999-1374ac910441@kernel.org>
Date: Fri, 14 Nov 2025 08:26:06 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <cab16f94-4115-a606-60b4-043b6681f7ab@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: bd44e0e79674152f86abc0aaf140d7a50ebd8472304c0986b02bf3eeef56bd689e2ef9db932cb012e0982798bdf8c2ff97fd9fdcd5369774d7fa6ead57a185aa

On Friday, November 14, 2025 08:22 CET, Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> On 14/11/2025 08:17, Dragan Simic wrote:
> > On Friday, November 14, 2025 08:10 CET, Krzysztof Kozlowski <krzk@k=
ernel.org> wrote:
> >> On 14/11/2025 06:03, FUKAUMI Naoki wrote:
> >>> On 11/12/25 09:46, Dragan Simic wrote:
> >>>> On Wednesday, November 12, 2025 00:26 CET, FUKAUMI Naoki <naoki@=
radxa.com> wrote:
> >>>>> On 11/11/25 23:33, Dragan Simic wrote:
> >>>>>> On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naoki@=
radxa.com> wrote:
> >>>>>>> On 11/6/25 02:48, Joseph Kogut wrote:
> >>>>>>>> On Wed, Nov 5, 2025 at 4:15=E2=80=AFAM FUKAUMI Naoki <naoki@=
radxa.com> wrote:
> >>>>>>>>> I'd like to clarify the situation regarding the v6 patch se=
ries I submitted.
> >>>>>>>>>
> >>>>>>>>> The original device tree work for the Radxa CM5 and IO Boar=
d was
> >>>>>>>>> authored by Joseph Kogut. I took over the responsibility of=
 getting it
> >>>>>>>>> upstreamed with his agreement.
> >>>>>>>>
> >>>>>>>> I'll confirm this. I've been in communication with Naoki. Th=
ey made a
> >>>>>>>> large number of revisions to my original patch series, which=
 I think
> >>>>>>>> have technical merit. I suggested they submit the patches th=
emselves,
> >>>>>>>> and gave them explicit permission to add my Signed-off-by an=
d CC me.
> >>>>>>>>
> >>>>>>>> I assume this was the correct way for them to continue the w=
ork I
> >>>>>>>> started, but if not, please let us know the best way to proc=
eed.
> >>>>>>>
> >>>>>>> Can anyone help us?
> >>>>>>
> >>>>>> I'm not exactly sure how to resolve the current situation, but=
 for
> >>>>>> Signed-off-by tags to be present, in this case you'd need to h=
ave
> >>>>>> Co-developed-by tags as well, because the final patch versions=
,
> >>>>>> which would be submitted by Naoki, would differ significantly =
from
> >>>>>> the versions that Joseph actively worked on, if I understood
> >>>>>> everything correctly.  Though, for Joseph's Signed-off-by tags=
 to
> >>>>>> be included there, he would also need to participate actively =
in
> >>>>>> the development of the final patch versions.
> >>>>>
> >>>>> https://www.kernel.org/doc/html/latest/process/submitting-patch=
es.html#when-to-use-acked-by-cc-and-co-developed-by
> >>>>>
> >>>>> If
> >>>>> ----
> >>>>> From: Joseph Kogut <joseph.kogut@gmail.com>
> >>>>>
> >>>>> <changelog>
> >>>>>
> >>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> >>>>> Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>> ----
> >>>>> then I can submit my patch series?
> >>>>
> >>>> Actually, the Co-developed-by tags would be pointing to Joseph
> >>>> in that case, but as I described it above, this approach basical=
ly
> >>>> cannot be used, because Joseph's original work differs a lot fro=
m
> >>>> what you'd actually submit to the mailing list(s).
> >>>>
> >>>>> Or,
> >>>>>
> >>>>>> Another option, technically a bit simpler, would be to include=
 just
> >>>>>> Originally-by tags for Joseph, which would indicate that Josep=
h gave
> >>>>>> up on the development of the patches and handed them over to N=
aoki
> >>>>>> for future development and submission to the mailing lists. Th=
ough,
> >>>>>> that would require Joseph to publicly state exactly that.
> >>>>>
> >>>>> I cannot find any documentation about "Originally-by".
> >>>>> Is this correct?
> >>>>> ----
> >>>>> <changelog>
> >>>>>
> >>>>> Originally-by: Joseph Kogut <joseph.kogut@gmail.com>
> >>
> >> There is no such tag. Don't invent tags.
> >=20
> > True, it doesn't exist officially, but it's been used fairly often.
> >=20
> >>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>> ----
> >>>>
> >>>> That approach is the only I see applicable in this case.  Howeve=
r,
> >>>> let's hear opinions from other people as well.
> >>>
> >>> I see. I want to do this approach.
> >>>
> >>> Joseph, could you give me a statement to do this?
> >>
> >> Use standard authorship and standard tags, some of which are expla=
ined
> >> in Submitting patches.
> >=20
> > Frankly, your suggestion is useless, because it doesn't explain wha=
t=20
> > to do in this particular case.
>=20
> Maybe because you did not read the doc...

I think you already know the answer: I read it multiple times and=20
used it as a reference more than once.


