Return-Path: <devicetree+bounces-2161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B087A9C9F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:22:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D9A18B23E11
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A0D4BDAC;
	Thu, 21 Sep 2023 18:11:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EF04B208
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:15 +0000 (UTC)
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DAA0A5463
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:58:53 -0700 (PDT)
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-34fa117f92bso13215ab.1
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695319133; x=1695923933; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f9SVUFZn2boEnF5GwKRdG3SSt8HtSOHZO4l12UhiSWo=;
        b=McMMAWGfHhqPUhzXpT7VHiRtKNmFAh+12xLXkk5gZY39LZlcGl+G+OiI5SUfm8i0Wh
         0dKn/HaR6jiMhBQOqve2b+V63UtmkR1KaFSeum9XR2V9pu2wK4JL8Q/tnBBV+cgP4fF1
         YD6MX95A5zylakzf2NmBOHb0wsdZ1zsyK8mha5CzUgMhrTYlcjph9v38hXgyY260ehSh
         Q/qThmz0mB7BXSHWrulsVUAThft4cjZ04gZfdTtSiGuDPS8PVzUkEGU2RTbfvXQyz8jS
         3h4G4d600YDR+8AqrDZ+ucpypXYfkU7Eqfbt9OLaOsnnsumJn3i7hKjlOHWdvlwhIWOT
         zPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695319133; x=1695923933;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f9SVUFZn2boEnF5GwKRdG3SSt8HtSOHZO4l12UhiSWo=;
        b=TuSVHHr0SlmbN7c/78/jm+HdM5r6A5BZHT1tE9Ac0sYp9TryKU5qKSNmnYuyxdpqL+
         fUoccwJJ3Rh8RU2P74Nc8FgEivSzmPmVIDmAq7QKV1oNkukYDGajDqQ49FcszB7Y6l8v
         S2gmX/MQoRbiAuzeuQyXBiE2LhxMpCi7x8g2ze3gfedxc6YGgV3+V1yk3T6lIJU7HJon
         2vmufMhonvX8vtwV7pd7ZCl6VhszDZtXj1z6SIUaU87XqXMRiK/vHYg0wmrEkTl4a8+C
         6K4At+aR72+ByrL7G5WkpFZ6JPnR6KyOsuj+ht+usPyBEedjkzrqVGa37xOQewDVwKbV
         GyhQ==
X-Gm-Message-State: AOJu0Yx7hwc8akSVPlBN1T9IkudD81lGkoPLjNKEu0lM+COg/vUp8zuq
	mVbth7l+q9dhJ3aaK9MvHYBtqOpQbD9MgsGLl8lF
X-Google-Smtp-Source: AGHT+IHn3jby0f9lrLxQXMCYIcclXtaVrAkIXpzr0C33TkWnHakXxvV7Um0L9DLm0Wo7YYavt5pjNW6jZDyfCtBiki8=
X-Received: by 2002:a05:6e02:156d:b0:346:1ca6:c27a with SMTP id
 k13-20020a056e02156d00b003461ca6c27amr292898ilu.13.1695319132831; Thu, 21 Sep
 2023 10:58:52 -0700 (PDT)
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
 <c3d14f64-bf04-46b9-ac7b-af7ef9014335@xs4all.nl> <CA+ddPcPbox=mknpmDkwfYTfDMca49wU10SNF3mJspYu=5T64FQ@mail.gmail.com>
 <c7cd83c49a9226e72c272365653dc8b998b6adcb.camel@collabora.com>
In-Reply-To: <c7cd83c49a9226e72c272365653dc8b998b6adcb.camel@collabora.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Thu, 21 Sep 2023 10:58:38 -0700
Message-ID: <CA+ddPcPm4aZ9LKu1D1rO3qguPN7E7jbnXTOqdjYCtDm7sk4nzw@mail.gmail.com>
Subject: Re: [PATCH 12/14] media: medkatek: vcodec: set secure mode to decoder driver
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	=?UTF-8?B?WXVuZmVpIERvbmcgKOiRo+S6kemjnik=?= <Yunfei.Dong@mediatek.com>, 
	"nhebert@chromium.org" <nhebert@chromium.org>, 
	"benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, 
	"nfraprado@collabora.com" <nfraprado@collabora.com>, 
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"frkoenig@chromium.org" <frkoenig@chromium.org>, "stevecho@chromium.org" <stevecho@chromium.org>, 
	"wenst@chromium.org" <wenst@chromium.org>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "daniel@ffwll.ch" <daniel@ffwll.ch>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	"hsinyi@chromium.org" <hsinyi@chromium.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 8:46=E2=80=AFAM Nicolas Dufresne
<nicolas.dufresne@collabora.com> wrote:
>
> Le mercredi 20 septembre 2023 =C3=A0 11:20 -0700, Jeffrey Kardatzke a =C3=
=A9crit :
> > > >
> > > > Also, regarding MTK, these are stateless decoders. I think it would=
 be nice to
> > > > show use example code that can properly parse the un-encrypted head=
er, pass the
> > > > data to the decryptor and decode. There is a bit of mechanic in the=
re that lacks
> > > > clarification, a reference implementation would clearly help. Final=
ly, does this
> > > > platform offers some clearkey implementation (or other alternative)=
 so we can do
> > > > validation and regression testing? It would be very unfortunate to =
add feature
> > > > upstream that can only be tested by proprietary CDM software.
> > >
> >
> > It would be possible to use this with clearkey w/ some additional work
> > on our end. If this is then part of the public ChromiumOS build, would
> > that be satisfactory? (the TEE would have some binary blob components
> > like firmware does though)
>
> From my point of view, this would fully cover my concern. To clarify this
> concern, the  decryption into secure memory currently only ever take plac=
e in
> proprietary code that implements the protection (Widewine CDM). With clea=
r key,
> we can have an open source CDM (made for testing purpose) so that we don'=
t have
> to have hidden code to test the entire pipeline. So appart from the TEE
> firmware, which is just a firmware like all the others, we could have ope=
n
> source tests in kernelCI and other CI, and we could extend these test to
> eventually support other vendors.
>
> Note that currently, with other proposal, one could allocate and fill a n=
ormal
> buffer, and "secure" that buffer to test the CODECs and display, but on t=
his
> specific architecture, with the limitation on the number of secure region=
s, this
> feature isn't available.
>
> Alternatives to this end-to-end solution, we could consider a TA (Trusted
> Application) that simply copy data from a untrusted chunk of memory into =
a
> trusted chunk of memory. That seems like a cross-platform solution. It wo=
uld be
> even better if this get standardized in TEEs for course (or at least requ=
ired
> with all secure memory implementation). Then copying from untrusted to tr=
usted
> could easily become an ioctl generic to all TEE drivers. That to me would=
 be
> equally acceptable, and perhaps easier to use.
>
> Nicolas

It's very likely for the clearkey implementation that I would just
have it copying the data from a non-secure to secure buffer in a TA.
We would never do that in production of course, but for testing images
that would suffice.

