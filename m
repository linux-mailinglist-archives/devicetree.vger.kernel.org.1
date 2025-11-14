Return-Path: <devicetree+bounces-238517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC1BC5BE4E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E28624E282C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9F72F4A1B;
	Fri, 14 Nov 2025 08:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="V3RCSibC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DB42EDD7D
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763107823; cv=none; b=RXcJ7C9xrIAlhkGpSfdoqDfxf364rBWlqUncxYn/rLyYERcIP6AqIi7gbjhvIAiIYo/cqjc27QoQw3O6oeg7ouRduL/Yc0hxs9Z3mBVh1EJawjXF8N5/RkboSMemOB23J5QtciQ1qCUpEywq3yGvuY+CVNdGxmOBgOXWNH2GoK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763107823; c=relaxed/simple;
	bh=XIrLfHGU7k4xEaXto2qBACjwHQDaQFNV+WCBQ22pjIg=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=sswd+CRD2ZiLix5lqKwEvaaqnwjSJdlfXwcaq6JbOSNYqUX76FSQspN1ezNkj0IMxZI4GfV/CAdmmHmozlngz2r2AKxVZQxjLXBnHKjj3BN9hJ3Cqu+PvDyCMHcmvGB5owSgMD2jaCV8Et1+ALibFtayb7tPWij1xIdAdoMzsR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=V3RCSibC; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id DD8134109E;
	Fri, 14 Nov 2025 09:10:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763107818; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=vt0Qo9sZk/FDmeHh+7424Qj+6lsfcWWz+1Vmi0HPUEs=;
	b=V3RCSibCOZLC33kLQlqWC7nQNjBoxF31MiFF8aJx1Xa/N35rGY7CtfVBEoK0B604U0L6Yo
	j2ofBF+eGe7U11lFUX55KLXwrFQinAFrc/HdIcJQ4onWUF/PEkzPyYGguBnTxQnlp4xtb8
	lwB6c0nXv/GnSkJ/GwIUEwX8DxOLXjohGV/hieX1njnQJQphndva4qN4sDWg2JRTnKrYPq
	syzj1MbYQCCQzI3JbyqWHlj7JZrlWGmKXTU+ueuTwvU3Jd751oAPmnRa1Qs22ihKKPbB74
	IHa5tTJvqWtWPp/pfCm9gZfq9BAAeD5eiT9XxEFTF4P8+28C9LYn4/O4S8shEg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <67ccca04-b59d-4e22-a0fb-22b19378420d@kernel.org>
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
 <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
 <7ed7d24a-5395-429f-b999-1374ac910441@kernel.org>
 <cab16f94-4115-a606-60b4-043b6681f7ab@manjaro.org> <67ccca04-b59d-4e22-a0fb-22b19378420d@kernel.org>
Date: Fri, 14 Nov 2025 09:10:13 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <c01b756a-73ea-3d0d-44b9-6ce8a535a103@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Friday, November 14, 2025 08:28 CET, Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> On 14/11/2025 08:26, Dragan Simic wrote:
> > On Friday, November 14, 2025 08:22 CET, Krzysztof Kozlowski <krzk@k=
ernel.org> wrote:
> >> On 14/11/2025 08:17, Dragan Simic wrote:
> >>> On Friday, November 14, 2025 08:10 CET, Krzysztof Kozlowski <krzk=
@kernel.org> wrote:
> >>>> On 14/11/2025 06:03, FUKAUMI Naoki wrote:
> >>>>> On 11/12/25 09:46, Dragan Simic wrote:
> >>>>>> On Wednesday, November 12, 2025 00:26 CET, FUKAUMI Naoki <naok=
i@radxa.com> wrote:
> >>>>>>> On 11/11/25 23:33, Dragan Simic wrote:
> >>>>>>>> On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naok=
i@radxa.com> wrote:
> >>>>>>>>> On 11/6/25 02:48, Joseph Kogut wrote:
> >>>>>>>>>> On Wed, Nov 5, 2025 at 4:15=E2=80=AFAM FUKAUMI Naoki <naok=
i@radxa.com> wrote:
> >>>>>>>>>>> I'd like to clarify the situation regarding the v6 patch =
series I submitted.
> >>>>>>>>>>>
> >>>>>>>>>>> The original device tree work for the Radxa CM5 and IO Bo=
ard was
> >>>>>>>>>>> authored by Joseph Kogut. I took over the responsibility =
of getting it
> >>>>>>>>>>> upstreamed with his agreement.
> >>>>>>>>>>
> >>>>>>>>>> I'll confirm this. I've been in communication with Naoki. =
They made a
> >>>>>>>>>> large number of revisions to my original patch series, whi=
ch I think
> >>>>>>>>>> have technical merit. I suggested they submit the patches =
themselves,
> >>>>>>>>>> and gave them explicit permission to add my Signed-off-by =
and CC me.
> >>>>>>>>>>
> >>>>>>>>>> I assume this was the correct way for them to continue the=
 work I
> >>>>>>>>>> started, but if not, please let us know the best way to pr=
oceed.
> >>>>>>>>>
> >>>>>>>>> Can anyone help us?
> >>>>>>>>
> >>>>>>>> I'm not exactly sure how to resolve the current situation, b=
ut for
> >>>>>>>> Signed-off-by tags to be present, in this case you'd need to=
 have
> >>>>>>>> Co-developed-by tags as well, because the final patch versio=
ns,
> >>>>>>>> which would be submitted by Naoki, would differ significantl=
y from
> >>>>>>>> the versions that Joseph actively worked on, if I understood
> >>>>>>>> everything correctly.  Though, for Joseph's Signed-off-by ta=
gs to
> >>>>>>>> be included there, he would also need to participate activel=
y in
> >>>>>>>> the development of the final patch versions.
> >>>>>>>
> >>>>>>> https://www.kernel.org/doc/html/latest/process/submitting-pat=
ches.html#when-to-use-acked-by-cc-and-co-developed-by
> >>>>>>>
> >>>>>>> If
> >>>>>>> ----
> >>>>>>> From: Joseph Kogut <joseph.kogut@gmail.com>
> >>>>>>>
> >>>>>>> <changelog>
> >>>>>>>
> >>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> >>>>>>> Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>>>> ----
> >>>>>>> then I can submit my patch series?
> >>>>>>
> >>>>>> Actually, the Co-developed-by tags would be pointing to Joseph
> >>>>>> in that case, but as I described it above, this approach basic=
ally
> >>>>>> cannot be used, because Joseph's original work differs a lot f=
rom
> >>>>>> what you'd actually submit to the mailing list(s).
> >>>>>>
> >>>>>>> Or,
> >>>>>>>
> >>>>>>>> Another option, technically a bit simpler, would be to inclu=
de just
> >>>>>>>> Originally-by tags for Joseph, which would indicate that Jos=
eph gave
> >>>>>>>> up on the development of the patches and handed them over to=
 Naoki
> >>>>>>>> for future development and submission to the mailing lists. =
Though,
> >>>>>>>> that would require Joseph to publicly state exactly that.
> >>>>>>>
> >>>>>>> I cannot find any documentation about "Originally-by".
> >>>>>>> Is this correct?
> >>>>>>> ----
> >>>>>>> <changelog>
> >>>>>>>
> >>>>>>> Originally-by: Joseph Kogut <joseph.kogut@gmail.com>
> >>>>
> >>>> There is no such tag. Don't invent tags.
> >>>
> >>> True, it doesn't exist officially, but it's been used fairly ofte=
n.
> >>>
> >>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>>>> ----
> >>>>>>
> >>>>>> That approach is the only I see applicable in this case.  Howe=
ver,
> >>>>>> let's hear opinions from other people as well.
> >>>>>
> >>>>> I see. I want to do this approach.
> >>>>>
> >>>>> Joseph, could you give me a statement to do this?
> >>>>
> >>>> Use standard authorship and standard tags, some of which are exp=
lained
> >>>> in Submitting patches.
> >>>
> >>> Frankly, your suggestion is useless, because it doesn't explain w=
hat=20
> >>> to do in this particular case.
> >>
> >> Maybe because you did not read the doc...
> >=20
> > I think you already know the answer: I read it multiple times and=20
> > used it as a reference more than once.
>=20
> Then if you read it and saw my objection to inventing tags, you could
> guess that only first solution for patches with changes coming from
> multiple authors is allowed. Also you would find from that doc, that
> patches which were not changed - like in this patchset - must be
> attributed to single author followed by SoB. So both cases nicely
> explained. Pretty simple once you remove the invented tag option,
> because it is really unnecessary.

Thanks, I appreciate your detailed response.

Let's have a look at the following excerpt from Documentation/
process/submitting-patches.rst:

 503 Co-developed-by: states that the patch was co-created by multiple =
developers;
 504 it is used to give attribution to co-authors (in addition to the a=
uthor
 505 attributed by the From: tag) when several people work on a single =
patch.  Since
 506 Co-developed-by: denotes authorship, every Co-developed-by: must b=
e immediately
 507 followed by a Signed-off-by: of the associated co-author.  Standar=
d sign-off
 508 procedure applies, i.e. the ordering of Signed-off-by: tags should=
 reflect the
 509 chronological history of the patch insofar as possible, regardless=
 of whether
 510 the author is attributed via From: or Co-developed-by:.  Notably, =
the last
 511 Signed-off-by: must always be that of the developer submitting the=
 patch.

Following that, you're absolutely right that the above-described
first approach is the way to go.  However, providing a Signed-off-by
actually means that, at least formally, the signer becomes legally
responsible for the code in the patch;  I'm not sure how fair is it
for someone to become responsible for something that happened long
time ago, about which they have no longer a clue about, which may
happen in case someone rescues an old, abandoned patch, and changes
or improves it a lot before submitting it to a mailing list?

Of course, what I described is more of a hypothetical case, but the
documentation should be covering such cases as well.

That's where Originally-by, I think, comes as a possible solution;
it's a bit like Acked-by, i.e. it's a "lighter" version of Signed-
off-by, in the sense of effectively not making someone legally
responsible for the code they originally authored but have had
abandoned and which someone else is now submitting, while still
providing the mandatory attribution.

I hope it makes sense.


