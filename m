Return-Path: <devicetree+bounces-238493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5057FC5BC2B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:21:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 59B2935E53A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06A4219F137;
	Fri, 14 Nov 2025 07:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="j3t1hXDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0282D73B2
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763104653; cv=none; b=U9d7diM5O/vL7VLH42f2qYxYqDNn40hvVvW7mqH2n5gUhUyniT8WsWqH0CB4C7RDgOOLihC/55A0XcZK0K90wd9WhdHB/jxXk/UzOFqKVnuK0/XZgvqwtdTNui+7RQ+zL2WwjpeXeC7VPBNQWRQyxObeFUt44DPQQ3J+3l1qtAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763104653; c=relaxed/simple;
	bh=wJ0HXiwgF3mBEqiHdeJ5Kr9v+pVAeWraFczzjPNaoFo=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=JFVEuuPBSewUQ24ABNqbRPzfeytjuMW3sjFKvHqsd/wa6R2DPteuba0PXgQ/Ku6TIDFEiXi+65phktrZoXI/lp8Cc1aDB3PaIm6/lLSw8mVSwLTRBY3nYaJUwq4iQMMjs9AK/MWD3t2AZrywI5IHgE7ghXj5eoYar1JkQ94pJ6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=j3t1hXDF; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id DA99A40ECE;
	Fri, 14 Nov 2025 08:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763104648; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=wh/tfWGf9wj+hssXa1sWxqLcBid1XiEHEgOudSny0/s=;
	b=j3t1hXDFtzAr2kAFEuanonDiddDqRMOP/fe9ZwnolyM4oZFSuStEFfn2o//qelrvUER2l9
	vOrf5yQSgSzLZ0D6CBvo5GmyBCDz9T9FXjZ70WhqGltNZEA5iSgY3doymDdVcY/HAHLB3I
	c42wifTZ0qyPF5VaUQtPHqSadj4bRGIZHeGTV/z4K3mKTSeBuO43G/0H2IAyqgV8qO3tIb
	obWgGwcoj1gCjBoZDTtWjyrK8inDzlDV9HMcpU9ZmCNcsZWTo9rcMncHlPjobyLPNCcSgF
	uVbDYVxgV2ReIhOR9Mfcoh9Izlg4QtZfycKxYSrTYRedQvbjEuAFXwbsttMcUA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
 <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com> <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
Date: Fri, 14 Nov 2025 08:17:23 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 6a02a4752b38c3d77040b1f4191339ebbc41b3df29ece2e367691666ca46428741e41a1b26bf12e3a424a3765f237d56a084dfa57b59252cf99689b6c76d9621

Hello Krzysztof,

On Friday, November 14, 2025 08:10 CET, Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> On 14/11/2025 06:03, FUKAUMI Naoki wrote:
> > On 11/12/25 09:46, Dragan Simic wrote:
> >> On Wednesday, November 12, 2025 00:26 CET, FUKAUMI Naoki <naoki@ra=
dxa.com> wrote:
> >>> On 11/11/25 23:33, Dragan Simic wrote:
> >>>> On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naoki@ra=
dxa.com> wrote:
> >>>>> On 11/6/25 02:48, Joseph Kogut wrote:
> >>>>>> On Wed, Nov 5, 2025 at 4:15=E2=80=AFAM FUKAUMI Naoki <naoki@ra=
dxa.com> wrote:
> >>>>>>> I'd like to clarify the situation regarding the v6 patch seri=
es I submitted.
> >>>>>>>
> >>>>>>> The original device tree work for the Radxa CM5 and IO Board =
was
> >>>>>>> authored by Joseph Kogut. I took over the responsibility of g=
etting it
> >>>>>>> upstreamed with his agreement.
> >>>>>>
> >>>>>> I'll confirm this. I've been in communication with Naoki. They=
 made a
> >>>>>> large number of revisions to my original patch series, which I=
 think
> >>>>>> have technical merit. I suggested they submit the patches them=
selves,
> >>>>>> and gave them explicit permission to add my Signed-off-by and =
CC me.
> >>>>>>
> >>>>>> I assume this was the correct way for them to continue the wor=
k I
> >>>>>> started, but if not, please let us know the best way to procee=
d.
> >>>>>
> >>>>> Can anyone help us?
> >>>>
> >>>> I'm not exactly sure how to resolve the current situation, but f=
or
> >>>> Signed-off-by tags to be present, in this case you'd need to hav=
e
> >>>> Co-developed-by tags as well, because the final patch versions,
> >>>> which would be submitted by Naoki, would differ significantly fr=
om
> >>>> the versions that Joseph actively worked on, if I understood
> >>>> everything correctly.  Though, for Joseph's Signed-off-by tags t=
o
> >>>> be included there, he would also need to participate actively in
> >>>> the development of the final patch versions.
> >>>
> >>> https://www.kernel.org/doc/html/latest/process/submitting-patches=
.html#when-to-use-acked-by-cc-and-co-developed-by
> >>>
> >>> If
> >>> ----
> >>> From: Joseph Kogut <joseph.kogut@gmail.com>
> >>>
> >>> <changelog>
> >>>
> >>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> >>> Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
> >>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>> ----
> >>> then I can submit my patch series?
> >>
> >> Actually, the Co-developed-by tags would be pointing to Joseph
> >> in that case, but as I described it above, this approach basically
> >> cannot be used, because Joseph's original work differs a lot from
> >> what you'd actually submit to the mailing list(s).
> >>
> >>> Or,
> >>>
> >>>> Another option, technically a bit simpler, would be to include j=
ust
> >>>> Originally-by tags for Joseph, which would indicate that Joseph =
gave
> >>>> up on the development of the patches and handed them over to Nao=
ki
> >>>> for future development and submission to the mailing lists. Thou=
gh,
> >>>> that would require Joseph to publicly state exactly that.
> >>>
> >>> I cannot find any documentation about "Originally-by".
> >>> Is this correct?
> >>> ----
> >>> <changelog>
> >>>
> >>> Originally-by: Joseph Kogut <joseph.kogut@gmail.com>
>=20
> There is no such tag. Don't invent tags.

True, it doesn't exist officially, but it's been used fairly often.

> >>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>> ----
> >>
> >> That approach is the only I see applicable in this case.  However,
> >> let's hear opinions from other people as well.
> >=20
> > I see. I want to do this approach.
> >=20
> > Joseph, could you give me a statement to do this?
>=20
> Use standard authorship and standard tags, some of which are explaine=
d
> in Submitting patches.

Frankly, your suggestion is useless, because it doesn't explain what=20
to do in this particular case.


