Return-Path: <devicetree+bounces-9520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 527987CD483
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D1E7281445
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 06:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5957B1FD3;
	Wed, 18 Oct 2023 06:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Nict6V4S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697DF1172C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 06:34:04 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD8D5EA
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697610841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PcP2NMALckWLsH7C1A6sXx1DXX5SNNtRRVq5tKElmIw=;
	b=Nict6V4SsmL/psLX2yIQ/nLTy4mtuv5dAZ3uSrM+GRZfvoHW8FzRdU8Q5IcMKw6eVor9S/
	yxT50GDwlImd9vbBDOPebq6FYbqAqTV/1U/E8TenCP9NV6SFRrfiBE5ztSFBw1y7qMpa2r
	fbc9LKqbb7H0/LhZKyYiGuQtJy+S1Fc=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-299-BDfZkphMMyeJpb_8RDja-A-1; Wed, 18 Oct 2023 02:33:57 -0400
X-MC-Unique: BDfZkphMMyeJpb_8RDja-A-1
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-521da4c99d4so4938067a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697610836; x=1698215636;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PcP2NMALckWLsH7C1A6sXx1DXX5SNNtRRVq5tKElmIw=;
        b=di2h6frmwtCoynfDZNUZ4avyvmLkBf6I+aPhn4K892K3rop8vdiYbMrUFV8OGiEsAC
         4F4EYPahe6f+FMlhnPtLrxfSf4y9a2E56iStbXh+mN3VR/3tFzUJ/0JOC8insmpeD4JL
         w6PGOFUKqgTLVUTkJDB7rE4wWPCWBi8p/qsdF20A4ICHNgqB+hZIuJvqWY8KinveCfcA
         MjPrIchVL9BmZjAQRfFm3eVAUhCjItE0ejC3qn3d1JAW85Mrj0tEqWTkRBH4vsY2jeWZ
         vO4nTPie78aGDTjs0CXibU9/ZoPUh+D79WXTsf8ETCgaXbslw/gxc02g9KcK0V5F+vpw
         xxrg==
X-Gm-Message-State: AOJu0YxEpbmljq6o0M//KE6RyI1WkCn3S3ya3NV+fJnn4/Dm+NlxM+5B
	+h1fju3RK0tVl4ekY7mymKxJeea5prN/Nz2AFKdxQzcW4KvUNi7A1BxyKbQbx9sqcs/euATqIDN
	gOnJo8jPbIkIeIFI5pprboM2dRtTGDJrjyoVZJw==
X-Received: by 2002:a50:c34f:0:b0:53e:94f8:85aa with SMTP id q15-20020a50c34f000000b0053e94f885aamr3777247edb.0.1697610836664;
        Tue, 17 Oct 2023 23:33:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEufFT6Q1oyNslsidNFZxcXIz4XQ/p1O+YBaWE1zwwDYwvxvHGDA2A2W3b8duQqGI7ZM6eNa0W8SkspW5zaBmo=
X-Received: by 2002:a50:c34f:0:b0:53e:94f8:85aa with SMTP id
 q15-20020a50c34f000000b0053e94f885aamr3777219edb.0.1697610836279; Tue, 17 Oct
 2023 23:33:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017091900.801989-1-tylor_yang@himax.corp-partner.google.com>
 <6c7d9c92-7616-4fad-806e-44302c33b63c@linaro.org> <CAD=FV=X2kZcyeyK1SBcXaViBft4F6XYtA6+JwBqJswU41V9kUQ@mail.gmail.com>
 <9e1233ce-1a6d-443d-873e-6efb3ed0207c@linaro.org>
In-Reply-To: <9e1233ce-1a6d-443d-873e-6efb3ed0207c@linaro.org>
From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Wed, 18 Oct 2023 08:33:44 +0200
Message-ID: <CAO-hwJ+GSi8FrZMtN_aqxSjGyHK2-rc9gKt4anmDg5bobtZWEw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] HID: touchscreen: add himax hid-over-spi driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Doug Anderson <dianders@chromium.org>, 
	Tylor Yang <tylor_yang@himax.corp-partner.google.com>, Tomasz Figa <tfiga@chromium.org>, 
	jingyliang@chromium.org, poyuan_chang@himax.corp-partner.google.com, 
	hbarnor@chromium.org, jikos@kernel.org, wuxy23@lenovo.com, 
	conor+dt@kernel.org, luolm1@lenovo.com, robh+dt@kernel.org, 
	dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, poyu_hung@himax.corp-partner.google.com, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Doug, Krzysztof,

On Wed, Oct 18, 2023 at 8:07=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/10/2023 23:41, Doug Anderson wrote:
> > Hi,
> >
> > On Tue, Oct 17, 2023 at 10:08=E2=80=AFAM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 17/10/2023 11:18, Tylor Yang wrote:
> >>> Hello,
> >>>
> >>> This patch series adds the driver for Himax HID-over-SPI touchscreen =
ICs.
> >>> This driver takes a position in [1], it intends to take advantage of =
SPI
> >>> transfer speed and HID interface.
> >>>
> >>
> >> Dear Google/Chromium folks,
> >>
> >> As a multi-billion company I am sure you can spare some small amount o=
f
> >> time/effort/money for internal review before using community for this
> >> purpose. I mean reviewing trivial issues, like coding style, or just
> >> running checkpatch. You know, the obvious things.
> >>
> >> There is no need to use expensive time of community reviewers to revie=
w
> >> very simple mistakes, the ones which we fixed in Linux kernel years ag=
o
> >> (also with automated tools). You can and you should do it, before
> >> submitting drivers for community review.
> >
> > We can certainly talk more about this, but a quick reply is:
> >
> > 1. If a patch really looks super bad to you then the right thing for
> > you to do is to respond to the patch with some canned response saying
> > "you didn't even do these basic things--please read the documentation
> > and work with someone at Google to get a basic review". This seems
> > like a perfectly legit response and I don't think you should do more
> > than that.

As explained below, the point here is not to do an internal review to
come up with a final patch that has been signed-off by everybody. The
point is to have a minimum of hand holding when a submission looks
terrible.

We have seen a bunch of (small) patches that have multiple
signed-off-by when they are submitted for the first time, and it's
perfectly fine. It often leads to a fast forward inclusion process.

But in that particular scenario, the patches could have looked less
rude toward the community by having a first internal swipe to say:
- please run checkpatch before submitting
- please use kernel coding style
- please do not send a 9000 loc single patch (it got slightly better
in v3, but still is way too big for anybody to make a correct review
IMO).

And if you prefer to do these things openly, I would have expected
someone from Google to have at least said that publicly.

> >
> > 2. IMO as a general rule "internal review" should be considered
> > harmful. When you're a new submitter then absolutely you should get
> > some internal review from someone who has done this before, but making
> > "internal review" a requirement for all patches leads to frustration
> > all around. It leads to people redesigning their code in response to
> > "internal review" and then getting frustrated when external
> > maintainers tell them to do something totally different. ...then
> > upstream reviewers respond to the frustration with "Why were you
> > designing your code behind closed doors? If you had done the review in
> > the public and on the mailing lists then someone could have stopped
> > you before you changed everything".
>
> No one expects forced internal review on mature contributions. We talk
> here about a first time contribution where already basic mistakes were
> made: like not using get_maintainers.pl, not using checkpatch, not using
> other tools and finally sending code which does not look like Linux
> kernel code at all.

Basically, what we want is a little bit of mentoring: "can I send this
to the community? - well, there are obvious things that will be a
problem".

>
> >
> > 3. The ChromeOS team is organized much more like the upstream
> > community than a big hierarchical corporation. Just as it's not easy
> > for you to control the behavior of other maintainers, it is not
> > trivial for one person on the team to control what others on the team
> > will do. We could make an attempt to institute rules like "all patches
> > must go through internal review before being posted", but as per #2 I
> > don't think this is a good idea. The ChromeOS team has even less
> > control over what our partners may or may not do. In general it is
> > always a struggle to get partners to even start working upstream and
> > IMO it's a win when I see a partner post a patch. We should certainly
> > help partners be successful here, but the right way to do that is by
> > offering them support.
>
> I don't know who is exactly core team, who is partner. I see
> "google.com" domain, so Google folks are responsible for not wasting
> time of the community. If Google disagrees, please change the domain so
> I will understand that and not feel like Google wants to use us all. I
> am fine and I understand if small companies or individuals make such
> mistakes. It feels like a waste of our time if Google makes such
> mistakes. Google's (Alphabet's) revenue for 2022 was 282 billions USD
> and net revenue was 59 billions USD.
>
> >
> > About the best we can do is to provide good documentation for people
> > learning how to send patches. Right now the ChromeOS kernel docs [1]
> > suggest using "patman" to send patches and I have seen many partners
> > do this. Patman will, at the very least, run checkpatch for you. Our
> > instructions also say that you should make sure you run "checkpatch"
> > yourself if you don't run patman. If people aren't following these
> > docs that we already have then there's not much we can do.
> >
> >
> > So I guess the tl;dr from my side:
> >
> > a) People should absolutely be posting on mailing lists and not (as a
> > rule) doing "internal review".
> >
> > b) If a patch looks really broken to you, don't get upset and don't
> > waste your time. Just respond and say that you'll look at it once it
> > looks better and suggest that they get a review (preferably on the
> > mailing lists!) from someone they're working with at Google.

The problem is that the form of the very first submission looked
terrible, with a single patch of 9000 changes. It was even rejected by
the mailing list.

I think I understand why this happened, but if that patch is not split
in functional simple logic blocks, there is no way we are going to
review and merge this.

Anyway, many thanks to Krzysztof for trying to review the code, which
I dropped already from v1.

Cheers,
Benjamin


