Return-Path: <devicetree+bounces-1887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A49C57A8B9D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 20:25:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FB36281897
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC1F53CD03;
	Wed, 20 Sep 2023 18:25:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED2D3CCED
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 18:25:18 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBA71D6
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:25:14 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-404f881aa48so14625e9.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695234313; x=1695839113; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VpTkUTk2dzioZKLIBTQ18yG7YDnHVOKB4Sat59PHtOs=;
        b=nVeEYHb+sNLe6KMaQ99EDehZu/e3Bz1WrJRrYpAxUbERaiJyzkimW9ncv9J5jQuF8c
         7J5ia5eIRIAyXGmUiKPBdSb43Rr7fY/Hm/tyswefQPEFwd4+CRZaJoG+RtfDfpw+64mm
         M3yYjV+9J6gI83FOUNAOiaiXt8/xFvXuVdaXJw3G6aBmZDykU/GKTHisbIsrZZr4vVCW
         qMqkxfJRheQt8g5KtUpmKPBaa34SHBMj1lezhbEW2Bs/rWEjiYhliLyMxCO9AVL6yP7R
         MOVsQzBR6GWVq6qqdSR9t4hn/Jspr5hjDEAvjlMOb2vSXzztQ/gdAbaRoClM2Cx0DVof
         JCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695234313; x=1695839113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VpTkUTk2dzioZKLIBTQ18yG7YDnHVOKB4Sat59PHtOs=;
        b=r8vS4SCVlpdqxXfeNobE+w7aaR+/9tBAQUWA7fXEsNwB9y6JuooTbolipFWYu/wBXS
         ty2Z1PvKW5iwwx03h5985/oTm46dLv8brOheYKB0Jgeo55YRvScCYejYyATgnJlTHdny
         39jNLaL2Y0un0z80WtUOHoCxdAnFKlLoutNq6jN4/Jki2q7RR2DX1rNLhM3oVORH2NsD
         2lp2Jef5mRNrIR3cGHs3kZFJ6nChxKk/HPDIgq3PFF9QhKTW1Kno5HfLe8y9IUCQvI6T
         zloFE6GhUXkN1fLNVpQQTIa8Hq62YToF3DlvGN+pmd3wRgW5lVhCQno2qSIn9E9YJbO/
         SBSg==
X-Gm-Message-State: AOJu0Ywgrg/IAZcIzq0mqmRacCg7xlJ7lvopDrX1byymhBRpF4YPSumI
	vAj0hig3c3bZVkoKTZV3fKXHhFkwVhetcnsiGtzI
X-Google-Smtp-Source: AGHT+IFSXkkSrtGDTTY0L5kfO+ZTbOYrxprKpii61xyoEksdD+ax+vTtjx8jczEku0If7HT3UPfPXkcJqmapyG/fxdw=
X-Received: by 2002:a05:600c:4e43:b0:401:c94d:d6de with SMTP id
 e3-20020a05600c4e4300b00401c94dd6demr7385wmq.2.1695234312781; Wed, 20 Sep
 2023 11:25:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919030345.8629-1-jason-jh.lin@mediatek.com> <a0b32a1d93bc9d991f77ad3408fe7b177bb32889.camel@mediatek.com>
In-Reply-To: <a0b32a1d93bc9d991f77ad3408fe7b177bb32889.camel@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 20 Sep 2023 11:25:00 -0700
Message-ID: <CA+ddPcNPeo=z42fG24uoSMJ8M0uWB-huzXVKBm-seG=7b+50JA@mail.gmail.com>
Subject: Re: [PATCH 00/10] Add mediate-drm secure flow for SVP
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	=?UTF-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>, 
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, 
	"robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	=?UTF-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>, 
	=?UTF-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>, 
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	=?UTF-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?= <Jason-ch.Chen@mediatek.com>, 
	=?UTF-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>, 
	=?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 10:26=E2=80=AFPM CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89=
) <ck.hu@mediatek.com> wrote:
>
> Hi, Jason:
>
> On Tue, 2023-09-19 at 11:03 +0800, Jason-JH.Lin wrote:
> > The patch series provides drm driver support for enabling secure
> > video
> > path (SVP) playback on MediaiTek hardware in the Linux kernel.
> >
> > Memory Definitions:
> > secure memory - Memory allocated in the TEE (Trusted Execution
> > Environment) which is inaccessible in the REE (Rich Execution
> > Environment, i.e. linux kernel/userspace).
> > secure handle - Integer value which acts as reference to 'secure
> > memory'. Used in communication between TEE and REE to reference
> > 'secure memory'.
> > secure buffer - 'secure memory' that is used to store decrypted,
> > compressed video or for other general purposes in the TEE.
> > secure surface - 'secure memory' that is used to store graphic
> > buffers.
> >
> > Memory Usage in SVP:
> > The overall flow of SVP starts with encrypted video coming in from an
> > outside source into the REE. The REE will then allocate a 'secure
> > buffer' and send the corresponding 'secure handle' along with the
> > encrypted, compressed video data to the TEE. The TEE will then
> > decrypt
> > the video and store the result in the 'secure buffer'. The REE will
> > then allocate a 'secure surface'. The REE will pass the 'secure
> > handles' for both the 'secure buffer' and 'secure surface' into the
> > TEE for video decoding. The video decoder HW will then decode the
> > contents of the 'secure buffer' and place the result in the 'secure
> > surface'. The REE will then attach the 'secure surface' to the
> > overlay
> > plane for rendering of the video.
> >
> > Everything relating to ensuring security of the actual contents of
> > the
> > 'secure buffer' and 'secure surface' is out of scope for the REE and
> > is the responsibility of the TEE.
> >
> > DRM driver handles allocation of gem objects that are backed by a
> > 'secure
> > surface' and for displaying a 'secure surface' on the overlay plane.
> > This introduces a new flag for object creation called
> > DRM_MTK_GEM_CREATE_ENCRYPTED which indicates it should be a 'secure
> > surface'. All changes here are in MediaTek specific code.
>
> How do you define SVP? Is there standard requirement we could refer to?
> If the secure video buffer is read by display hardware and output to
> HDMI without any protection and user could capture HDMI signal, is this
> secure?

SVP (Secure Video Path) is essentially the video being completed
isolated from the kernel/userspace. The specific requirements for it
vary between implementations.

Regarding HDMI/HDCP output; it's the responsibility of the TEE to
enforce that. Nothing on the kernel/userspace side needs to be
concerned about enforcing HDCP. The only thing userspace is involved
in there is actually turning on HDCP via the kernel drivers; and then
the TEE ensures that it is active if the policy for the encrypted
content requires it.
>
> Regards,
> CK
>
> >
> > ---
> > Based on 2 series:
> > [1] Add CMDQ secure driver for SVP
> > -
> > https://urldefense.com/v3/__https://patchwork.kernel.org/project/linux-=
mediatek/list/?series=3D785332__;!!CTRNKA9wMg0ARbw!mPocbQwZ4-25DmidvAgd9K5e=
XjNEhSyIKpvvYHPpdrq2PgS-hkYyHohzDvoJydD45UZp5JvY9DuDVFj1ltVnhGY$
> >
> >
> > [2] dma-buf: heaps: Add MediaTek secure heap
> > -
> > https://urldefense.com/v3/__https://patchwork.kernel.org/project/linux-=
mediatek/list/?series=3D782776__;!!CTRNKA9wMg0ARbw!mPocbQwZ4-25DmidvAgd9K5e=
XjNEhSyIKpvvYHPpdrq2PgS-hkYyHohzDvoJydD45UZp5JvY9DuDVFj10sD4kHE$
> >
> > ---
> >
> > CK Hu (1):
> >   drm/mediatek: Add interface to allocate MediaTek GEM buffer.
> >
> > Jason-JH.Lin (9):
> >   drm/mediatek/uapi: Add DRM_MTK_GEM_CREATED_ENCRYPTTED flag
> >   drm/mediatek: Add secure buffer control flow to mtk_drm_gem
> >   drm/mediatek: Add secure identify flag and funcution to
> > mtk_drm_plane
> >   drm/mediatek: Add mtk_ddp_sec_write to config secure buffer info
> >   drm/mediatek: Add get_sec_port interface to mtk_ddp_comp
> >   drm/mediatek: Add secure layer config support for ovl
> >   drm/mediatek: Add secure layer config support for ovl_adaptor
> >   drm/mediatek: Add secure flow support to mediatek-drm
> >   arm64: dts: mt8195-cherry: Add secure mbox settings for vdosys
> >
> >  .../boot/dts/mediatek/mt8195-cherry.dtsi      |  10 +
> >  drivers/gpu/drm/mediatek/mtk_disp_drv.h       |   3 +
> >  drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  31 +-
> >  .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   |  15 +
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c       | 271
> > +++++++++++++++++-
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.h       |   1 +
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |  14 +
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  13 +
> >  drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  16 +-
> >  drivers/gpu/drm/mediatek/mtk_drm_gem.c        | 121 ++++++++
> >  drivers/gpu/drm/mediatek/mtk_drm_gem.h        |  16 ++
> >  drivers/gpu/drm/mediatek/mtk_drm_plane.c      |   7 +
> >  drivers/gpu/drm/mediatek/mtk_drm_plane.h      |   2 +
> >  drivers/gpu/drm/mediatek/mtk_mdp_rdma.c       |  11 +-
> >  drivers/gpu/drm/mediatek/mtk_mdp_rdma.h       |   2 +
> >  include/uapi/drm/mediatek_drm.h               |  59 ++++
> >  16 files changed, 575 insertions(+), 17 deletions(-)
> >  create mode 100644 include/uapi/drm/mediatek_drm.h
> >

