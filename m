Return-Path: <devicetree+bounces-1261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BAA7A592A
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 07:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AA891C209D1
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C87F328DB;
	Tue, 19 Sep 2023 05:07:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A192928E1D
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:07:41 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68A02FD
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 22:07:39 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-500bbe3ef0eso6181386e87.1
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 22:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695100057; x=1695704857; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3q8O8tWvnLQBFm13Z0K7FvFC/W1hQRUqZ5JIYPkfrQ4=;
        b=dV91rxTw/MLnB+Ine8ZmNXwK/oeYUIEZye/fSGnee46HIURUKElX/qZzwFtgWAEtc3
         b/L6bnCSMgPTLgIEgrGitLqvoHzf1WZ7yyFN4lhfw2sbCe7vYiLwugUEjSYtkS5gFWgu
         xVm39ur227FrjLx4HaNSKFrFCTfmkvsUoxox0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695100057; x=1695704857;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3q8O8tWvnLQBFm13Z0K7FvFC/W1hQRUqZ5JIYPkfrQ4=;
        b=NXoOkrrlNV6jJzn3ammIOnbSmZrviF4tP+Fho2ONbBunTCLB0vdp5pFYA1VN7EBhXM
         EQpXRdvM/xi4g8fR9UcJTcZKRnqTR9pa5CBsRobpS3N58WKTupcj6IWKH7EosP8b6LgA
         vAmsgueQvD27LKGywqCjjUid09ylZFTqJEIMzgvgvhTj9xDKsDU0l4v/nqb+kX2LAx8p
         LXP3Kp3Fn0ub8B2sixPL3U5UkQiVrVwvOn04Sm1rddfISiNQGKls42cotmPXPtAx15cN
         c5HS0oLnFct5Qr2eivraXIV7CHQvpR88kfy4XRrHwLJPaGuafKKFxjc+KgEfoFWY1PTn
         Y1/w==
X-Gm-Message-State: AOJu0YzQDEHGHX9cXKzyUlSq+ZtzF+TitpseHoxUsP9PGlUfePGs5B97
	0AGzp7/VeJMMfdrowN58UfVeJDdUIYnYnmcfv1wdNA==
X-Google-Smtp-Source: AGHT+IG7rNmlTgr6mtc+pEDDwj3hVW1OJN/J2y44JelHkWF7gUusMiA1KDRGT3JZU/TTjFtk7VjNvQSjnr+5NJPaqPw=
X-Received: by 2002:a05:6512:3b06:b0:4fe:8ba8:1a8b with SMTP id
 f6-20020a0565123b0600b004fe8ba81a8bmr650772lfv.7.1695100057325; Mon, 18 Sep
 2023 22:07:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZQH2dG+l/dONUsyi@p14s> <20230918103141.126271-1-laura.nao@collabora.com>
 <CAGXv+5Esi=G0xgkP=+Bhf39Xs3gMN1PBzarxKBKduOjgwDijAA@mail.gmail.com> <ZQj2lSl47qZQv8fX@p14s>
In-Reply-To: <ZQj2lSl47qZQv8fX@p14s>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 19 Sep 2023 13:07:26 +0800
Message-ID: <CAGXv+5Gj5rERcX6uxVUUq8beM4k4ogXnuh_86piyGw1oVrbyvg@mail.gmail.com>
Subject: Re: [PATCH v17 00/14] Add support for MT8195 SCP 2nd core
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Laura Nao <laura.nao@collabora.com>, tinghan.shen@mediatek.com, 
	angelogioacchino.delregno@collabora.com, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, andersson@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com, robh+dt@kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 9:17=E2=80=AFAM Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Mon, Sep 18, 2023 at 06:44:25PM +0800, Chen-Yu Tsai wrote:
> > On Mon, Sep 18, 2023 at 6:32=E2=80=AFPM Laura Nao <laura.nao@collabora.=
com> wrote:
> > >
> > > > Other than patch 2 and 14, I have applied this set.  The remaining =
patches will
> > > > have to be resent to Matthias.
> > >
> > > > Thanks,
> > > > Mathieu
> > >
> > > Hello,
> > >
> > > With patch 2 missing, the SCP is not probed correctly anymore on asur=
ada (MT8192) and kukui (MT8183). The mtk-scp driver relies on the existence=
 of the `cros-ec-rpmsg` node in the dt to determine if the SCP is single or=
 multicore. Without patch 2 the driver wrongly assumes the SCP on MT8192 an=
d MT8183 are multicore, leading to the following errors during initializati=
on:
> > >
> > > 10696 04:33:59.126671  <3>[   15.465714] platform 10500000.scp:cros-e=
c: invalid resource (null)
> > > 10697 04:33:59.142855  <3>[   15.478560] platform 10500000.scp:cros-e=
c: Failed to parse and map sram memory
> > > 10698 04:33:59.149650  <3>[   15.486121] mtk-scp 10500000.scp: Failed=
 to initialize core 0 rproc
> > >
> > > The issue was caught by KernelCI, complete logs can be found here:
> > > - asurada: https://storage.kernelci.org/next/master/next-20230914/arm=
64/defconfig+arm64-chromebook+videodec/gcc-10/lab-collabora/baseline-nfs-mt=
8192-asurada-spherion-r0.html
> > > - kukui: https://storage.kernelci.org/next/master/next-20230914/arm64=
/defconfig+arm64-chromebook+videodec/gcc-10/lab-collabora/baseline-nfs-mt81=
83-kukui-jacuzzi-juniper-sku16.html
> > >
> > > Reporting the issue so that patch 2 and 14 can be resent and merged s=
oon.
> >
> > This being a backward incompatible DT binding change, maybe we should r=
evert
> > the node name change. Or, the driver could simply count the number of c=
hild
> > nodes that have the "mediatek,rpmsg-name" property, which is required.
> >
>
> You have a point.  Can someone send a patch that makes this patchset back=
ward
> compatible?  Please do so as quickly as possible to that it can go in the=
 next
> merge window with the rest of this feature.  Otherwize I'll have to back =
out the
> whole thing.

I sent out a patch [1] implementing my proposed change.

ChenYu

[1] https://lore.kernel.org/linux-remoteproc/20230919050305.3817347-1-wenst=
@chromium.org/

