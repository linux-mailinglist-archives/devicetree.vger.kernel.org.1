Return-Path: <devicetree+bounces-1541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 880D47A6F9A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:37:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A774F1C20446
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB37D38BBE;
	Tue, 19 Sep 2023 23:37:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521D838BBC
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:37:48 +0000 (UTC)
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B425DA4
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 16:37:46 -0700 (PDT)
Received: by mail-il1-x12f.google.com with SMTP id e9e14a558f8ab-34fa117f92bso28215ab.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 16:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695166666; x=1695771466; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3CBBvqgdHlaE7qrp16rL/k+TOy6ZHc5Otw9KkoIR3N0=;
        b=Q1aksuYNlRwaM4yy+9w1sdYD53zs4UZh3yjBNN0cvcaJmDWFUKsi+KI+ghx1oGQSDL
         q7nIzt9upitYoZa4bMVyWhl9bp1IBk/7aWC9Uc9TObL1LGNkKxFAOFKLoYFSX0Kb54HV
         kgGFdDVyITabLDXcyCMFDaJotlwAH1l7Yp9eEIv7njPkNYKl+99i+R+zIJTyLLqdgR4/
         DqVzlmePm/VRtiIB9yj+Epu9nnLQN9CXGCfM/aG7XzJ62R6+31YDpQFkYGI2HhCI9Usv
         ki5ix/kJXghHFbDh+4Hq+Eyd38mVymyXphdy7G2mfrvuaZoGosaXqFLpf+rP1NYnb4jb
         QCeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695166666; x=1695771466;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3CBBvqgdHlaE7qrp16rL/k+TOy6ZHc5Otw9KkoIR3N0=;
        b=ZEReqVOGgRO/VjJF29cymfv5jwREhD2sVXED+LSJqe5pl3ANmZz2SxeW29jeZEEbCg
         UJ6NpO6MMVjpN0mXCGHa3tnrJijncN6qXM4fkAtWPpRsgjr3p+XH4aRPtLBvzjB9fwu1
         w/OheCXacogMBAYU1hJvzXLpPZNz2Y7fA6L+hZtcEriykS/5K4Dk68mfaQUqNANeuKXP
         tq4rSz1V75TI1aHYpY6N51FqSD27e6HtOu7i3e4BZcO303QU6+I0Uf42D80P3qLx4kzK
         SrVpY2F+GNAKWXYZSM+HJlWRrxXI7choEUhuECmt3+q3IhVDXFTwyUbnm4KJbP2HQ1HD
         wUpQ==
X-Gm-Message-State: AOJu0Yxxp2ECV/R63yWvFI2F+hoy9DpoG/wvCL50skzH34QdaGst+CBt
	qSF9in31tsG3uTiUIUMYviXbOzQTFhxI6m5RdtnL
X-Google-Smtp-Source: AGHT+IEkj4ZxRK6CIppUtSGaqRy1AaoOr04YDLb3I3H35DnusOgqyPctNPG82NvpQQR2jBPAph/dtWVJ+aWn6Xi3hns=
X-Received: by 2002:a92:c56b:0:b0:34f:5587:4353 with SMTP id
 b11-20020a92c56b000000b0034f55874353mr45782ilj.25.1695166665921; Tue, 19 Sep
 2023 16:37:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919030345.8629-1-jason-jh.lin@mediatek.com> <CAPj87rOHctwHJM-7HiQpt8Q0b09x0WWw_T4XsL0qT=dS+XzyZQ@mail.gmail.com>
In-Reply-To: <CAPj87rOHctwHJM-7HiQpt8Q0b09x0WWw_T4XsL0qT=dS+XzyZQ@mail.gmail.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Tue, 19 Sep 2023 16:37:30 -0700
Message-ID: <CA+ddPcMw0K-zkjW5LEHA4B81E25_HSVHVnEF67Lp0jGGNNUAxQ@mail.gmail.com>
Subject: Re: [PATCH 00/10] Add mediate-drm secure flow for SVP
To: Daniel Stone <daniel@fooishbar.org>
Cc: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Project_Global_Chrome_Upstream_Group@mediatek.com, 
	Singo Chang <singo.chang@mediatek.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
	Jason-ch Chen <jason-ch.chen@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, 
	linux-mediatek@lists.infradead.org, Shawn Sung <shawn.sung@mediatek.com>, 
	Johnson Wang <johnson.wang@mediatek.com>, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org, 
	Nicolas Dufresne <nicolas.dufresne@collabora.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 18, 2023 at 11:33=E2=80=AFPM Daniel Stone <daniel@fooishbar.org=
> wrote:
>
> Hi Jason, CK,
>
> On Tue, 19 Sept 2023 at 04:04, Jason-JH.Lin <jason-jh.lin@mediatek.com> w=
rote:
> > The patch series provides drm driver support for enabling secure video
> > path (SVP) playback on MediaiTek hardware in the Linux kernel.
> >
> > [...]
> >
> > Memory Usage in SVP:
> > The overall flow of SVP starts with encrypted video coming in from an
> > outside source into the REE. The REE will then allocate a 'secure
> > buffer' and send the corresponding 'secure handle' along with the
> > encrypted, compressed video data to the TEE. The TEE will then decrypt
> > the video and store the result in the 'secure buffer'. The REE will
> > then allocate a 'secure surface'. The REE will pass the 'secure
> > handles' for both the 'secure buffer' and 'secure surface' into the
> > TEE for video decoding. The video decoder HW will then decode the
> > contents of the 'secure buffer' and place the result in the 'secure
> > surface'. The REE will then attach the 'secure surface' to the overlay
> > plane for rendering of the video.
> >
> > Everything relating to ensuring security of the actual contents of the
> > 'secure buffer' and 'secure surface' is out of scope for the REE and
> > is the responsibility of the TEE.
> >
> > DRM driver handles allocation of gem objects that are backed by a 'secu=
re
> > surface' and for displaying a 'secure surface' on the overlay plane.
> > This introduces a new flag for object creation called
> > DRM_MTK_GEM_CREATE_ENCRYPTED which indicates it should be a 'secure
> > surface'. All changes here are in MediaTek specific code.
>
> To be honest, it seems strange that DRM is being used as the allocator
> for buffers which will mostly be used by codec hardware which is not
> mentioned here. I can understand that minigbm and gbm_gralloc make
> this easy to implement, but it's not really right to add this all to
> mtk-drm just to support some codec features.
The buffers allocated are used as the output for secure video decoding
and then rendering as well. So they aren't just used by the codec HW,
they're also used for display on the overlay plane.

And I'm the user of all the secure video path patches Mediatek has
been posting, this is for secure video playback on ChromeOS ARM
devices. (just mentioning so you know my context in this all)
>
> NXP posted a patchset a while ago to add secure-memory support to
> dma-heaps[0]. This would be much cleaner (e.g. avoiding strcmp on
> allocating name, avoiding mtk-drm being a render node when it can't
> render) I think, and also allow common secure-path semantics between
> different vendors.
>
Yes, I saw that now. I agree that having a common secure-path solution
is preferable. But the two issues you mention with this patchset
aren't directly related to the dma-buf heap implementation I think.

The ugly strcmp can be removed from this patchset...because it doesn't
actually need to check the heap name, it only ever invokes
mtk_drm_gem_create_from_heap for secure memory allocations...so that
should just be renamed mtk_drm_gem_create_from_secure_heap. The RENDER
flag can also be removed. IIUC, that's an artifact of how ChromeOS is
doing the allocations and that it's performing it on a render node.
That can be removed from this patchset and we can address that problem
on the ChromeOS side instead.

Going back to the NXP implementation...the main difference between
that one and what Mediatek is proposing (aside from all their vendor
specific naming of things) is that the NXP patchset does all the
allocation in the kernel itself and the kernel is handing out physical
addresses from the reserved range w/ no virtual address mapping. I
think that would mean you have to always allocate contiguous blocks,
which would be prone to fragmentation.  In the Mediatek
implementation, they are doing the allocations from the heap in the
TEE, so they can deal with physical memory fragmentation through
virtual addresses since they can do SG lists to allocate from
fragmented memory in the TEE.




> Having common secure-path semantics between different vendors would be
> very helpful, because the first question when we add new uAPI is
> 'where is the open-source userspace?'. If there is at least a common
> interface through e.g. dma-heaps, then we could have some standard
> cross-vendor userspace code which would work well with the standard
> interface.
>
Thanks for your feedback, I definitely want to work to get this to
something more usable by a wider range.

> Cheers,
> Daniel
>
> [0]: https://lore.kernel.org/lkml/20220805135330.970-2-olivier.masse@nxp.=
com/

