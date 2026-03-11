Return-Path: <devicetree+bounces-274169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLMIO1uBsWmjCwAAu9opvQ
	(envelope-from <devicetree+bounces-274169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:51:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0F7265BD7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2EA33303322C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E3B22B8C5;
	Wed, 11 Mar 2026 14:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LbXdEfVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C503B3B19A1
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773240552; cv=pass; b=UGqJfGfXPQZDPuN6TQMBfsNZ5vTq66YnqYnPAxY8t0CzPkrS05UtqoputS5Uo7ei+G/OOZ+6CnN8XU06sm7rhh+9I2kPKj0pTKqArKDAHy0jUQx7/czzppttv+59cyld4Ul4ioz02jy+kCzkdbVNKaN56iSRtJDkQyJntN6THaY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773240552; c=relaxed/simple;
	bh=Ppu+lhhzFTwBK03g8Ax5c/LD1aTBXHNoFnAD+413jwg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jf74fzSBLz7+cfThRK3d081HdL+ogrWe7iaE1WnQGZlyaH33e7ZutRSIzWrSWy+9sImFrf+e4NL1Rtmd/ZdeW7vjcM5MM0s6fNgKI1ZtlB1oDkVfrs37Bp11l0oR6qCTPA5UuUF969TxMwHx1taIUQxjjhgbvgEESUx8QRqCMK4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LbXdEfVe; arc=pass smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-662e7450a8aso3146527a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:49:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773240549; cv=none;
        d=google.com; s=arc-20240605;
        b=guyOB80qbzTyTGRjQhUbMwtyY3EBhoeo1MuqWCayC7Kj45f1XTqp2HAxLPKjP78/58
         2hJS/MtjSz6OkIKycEr0fSloYUMSZTPiRNkPIehkPPQ/RIK8rmX6bJwaIG+R3yPKtRNW
         HIxcfodpZ1CwTnjybKdWmGevE2dpe9oVXTWImWmI/0QPgqOZrqGAPU7JDL7HBPlY8VD4
         JBb0e/DGt1V7ps79xwQh11VkAtRsOT4I766ajABL99yhoCR1kXmap3L7k7aiy5Pjk40m
         tCkgS2vwftE9fF5nJkoJoFGCZoR695lia4IC1V08HBXYo5CtkAA9i/lB3cK9TUW9EdTP
         goDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HyrNJzzZ4i3GQObx0AKoUUTqmBLE+hXm5yoT7lUZJk8=;
        fh=mqATHzRcfL1sYOddk/H6oN3XShyMe6tIHSYrAqbjZaA=;
        b=BhFlW20fvmzH4SxazWl9WJLREUzgb4NghkLManCEZoM/7dqL9Oue3MLqCHyOXBjMcV
         1ILwdviE7fweucVOii5k22mR5ma9zmfKWVJFtWtu/LLVYCVsqDpZ7stTA9JAiR9FvT7J
         CQuLMBAMnRHee0TlD3c4MOj0tlT8JZ+1nBoWskvFhgyPK+cgTlLaxEWBCa7nVFZJU2Hj
         xtI0EI7kkG32KSnrdWlc2RaUHbRQWy/eAJCI0Qls9tZXfOIZgTdRCbG082flOAuKuRNF
         rq1MBFg5HUvp5UB2uLJnOoaRDF3bvdJYR5PvigI0bC1OwP9MwfYdR9m00moYuCMOuexx
         i8Ow==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773240549; x=1773845349; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HyrNJzzZ4i3GQObx0AKoUUTqmBLE+hXm5yoT7lUZJk8=;
        b=LbXdEfVeOCEvIqq0DRzftLQ/h/I2t/KesD7IZvGhDTYTkHjadsiRaQMQOJx1GZ+dVa
         pq4NuTWyAPhDcq/8ydH//jAo8nGc7CcHtfmW6Ncu0uFOaN3HnZySZqPgSnnBWwP4e9us
         SO2vpxYsTeIVKwyvLyk4e2f4XZb8lpEPAkmoNb3McWT3hXlwaaIpg+4KG8cK+p/bktqK
         Ujh1btI34J6k/N3P0MhAALr+1n8TCiSM6F/H7s75C6y2VyC1HZO7ygl/zJphsMI+hdW0
         1rW3xZ704o4Rmg42YIZOGRymSLJ2rVdn6K1bk9Qli8cD/8G119aUuUgLV34+1aEBvgDG
         v0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773240549; x=1773845349;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HyrNJzzZ4i3GQObx0AKoUUTqmBLE+hXm5yoT7lUZJk8=;
        b=PdZ4EoMXscUvHvCfTgtp60Q+5pZalv+AQJNMo/I54dKl/UlzkztPSEJ3jWQNgyqET7
         CIxjAZCjAq4kofgaMNJneavLsOFtDDi4XoyKkF19X5HTEVTtHZh3gURka+R548ONlzZc
         09NXKNsMmuAAka6NlVquTb69gMR4zH0uN4+iYKlqRl0RmLGy356mAdZOviiKWE0wNfI3
         nWF6vnMVU0qLTDM7fluMjlRTqy/RqyuOVfZwn7Mbnga2WrqB40283pMK+aQLDLvlEY7w
         qZJA5V55Ny6whm+cl5yHXYaCm3MNkIRT6QZxX8W9vPB30nZNGaJfAlKLKcDk1MejtIQ3
         iIag==
X-Forwarded-Encrypted: i=1; AJvYcCVX29Elqj8A/J7Npds4HsYdj6TE3wluHq6Cbp35OpgjN6e34Q5B0WvfDY67it5MZF/QvvMXp/EJUk+K@vger.kernel.org
X-Gm-Message-State: AOJu0Yxaf4bESqhDaS3tAGjXKNVq5s8DPmNX6GtP9XL7h9gOupf5MwPV
	fz1+1rG5E21YFeLK+6YvdALQlS3/r9UaorVldSpY1BZV7eXGXEh3sY6RhAV6CfCwlIFEe2Xa+y1
	ZHHVuxYlinfXcysYvh/P4/HAmvUjhOrQ=
X-Gm-Gg: ATEYQzx15x5swW+XK9nDMHifcHWwoPexx6e1ZLSXCe7gOs0aeu6u46/0A4GaQf6Y2ge
	X87QgPkv7GzgE53E29rVrvY+nIMBMYqOT0RmEWUX39ug2A4CIjSsOpu5qKI81fd5wRbuMI+rBCM
	Tc5V0WfeWl8cK3IgZLqmMT2PV4NtnaEeH0RwZuol+0yiHzNB+7sUIo5uqcgz4LmSZjbP5E6622l
	Mt0Qtlw2vgSQ5jbApUI+F7RjZDAtB2n/WgDZ0wT4qez36yJdNpW08U6I5noJ4/8Y4bKtCkheufV
	lGE2tA==
X-Received: by 2002:a17:907:1c9e:b0:b97:2a5:8a82 with SMTP id
 a640c23a62f3a-b972e513dbamr157754366b.46.1773240548757; Wed, 11 Mar 2026
 07:49:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311115502.7353-1-linux.amoon@gmail.com> <cc922ebf-9221-00f8-e951-903c97d24f20@rock-chips.com>
 <CANAwSgT_Qb+Xoqg4ezZaYDBu81--=yhdvQ+cskumoMMh=J2ing@mail.gmail.com> <77f0d3c2-649f-770d-1636-6fd52f3b5f5e@rock-chips.com>
In-Reply-To: <77f0d3c2-649f-770d-1636-6fd52f3b5f5e@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 11 Mar 2026 20:18:49 +0530
X-Gm-Features: AaiRm504WsyzcNjgdhaQXABVzgkA6xn4l4u9wkE3KoD7fHFPzIVd_Tqjf9SABH4
Message-ID: <CANAwSgTqycrsc+7+RO=nfeudy78qPK2jEJ0b49gsiCQ3ywEpwA@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588
 on Rock 5b-5bp-5t series
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Diederik de Haas <didi.debian@cknow.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-274169-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,radxa.com:url,rock-chips.com:email]
X-Rspamd-Queue-Id: 6D0F7265BD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Shawn,

On Wed, 11 Mar 2026 at 19:35, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> =E5=9C=A8 2026/03/11 =E6=98=9F=E6=9C=9F=E4=B8=89 21:43, Anand Moon =E5=86=
=99=E9=81=93:
> > Hi Shawn,
> >
> > Thanks for your review comments.
> >
> > On Wed, 11 Mar 2026 at 17:57, Shawn Lin <shawn.lin@rock-chips.com> wrot=
e:
> >>
> >> =E5=9C=A8 2026/03/11 =E6=98=9F=E6=9C=9F=E4=B8=89 19:54, Anand Moon =E5=
=86=99=E9=81=93:
> >>> Add supports-clkreq and the corresponding pinmux configurations for P=
CIe
> >>> ASPM L1 substates on the Rock 5B, 5B+, and 5T.
> >>> The supports-clkreq flag informs the PCIe controller that the hardwar=
e
> >>> routing for the CLKREQ# sideband signal is present. This enables supp=
ort
> >>> for PCIe ASPM (Active State Power Management) L1 substates, allowing =
for
> >>> better power efficiency.
> >>>
> >>> Cc: Shawn Lin <shawn.lin@rock-chips.com>
> >>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> >>> ---
> > I verified the change by comparing the lspci -vvv output from before
> > and after the modification.
> >>
> >> It would be better if you could put the link to the schematic here(und=
er
> >> "---") for folks easy to review. I paste it here for reference=EF=BC=
=9A
> >>
> >> https://dl.radxa.com/rock5/5b+/docs/hw/radxa_rock5bp_v1.2_schematic.pd=
f
> > Ok, I will follow this advice next time,
> >>
> >>>    arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 9 ++++++=
---
> >>>    1 file changed, 6 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi =
b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> >>> index b3e76ad2d869..668b19c05f7e 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> >>> @@ -468,7 +468,8 @@ map1 {
> >>>
> >>>    &pcie2x1l0 {
> >>>        pinctrl-names =3D "default";
> >>> -     pinctrl-0 =3D <&pcie2_0_rst>;
> >>> +     pinctrl-0 =3D <&pcie2_0_rst>, <&pcie30x1m1_0_clkreqn>;
> >>> +     supports-clkreq;
> >>>        reset-gpios =3D <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
> >>>        vpcie3v3-supply =3D <&vcc3v3_pcie2x1l0>;
> >>>        status =3D "okay";
> >>> @@ -476,7 +477,8 @@ &pcie2x1l0 {
> >>>
> >>>    &pcie2x1l2 {
> >>>        pinctrl-names =3D "default";
> >>> -     pinctrl-0 =3D <&pcie2_2_rst>;
> >>> +     pinctrl-0 =3D <&pcie2_2_rst>, <&pcie20x1m0_clkreqn>;
> >>
> >> Isn't it m1(PCIE20_1_2_CLKREQn_M1_L in the schematic)?
> >
> > I just used the pinctrl label GPIO3_C7_u as a reference to select this
> > one. see below.
> >
> > [1] https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/r=
ockchip/rk3588-base-pinctrl.dtsi#L1613-L1662
> >
> > The RK3588 Technical Reference Manual (TRM) Part 2 provides the
> > following details regarding the clkreq# signal
> > pcie_clkreq_in/out_n    M0 PCIE20X1_2_CLKREQN_M0 GPIO3_C7_u
> > pcie_clkreq_in/out_n    M1 PCIE20X1_2_CLKREQN_M1 GPIO4_B7_u
>
> Okay, I checked it again, you are right. Apprently the schematic label
> is insane which marks it as PCIE20_1_2_CLKREQn_M1_L....
>
> >
> >>
> >>> +     supports-clkreq;
> >>>        reset-gpios =3D <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
> >>>        vpcie3v3-supply =3D <&vcc3v3_pcie2x1l2>;
> >>>        status =3D "okay";
> >>> @@ -488,7 +490,8 @@ &pcie30phy {
> >>>
> >>>    &pcie3x4 {
> >>>        pinctrl-names =3D "default";
> >>> -     pinctrl-0 =3D <&pcie3_rst>;
> >>> +     pinctrl-0 =3D <&pcie3_rst>, <&pcie30x4m1_clkreqn>;
> >>
> >> The pin is correct but I don't think it would support
> >> L1 substates because the refclk is out of control. For
> >> any refclk coming from external clock generator, clkreq#
> >> should connect to the enable pin of the clock generator.
> >>
> > I did not find the external clkreq# signal for this #clkreq signal in
> > the schematics.
> >
> > PCIE30X4_CLKREQn_M1_L  (GPIO4_B4_u) .
>
> What I meant is PCIE30X4_CLKREQn_M1_L is connected between root port
> and M.2 slot which is not the right hardware design to support L1
> substates with PCIe3.0 PHY. We could do that for combophy as the refclk
> is auto controlled by controller when entering and exiting L1 substates.
> But for PCIe3.0 PHY the refclk is always there coming from
> Au5426_device, so the this port tries to enter L1 substates, no
> component could turn off the refclk to meet the timing of entering L1
> substate, except you connect clkreq# to the Au5426, because in that case
> PHY could gate the incoming refclk via clkreq#, thanks to the natural
> behaviour of how clkreq# is controlled.
>
> To clarify, PCIE30X4_CLKREQn_M1_L is connected between the Root Port and
> the M.2 slot. This hardware configuration is not suitable for supporting
> L1 Substates with the PCIe 3.0 PHY. While this setup works for the Combo
> PHY=E2=80=94where the controller automatically manages the reference cloc=
k
> during L1 Substate entry and exit=E2=80=94it fails with the dedicated PCI=
e 3.0
> PHY. In the latter case, the reference clock from the Au5426_device is
> always active. Consequently, when this port attempts to enter L1
> Substates, no component can gate the reference clock to meet the
> required timing specifications.
>
> The only way to satisfy the timing requirements is to connect CLKREQ#
> directly to the Au5426. This allows the PHY to gate the incoming
> reference clock via the CLKREQ# signal, leveraging its standard control
> behavior.
>
Thanks for the info. I've decided to omit this setting.

> Otherwise you could only see it in L1 instead of L1 substates. By the
> way, how do you verfy it could enter L1 substate? Do you use debugfs
> like below ?
>    cat /sys/kernel/debug/dwc_pcie_a40000000.pcie/ltssm_status
>
[root@rockpi-5b alarm]# cat
/sys/kernel/debug/dwc_pcie_a40000000.pcie/ltssm_status
L123_SEND_EIDLE (0x13)
[root@rockpi-5b alarm]# cat
/sys/kernel/debug/dwc_pcie_a41000000.pcie/ltssm_status
L0 (0x11)
[root@rockpi-5b alarm]# cat
/sys/kernel/debug/dwc_pcie_a40800000.pcie/ltssm_status
L1_IDLE (0x14)

I had just verified with lspci --vvv diff.

$ diff -Nru lspci.before lspci.after
--- lspci.before        2026-03-11 15:47:28.391050648 +0530
+++ lspci.after 2026-03-11 16:30:33.337808724 +0530
@@ -2,8 +2,8 @@
        Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
-       Interrupt: pin A routed to IRQ 119
-       IOMMU group: 10
+       Interrupt: pin A routed to IRQ 117
+       IOMMU group: 11
        Bus: primary=3D00, secondary=3D01, subordinate=3Dff, sec-latency=3D=
0
        I/O behind bridge: f000-0fff [disabled] [16-bit]
        Memory behind bridge: f0200000-f02fffff [size=3D1M] [32-bit]
@@ -76,9 +76,11 @@
                LnkCtl3: LnkEquIntrruptEn- PerformEqu-
                LaneErrStat: 0
        Capabilities: [190 v1] L1 PM Substates
-               L1SubCap: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2-
ASPM_L1.1- L1_PM_Substates-
+               L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+
ASPM_L1.1+ L1_PM_Substates+
+                         PortCommonModeRestoreTime=3D10us PortTPowerOnTime=
=3D10us
                L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
-               L1SubCtl2:
+                          T_CommonMode=3D10us LTR1.2_Threshold=3D26016ns
+               L1SubCtl2: T_PwrOn=3D10us
        Capabilities: [1d0 v1] Vendor Specific Information: ID=3D0002
Rev=3D4 Len=3D100 <?>
        Capabilities: [2d0 v1] Vendor Specific Information: ID=3D0006
Rev=3D0 Len=3D018 <?>
        Kernel driver in use: pcieport
@@ -89,8 +91,8 @@
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
-       Interrupt: pin A routed to IRQ 118
-       IOMMU group: 10
+       Interrupt: pin A routed to IRQ 116
+       IOMMU group: 11
        Region 0: Memory at f0200000 (64-bit, non-prefetchable) [size=3D16K=
]
        Capabilities: [40] Power Management version 3
                Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA
PME(D0-,D1-,D2-,D3hot-,D3cold-)
@@ -156,7 +158,7 @@
                L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+
ASPM_L1.1+ L1_PM_Substates+
                          PortCommonModeRestoreTime=3D10us PortTPowerOnTime=
=3D10us
                L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
-                          T_CommonMode=3D0us LTR1.2_Threshold=3D0ns
+                          T_CommonMode=3D0us LTR1.2_Threshold=3D26016ns
                L1SubCtl2: T_PwrOn=3D10us
        Kernel driver in use: nvme
        Kernel modules: nvme
@@ -238,9 +240,11 @@
                LnkCtl3: LnkEquIntrruptEn- PerformEqu-
                LaneErrStat: 0
        Capabilities: [180 v1] L1 PM Substates
-               L1SubCap: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2-
ASPM_L1.1- L1_PM_Substates-
+               L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+
ASPM_L1.1+ L1_PM_Substates+
+                         PortCommonModeRestoreTime=3D10us PortTPowerOnTime=
=3D10us
                L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
-               L1SubCtl2:
+                          T_CommonMode=3D30us LTR1.2_Threshold=3D54272ns
+               L1SubCtl2: T_PwrOn=3D18us
        Capabilities: [190 v1] Vendor Specific Information: ID=3D0002
Rev=3D4 Len=3D100 <?>
        Kernel driver in use: pcieport
        Kernel modules: pci_endpoint_test
@@ -250,7 +254,7 @@
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
-       Interrupt: pin A routed to IRQ 147
+       Interrupt: pin A routed to IRQ 150
        IOMMU group: 9
        Region 0: Memory at f2200000 (64-bit, non-prefetchable) [size=3D8K]
        Capabilities: [c8] Power Management version 3
@@ -309,8 +313,8 @@
                L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+
ASPM_L1.1+ L1_PM_Substates+
                          PortCommonModeRestoreTime=3D30us PortTPowerOnTime=
=3D18us
                L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
-                          T_CommonMode=3D0us LTR1.2_Threshold=3D0ns
-               L1SubCtl2: T_PwrOn=3D10us
+                          T_CommonMode=3D0us LTR1.2_Threshold=3D54272ns
+               L1SubCtl2: T_PwrOn=3D18us
        Kernel driver in use: iwlwifi
        Kernel modules: iwlwifi

@@ -318,10 +322,10 @@
        Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
-       Interrupt: pin A routed to IRQ 132
-       IOMMU group: 11
+       Interrupt: pin A routed to IRQ 106
+       IOMMU group: 10
        Bus: primary=3D40, secondary=3D41, subordinate=3D41, sec-latency=3D=
0
-       I/O behind bridge: 200000-200fff [size=3D4K] [16-bit]
+       I/O behind bridge: 100000-100fff [size=3D4K] [16-bit]
        Memory behind bridge: f4200000-f42fffff [size=3D1M] [32-bit]
        Prefetchable memory behind bridge:
00000000fff00000-00000000000fffff [disabled] [64-bit]
        Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=3Dfast >TAbort-
<TAbort- <MAbort- <SERR- <PERR-
@@ -391,9 +395,11 @@
                LnkCtl3: LnkEquIntrruptEn- PerformEqu-
                LaneErrStat: 0
        Capabilities: [180 v1] L1 PM Substates
-               L1SubCap: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2-
ASPM_L1.1- L1_PM_Substates-
+               L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+
ASPM_L1.1+ L1_PM_Substates+
+                         PortCommonModeRestoreTime=3D10us PortTPowerOnTime=
=3D10us
                L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
-               L1SubCtl2:
+                          T_CommonMode=3D150us LTR1.2_Threshold=3D306176ns
+               L1SubCtl2: T_PwrOn=3D150us
        Capabilities: [190 v1] Vendor Specific Information: ID=3D0002
Rev=3D4 Len=3D100 <?>
        Kernel driver in use: pcieport
        Kernel modules: pci_endpoint_test
@@ -403,9 +409,9 @@
        Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0, Cache Line Size: 64 bytes
-       Interrupt: pin A routed to IRQ 129
-       IOMMU group: 11
-       Region 0: I/O ports at 200000 [size=3D256]
+       Interrupt: pin A routed to IRQ 105
+       IOMMU group: 10
+       Region 0: I/O ports at 100000 [size=3D256]
        Region 2: Memory at f4200000 (64-bit, non-prefetchable) [size=3D64K=
]
        Region 4: Memory at f4210000 (64-bit, non-prefetchable) [size=3D16K=
]
        Capabilities: [40] Power Management version 3
@@ -482,8 +488,8 @@
                L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+
ASPM_L1.1+ L1_PM_Substates+
                          PortCommonModeRestoreTime=3D150us PortTPowerOnTim=
e=3D150us
                L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
-                          T_CommonMode=3D0us LTR1.2_Threshold=3D0ns
-               L1SubCtl2: T_PwrOn=3D10us
+                          T_CommonMode=3D0us LTR1.2_Threshold=3D306176ns
+               L1SubCtl2: T_PwrOn=3D150us
        Capabilities: [21c v1] Vendor Specific Information: ID=3D0002
Rev=3D4 Len=3D100 <?>
        Kernel driver in use: r8169
        Kernel modules: r8169

Thanks
-Anand

