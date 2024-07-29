Return-Path: <devicetree+bounces-88792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEF893EF68
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 10:07:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6A51282C75
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 08:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414F5137747;
	Mon, 29 Jul 2024 08:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NbCQRTNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5634213213C
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 08:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722240452; cv=none; b=YiJL55kiTSiGc9aWkWdf5BoTNQUbAgDFZanLYf7BpVY3WriwgTImkdDNqawBwspXfPj8rMsLcdxG4U06rDUwVs2X/0DFVwgnZqb1LuOmc7w+OoP8jxlPdqJbo8CIMfQwb1j+kqpYJc7I2Yy1ND27jVgBqlZMxl5vB354IUuH6hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722240452; c=relaxed/simple;
	bh=jJmFwMI+Bbhr58bZUInkQHBMmsjzN5FHRoCNZwB0DSg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dAqbzkadFOtBypKApSSv8PW0mdRPxI3834RCPOkHRexO/IXWNqWhJh67JQ4B0y70ukypkr2ZyTnsQoMnEZbS90vUSXc1ePJRG23jubTnikVefyhvLhNGC5ZUk6AkwqXuakDbIU1LxNjFN37kXI0LmPy1MSc/uXkSFTbAq6oqEG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NbCQRTNO; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52fcc56c882so2283830e87.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 01:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722240448; x=1722845248; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kCdO+5lszghKNXPYNfgULQjNkCO6Bgbrx/J4VNViASA=;
        b=NbCQRTNOEIDC/tedG72qjUBFlkDotP3/LUej/ae4LeTN+xcYmZgYqos22gY2jRaWuC
         aZeBnCgAiWLz82BAE698fchvukDIk8KOQKE/bco6O3Jo/U4uFc9801QQT365wb76SrRk
         Br8W+vflxEC5Nd6bHIT5k1KlB/P381C/Rtcxw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722240448; x=1722845248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kCdO+5lszghKNXPYNfgULQjNkCO6Bgbrx/J4VNViASA=;
        b=nLng9QP3U7ZDR0bsQp6wJLVqmftvcJYi53NkqE43HS7j90fEwImq3bOqVbP8AhJJBE
         iU5KlY/JMbv3QY6YBz0ZEimHib/wz++GSmT+3u1xIPmaQ+9+NiPak6GLAhiP63Wd90Tk
         MrVndOlnfnBDCvie1RmL0iSwswqYJDKJbzDFbuJCTp+BY/4yQDr+y6Gey0Qbps0uexex
         Nmo18fuvbyNN1Uh4S1hyNUq3Ur8M62xJbjkDGnne/y2nV1FuUGXbDWxkDad23hylp0Ca
         NWK0s2B2WNlivb+OGQ/U2G9GDZizuFj7Pmm8YbfwVUaScH+316y2bAw+AV3xKx7pfkES
         CgGg==
X-Forwarded-Encrypted: i=1; AJvYcCX1tbdQrWreLA01c10esg+LVpN3YPCmGOLB+vmxwjf3FAzBypY7auYT+JAtV+ho+o6LMOgH3DysVl4Sxo8nQVSicmjCg2Grf1/nQg==
X-Gm-Message-State: AOJu0YzecrRlEfy11OEkixL8ZTtSzb4qekfkCA5+mCvbR6RDIM/Tl+zy
	K6cow/uVO1FylqLhAdUZZEdoMKcThqs1lQ+EcSwJo0vXMjnb8bUlAeKl6+0Bww85BBX+t3wvJsV
	49iCDt9fODMzBcIJcXHcou3jFMl1dsHx6cr83
X-Google-Smtp-Source: AGHT+IGom9OVJS7Jqx6fzlsfDpTXf0AFtaX0XP4s0jUU4E/uPPTvIW9YD1G5Ss7bz5ELxdrY8h88xy0q5UME34INd/E=
X-Received: by 2002:a05:6512:33c6:b0:52f:441:bdd6 with SMTP id
 2adb3069b0e04-5309b674163mr1778099e87.0.1722240448197; Mon, 29 Jul 2024
 01:07:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722-usb-1129-probe-pci-clk-fix-v1-1-99ea804228b6@collabora.com>
 <CAGXv+5H_pxR18sHeqdWPy9_FARrnLwyyOHV4VXCn9p5OExseiQ@mail.gmail.com>
 <f12ba385-090b-4772-8c52-e515e25b00ac@collabora.com> <CAGXv+5G92=-k5MDH4BPcM8tgPwcGTJ60trJwr7BwTGHD=wpnDw@mail.gmail.com>
 <51f0f4f3-11a5-4d74-981e-3f24f8475c7f@collabora.com>
In-Reply-To: <51f0f4f3-11a5-4d74-981e-3f24f8475c7f@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 29 Jul 2024 16:07:16 +0800
Message-ID: <CAGXv+5F-U6O3dQdU2L8bR5V+D=PLreACZYCh5sxBY3PFrex1zg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Add missing clock for xhci1 controller
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, kernel@collabora.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2024 at 3:59=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 26/07/24 17:11, Chen-Yu Tsai ha scritto:
> > On Fri, Jul 26, 2024 at 8:11=E2=80=AFPM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> >>
> >> Il 25/07/24 12:34, Chen-Yu Tsai ha scritto:
> >>> Hi,
> >>>
> >>> On Mon, Jul 22, 2024 at 11:27=E2=80=AFPM N=C3=ADcolas F. R. A. Prado
> >>> <nfraprado@collabora.com> wrote:
> >>>>
> >>>> Currently if the xhci1 controller happens to probe before the pcie1
> >>>> controller then it fails with the following errors:
> >>>>
> >>>> xhci-mtk 11290000.usb: clocks are not stable (0x1003d0f)
> >>>> xhci-mtk 11290000.usb: can't setup: -110
> >>>> xhci-mtk: probe of 11290000.usb failed with error -110
> >>>>
> >>>> The issue has been tracked down to the CLK_INFRA_AO_PCIE_P1_TL_96M
> >>>> clock, although exactly why this pcie clock is needed for the usb
> >>>> controller is still unknown. Add the clock to the xhci1 controller s=
o it
> >>>> always probes successfully and use a placeholder clock name for it.
> >>>>
> >>>> Reported-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com> #=
KernelCI
> >>>> Closes: https://lore.kernel.org/all/9fce9838-ef87-4d1b-b3df-63e1ddb0=
ec51@notapiano/
> >>>> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> >>>
> >>> So I asked MediaTek about this, and it seems the correct thing to do =
is
> >>> disable USB 3 on this host controller using the following snippet. Th=
e
> >>> snippet is copy-pasted from our issue tracker and won't apply directl=
y.
> >>>
> >>> This is also seen in mt8395-kontron-3-5-sbc-i1200.dts, on which xhci1
> >>> is used only for USB 2.0 on an M.2 slot.
> >>>
> >>
> >> Uhm, okay, but why should USB3 be disabled on a controller that suppor=
ts USB3?
> >>
> >> I agree about disabling it on specific boards that use only the USB 2.=
0 lines of
> >> this controller, but doing that globally looks wrong... and looks like=
 being a
> >> workaround for an error that gets solved with adding a clock as well.
> >>
> >> In short, the question is: why would that be the correct thing to do?
> >
> > We can disable it in mt8195-cherry.dtsi then?
>
> That device does not use this controller, so yes we can disable it, but t=
hat still
> doesn't resolve the issue pointed out by Nicolas...!

No. I mean disable USB3 on this port. Also see the next paragraph.

> Please note that the issue that he sees doesn't happen only on Tomato, bu=
t also on
> other MediaTek MT8195/MT8395 boards - and applying this commit makes disa=
bling the
> controller, or disabling the USB 3 lines on the controller, kinda redunda=
nt, as
> this will effectively fix probing it... but again, fixing the actual issu=
e with
> this controller is something that must be done.

If those other boards use the XHCI1 USB3 lines for ... USB3, then the USB3
PHY should also be tied to XHCI1, right now due to the Cherry Chromebook
design, only the USB2 PHY is tied to it.

> Disabling the controller on Tomato is a different topic - here we are dis=
cussing
> about fixing the issue, and that will happen, again, on any board that ha=
s this
> controller enabled with USB3 lines. :-)
>
> So, unless there is any specific reason for which applying this commit is=
 a bad
> idea, or any alternative fix to this that is better than the proposed one=
, and
> not a workaround... I'm applying this one.

Didn't I just relay what MediaTek says is the correct fix? Disable USB3
for this port on devices where the serial pairs are used for PCIe instead
of USB3.


Regards
ChenYu

> Cheers,
> Angelo
>
> >
> > ChenYu
> >
> >> Cheers,
> >> Angelo
> >>
> >>>
> >>> ChenYu
> >>>
> >>> index 8b7307cdefc6..2dac9f706a58
> >>> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> >>> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> >>> @@ -1447,6 +1447,7 @@
> >>>                                         "xhci_ck";
> >>>                           mediatek,syscon-wakeup =3D <&pericfg 0x400 =
104>;
> >>>                           wakeup-source;
> >>> +                       mediatek,u3p-dis-msk =3D <0x1>;
> >>>                           status =3D "disabled";
> >>>                   };
> >>>
> >>>> ---
> >>>>    arch/arm64/boot/dts/mediatek/mt8195.dtsi | 10 ++++++++--
> >>>>    1 file changed, 8 insertions(+), 2 deletions(-)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/b=
oot/dts/mediatek/mt8195.dtsi
> >>>> index 2ee45752583c..cc5169871f1c 100644
> >>>> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> >>>> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> >>>> @@ -1453,9 +1453,15 @@ xhci1: usb@11290000 {
> >>>>                                    <&topckgen CLK_TOP_SSUSB_P1_REF>,
> >>>>                                    <&apmixedsys CLK_APMIXED_USB1PLL>=
,
> >>>>                                    <&clk26m>,
> >>>> -                                <&pericfg_ao CLK_PERI_AO_SSUSB_1P_X=
HCI>;
> >>>> +                                <&pericfg_ao CLK_PERI_AO_SSUSB_1P_X=
HCI>,
> >>>> +                                /*
> >>>> +                                 * This clock is required due to a =
hardware
> >>>> +                                 * bug. The 'frmcnt_ck' clock name =
is used as a
> >>>> +                                 * placeholder.
> >>>> +                                 */
> >>>> +                                <&infracfg_ao CLK_INFRA_AO_PCIE_P1_=
TL_96M>;
> >>>>                           clock-names =3D "sys_ck", "ref_ck", "mcu_c=
k", "dma_ck",
> >>>> -                                     "xhci_ck";
> >>>> +                                     "xhci_ck", "frmcnt_ck";
> >>>>                           mediatek,syscon-wakeup =3D <&pericfg 0x400=
 104>;
> >>>>                           wakeup-source;
> >>>>                           status =3D "disabled";
> >>>>
> >>>> ---
> >>>> base-commit: dee7f101b64219f512bb2f842227bd04c14efe30
> >>>> change-id: 20240722-usb-1129-probe-pci-clk-fix-ef8646f46aac
> >>>>
> >>>> Best regards,
> >>>> --
> >>>> N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> >>>>
> >>>>
> >>
> >>
> >>
>

