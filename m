Return-Path: <devicetree+bounces-239227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0553FC62C23
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:40:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5C5F535684A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015CA31DDBB;
	Mon, 17 Nov 2025 07:36:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091CD31A54A
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 07:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763364989; cv=none; b=UQyX98S853bcycQAjLsG/Z87YVmx/DjtYa/o7ifHkSaS5MUKdcHUqoi3cJduxsWKvgpy409m3FxKbFdZaSyCPT3yuN8FeQtCDOO4UWg5E9QncvFVLtRZztV5voWQ4ROtF4ArlA+7DA3yReQxVK4Ry/VRfQ9PAxREXQ6SUFpP03Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763364989; c=relaxed/simple;
	bh=sEIC12gY8xGmvPgbsyhw3/r0/GkwDMXGYP/Oy3YUG/c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S5NhcboHaILNguM/8pjEaqRTGQsnkxM3E1Dfsig4MJLdZbyNqS6BmoWiPkGJhleatkLhaAR7BZdYClmxHVXGsYT7VaWK7yLhmRI8NaC18BuAM5wR5EbLYFAzAATU1jlLdSdyCj0lo3tWn4FJXiXC3PIWC/tN00ffjYczFFDar30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-786635a8ce4so32156037b3.2
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 23:36:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763364987; x=1763969787;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VhKCAerPq2QkTfQSFkO+3MqZuYdSjTftIor4Yigrops=;
        b=n3WhhqgansJkKe66KmSFteddA6l4IBpoXeZPApxAMVXgxbr7fh8z/iCCBR0qCR7i34
         WcgCcBvcJCdW+EiNiqemtcHyIm6XYe3tlxftEI2WdrSbO7tck82hV66uk6/ClABWJe/I
         42O7uBEKL/0Gf0T51sY0QsNiyksLIPmYYOmcl02FtNQr1rdM6z+MDlLvea3cBBCYUffK
         9cvxEszcQkzAAOM1butNbgRu1lgbYAaJGUWWpZ4J29pggD30r4RQYy7AbUeca5ra4V6s
         WY2poqjChCAZR9+q6EqAFF92hlhClxjXOe5N5SqPVMXmS6GFxEwJ1s7sWaRvmQjMGZL9
         Yr9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVm6SKkC+nxlj4MQoozTILffUtqamFBf7PxpEUQX1tvzjPU8zOZbPutsDSu3GjHA6GxUzca5VuG7w4U@vger.kernel.org
X-Gm-Message-State: AOJu0YwbctpMiKGsNdQVcbrZ3PkjMnD5/lrU3Y+KUuFT+3L4JfkDJ7hQ
	h8MXPqkokW1YdELEgR+IKxy2JzOk2K4qAT3Su6IoL1ERxhW/zVfmJ05bbTZI2g==
X-Gm-Gg: ASbGnct2NO32dikA1fb7Cqb2DawV6SeXWkqzccd/TmzeaTl3qPflUyBr/Gsjb+gUTZ3
	cGxE/lGMmkxBnx2oUylwvDzvBOhbZ7CXIQtEYL+4DUDvT0Cd7X79NPaqp/yI14aasZ0QY0eLeUY
	A0n2fog7L+9+bXT9zV1VvRPLnr+ohdshiVhxjIUfdAdDVmY7aou1I0uEYUE0gjq+Jeo++5jB5DU
	IqhEwGOkJAfMR4mqxUdl7FWoSBIUJSedxm06dMNhtdW3Byt/kINmyLV8FX5XLsmmTFOp9Cfe8cH
	P5c/C48ffxbIiUs8rMc7SPbBQFVnV9g8KzLoFxgiJUv3XI6e8EVNtwXCsZXN3N5yzHSKFMW7DdY
	SYqbgJdyzDmZZx/Lm2uOyFJqE0d8ELB1Ep7sUUEuTEtgqRw93gtUjfi7JkhwohsAYQVPZgG+biH
	x/uBZ1umtshuUwVeEttCAbPyqBpusSL6+g6ilaWPRHEA==
X-Google-Smtp-Source: AGHT+IFMWQgmwNaFi5vG49IA0QqgIU9N0XeiL8D8KwbElQe6jlh8s1Epu4ZZ6WeMvddaeDwYx/3igw==
X-Received: by 2002:a05:690e:1513:b0:641:f5bc:697a with SMTP id 956f58d0204a3-641f5bc7442mr5634852d50.70.1763364986526;
        Sun, 16 Nov 2025 23:36:26 -0800 (PST)
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com. [74.125.224.41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7882214a45fsm39504207b3.41.2025.11.16.23.36.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Nov 2025 23:36:25 -0800 (PST)
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-63f95dc176fso3341090d50.1
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 23:36:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX/zyaRFbfYk6Dz8AJDlrziI98dvAHnxfvpJn7yzS6oKanN8DS8UGl2Q0oiuezTmv4po52yMl9wGTNj@vger.kernel.org
X-Received: by 2002:a05:690e:154b:10b0:63e:d1f:d685 with SMTP id
 956f58d0204a3-641e76d648bmr7956746d50.51.1763364984565; Sun, 16 Nov 2025
 23:36:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251115-rubikpi-next-20251114-v1-0-fc630dc5bb5d@thundersoft.com>
 <20251115-rubikpi-next-20251114-v1-1-fc630dc5bb5d@thundersoft.com> <b2d4d91f-c726-4f5a-994a-086edc9caff2@mainlining.org>
In-Reply-To: <b2d4d91f-c726-4f5a-994a-086edc9caff2@mainlining.org>
From: Roger Shimizu <rosh@debian.org>
Date: Sun, 16 Nov 2025 23:36:13 -0800
X-Gmail-Original-Message-ID: <CAEQ9gE=ztgQ+pGJVxKgk5dVWDSSfOG7r=s1cDa_x0_Zsf2eyYA@mail.gmail.com>
X-Gm-Features: AWmQ_bmSUlkiL2vZBTUpoKENWapC_9eYXU4pMWfB_kVnKjAMmmrB_4WSgcTKk2M
Message-ID: <CAEQ9gE=ztgQ+pGJVxKgk5dVWDSSfOG7r=s1cDa_x0_Zsf2eyYA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: rubikpi3: Add qcs6490-rubikpi3
 board dts
To: Jens Reidel <adrian@mainlining.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Hongyang Zhao <hongyang.zhao@thundersoft.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Jens, and Dmitry for the review!

On Sat, Nov 15, 2025 at 9:25=E2=80=AFAM Jens Reidel <adrian@mainlining.org>=
 wrote:
>
> Hi,
>
> On 11/14/25 5:34 PM, Hongyang Zhao wrote:
> > Add DTS for Thundercomm qcs6490-rubikpi3 board which uses
> > QCS6490 SoC.
> >
> > Works:
> > - Bluetooth (AP6256)
> > - Wi-Fi (AP6256)
> > - Ethernet (AX88179B connected to UPD720201)
> > - FAN
> > - Two USB Type-A 3.0 ports (UPD720201 connected to PCIe0)
> > - M.2 M-Key 2280 PCIe 3.0
> > - RTC
> > - USB Type-C
> > - USB Type-A 2.0 port
> > - 40PIN: I2C x1, UART x1
> >
> > Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> > Reviewed-by: Roger Shimizu <rosh@debian.org>
> > ---
> >   arch/arm64/boot/dts/qcom/Makefile                  |    1 +
> >   .../boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts | 1415 +++++++++++=
+++++++++
> >   2 files changed, 1416 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qc=
om/Makefile
> > index 6f34d5ed331c..2433b15754fe 100644
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -138,6 +138,7 @@ qcs6490-rb3gen2-industrial-mezzanine-dtbs :=3D qcs6=
490-rb3gen2.dtb qcs6490-rb3gen2
> >
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qcs6490-rb3gen2-industrial-mezzanine=
.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qcs6490-rb3gen2-vision-mezzanine.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)      +=3D qcs6490-thundercomm-rubikpi3.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qcs8300-ride.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qcs8550-aim300-aiot.dtb
> >   dtb-$(CONFIG_ARCH_QCOM)     +=3D qcs9100-ride.dtb
> > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts =
b/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts
> > new file mode 100644
> > index 000000000000..4c9016992de3
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts
> > @@ -0,0 +1,1415 @@
>
> [snip]
>
> > +
> > +&pcie0 {
> > +     perst-gpios =3D <&tlmm 87 GPIO_ACTIVE_LOW>;
> > +     wake-gpios =3D <&tlmm 89 GPIO_ACTIVE_HIGH>;
> > +
> > +     pinctrl-0 =3D <&pcie0_clkreq_n>,
> > +                 <&pcie0_reset_n>,
> > +                 <&pcie0_wake_n>;
> > +     pinctrl-names =3D "default";
> > +
> > +     status =3D "okay";
> > +};
> > +
> > +&pcie0_phy {
> > +     vdda-phy-supply =3D <&vreg_l10c_0p88>;
> > +     vdda-pll-supply =3D <&vreg_l6b_1p2>;
> > +
> > +     status =3D "okay";
> > +};
> > +
> > +&pcie1 {
> > +     /* Using traditional address mapping */
> > +     reg =3D <0 0x01c08000 0 0x3000>,
> > +           <0 0x40000000 0 0xf1d>,
> > +           <0 0x40000f20 0 0xa8>,
> > +           <0 0x40001000 0 0x1000>,
> > +           <0 0x40100000 0 0x100000>;
> > +
> > +     ranges =3D <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000=
>,
> > +              <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000=
>;
>
> Thanks for attempting to fix the PCIe issues. With your patch series
> applied on top of linux-next, I'm still seeing PCIe issues:
>
> [    0.380693] Internal error: synchronous external abort:
> 0000000096000010 [#1]  SMP
> [    0.406491] Modules linked in:
> [    0.406495] CPU: 5 UID: 0 PID: 106 Comm: kworker/u32:6 Tainted: G   M
>                 6.18.0-rc5-next-20251113 #13 NONE
> [    0.406499] Tainted: [M]=3DMACHINE_CHECK
> [    0.406500] Hardware name: thundercomm Thundercomm RUBIK Pi
> 3/Thundercomm RUBIK Pi 3, BIOS 2025.10-rc4 10/01/2025
> [    0.406502] Workqueue: async async_run_entry_fn
> [    0.406508] pstate: 40400005 (nZcv daif +PAN -UAO -TCO -DIT -SSBS
> BTYPE=3D--)
> [    0.428362] pc : __pi_memset_generic+0x16c/0x188
> [    0.428366] lr : dma_direct_alloc+0x19c/0x3d0
> [    0.428370] sp : ffff8000810e3920
> [    0.428371] x29: ffff8000810e3920 x28: ffff000080d0f810 x27:
> ffffba4c6196ec48
> [    0.428373] x26: ffff000080d0f810 x25: ffffba4c607b31cc x24:
> 0000000000000000
> [    0.428375] x23: ffff000080d0f810 x22: ffff000000c00000 x21:
> ffff000082858948
> [    0.428376] x20: 0000000000001000 x19: fffffdffc0030000 x18:
> 000000000000000a
> [    0.428378] x17: ffff0000823dae00 x16: 0000000000000000 x15:
> 0000000000000000
> [    0.428380] x14: 00000000ffffffff x13: 0000000000000068 x12:
> 0000000000000100
> [    0.449344] x11: 0000000000000000 x10: ffff0001fef99500 x9 :
> 0000000000000000
> [    0.449345] x8 : ffff000000c00000 x7 : 0000000000000000 x6 :
> 000000000000003f
> [    0.449347] x5 : 0000000000000040 x4 : 0000000000000000 x3 :
> 0000000000000004
> [    0.449349] x2 : 0000000000000fc0 x1 : 0000000000000000 x0 :
> ffff000000c00000
> [    0.449350] Call trace:
> [    0.449351]  __pi_memset_generic+0x16c/0x188 (P)
> [    0.449354]  dma_alloc_attrs+0x94/0x210
> [    0.449357]  dmam_alloc_attrs+0x74/0xc0
> [    0.469967]  dw_pcie_msi_host_init+0x100/0x300
> [    0.469971]  dw_pcie_host_init+0x5e4/0x6d8
> [    0.491913]  qcom_pcie_probe+0x5a8/0x838
> [    0.491916]  platform_probe+0x64/0xc0
> [    0.491919]  really_probe+0xc8/0x3f0
> [    0.491921]  __driver_probe_device+0x88/0x170
> [    0.491922]  driver_probe_device+0x48/0x130
> [    0.491923]  __device_attach_driver+0xc4/0x190
> [    0.491925]  bus_for_each_drv+0x90/0x100
> [    0.491928]  __device_attach_async_helper+0xb8/0x120
> [    0.491929]  async_run_entry_fn+0x3c/0x1e0
> [    0.491931]  process_one_work+0x150/0x3a0
> [    0.491934]  worker_thread+0x288/0x480
> [    0.491936]  kthread+0x118/0x1e0
> [    0.491938]  ret_from_fork+0x10/0x20
> [    0.513092] Code: 91010108 54ffff4a 8b040108 cb050042 (d50b7428)
> [    0.513094] ---[ end trace 0000000000000000 ]---
>
> I can only get the device to boot by disabling both pcie0 and pcie1.

I think there're some regressions in "next-20251114".
After some time to "git bisect", I found after running 2 revert
commands below, it can boot for both RUBIK Pi 3 and RB3 Gen2.

$ git revert b15ce3c0882c9cd2fbe4f87047874ad087b583ff -m 1
$ git revert 03e928442d469f7d8dafc549638730647202d9ce

> > +
> > +
> > +     perst-gpios =3D <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +     wake-gpios =3D <&tlmm 3 GPIO_ACTIVE_LOW>;
> > +
> > +     pinctrl-0 =3D <&pcie1_clkreq_n>,
> > +                 <&pcie1_reset_n>,
> > +                 <&pcie1_wake_n>;
> > +     pinctrl-names =3D "default";
> > +
> > +     status =3D "okay";
> > +};
> > +
> > +&pcie1_phy {
> > +     vdda-phy-supply =3D <&vreg_l10c_0p88>;
> > +     vdda-pll-supply =3D <&vreg_l6b_1p2>;
> > +
> > +     status =3D "okay";
> > +};
> > +
>
> [snip]
>
> > +
> > +&remoteproc_adsp {
> > +     firmware-name =3D "qcom/qcs6490/adsp.mbn";
> > +
> > +     status =3D "okay";
> > +};
>
> I'm fairly sure that this is the wrong ADSP firmware. With the firmware
> in linux-firmware, I'm seeing charger pd crashes and the ADSP constantly
> restarting. Using the Radxa Dragon Q6A ADSP firmware which disables the
> charging feature in the firmware works way better and does not result in
> crashes.

I run the Ubuntu 24.04 base system:
* https://ubuntu.com/download/qualcomm-iot#rubikpi3

Currently it boots well with adsp fw from RB3 Gen2 (from deb pkg:
firmware-qcom-hlosfw) without crash.
But I heard from next release, adsp will be customized, so Hongyang
will make another patch to upstream the adsp for RUBIK Pi 3.

Cheers,
Roger

> > +
> > +&remoteproc_cdsp {
> > +     firmware-name =3D "qcom/qcs6490/cdsp.mbn";
> > +
> > +     status =3D "okay";
> > +};
> > +
>
> [snip]
>
> Thanks,
> Jens

