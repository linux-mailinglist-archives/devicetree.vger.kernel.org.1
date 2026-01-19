Return-Path: <devicetree+bounces-256904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D36D3AB1F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A14713005316
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D27E036C598;
	Mon, 19 Jan 2026 14:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DhM9txJt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA443502BF
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768831528; cv=none; b=e2XeB6MF8nV+hfkvG/PdlGCQt85shzpfsWxolScUy+WLRFKH4kdOb+R95pF2cnBrqqOO8nue2gOPkt8x1gfGJuZUsCQvXr2lnl3UMgGtrPf+Yb2EssHD1pc6g+6breNWMn8otJt0XE5R7WgUVtIXd5ykw2X8/2lFtmSj5gD2IGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768831528; c=relaxed/simple;
	bh=Os00fZo/Ep1VtT6RREuGctNZzOne1pfhDWIGSEScn5Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YPTb3WIWqiciEzuK9DbudM7IpRjFiBl3cgeAgIzYgm24P3Sod+/Pn7dUrDpKZ7r8lvEQZU7ilmqPYyJ/bFuXvdVp24n1AyHPmBE5vJqWGXME0XoY/DNiY8c4Zjp9Y5mduuRp0964EaK1UDa3SXAYhHzMpscl4xcgoEYwjafR2UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DhM9txJt; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c5265d06c3so529558885a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768831525; x=1769436325; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hF78wptD7ld1V2LGnCYp+bLK7K2nBtHmiHSnMfpqB8c=;
        b=DhM9txJtqUHEvsP3zJ+/X0cxOtzEOgOtMl6xxSA9F/o7LLCu36de3SL98u6MmCTykl
         RDYAiYBrn/tbLfRvS6FuBPiOl6ErN7OG+ukVX6MM/dBvDDNV03gzPmBHuIPYTq130LWH
         qC9XtY3sG5G3dbr4+eI7XaZTKnmyrsctHvDbEvPBkKQ9LgRGpVYS7R7O498xTyglJfIO
         anw8AseGEXDacKAjINJIRSeFEWaEe6GuNbxTTh3Mw/OLloiUx86Q7n77WWdhNSuhSLz7
         6czXRB9kAgEoGVdN5Yk6yYaiL+HXWRyr7L3eIiopfNjJxbmkmMdvov3AOQUWDWyswjK8
         jnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768831525; x=1769436325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hF78wptD7ld1V2LGnCYp+bLK7K2nBtHmiHSnMfpqB8c=;
        b=Wo0KdnTArAOYAriV76NooUONhfB4/3IjBkhkuCzSw8uABG5bjmMmtjOvgD3kXquwbm
         JYh1MzwNsCYgn2DdFu2B79J5glWwbRuE53bpYqFhzaw/lOm+L9hZUi78fifEDaQmiIV/
         alTuA/FMPggBeHo2/+bdiQd6tADN7LwSkIRBPZK9fK5rS7dU+C3k2AuuzVEBLi2yzZuC
         zYgSCQnNVOf417BkoV6BkKroot7eTLucSuWloegWbi4MaLSBWn/COZNXZsTHHS383gLY
         2MbZhGBfVyknlytKt5apv6+C9Pw0irmaIgE+MXSdiooUTayX/2Jw/rTG2EX2lNmQIGKx
         1A/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUhyT4ylrWkIwHSrcbfqj3IyBmnPBe9gz8u0cRKZyO2R7RCKQYq7F/pNnSY7UPQOAazfnNVY8C1k0Do@vger.kernel.org
X-Gm-Message-State: AOJu0YwVb8dj6DGrNjgqofuFgbut5FbE406cMlPlbzZKN/hzNQrrz7g7
	Xg9tiAP3gWEF9tWeJL0dVlmsBt0oPi/UCUr2blBWoy0ieb3vp90dKAWdKz4IW/BJO17PM67l2om
	S6cK0h3jvN7v5utLINaGqeAMB4rBG0UE=
X-Gm-Gg: AY/fxX6hV7Q96RwWOVtAIydO4wzKhdI6raH5OS3In7tb63fAyBmZQhodvEujdIulu7i
	DOpVU0XSgQwptLv7kCdbXACUjy4gX82BM+HYsm6q38Fpj8rPLPMTC/yLZ3V4mfXp1KOzvLHClik
	7Aik/E0N6s7N01Tp2Ok5B0IUkcI9mmYn+RfasIDAM0vds/7K7JV5d56aRHVmGSdN/GBGKAdNpzy
	3tTjnqOB/JtHTp0wXOLeCEropYeA59O6XQe1lYUj6MsXqnM049ne77ElXPqPQyB4TFHfsW8+dUT
	iT4LacPNTmwjR6jEtMyZaMJ9Hb8=
X-Received: by 2002:ac8:7f54:0:b0:4f1:de87:ad90 with SMTP id
 d75a77b69052e-501982dcb8bmr201855631cf.4.1768831524345; Mon, 19 Jan 2026
 06:05:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com> <b0904cb5-3659-41cc-8395-79eec9e82f01@cherry.de>
 <CABjd4YzJud4ZZQ_GrOOSnfEVG7wgHmPSf9w8oQhLVSx6WXgN5A@mail.gmail.com> <d3b5f622-36ec-42ea-90da-3c056e1b6461@cherry.de>
In-Reply-To: <d3b5f622-36ec-42ea-90da-3c056e1b6461@cherry.de>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 19 Jan 2026 18:05:16 +0400
X-Gm-Features: AZwV_QjYhPBrmB-HzyDxfoEaeqoxWE1URl6xYqQ4XwLXLh3YQ3UlufJql0dky0Q
Message-ID: <CABjd4YympEqbiN9-Kwv40YtaCh6bu=3PBQPyvvGgKCQbLeZmZw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 5:58=E2=80=AFPM Quentin Schulz <quentin.schulz@cher=
ry.de> wrote:
>
> Hi Alexey,
>
> On 1/19/26 2:43 PM, Alexey Charkov wrote:
> > Hi Quentin,
> >
> > On Mon, Jan 19, 2026 at 3:08=E2=80=AFPM Quentin Schulz <quentin.schulz@=
cherry.de> wrote:
> >>
> >> Hi Alexey,
> >>
> >> On 1/19/26 10:22 AM, Alexey Charkov wrote:
> >>> Rockchip RK3576 UFS controller uses a dedicated pin to reset the conn=
ected
> >>> UFS device, which can operate either in a hardware controlled mode or=
 as a
> >>> GPIO pin.
> >>>
> >>> Power-on default is GPIO mode, but the boot ROM reconfigures it to a
> >>> hardware controlled mode if it uses UFS to load the next boot stage.
> >>>
> >>> Given that existing bindings (and rk3576.dtsi) expect a GPIO-controll=
ed
> >>> device reset, request the required pin config explicitly.
> >>>
> >>> This doesn't appear to affect Linux, but it does affect U-boot:
> >>>
> >>> Before:
> >>> =3D> md.l 0x2604b398
> >>> 2604b398: 00000011 00000000 00000000 00000000  ................
> >>> < ... snip ... >
> >>> =3D> ufs init
> >>> ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=3D[3, 3], lane[2, 2], =
pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate =3D 2
> >>> =3D> md.l 0x2604b398
> >>> 2604b398: 00000011 00000000 00000000 00000000  ................
> >>>
> >>> After:
> >>> =3D> md.l 0x2604b398
> >>> 2604b398: 00000011 00000000 00000000 00000000  ................
> >>> < ... snip ...>
> >>> =3D> ufs init
> >>> ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=3D[3, 3], lane[2, 2], =
pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate =3D 2
> >>> =3D> md.l 0x2604b398
> >>> 2604b398: 00000010 00000000 00000000 00000000  ................
> >>>
> >>> (0x2604b398 is the respective pin mux register, with its BIT0 driving=
 the
> >>> mode of UFS_RST: unset =3D GPIO, set =3D hardware controlled UFS_RST)
> >>>
> >>> This helps ensure that GPIO-driven device reset actually fires when t=
he
> >>> system requests it, not when whatever black box magic inside the UFSH=
C
> >>> decides to reset the flash chip.
> >>>
> >>> Cc: stable@vger.kernel.org
> >>> Fixes: c75e5e010fef ("scsi: arm64: dts: rockchip: Add UFS support for=
 RK3576 SoC")
> >>> Reported-by: Quentin Schulz <quentin.schulz@cherry.de>
> >>> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> >>> ---
> >>> This has originally surfaced during the review of UFS patches for U-b=
oot
> >>> at [1], where it was found that the UFS reset line is not requested t=
o be
> >>> configured as GPIO but used as such. This leads in some cases to the =
UFS
> >>> driver appearing to control device resets, while in fact it is the
> >>> internal controller logic that drives the reset line (perhaps in
> >>> unexpected ways).
> >>>
> >>> Thanks Quentin Schulz for spotting this issue.
> >>>
> >>> [1] https://lore.kernel.org/u-boot/259fc358-f72b-4a24-9a71-ad90f20813=
35@cherry.de/
> >>> ---
> >>>    arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi | 7 +++++++
> >>>    arch/arm64/boot/dts/rockchip/rk3576.dtsi         | 2 +-
> >>>    2 files changed, 8 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi b/arch/=
arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
> >>> index 0b0851a7e4ea..20cfd3393a75 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
> >>> @@ -5228,6 +5228,13 @@ ufs_rst: ufs-rst {
> >>>                                /* ufs_rstn */
> >>>                                <4 RK_PD0 1 &pcfg_pull_none>;
> >>>                };
> >>> +
> >>> +             /omit-if-no-ref/
> >>> +             ufs_rst_gpio: ufs-rst-gpio {
> >>> +                     rockchip,pins =3D
> >>> +                             /* ufs_rstn */
> >>> +                             <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>=
;
> >>
> >> The SoC default is pull-down according to the TRM. Can you check pleas=
e?
> >> For example, the Rock 4D doesn't seem to have a hardware pull-up or
> >> pull-down on the line and the UFS module only seems to have a debounce=
r
> >> (capacitor between the line and ground). So except if the chip itself
> >> has a PU/PD, this may be an issue?
> >
> > The SoC default is indeed pull-down (as stated both in the TRM and in
> > the reference schematic from RK3576 EVB1). Which I believe means that
> > the attached device should be held in a reset state until the driver
> > takes over the control of the GPIO line (which, in turn, is consistent
> > with the observed behavior when reset handling is not enabled in the
> > driver but the reset pin is in GPIO mode).
> >
> > Are you concerned that the chip might unintentionally go in or out of
> > reset between the moment the pinctrl subsystem claims the pin and the
> > moment the driver starts outputting a state it desires? This hasn't
>
> Exactly that.
>
> Imagine for some reason the driver EPROBE_DEFER, there can be a lot of
> time between the original pinconf/pinmux and the time the GPIO is
> actually driven.
>
> At the same time.. I guess it may not matter much if the UFS chip gets
> out of reset temporarily as (I assume) when the UFS controller probes
> properly, it'll do a full reset of the UFS chip via the reset GPIO.
> Don't know anything about UFS, so maybe there could be damage if the UFS
> chip gets out of reset if its supplies or IO lines are in an illegal stat=
e?
>
> > caused any observable issues in my testing, but I guess we could
> > explicitly set it to &pcfg_pull_down for more predictable behavior in
> > line with what's printed on the schematic.
> >
>
> s/schematics/TRM/
>
> I'll let Heiko decide but I would personally go for a PD to match the
> default state of the SoC according to the TRM.

Happy to make a v2 with an explicit pull-down. Will wait a bit for any
other potential feedback though.

Thanks a lot,
Alexey

