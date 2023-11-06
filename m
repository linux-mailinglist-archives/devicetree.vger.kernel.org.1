Return-Path: <devicetree+bounces-13946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C16D87E183F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 02:11:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E41B4B20D08
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 01:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC2239F;
	Mon,  6 Nov 2023 01:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nathanrossi.com header.i=@nathanrossi.com header.b="WTcqDeq2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F13619C
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 01:11:27 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1484D8
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 17:11:25 -0800 (PST)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5b35579f475so45853387b3.3
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 17:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nathanrossi.com; s=google; t=1699233085; x=1699837885; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRUSvooOLrEaS3K/bCvbxtLOqBiXVZE4TJF051Of1CU=;
        b=WTcqDeq2XQxfA0EHXq9QrSrVnwwf5wi8eUqywULWn8m2frZTQIHL/hPM/c2wn9Itvj
         0m5u3GXPzN5gB5nK8tj6SossFOfYbv83RRYpzzFipxtoV1HbvbhQGezmTeLkznk18ROO
         B16cF0doJZieh+E2NA0prGoqymDKNV4qNMiq4tGAVbVDkf4i6P4Nmd12jzrR85ymLffU
         iNfRr2ZLy96HWStUpPtD4WVgXdbPUrx57m7FP6//6KjtXLPeU+EdoGRUjfJC1XGOlmu4
         3GuO+dlcOiQZlC+bUe02cQePKkZT/k94LrkxKLw6uj6fPuXzdVvhXied8GlM/NO5llA7
         YN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699233085; x=1699837885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NRUSvooOLrEaS3K/bCvbxtLOqBiXVZE4TJF051Of1CU=;
        b=n9YAGOeWO80+vBWE5uVV8s5j/KRNM2idjBdTDzPusT6MAenhbcNjjwICQ8MSZ59oDT
         E8CXrnX4U39kuZUSpmn9mup4ktjBmt8V67ccqGChK8xqBWxr/f0Z3PTHjxUsnfPThENw
         8IiQbgEnUJMaD2eXe0gbdsFXFKyzwO28EcTBGTUf0r706hsBaHV7xHSA6tNDUMhprND4
         cgYbV9BkLCaSl34AUzoadKmgGGa5xLIh49YObjIzIJkiBXgammNv6OFUaRJUTDgQFx/9
         nc7U1kaQhK5ybP5zTRbyJRMGFbSt/PN0o8rJSFeePmQ6gZo/jJT2mQA8quzXR/gI1xxv
         mNwQ==
X-Gm-Message-State: AOJu0YydBFZ0tEcko3Oum90Gr4Qb618OAVhBGc1yXNpOr9Rs2+EZH7Zz
	Q/YnV6BIh/xpYNPRHsvY0wKuLN7fXRGWqaG6M2ytfA==
X-Google-Smtp-Source: AGHT+IGaue7zEx6DxRFLe0daJFClnRsOpRXVUoVGf8HcpTwhnjoIr37WLlVI2B/n8RsngZSb4xJam7YjHqBtIXNhgbU=
X-Received: by 2002:a05:690c:388:b0:5ad:7fc2:4787 with SMTP id
 bh8-20020a05690c038800b005ad7fc24787mr10618209ywb.15.1699233084969; Sun, 05
 Nov 2023 17:11:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231102082406.1555227-1-nathan@nathanrossi.com> <CAOMZO5DZ7f1dBNy3QidjjdSk9TCExHAF3ZNk1ryyvnooRmipzA@mail.gmail.com>
In-Reply-To: <CAOMZO5DZ7f1dBNy3QidjjdSk9TCExHAF3ZNk1ryyvnooRmipzA@mail.gmail.com>
From: Nathan Rossi <nathan@nathanrossi.com>
Date: Mon, 6 Nov 2023 11:11:14 +1000
Message-ID: <CA+aJhH0saBXH9zRNJLOvFG-wustQZgABggWAKpSGe8HZtN4TBQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: imx8mq: Add parkmode-disable-ss-quirk
 on DWC3
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Nathan Rossi <nathan.rossi@digi.com>, 
	Li Jun <jun.li@nxp.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 5 Nov 2023 at 08:30, Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Nathan,
>
> Thanks for your fix.
>
> On Thu, Nov 2, 2023 at 5:24=E2=80=AFAM Nathan Rossi <nathan@nathanrossi.c=
om> wrote:
> >
> > From: Nathan Rossi <nathan.rossi@digi.com>
> >
> > The i.MX8MP and i.MX8MQ devices both use the same DWC3 controller and
> > are both affected by a known issue with the controller due to specific
> > behaviour when park mode is enabled in SuperSpeed host mode operation.
> >
> > Under heavy USB traffic from multiple endpoints the controller will
> > sometimes incorrectly process transactions such that some transactions
> > are lost, or the controller may hang when processing transactions. When
> > the controller hangs it does not recover.
> >
> > This issue is documented partially within the linux-imx vendor kernel
> > which references a Synopsys STAR number 9001415732 in commits [1] and
> > additional details in [2]. Those commits provide some additional
> > controller internal implementation specifics around the incorrect
> > behaviour of the SuperSpeed host controller operation when park mode is
> > enabled.
> >
> > The summary of this issue is that the host controller can incorrectly
> > enter/exit park mode such that part of the controller is in a state
> > which behaves as if in park mode even though it is not. In this state
> > the controller incorrectly calculates the number of TRBs available whic=
h
> > results in incorrect access of the internal caches causing the overwrit=
e
> > of pending requests in the cache which should have been processed but
> > are ignored. This can cause the controller to drop the requests or hang
> > waiting for the pending state of the dropped requests.
> >
> > The workaround for this issue is to disable park mode for SuperSpeed
> > operation of the controller through the GUCTL1[17] bit. This is already
> > available as a quirk for the DWC3 controller and can be enabled via the
> > 'snps,parkmode-disable-ss-quirk' device tree property.
> >
> > It is possible to replicate this failure on an i.MX8MP EVK with a USB
> > Hub connecting 4 SuperSpeed USB flash drives. Performing continuous
> > small read operations (dd if=3D/dev/sd... of=3D/dev/null bs=3D16) on th=
e block
> > devices will result in device errors initially and will eventually
> > result in the controller hanging.
> >
> >   [13240.896936] xhci-hcd xhci-hcd.0.auto: WARN Event TRB for slot 4 ep=
 2 with no TDs queued?
> >   [13240.990708] usb 2-1.3: reset SuperSpeed USB device number 5 using =
xhci-hcd
> >   [13241.015582] sd 2:0:0:0: [sdc] tag#0 UNKNOWN(0x2003) Result: hostby=
te=3D0x07 driverbyte=3DDRIVER_OK cmd_age=3D0s
> >   [13241.025198] sd 2:0:0:0: [sdc] tag#0 CDB: opcode=3D0x28 28 00 00 00=
 03 e0 00 01 00 00
> >   [13241.032949] I/O error, dev sdc, sector 992 op 0x0:(READ) flags 0x8=
0700 phys_seg 25 prio class 2
> >   [13272.150710] usb 2-1.2: reset SuperSpeed USB device number 4 using =
xhci-hcd
> >   [13272.175469] sd 1:0:0:0: [sdb] tag#0 UNKNOWN(0x2003) Result: hostby=
te=3D0x03 driverbyte=3DDRIVER_OK cmd_age=3D31s
> >   [13272.185365] sd 1:0:0:0: [sdb] tag#0 CDB: opcode=3D0x28 28 00 00 00=
 03 e0 00 01 00 00
> >   [13272.193385] I/O error, dev sdb, sector 992 op 0x0:(READ) flags 0x8=
0700 phys_seg 18 prio class 2
> >   [13434.846556] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to =
stop endpoint command
> >   [13434.854592] xhci-hcd xhci-hcd.0.auto: xHCI host controller not res=
ponding, assume dead
> >   [13434.862553] xhci-hcd xhci-hcd.0.auto: HC died; cleaning up
> >
> > [1] https://github.com/nxp-imx/linux-imx/commit/97a5349d936b08cf301730b=
59e4e8855283f815c
> > [2] https://github.com/nxp-imx/linux-imx/commit/b4b5cbc5a12d7c3b920d1d7=
cba0ada3379e4e42b
>
> It is a shame that NXP fixed it only in their vendor tree and kept
> mainline with the issue.
>
> This deserves a Fixes tag so that it can be backported to stable kernels.

The two commits that would need to be applied against would be:

Fixes: fb8587a2c165 ("arm64: dtsi: imx8mp: add usb nodes")
Fixes: ad37549cb5dc ("arm64: dts: imx8mq: add USB nodes")

The imx8mq one is a bit tricky since that commit occurred in the v5.1
kernel which is before the parkmode support was added to the dwc3
driver (added in v5.7, but was backported to stable kernels all the
way to v5.4). However since there is no active stable 5.1-5.3 kernels
this should be fine?

If those commits are the correct Fixes target let me know and I can
resend this change as v2 with the Fixes and your reviewed-by.

Thanks,
Nathan

>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
>
> Thanks

