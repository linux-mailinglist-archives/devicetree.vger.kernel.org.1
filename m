Return-Path: <devicetree+bounces-268378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL/IG+v5nmm+YAQAu9opvQ
	(envelope-from <devicetree+bounces-268378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:32:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE93D1981C4
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:32:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3B1F30E78DA
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC033B8BA2;
	Wed, 25 Feb 2026 13:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAsi852I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2077D394465
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 13:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772026273; cv=none; b=Lub/xX4wNr1yofH1WAF35umDHJ1Vnf3sGS7TnOBsSKcYpG+FwJ/bQYmW35DjEw8+3zUBge5fGyB63NF0WLO+Z9ronU4FcSu4CTwFh5wu1b1oBglQDucaK0ktv9G3HtusWuTJswkaW5sUz1Q6E00gkcP8pikmnK5znWMnX2jvF/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772026273; c=relaxed/simple;
	bh=/48T+4l4iZtBbRi6T7U/AVuXVc3uThox+MEEPlMuVxk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J3zYamSOT3Hamwbmap+15woj93xSRDGhYEGuNJ7mIBBo9+vnPYTCgIYKqORVW5o+h/z3ps5ZApUU8LlebaN9wN+xZK4KoJ9d4GVDBi5Jy6eh7kbmEE6p0+OvGn1FiopaN0pd28x+gIGthnik2/KEcknyeHTfV0vJN5LFGQiWIEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAsi852I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2839C2BC86
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 13:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772026272;
	bh=/48T+4l4iZtBbRi6T7U/AVuXVc3uThox+MEEPlMuVxk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=vAsi852I6GtlZqJrKc1nreG5WL38J0a7DblELx/msmF7z0yjmXkBD0nU76UWf3Qgf
	 zrnOHXblIBcojCqez017n6mWh0GDvsY6YIXmmRoUiEyJZN2fGZgwZbbxMLtTh+hGWQ
	 /fRHGh+jz+SPW9ueiVVFttQAhgdWEnfmz/Ta4ztr+R5WwU3fUaXLbXPrK7VLyByVE4
	 j8LcjBFT/1K/w0ETG7ZT/UUN9HKjkOiFo6W40i2x/IVElmsnRbNTM6xysiLbyMEE4H
	 IPRAMggYRz+iyXM4Fo7ggIHZiKglvqyE3hPaj7DzWeH+7FUmkB2UHEUt96K5OeRmri
	 6expzjnEqM3qA==
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b88593aa4dcso927802766b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 05:31:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUsPdnJlaepc5U6iqHAbMd3RKW+YS5rnLQKOb+urG3LyC120xhyDXAS1jK5qpAdoas5Cj0H6VPKePKo@vger.kernel.org
X-Gm-Message-State: AOJu0YxzEGk6qv/jbhMFAQvVC813Z/t0ZuGatGNpunIbmfAxLwY3Lqa9
	Vi2SHTU0g17DhvRPlL5eEb4mmciKWzsz2lOvL1HE3hbhBXcbhpZEhBCY5tl1SxBhlKQBnvKWg5v
	E8xyeyGpzEiPRSavMVOommNuZFxdR4g==
X-Received: by 2002:a17:907:d0a:b0:b73:572d:3b07 with SMTP id
 a640c23a62f3a-b9081b3b176mr1168239266b.28.1772026271083; Wed, 25 Feb 2026
 05:31:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260219144200.2633404-1-robh@kernel.org> <aZ5VgoDF4QvWaCgE@shlinux89>
In-Reply-To: <aZ5VgoDF4QvWaCgE@shlinux89>
From: Rob Herring <robh@kernel.org>
Date: Wed, 25 Feb 2026 07:30:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJH_JHd2Z_eGCVC7ZC6f++i0B0sgO0S+H=6pEPkDaQb_w@mail.gmail.com>
X-Gm-Features: AaiRm5387ptX5lq7w4u8E_PCK0Uoy67m5yPpQa0GfE5zATrxIDOZ9S4knTtqULo
Message-ID: <CAL_JsqJH_JHd2Z_eGCVC7ZC6f++i0B0sgO0S+H=6pEPkDaQb_w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: freescale: imx93: Add Ethos-U65 NPU and SRAM nodes
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268378-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,1.56.128.0:email,nxp.com:email,0.0.0.0:email,4a900000:email]
X-Rspamd-Queue-Id: CE93D1981C4
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 7:49=E2=80=AFPM Peng Fan <peng.fan@oss.nxp.com> wro=
te:
>
> Hi Rob,
>
> On Thu, Feb 19, 2026 at 08:41:59AM -0600, Rob Herring (Arm) wrote:
> >i.MX93 contains an Arm Ethos-U65 NPU. The NPU uses the internal SRAM for
> >temporary buffers. The SRAM is larger than 96KB, but that is all that is
> >available to non-secure world.
> >
> >Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> >---
> >NXP folks, any comments on NPU freq? IIRC, the clock controller supports
> >setting the freq to 1GHz. Is that supported?
>
> NPU supports three freqs:
> 500MHz for Low Drive mode
> 800MHz for Nominal Drive mode
> 1GHz for Over drive mode
>
> The NXP downstream choose nominal drive mode for peripherals,
> in NXP downstream, there is a driver to do nominal and over drive
> mode switch for the SoC at runtime(through sysfs interface by user), ther=
e
> is no dedicated arm core voltage supply, there is only one vdd soc supply=
.
>
> To avoid introduce complexity to various drivers, drivers use nomimal fre=
q,
> so OD->ND switch does not require drivers to update its own clock frequen=
cies.
>
> >---
> > arch/arm64/boot/dts/freescale/imx93.dtsi | 23 +++++++++++++++++++++++
> > 1 file changed, 23 insertions(+)
> >
> >diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/=
dts/freescale/imx93.dtsi
> >index 7b27012dfcb5..d826d4b5a06b 100644
> >--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> >+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> >@@ -43,6 +43,29 @@ map0 {
> >                       };
> >               };
> >       };
> >+
> >+      sram: sram@20480000 {
> >+              compatible =3D "mmio-sram";
> >+              reg =3D <0x0 0x20480000 0x0 0x18000>;
> >+              #address-cells =3D <1>;
> >+              #size-cells =3D <1>;
> >+              ranges =3D <0x0 0x0 0x20480000 0x18000>;
> >+      };
> >+
> >+      soc@0 {
> >+              npu@4a900000 {
> >+                      compatible =3D "fsl,imx93-npu", "arm,ethos-u65";
> >+                      reg =3D <0x4a900000 0x1000>;
> >+                      interrupts =3D <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
> >+                      power-domains =3D <&mlmix>;
> >+                      clocks =3D <&clk IMX93_CLK_ML>, <&clk IMX93_CLK_M=
L_APB>;
> >+                      clock-names =3D "core", "apb";
> >+                      sram =3D <&sram>;
> >+                      assigned-clocks =3D <&clk IMX93_CLK_ML>, <&clk IM=
X93_CLK_ML_APB>;
> >+                      assigned-clock-parents =3D <&clk IMX93_CLK_SYS_PL=
L_PFD1>, <&clk IMX93_CLK_24M>;
> >+                      assigned-clock-rates =3D <800000000>, <24000000>;
>
> APB could run at 133.3MHz.

24MHz does seem a bit slow. Do you know what parent would that be?

Rob

