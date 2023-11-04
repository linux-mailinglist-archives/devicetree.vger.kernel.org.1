Return-Path: <devicetree+bounces-13878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 074837E1164
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 23:30:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5D9F1C2092A
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 22:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC82111BB;
	Sat,  4 Nov 2023 22:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aX5R7945"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AA4262AB
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 22:30:24 +0000 (UTC)
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFBFDBD;
	Sat,  4 Nov 2023 15:30:23 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2809748bdb0so616862a91.0;
        Sat, 04 Nov 2023 15:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699137023; x=1699741823; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4mVaq6TgQahOJFgLhYpGrghxV+5IsAYvGj5HshVx0OY=;
        b=aX5R7945xZIzt/JzZRhUfeLecg8PTbzuEozvlzhh50PPJsjb46kR/Gqvt27SAUrZkq
         5dKQTPt9x4veop+4OYbCz4cRdt6cpYs9xLeTqZMI4MnFowkPHO5yveXTAhrAm19KmULx
         +IHe3GA4z6KDocgKie+AFNADodknYrxldQsip8rnidjTZKkrqWKZl2RnUsyUYd3raRxy
         +UfySibSserjonRKfPz0W7fWF6cnd5fJERoDVHwUtQJOhBa9Ql03JgDalsdlWmGsM3Od
         RH3vuQAfxlJiiMsb1qRp8eIYdQJQm26UNIZsf5aen1Qby2Bqa5I6ekptVw/sNDBhVsCt
         +xUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699137023; x=1699741823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mVaq6TgQahOJFgLhYpGrghxV+5IsAYvGj5HshVx0OY=;
        b=r8PzbdcngID9WDsH5dya1qmQxctss1ZWnhfKlDjNtxXqzgD98t6lGDA/pKZR5v5MYN
         nERLmTMQSECnA9QpQVoIYoxHjC0/TT+LmOP4+RYSIwJbj9UZq/eg9EIVErlBp59CXSPU
         /22aRF2stJdHxz/KGPskBfhAgQNFYin1+UVMxyUpK5fDBO2TNgRks8rSEGuMyeP34Z3D
         754fRn7xvQKZnQaqbRW5p3s58kY5VKyVCoIEuZ4OBtugLDno0wDIGkbiOKgAdolptNFY
         9nL9oRgGlPjqBIZ3I53Bf0ziX2xIfjEIoV/NcXyYS2tACy4L8LFaECVR04/PPoDZB5zx
         skkw==
X-Gm-Message-State: AOJu0YzSyTUH8DYv1Hu1YQpg+SIeG62nrZyG2tG48EN/P6HAwjQfz9kM
	ulhD35e0zzik2EcrmsAXUdd8gRnQh6/3EwY8CCM=
X-Google-Smtp-Source: AGHT+IEh4OoZn1+TD813n3TYc8D/+oq3FdDSIPZ1uVGND9+eVILZnglEna98j5Smf9dbAnOMjuRxyYuOlHJFqZzov60=
X-Received: by 2002:a17:90b:3597:b0:274:60c7:e15a with SMTP id
 mm23-20020a17090b359700b0027460c7e15amr24795883pjb.4.1699137023260; Sat, 04
 Nov 2023 15:30:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231102082406.1555227-1-nathan@nathanrossi.com>
In-Reply-To: <20231102082406.1555227-1-nathan@nathanrossi.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 4 Nov 2023 19:30:11 -0300
Message-ID: <CAOMZO5DZ7f1dBNy3QidjjdSk9TCExHAF3ZNk1ryyvnooRmipzA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: imx8mq: Add parkmode-disable-ss-quirk
 on DWC3
To: Nathan Rossi <nathan@nathanrossi.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Nathan Rossi <nathan.rossi@digi.com>, 
	Li Jun <jun.li@nxp.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nathan,

Thanks for your fix.

On Thu, Nov 2, 2023 at 5:24=E2=80=AFAM Nathan Rossi <nathan@nathanrossi.com=
> wrote:
>
> From: Nathan Rossi <nathan.rossi@digi.com>
>
> The i.MX8MP and i.MX8MQ devices both use the same DWC3 controller and
> are both affected by a known issue with the controller due to specific
> behaviour when park mode is enabled in SuperSpeed host mode operation.
>
> Under heavy USB traffic from multiple endpoints the controller will
> sometimes incorrectly process transactions such that some transactions
> are lost, or the controller may hang when processing transactions. When
> the controller hangs it does not recover.
>
> This issue is documented partially within the linux-imx vendor kernel
> which references a Synopsys STAR number 9001415732 in commits [1] and
> additional details in [2]. Those commits provide some additional
> controller internal implementation specifics around the incorrect
> behaviour of the SuperSpeed host controller operation when park mode is
> enabled.
>
> The summary of this issue is that the host controller can incorrectly
> enter/exit park mode such that part of the controller is in a state
> which behaves as if in park mode even though it is not. In this state
> the controller incorrectly calculates the number of TRBs available which
> results in incorrect access of the internal caches causing the overwrite
> of pending requests in the cache which should have been processed but
> are ignored. This can cause the controller to drop the requests or hang
> waiting for the pending state of the dropped requests.
>
> The workaround for this issue is to disable park mode for SuperSpeed
> operation of the controller through the GUCTL1[17] bit. This is already
> available as a quirk for the DWC3 controller and can be enabled via the
> 'snps,parkmode-disable-ss-quirk' device tree property.
>
> It is possible to replicate this failure on an i.MX8MP EVK with a USB
> Hub connecting 4 SuperSpeed USB flash drives. Performing continuous
> small read operations (dd if=3D/dev/sd... of=3D/dev/null bs=3D16) on the =
block
> devices will result in device errors initially and will eventually
> result in the controller hanging.
>
>   [13240.896936] xhci-hcd xhci-hcd.0.auto: WARN Event TRB for slot 4 ep 2=
 with no TDs queued?
>   [13240.990708] usb 2-1.3: reset SuperSpeed USB device number 5 using xh=
ci-hcd
>   [13241.015582] sd 2:0:0:0: [sdc] tag#0 UNKNOWN(0x2003) Result: hostbyte=
=3D0x07 driverbyte=3DDRIVER_OK cmd_age=3D0s
>   [13241.025198] sd 2:0:0:0: [sdc] tag#0 CDB: opcode=3D0x28 28 00 00 00 0=
3 e0 00 01 00 00
>   [13241.032949] I/O error, dev sdc, sector 992 op 0x0:(READ) flags 0x807=
00 phys_seg 25 prio class 2
>   [13272.150710] usb 2-1.2: reset SuperSpeed USB device number 4 using xh=
ci-hcd
>   [13272.175469] sd 1:0:0:0: [sdb] tag#0 UNKNOWN(0x2003) Result: hostbyte=
=3D0x03 driverbyte=3DDRIVER_OK cmd_age=3D31s
>   [13272.185365] sd 1:0:0:0: [sdb] tag#0 CDB: opcode=3D0x28 28 00 00 00 0=
3 e0 00 01 00 00
>   [13272.193385] I/O error, dev sdb, sector 992 op 0x0:(READ) flags 0x807=
00 phys_seg 18 prio class 2
>   [13434.846556] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to st=
op endpoint command
>   [13434.854592] xhci-hcd xhci-hcd.0.auto: xHCI host controller not respo=
nding, assume dead
>   [13434.862553] xhci-hcd xhci-hcd.0.auto: HC died; cleaning up
>
> [1] https://github.com/nxp-imx/linux-imx/commit/97a5349d936b08cf301730b59=
e4e8855283f815c
> [2] https://github.com/nxp-imx/linux-imx/commit/b4b5cbc5a12d7c3b920d1d7cb=
a0ada3379e4e42b

It is a shame that NXP fixed it only in their vendor tree and kept
mainline with the issue.

This deserves a Fixes tag so that it can be backported to stable kernels.

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thanks

