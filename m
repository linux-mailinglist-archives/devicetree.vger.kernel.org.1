Return-Path: <devicetree+bounces-2590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 620BE7AB9F2
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 21:18:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B90D32820AA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 19:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E109345F6A;
	Fri, 22 Sep 2023 19:18:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E94C41E32
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 19:18:09 +0000 (UTC)
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D06AF
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 12:18:06 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-34fa117f92bso17045ab.1
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 12:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695410286; x=1696015086; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DyNeUZ3WCAjUmVlEgm08etdm7gvqrxPANUu70oYM0rA=;
        b=NMglPl4Py9c3NZfgZlM/w1zTGY+B18ZIe8l/qDfRr2py3SupNvv4mInMlzZ3/N63Vo
         J4JrKOfmBV86gtnMiahecoyLflnee2jsV837IIL/G6VZVGOP6qkwJ052vC/XVh8KIDR8
         mVIMaJibFWaNWpqox29dB9Ue4QqnuPuGT0GzNPrHNNCCeeoaHM2VUwg57U2l06B99e9D
         6akPMDww9lGLWqYNtqYNtO8srtSaY+THXBsCMiuASy2Ek5BI+ujcx/m8I/i0dKLpXYNI
         liMb9OgbGF+QkyFW7qU5+cnY9O7+wX2RbH8ZBgd73q/Grmm4xLehmhowUfcvJKvLXRj2
         WrJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695410286; x=1696015086;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DyNeUZ3WCAjUmVlEgm08etdm7gvqrxPANUu70oYM0rA=;
        b=LNAonlqxXZgTfabxnwD165CM9N0yLlvfc4brXd01kK3O8frg1WeqI5JNtrlnmK+gZP
         CkZI82S5oOkSEnLfdXZcJhQRCyTl+kYZPHcPPwPGIt3BL2OTf9jMbATvOJns1sCUeaS0
         QLOHtK0O+idS158ybiiLnOehyzNVtVAWrFHs2HfpBHbaWXhUj7WKnJ5yhMj2pbPGlH3t
         b33GBOhzpDQ+Y5zPEBIFZ3f3O0owFVVsZWSrRRZBatEcEkl7kP3n+56GwcrEBmNE0/BK
         H/wpqR+s9kgx85XqF3t6azfzzQALYmMpLcbHn/dXq9f17lFJtbNY1FYrYofANNn+1PN0
         Vlug==
X-Gm-Message-State: AOJu0YxlKhQJ9kKyJPuzeaas7h6GwaPFr3YRCtAUvk84vCqIAZI1+fqy
	Ppl9ILrWiGQ/V5g09KI0IjVNBl026gPXLzGSrWVs
X-Google-Smtp-Source: AGHT+IEkuTA4urgmbdVNMj3HiBwCknziEPPTDCvVrqih7k4aw4VFYOBXLQyjittkWgl/cBCl6B350aKf/9x+9NjapJg=
X-Received: by 2002:a05:6e02:1a4b:b0:351:ad4:85b with SMTP id
 u11-20020a056e021a4b00b003510ad4085bmr63607ilv.4.1695410285810; Fri, 22 Sep
 2023 12:18:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230911125936.10648-1-yunfei.dong@mediatek.com>
 <20230911125936.10648-13-yunfei.dong@mediatek.com> <1df3e79b84933dda0313d0d9719220dbc06c9022.camel@collabora.com>
 <d4cedcb0-32ed-495d-a8cd-a635d5105824@xs4all.nl> <5307203d79c0d90cc742a315bb161fa796b9960f.camel@mediatek.com>
 <bafc37e8-96e8-41c0-b805-c6477f0d7c4a@xs4all.nl> <CA+ddPcN6EaFERC60_Z_-ZmWzqyUEwxiDCZwt_U6Y-gpaAu76tA@mail.gmail.com>
 <ff7aa575-c820-4dfa-853f-77438b8b149a@xs4all.nl> <b7d661637eacbda3e83d192b1126fc3970c4f50d.camel@collabora.com>
 <c3d14f64-bf04-46b9-ac7b-af7ef9014335@xs4all.nl> <00302ac675af858eb11d8398f100921af806bc30.camel@mediatek.com>
 <3e053387-4ba6-49bc-a59a-46854e0a7c26@xs4all.nl>
In-Reply-To: <3e053387-4ba6-49bc-a59a-46854e0a7c26@xs4all.nl>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Fri, 22 Sep 2023 12:17:50 -0700
Message-ID: <CA+ddPcOaCKq5Nd_3eWwJ3=oAf=5t-Z+w51NqapXN8VBuvbTw3g@mail.gmail.com>
Subject: Re: [PATCH 12/14] media: medkatek: vcodec: set secure mode to decoder driver
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: =?UTF-8?B?WXVuZmVpIERvbmcgKOiRo+S6kemjnik=?= <Yunfei.Dong@mediatek.com>, 
	"nicolas.dufresne@collabora.com" <nicolas.dufresne@collabora.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"frkoenig@chromium.org" <frkoenig@chromium.org>, "stevecho@chromium.org" <stevecho@chromium.org>, 
	"wenst@chromium.org" <wenst@chromium.org>, "nhebert@chromium.org" <nhebert@chromium.org>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "daniel@ffwll.ch" <daniel@ffwll.ch>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	"benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, 
	"hsinyi@chromium.org" <hsinyi@chromium.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, 
	"nfraprado@collabora.com" <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 1:44=E2=80=AFAM Hans Verkuil <hverkuil-cisco@xs4all=
.nl> wrote:
>
> On 22/09/2023 05:28, Yunfei Dong (=E8=91=A3=E4=BA=91=E9=A3=9E) wrote:
> > Hi Hans,
> >
> > Thanks for your help to give some good advice.
> > On Wed, 2023-09-20 at 09:20 +0200, Hans Verkuil wrote:
> >>
> >>>>>> In any case, using a control to switch to secure mode and using
> >> a control
> >>>>>> to convert a dmabuf fd to a secure handle seems a poor choice to
> >> me.
> >>>>>>
> >>>>>> I was wondering if it wouldn't be better to create a new
> >> V4L2_MEMORY_ type,
> >>>>>> e.g. V4L2_MEMORY_DMABUF_SECURE (or perhaps _DMABUF_OPTEE). That
> >> ensures that
> >>>>>> once you create buffers for the first time, the driver can
> >> switch into secure
> >>>>>> mode, and until all buffers are released again you know that the
> >> driver will
> >>>>>> stay in secure mode.
> >>>>>
> >>>>> Why do you think the control for setting secure mode is a poor
> >> choice?
> >>>>> There's various places in the driver code where functionality
> >> changes
> >>>>> based on being secure/non-secure mode, so this is very much a
> >> 'global'
> >>>>> setting for the driver. It could be inferred based off a new
> >> memory
> >>>>> type for the queues...which then sets that flag in the driver;
> >> but
> >>>>> that seems like it would be more fragile and would require
> >> checking
> >>>>> for incompatible output/capture memory types. I'm not against
> >> another
> >>>>> way of doing this; but didn't see why you think the proposed
> >> method is
> >>>>> a poor choice.
> >>>>
> >>>> I assume you are either decoding to secure memory all the time, or
> >> not
> >>>> at all. That's something you would want to select the moment you
> >> allocate
> >>>> the first buffer. Using the V4L2_MEMORY_ value would be the
> >> natural place
> >>>> for that. A control can typically be toggled at any time, and it
> >> makes
> >>>> no sense to do that for secure streaming.
> >>>>
> >>>> Related to that: if you pass a dmabuf fd you will need to check
> >> somewhere
> >>>> if the fd points to secure memory or not. You don't want to mix
> >> the two
> >>>> but you want to check that at VIDIOC_QBUF time.
> >>>>
> >>>> Note that the V4L2_MEMORY_ value is already checked in the v4l2
> >> core,
> >>>> drivers do not need to do that.
> >>>
> >>> Just to clarify a bit, and make sure I understand this too. You are
> >> proposing to
> >>> introduce something like:
> >>>
> >>>    V4L2_MEMORY_SECURE_DMABUF
> >>>
> >>> Which like V4L2_MEMORY_DMABUF is meant to import dmabuf, while
> >> telling the
> >>> driver that the memory is secure according to the definition of
> >> "secure" for the
> >>> platform its running on.
> >>>
> >>> This drivers also allocate secure SHM (a standard tee concept) and
> >> have internal
> >>> allocation for reconstruction buffer and some hw specific reference
> >> metadata. So
> >>> the idea would be that it would keep allocation using the dmabuf
> >> heap internal
> >>> APIs ? And decide which type of memory based on the memory type
> >> found in the
> >>> queue?
> >>
> >> Yes. Once you request the first buffer you basically tell the driver
> >> whether it
> >> will operate in secure or non-secure mode, and that stays that way
> >> until all
> >> buffers are freed. I think that makes sense.
> >>
> >
> > According to iommu's information, the dma operation for secure and non-
> > secure are the same, whether just need to add one memory type in v4l2
> > framework the same as V4L2_MEMORY_DMABUF? The dma operation in
> > videobuf2-dma-contig.c can use the same functions.
>
> So if I pass a non-secure dma fd to the capture queue of the codec, who
> will check that it can't write the data to that fd? Since doing so would
> expose the video. Presumably at some point the tee code will prevent that=
?
> (I sincerely hope so!)

It is entirely the job of the TEE to prevent this. Nothing in the
kernel should allow exploitation of what happens in the TEE no matter
what goes on in the kernel

>
> Having a separate V4L2_MEMORY_DMABUF_SECURE type is to indicate to the
> driver that 1) it can expect secure dmabuf fds, 2) it can configure itsel=
f
> for that (that avoids using a control to toggle between normal and secure=
 mode),
> and at VIDIOC_QBUF time it is easy for the V4L2 core to verify that the
> fd that is passed in is for secure memory. This means that mistakes by
> userspace are caught at QBUF time.
>
> Of course, this will not protect you (people can disable this check by
> recompiling the kernel), that still has to be done by the firmware, but
> it catches userspace errors early on.
>
> Also, while for this hardware the DMA operation is the same, that might
> not be the case for other hardware.

That's a really good point. So one of the other models that is used
for secure video decoding is to send the encrypted buffer into the
video decoder directly (i.e. V4L2_MEMORY_MMAP) and then also send in
all the corresponding crypto parameters (i.e. algorithm, IV,
encryption pattern, etc.). Then the video driver internally does the
decryption and decode in one operation.  That's not what we want to
use here for Mediatek; but I've done other integrations that work that
way (that was for VAAPI [1], not V4L2...but there are other ARM
implementations that do operate that way).  So if we end up requiring
V4L2_MEMORY_DMABUF_SECURE to indicate secure mode and enforce it on
output+capture, that'll close off other potential solutions in the
future.

Expanding on your point about DMA operations being different on
various hardware, that also makes me think a general check for this in
v4l2 code may also be limiting. There are various ways secure video
pipelines are done, so leaving these checks up to the individual
drivers that implement secure video decode may be more pragmatic. If
there's a generic V4L2 _CID_SECURE_MODE control, that makes it more
general for how drivers can handle secure video decode.

[1] - https://github.com/intel/libva/blob/master/va/va.h#L2177

>
> Regards,
>
>         Hans
>
> >
> > Best Regards,
> > Yunfei Dong
> >
>

