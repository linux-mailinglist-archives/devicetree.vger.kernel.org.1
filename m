Return-Path: <devicetree+bounces-21954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD61805D08
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:13:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5605A282000
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6317E5F1F3;
	Tue,  5 Dec 2023 18:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks-com.20230601.gappssmtp.com header.i=@gateworks-com.20230601.gappssmtp.com header.b="Zk/tiMBt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D8B8B0
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 10:13:36 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-54cfd70b2dcso1952421a12.3
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 10:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20230601.gappssmtp.com; s=20230601; t=1701800014; x=1702404814; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mXq0MfZRsUUXWF9wD5yNB4JShTMDiPdjDXjC0F7taj4=;
        b=Zk/tiMBtakw5L3FcipK7znbHmefycm8fIrj6JtDEjulBR1qOK/8He7CaAkzszZjWR+
         VQ+GpOf/tBRj+PujLs3pwnGHYR++Oi+mD8oqydqQbNoftKvFF9uP1k0ns874PSttsUBA
         nmGfosSDzXPhZhG01ZbapclY9kjDI8Vg5gQoDQ2q7WraPdijNmLH+/fBAHsjJ7EBqJMP
         5vV/ofOm0KMkL08yUMXBqoz0MkGqtpEtooWZrEXwgxvFcg5PLyi5lsSEO14hwXXLt8mx
         yyF89RVlPbQGc47vsrLV+IWdvjaK4NBABHYszrrkD+FBHeWe0ATJtktTzh5wytw3jQBm
         Rrgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701800014; x=1702404814;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mXq0MfZRsUUXWF9wD5yNB4JShTMDiPdjDXjC0F7taj4=;
        b=DjNtF870Je67VwZHYr7YzSM34V9PjFxbXhMWl8K5bXfRFd+fkCE8/IxOainozh9bHf
         5Pen+ZWyFNu7OLPNPEZhAnN9RicvBRIxxJMxQPgGHh2tiiqCpedHJIeoifMA0SJ+j93N
         nCsJFCOMdUf5fvJlbDA0jsVeyZr1/c2jTTo39Ft9xLUkV0+g5Ergf9q+4+lJB7TN3RB2
         ffKue46v4U0zZC0+gULjUbYuMpTHR3ASpX09KC2y4UaWYENajgVJq9zoI2AhH3XuaDNH
         EcVnmqWK/4NjUEjcD8c0iu2pM37+bS8OCdaeURc6KT7/V03+QE5vQzpqPbUHWIsVvLRT
         oJyw==
X-Gm-Message-State: AOJu0YyUxCaa5+ImlIi6++1v8pER05tAdjhegwUw8Y8l6p80h7EJpTCN
	u/PQAu+rv1GKy1VjXel6o/8HUkMTbUZcnn2VmRTuEw==
X-Google-Smtp-Source: AGHT+IFmKwiC4EDFrybnCkMnPFoevOkPdtg4vQBvxBHXLhsCV0BnoZlp1hCTpg2BeuOvGr+igVu2Q9Lq73abUwn5b58=
X-Received: by 2002:a17:906:73d1:b0:a19:b93c:d28e with SMTP id
 n17-20020a17090673d100b00a19b93cd28emr4703493ejl.2.1701800014652; Tue, 05 Dec
 2023 10:13:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130191815.2421978-1-robh@kernel.org> <CAOMZO5AZNz1cRg+aYQjDmpZ75ATJQUTWmC5mx+vgaYcBL6M+2w@mail.gmail.com>
 <CAL_JsqKLFpPo8xTh_vgWvDXSY5J8tQJZh9SrkW2EiK5V_ZNeeA@mail.gmail.com>
In-Reply-To: <CAL_JsqKLFpPo8xTh_vgWvDXSY5J8tQJZh9SrkW2EiK5V_ZNeeA@mail.gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 5 Dec 2023 10:13:21 -0800
Message-ID: <CAJ+vNU1DiFbQivka8gA1URiLMD2mWJnWSdn-77bEo8Uz0Liqcg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice: Fix PCI bus nodes
To: Rob Herring <robh@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 2:33=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Nov 30, 2023 at 1:28=E2=80=AFPM Fabio Estevam <festevam@gmail.com=
> wrote:
> >
> > Hi Rob,
> >
> > On Thu, Nov 30, 2023 at 4:18=E2=80=AFPM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > The imx8mm-venice boards PCI bus nodes are a complete mess. The
> > > unit-addresses are wrong. The PCI bridge nodes are incomplete missing
> > > "device_type" and "ranges" and just wrong for "#address-cells" and
> > > "#size-cells" values.
> > >
> > > All of these issues are reported warnings if anyone bothered to pay
> > > attention. Sigh.

Rob,

Sorry about that. At the time the dt was submitted there were still so
many dt warnings it wasn't very clear what was a legitimate issue and
the PCI bindings are not that easy to understand.

> >
> > The warnings are gone in linux-next:
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/arch/arm64/boot/dts/freescale?h=3Dnext-20231130&id=3Dd61c5068729a76a618=
3a897bcad4bf26e8d3d674
>
> Linux-next is wrong. The ethernet device should have a node name of
> 'ethernet'. The 'pcie' node name and 'device_type =3D "pci"' is for PCI
> buses/bridges only.

So as Fabio has tried to fix this with a patch that landed in
linux-next this patch won't apply. I'll submit one that covers your
changes.

It's always been unfortunate to have to have this level of detail in a
device-tree just to allow boot firmware to populate the mac address of
a PCI ethernet device.

Best Regards,

Tim

