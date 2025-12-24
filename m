Return-Path: <devicetree+bounces-249590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AEDCDD195
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 22:58:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4998830191B1
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 21:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053C32DA76B;
	Wed, 24 Dec 2025 21:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hAR9x5QP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF0221F34
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 21:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766613482; cv=none; b=epKh4tEznlddRDRxj0czIqnfRBkB259xOn2WUdX+tYaRJ0Q5gmCATN6nRRkaE77BrikClbxZeGdUcHCoy6GGw6KDd8bav/rfSWyhecgP0XZdzpdODYA9jFV4UnUOQgnSrHwgcFcLNKyh76tv1vJ1NxHsPVb8OROcURkEzPEDbnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766613482; c=relaxed/simple;
	bh=Od9O5Vjuadc3i8HfvSRNQiYd12oWVzXIE1EnhmoQklc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kyDB7vTa+qOwIW7Jvkoh1P/hIO5hXQt+leeR1n/EYz5YlDQb1MHtM5C6PhYQsXQaOG68KjjBGFE00Y1hQ/B2C5KSEvV8AEFh6TVmG/ogG8Wo2NJxVocLqo+RFCFUqsjqIbj0n2zE6UR0+rKSyQ+rbXGYxOV2kOWsCXliHVLEm3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hAR9x5QP; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-37a2dcc52aeso66261751fa.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 13:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766613479; x=1767218279; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BpPhIVPLcl7AlcgaNncZR2f2MLRrtlVGy3ymmkGrT98=;
        b=hAR9x5QPkn3H1I5514al53eeDUjUI14ZQfM4JkMA2XD4qQlW1MR5sIhgGd+dX0Dtss
         AcTMX5JK4gSeT3t809BEpIo7xeXRznp5tYxj5ZXHZbxusnTsSJOEa+Ivn0N8CpubVyCS
         D9dXJ2SYC4la0zCGocP6iLRqMgPqEpzmz+KdhnLBtIrIEgExuWU3rfIc3zN4hdlH6Gga
         fqpF0qsNpJ87hWeUeyXBlvtGCnxUHtsxh/Pi1X+PZvwZfIpWcZcHy5YmKrzYsgtoLdjW
         4mplJ/Jjvg1A4VmhWJxMMByH0s16F/vJTF5rDJv3ZPTsGz7inm9FTjDx9T5i2eIfZJKy
         xu/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766613479; x=1767218279;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BpPhIVPLcl7AlcgaNncZR2f2MLRrtlVGy3ymmkGrT98=;
        b=caCArfT6Sz4NNr4hACCJWzFmFCPAyJ8/yWGrQ4NPAyO6IKmiTIqEyGZ8LeWGNs3rn0
         RmJWysu4HA6qvV+ZTLIiz0R4bhwbzqy/WFG4vMYM2EOxPsqSN10XcE7PUrwDePSdtknd
         C4dM9nRCBi7Gcs3J9DcwULDP8UrM5+hZAXOfTKlTFzX8VSrQjIEMa+P+VLOM6KcsjlUc
         gOWCNkw7de1nTw7lrJBeInkGRCU6/LJOD2d2xyRDBXd06Vt7fQYh09YN/fm4cdDazOe4
         FujnHeXo+lt3+vbNaMnl2gkRpS4Hvn5jvUtUaEaFp7Bb6OGzYVW0+jX+WRDK/eYbI3Tt
         QWvg==
X-Forwarded-Encrypted: i=1; AJvYcCVylyLIW6wjsl4WmR/FQCeHb7tHDGnjzmV+zcF5NXvIXT2SSugCGWb1g8IuNXt/MdL9xhzFpu4/6aCH@vger.kernel.org
X-Gm-Message-State: AOJu0YzlWxS9rZSVFlyULvoZqRi5fG9f21JOOX6Y5S0WYtrfn1l1+TpV
	F2Q3yeB8QBtA+37YH8kvoUDLoRu5kb2KCagk7rofO/zghhauwhLg34w3OOdJoBEyogZgfW8+ZHz
	zuPKsFyJkvCuWe8uobi2OuYFZm0h5vbM=
X-Gm-Gg: AY/fxX5UpzP57DlxOANux+8uLlgrFToZ3P7OxaS6MrAAz4diwvJ83LA9ig70ffsUYWo
	Urgtvt/6D3WlNbvCOocM9SVbgm8os8F5TtWUvonz050HdFPA7F+4PbojZxQnHIkeB7O4Y58Hhe0
	BdcdLDdSUbQBKgwL6Xka/nOtW9toNDD13bjBV72XyJJ/6nbVPkdnq4XW61ZWtiscxr/MM16HLOd
	9/DNfn7Lwedee4MB+J3hzpFQ2m03eGzcUE+tKHCDqX2i1atAHVh29k7dVjo+PUJhuumukJmNs98
	2ODf37U=
X-Google-Smtp-Source: AGHT+IEkZq/SghbcemDD4gpQJkxuW1kec85kuxDcNZRjtvTDrMQzCzdvYYwzT+2kprBLyKYZnyXIlIOYdRbjndvcfbo=
X-Received: by 2002:a05:651c:549:b0:37b:8f05:13bb with SMTP id
 38308e7fff4ca-38121635cbbmr65292381fa.27.1766613478895; Wed, 24 Dec 2025
 13:57:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
 <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
 <CANAwSgQPQUBi6VVb+hZNraMt71vnRpki+YK_at=Luo4aPVtOPg@mail.gmail.com>
 <0afea20b-be22-2404-5a8e-c798ed45f2fd@manjaro.org> <CANAwSgS6UeR4PJnWDxxcQbdH8u_4uNiQxCTugQS35LcPvpiwMQ@mail.gmail.com>
 <648aa5c0-9e58-2404-4250-e83b8a748601@manjaro.org>
In-Reply-To: <648aa5c0-9e58-2404-4250-e83b8a748601@manjaro.org>
From: Geraldo Nascimento <geraldogabriel@gmail.com>
Date: Wed, 24 Dec 2025 18:57:46 -0300
X-Gm-Features: AQt7F2qLlj1sHGE5kS7xlOSGgQLXJ9ioNCl22i1s4n8IwdgKKh2cem-68BhAFek
Message-ID: <CAEsQvct-AyhdOU9xhP0HnN8be+ut=tDBgUt0n3D4TT9ZMXnTbA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Dragan Simic <dsimic@manjaro.org>
Cc: Anand Moon <linux.amoon@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 24, 2025 at 1:52=E2=80=AFPM Dragan Simic <dsimic@manjaro.org> w=
rote:
>
> On Wednesday, December 24, 2025 17:11 CET, Anand Moon <linux.amoon@gmail.=
com> wrote:
> > On Wed, 24 Dec 2025 at 18:25, Dragan Simic <dsimic@manjaro.org> wrote:
> > > On Wednesday, December 24, 2025 09:04 CET, Anand Moon <linux.amoon@gm=
ail.com> wrote:
> > > > On Wed, 24 Dec 2025 at 11:08, Geraldo Nascimento
> > > > <geraldogabriel@gmail.com> wrote:
> > > > > On Wed, Dec 24, 2025 at 2:18=E2=80=AFAM Anand Moon <linux.amoon@g=
mail.com> wrote:
> > > > > > On Tue, 18 Nov 2025 at 03:17, Geraldo Nascimento
> > > > > > <geraldogabriel@gmail.com> wrote:
> > > > > > > Shawn Lin from Rockchip has reiterated that there may be dang=
er in using
> > > > > > > their PCIe with 5.0 GT/s speeds. Warn the user if they make a=
 DT change
> > > > > > > from the default and drive at 2.5 GT/s only, even if the DT
> > > > > > > max-link-speed property is invalid or inexistent.
> > > > > > >
> > > > > > > This change is corroborated by RK3399 official datasheet [1],=
 which
> > > > > > > says maximum link speed for this platform is 2.5 GT/s.
> > > > > > >
> > > > > > > [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK=
3399_Datasheet_V2.1-20200323.pdf
> > > > > > >
> > > > > > To accurately determine the operating speed, we can leverage th=
e
> > > > > > PCIE_CLIENT_BASIC_STATUS0/1 fields.
> > > > > > This provides a dynamic mechanism to resolve the issue.
> > > > > >
> > > > > > [1] https://github.com/torvalds/linux/blob/master/drivers/pci/c=
ontroller/pcie-rockchip-ep.c#L533-L595
> > > > >
> > > > > not to put you down but I think your approach adds unnecessary co=
mplexity.
> > > > >
> > > > > All I care really is that the Kernel Project isn't blamed in the
> > > > > future if someone happens to lose their data.
> > > > >
> > > > Allow the hardware to negotiate the link speed based on the
> > > > available number of lanes.
> > > > I don=E2=80=99t anticipate any data loss, since PCIe will automatic=
ally
> > > > configure the device speed with link training..
> > >
> > > Please, note that this isn't about performing auto negotiation
> > > and following its results, but about "artificially" limiting the
> > > PCIe link speed to 2.5 GT/s on RK3399, because it's well known
> > > by Rockchip that 5 GT/s on RK3399's PCIe interface may cause
> > > issues and data corruption in certain corner cases.
> > >
> > It=E2=80=99s possible the link speed wasn=E2=80=99t properly tuned. On =
my older
> > development board,
> > which supports this configuration, I haven=E2=80=99t observed any data =
loss.
> >
> > sudo lspci -vvv | grep Speed
> >                 LnkCap: Port #0, Speed 5GT/s, Width x1, ASPM L1, Exit
> > Latency L1 <8us
> >                 LnkSta: Speed 5GT/s, Width x1
> >                 LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- Spe=
edDis-
> >                 LnkCap: Port #1, Speed 5GT/s, Width x1, ASPM L0s L1,
> > Exit Latency L0s unlimited, L1 <2us
> >                 LnkSta: Speed 5GT/s, Width x1
> >                 LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- Spe=
edDis-
>
> Let me clarify, please...  This limitation to 2.5 GT/s came straight from
> Rockchip a few years ago, described back then as an undisclosed errata.
> Recently, we got some more details from Rockchip that confirmed 5 GT/s
> as having issues in certain corner cases that cannot be validated by
> performing some field tests or by observing the PCIe behavior under load.
> Those corner cases with 5 GT/s, as described by Rockchip, are quite hard
> to reach, but the possibility is still real.
>
> To sum it up, yes, multiple people have reported 5 GT/s as "working for m=
e"
> on their RK3399-based boards and devices, but that unfortunately means
> nothing in this case, due to the specific nature of the underlying issue.
>

Not only that but the bandwidth actually earned is very small due to the
inherent limited interrupt processing capability of a single core, meaning
the 5 GT/s bandwidth / transfer speed is never fully utilized.

It's better than to force a slightly lower actual transfer speed than to ri=
sk
the liability of someone losing their data, period.

Regards,
Geraldo Nascimento

