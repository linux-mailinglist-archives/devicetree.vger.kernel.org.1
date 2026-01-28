Return-Path: <devicetree+bounces-260243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAvPE1bLeWlwzgEAu9opvQ
	(envelope-from <devicetree+bounces-260243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:39:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BB19E4A6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 660A83009513
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03A4232AAAD;
	Wed, 28 Jan 2026 08:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pkl1gXpi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD9F2F361A
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769589575; cv=pass; b=Oj+lq2J2m6lJAI4ZcPsHjbIsHFJ4KUGYgoSFpYSyR12idJ7RKHUMOjZuQyVP+DkqkMHnno6wobXKjd3GR4l7+9L4rrTnYNOfbQqjuqVUDoADyc8trIaBx1v9mqQurP6oPm4/7o8OnxEZqm1p/Ic4r3jU53h6uZKl3YJ1z7GjH4E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769589575; c=relaxed/simple;
	bh=gGE2lZbNShncu6x47TBaOZt0HX0D2dy620kD7U47i8M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O642XflP/OEt04SlbwrJoZGmevdKw65oTTR/ho8yJssnN54OXeex8wXP9jAAPiCkWYehpTdW8s5VOMDuGcAsKDU0EBxzc2Uq+otNBwZoSRg922OmTW2pLlMlyX3uGqiQk1kTdFjtzaJ/S9FK28MNOnzfHB0xJGJbV1ki81mb4dg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pkl1gXpi; arc=pass smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-432d28870ddso3506123f8f.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:39:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769589573; cv=none;
        d=google.com; s=arc-20240605;
        b=Sttskwh7j/hHhs63EMX1XpbRzwzutetog5lWqFdoQPp2QzY0GgF5hAixB1csEk1slc
         nKkbYsBcy1i6JfKdqplfVAPC9lhcMu+3PHXgiuUdBfjPoIo0my6eyaR5RZBMXm/hCsE9
         b8lqLgPs0XC6yxKEAy8B/D3QVvuIxbEWqIL5m3FPMZUPAHxJ+qpb1gzH5R+hKObeGTgq
         sP4NfuTw29Lx0fQjrMkdQWx1uP48gwvoF6Eo015si0pVLB+XGoNfKrZtEyIAys3sSFUV
         FKcVDNmQFI2a/xFIFFTkSvsJmk9J3i2sOuVCsuzS1PNzdcwsjEQpSeYRLFNG6hgJBzcb
         g61w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=B66d3ujh7h0A/WS6d2XbPk4tiEtVkdJvMPjnQVBm9iU=;
        fh=NZ7NU4UIUYEL7JAAtz3AKtI1xGbQcMRwhOQZ0vHnkzQ=;
        b=gRVeHlvuvKjj8Sh7s+LbxabIFzZrVSxRW95bsyfCVrjdj/VFaAUgLdLEBn/+gk1tnP
         W7YpZPd8RCl+8YRUjZRxGbXKLaZ0FL19pAjsqwLVkwBubt3dnv4oGTo7Md2/OtmL08f9
         /X5APSx5gjh2s+gmayVatpjAJWb7KslYOiPi9RI6DiNrQyzleqaTD8jlNELIZ2N7cYAH
         RMpxFtyNfkpJGJSfCbARJGLPjSaqAuPAP5OKVIvHpsZew1ZDPQgiYhFzI/eh4T3E+XfS
         gqKJGunxv3ZDV9eToU0iB5AEiwGRYQAv9KXHOjMfK95rO685gWUWtD26DrSmIvBUs/zl
         sFtw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769589573; x=1770194373; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B66d3ujh7h0A/WS6d2XbPk4tiEtVkdJvMPjnQVBm9iU=;
        b=Pkl1gXpiOf23SRnktphsc5C+0QnyzOUsFssAhb38YkxYccmK8CIu7d5xTm9fN2pj5G
         DgQ8iiksACb70oPWJumiN44lm4saya3bM8OpCFGi53pnHw6MtzpHH7ND5H7IKrklD511
         YmK9wxiqFj5a6LjdrrP74meO1Y5ZrhVq6CgQ5wcTp/SS29Nu7C11c6Ob6m7UeLTepQjz
         w+wobsOcPeb1F/4xCH88+P8KPb7ZuRC6WmWHRx+DkiTSA961nuyUpGi8mB5E0rDD77SI
         LvClwjbBd5pNJaqZUkg533gvcQrPjowNFlyqVOsGy4+Jdmqghnf6hHUizdNGXeqH8sRm
         PPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769589573; x=1770194373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B66d3ujh7h0A/WS6d2XbPk4tiEtVkdJvMPjnQVBm9iU=;
        b=UzUHUmOtire5FCtx1kpalQ1mPnmQ/KYJRwLWNz70Oj3/ard9Z+w6vN712N3EU5Gn0F
         63gt/tG+uLsvut2I9DjI3ueK7IySMhfv41oRTemwujmuc7LrW8CUem4OewvT57lPTxXp
         4luqUe5rgvpNmCqAEqdSvmn1wkrA0hljsdfqF6seRkDRXU+52QnNI9/9aoo7QnYt7JX5
         fmzOzb71TQbAmhqDhDsBbqItkwFnaTV1pSJyj0kcHnJnNYxrNxUANr4CmJQqSU4iT69H
         nmgwqWZKwXof1ObmRL1gOABB6AErIkjP1wZK4JcxkAnaoKKYAXw0k8OxOUDlXxuOq/ko
         V6BQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJsM5dsSFIUyKZPPuJo4du9tCfXoxt6/+URQjYyuZ2FGqHAr5SQd3ObruLxPAycUOh3/ww03dtrjnc@vger.kernel.org
X-Gm-Message-State: AOJu0YyHvCYO9XWA+Ie/c36W5IgoQ1heWjk9BQ93n6S4koeETY4eKQ6h
	h5rL3cVI5/NMknidYP+MvxSUkwhlGEnJ7mV9KFFLH9DIKZK/tIxrWIR4FoHxg/whV7aaBvXtVcu
	5LkttASdEL9+7glJVGivQ8C3rOHdhoAQ=
X-Gm-Gg: AZuq6aLMAbpp4mFpCq033Cef77mVX9UetdWO89ms51HV3qPv4N3rQ2nmnk6A+h6NuDQ
	6dW8sFpuYJASFfNXQjEVSrp9m2deBn1s4AATzUXc+xcOI+tiBPMmulutMkWjSbUG1+GCJ2H8gOD
	EJAve7Nzr2ncd9k3wamrZGhU1ZM3JxCDbd+1itm7VZoiC9TDA6Iwh2b9CWKVQ9zM95EttcaFuZe
	QMH2k6+UqHDWJAemX2nnkMTyr/COLsG91TUgoeYq1VYONmkTJui3myTnlgf8NgxSz8uuj6M7DyZ
	5PcoyA0=
X-Received: by 2002:a05:6000:2906:b0:432:857d:e425 with SMTP id
 ffacd0b85a97d-435dd0a40a4mr6149417f8f.30.1769589572469; Wed, 28 Jan 2026
 00:39:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260127025740.2601841-1-onlywig@gmail.com> <20260128050549.3337279-1-onlywig@gmail.com>
 <20260128050549.3337279-2-onlywig@gmail.com> <aXmsbbt9T5ZRGtES@shlinux89>
In-Reply-To: <aXmsbbt9T5ZRGtES@shlinux89>
From: Wig Cheng <onlywig@gmail.com>
Date: Wed, 28 Jan 2026 16:39:19 +0800
X-Gm-Features: AZwV_QisDOJPdzB7hBtncbVdr6RMWIjbixaTB16D-guHWsWAMozPqEa1RjRA1NY
Message-ID: <CAPStFe7-1++d79LEnh0=ozkZrU7n8_FWx_cx8_YUc7UhOt48hw@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: freescale: add pixpaper display
 overlay for i.MX93 FRDM
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	zaq14760@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260243-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 80BB19E4A6
X-Rspamd-Action: no action

Peng Fan <peng.fan@oss.nxp.com> =E6=96=BC 2026=E5=B9=B41=E6=9C=8828=E6=97=
=A5=E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=882:28=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Wed, Jan 28, 2026 at 01:05:49PM +0800, Wig Cheng wrote:
> >Enable Open-EP Community pixpaper-213-c support on NXP i.MX93.
> >
> >Signed-off-by: Wig Cheng <onlywig@gmail.com>
> >---
> > arch/arm64/boot/dts/freescale/Makefile        |  4 ++
> > .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 51 +++++++++++++++++++
> > 2 files changed, 55 insertions(+)
> > create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpa=
per.dtso
> >
> >diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dt=
s/freescale/Makefile
> >index ce8f937c2315..c2727f8061e2 100644
> >--- a/arch/arm64/boot/dts/freescale/Makefile
> >+++ b/arch/arm64/boot/dts/freescale/Makefile
> >@@ -398,6 +398,10 @@ dtb-$(CONFIG_ARCH_MXC) +=3D imx93-9x9-qsb-i3c.dtb
> >
> > dtb-$(CONFIG_ARCH_MXC) +=3D imx93-11x11-evk.dtb
> > dtb-$(CONFIG_ARCH_MXC) +=3D imx93-11x11-frdm.dtb
> >+
> >+imx93-11x11-frdm-pixpaper-dtbs +=3D imx93-11x11-frdm.dtb imx93-11x11-fr=
dm-pixpaper.dtbo
> >+dtb-$(CONFIG_ARCH_MXC) +=3D imx93-11x11-frdm-pixpaper.dtb
> >+
> > dtb-$(CONFIG_ARCH_MXC) +=3D imx93-14x14-evk.dtb
> > dtb-$(CONFIG_ARCH_MXC) +=3D imx93-kontron-bl-osm-s.dtb
> > dtb-$(CONFIG_ARCH_MXC) +=3D imx93-phyboard-nash.dtb
> >diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dts=
o b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
> >new file mode 100644
> >index 000000000000..1111503b08af
> >--- /dev/null
> >+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
> >@@ -0,0 +1,51 @@
> >+// SPDX-License-Identifier: GPL-2.0
> >+/*
> >+ * Device Tree Overlay for Mayqueen (Open-EP Community) pixpaper displa=
y
> >+ * support on NXP FRDM i.MX 93 Development Board
> >+ *
> >+ * Copyright (C) 2026 Wig Cheng <onlywig@gmail.com>
> >+ */
> >+
> >+#include <dt-bindings/gpio/gpio.h>
> >+#include "imx93-pinfunc.h"
> >+
> >+/dts-v1/;
> >+/plugin/;
> >+
> >+&iomuxc {
> >+      pinctrl_lpspi3: lpspi3grp {
> >+              fsl,pins =3D <
> >+                      MX93_PAD_GPIO_IO08__GPIO2_IO08          0x3fe /* =
SPI3 CE0 */
> >+                      MX93_PAD_GPIO_IO09__LPSPI3_SIN          0x3fe /* =
SPI3 MISO */
> >+                      MX93_PAD_GPIO_IO10__LPSPI3_SOUT         0x3fe /* =
SPI3 MOSI */
> >+                      MX93_PAD_GPIO_IO11__LPSPI3_SCK          0x3fe /* =
SPI3 CLK */
> >+              >;
> >+      };
> >+
> >+      pinctrl_epd_ctrl: epdctrlgrp {
> >+              fsl,pins =3D <
> >+                      MX93_PAD_GPIO_IO05__GPIO2_IO05          0x31e /* =
DC pin */
> >+                      MX93_PAD_GPIO_IO06__GPIO2_IO06          0x31e /* =
RESET pin */
> >+                      MX93_PAD_GPIO_IO26__GPIO2_IO26          0x31e /* =
BUSY pin */
> >+              >;
> >+      };
> >+};
> >+
> >+&lpspi3 {
> >+      #address-cells =3D <1>;
> >+      #size-cells =3D <0>;
>
> The above two properties are in imx93_91_common.dtsi lpspi3 node, no need=
 to
> duplicate them.
>
> Regards
> Peng
>
> >+      pinctrl-names =3D "default";
> >+      pinctrl-0 =3D <&pinctrl_lpspi3>, <&pinctrl_epd_ctrl>;
> >+      cs-gpios =3D <&gpio2 8 GPIO_ACTIVE_LOW>;
> >+      fsl,spi-num-chipselects =3D <1>;
> >+      status =3D "okay";
> >+
> >+      display@0 {
> >+              compatible =3D "mayqueen,pixpaper";
> >+              reg =3D <0>;
> >+              spi-max-frequency =3D <5000000>;
> >+              reset-gpios =3D <&gpio2 6 GPIO_ACTIVE_HIGH>;
> >+              dc-gpios =3D <&gpio2 5 GPIO_ACTIVE_HIGH>;
> >+              busy-gpios =3D <&gpio2 26 GPIO_ACTIVE_HIGH>;
> >+      };
> >+};
> >--
> >2.43.0
> >

Hi Peng,

Thank you for the review. I understand that #address-cells and #size-cells
are already defined in imx91_93_common.dtsi for the lpspi3 node.

However, these properties need to be present in the overlay file for proper
DTC compilation. When compiling a device tree overlay (.dtbo), the DTC
compiler cannot see the properties defined in the base DTB. Without these
properties in the overlay, the build generates warnings:

    Warning (reg_format): /fragment@1/__overlay__/display@0:reg: property h=
as
    invalid length (4 bytes) (#address-cells =3D=3D 2, #size-cells =3D=3D 1=
)

    Warning (avoid_default_addr_size): /fragment@1/__overlay__/display@0:
    Relying on default #address-cells value

This is a known limitation of overlay compilation, and other overlay files
in the kernel tree follow the same pattern. For example:
  - arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-lte.dtso (line 78-79)
  - arch/arm64/boot/dts/freescale/imx93-9x9-qsb-i3c.dtso (line 22-23)

These properties in the overlay don't conflict with the base dtb, they are
merged correctly at runtime. The duplication is necessary only for clean
compilation of the overlay, thanks a lot!

Regards,
Wig

