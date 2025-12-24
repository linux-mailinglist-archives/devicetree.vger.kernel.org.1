Return-Path: <devicetree+bounces-249405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 986DECDBA2F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 015883015E2F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 08:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5230D32826B;
	Wed, 24 Dec 2025 08:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eHdvNRe9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8C12BF002
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766563485; cv=none; b=CVPLb26fZ5/v2K1zRxh0sranaNw46cvG6KZCiIgWZEWgdUHiHVdiC+5Lz0f8oU3vDyXpDjY2EFasna8Z9AZgI2HCiOMBjSIvztJepVymNEMvpNgTBI/66yWEqbjDflEncPpIAUxWN5N/pb7VznLUwxISGU4P97G8gVUU8T0bF8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766563485; c=relaxed/simple;
	bh=+TfuYlLvMaLWTZmZDZsnA49hO+ryorTTCnTkX2pKAFY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E/Dvs3yUnRxAms/uMUGalOoDOLuFAVT31i69WtDfxKtrYta9rGvCgOsYnZGVu67qtRcWvocsmIvRAJNzhyKz2LpQT6w2BBWHeFXmGjxfNP5Af1lYWNNhevYcrnusqoyYzZtzHrDh5fNQeguk/lJK82VemFnC+IDwvj0P9F1yhWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eHdvNRe9; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64b83949fdaso6937495a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766563481; x=1767168281; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+TfuYlLvMaLWTZmZDZsnA49hO+ryorTTCnTkX2pKAFY=;
        b=eHdvNRe9hkZqROWeFuDWFlc5wcSJy9zW490I34GWsdhhSgtxAcFToSHsGJwgFg2raq
         AnwMicqHza3dD0uHLZDzYR1Ynjvk9FO5bpodkKYRMSWaffXnRwLnsGesRV9Iufl/Gm6W
         0iCJD8fXjchWI9LyVnjjC9LoXNrJFkiTaNu00Ejb63kqZjpiMAiM0doIk9ti9XlQKb9z
         5HEK0fNHFPD+PSYcYR4PccovDC7H22IZcQ4hsJjJVhG7MaH7tMc2cV5OoqT430ms53tZ
         46eClMPO6msk1+4d2SDonlXKPegBIl/OHaZMdWXTWjAPmHHaAONMLd6M7pw8OOa5HmKq
         Q2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766563481; x=1767168281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+TfuYlLvMaLWTZmZDZsnA49hO+ryorTTCnTkX2pKAFY=;
        b=X4WPjjOA8fdR9N7qiQvPgZ2UEZJNtWYEx9BlRY6lDOnx2PzT5ttONh+n5csSPLdtcn
         cugD0tpxlbhD3LdgLZPxSP3abSaL6FhV6SOJ2uHu5u+GZyY2plZ9aGr3bM9NW8WTZ/nr
         ObTdZkMGWxROXpvl9oRrLo99hKlab95itfC/t782ljGEK2JsCDSm3xxL6ty+GMATLrZU
         mbDm8Ntc/HDcZtm1GDlXZ8/ZXbPc3N5Rh4cC9+hLV2StXgKjA98TAJDd4Uv4hjvHRk91
         8kw8h7XocTmQfJNPQQeNBGh5Qc3FmRNTEn+PAiqO41zbuMuC40b2ZbZBN+gkEKlxrsrT
         Cu3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVK1wbUs+RmkRCJSnYLMv/II+yIf1h/EL/qWCGFPylJFUW0VSRtne1PWUM1jD5CHgvJOrvKyJ+IsKU7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4fQWt96cc6rfKbQYYU/hoEm8eI/OJCqd5S/PGWwxzT3yfjmfZ
	Px4VClDuEJ2pfg8WrjWzJmhC9bEufjFQMYfg0wiIHgKdEnwO3qcvct0g2Bp9E14RYCb1O5e0MT8
	CWIuEhg2tdVw88xwZXFll5kqNy0ky/J0=
X-Gm-Gg: AY/fxX6vcwRveKJbjJRJSPpilgbTSbSaSt3Bvh7QMAVlSBG3lxsCffm17us2pwQCiqJ
	7my4vb28NlErFgC9O9d73lirjW9SfOuE/DlYdUQIKha3y7IrXRpU5BvKt+1DkZIzkx6nr7aLxpK
	k4noAcUadZilZ50kuJl1g+aS1BUxG/Oordcv0J/iHi5i3mi2Z33G6bK3YAkNJShR85dtN9EcmC9
	EiaicEBlW3TF9nIAYeJC7bpnA6CrCJFNBF/nM4vYht4FsYfIRF1QPd3C2LVnrkuwX8=
X-Google-Smtp-Source: AGHT+IFNXz2QU01SE+DL2c1ZCqqAJiAT079DS2+XmSlL7nM5RGPoflTCsCJq7MHCePPbrmgdDllZFgH4/zk85C3yl5w=
X-Received: by 2002:a05:6402:50cc:b0:64d:4a01:fc23 with SMTP id
 4fb4d7f45d1cf-64d4a020dfamr9289029a12.10.1766563480975; Wed, 24 Dec 2025
 00:04:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com> <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
In-Reply-To: <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 24 Dec 2025 13:34:23 +0530
X-Gm-Features: AQt7F2qzfCdogAfkIVvQ40sYz72XmKQPz1kBLtv40YPxaEuaYu_edJzXc4ZwP9s
Message-ID: <CANAwSgQPQUBi6VVb+hZNraMt71vnRpki+YK_at=Luo4aPVtOPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geraldo,

On Wed, 24 Dec 2025 at 11:08, Geraldo Nascimento
<geraldogabriel@gmail.com> wrote:
>
> On Wed, Dec 24, 2025 at 2:18=E2=80=AFAM Anand Moon <linux.amoon@gmail.com=
> wrote:
> >
> > Hi Geraldo,
> >
> > On Tue, 18 Nov 2025 at 03:17, Geraldo Nascimento
> > <geraldogabriel@gmail.com> wrote:
> > >
> > > Shawn Lin from Rockchip has reiterated that there may be danger in us=
ing
> > > their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT chan=
ge
> > > from the default and drive at 2.5 GT/s only, even if the DT
> > > max-link-speed property is invalid or inexistent.
> > >
> > > This change is corroborated by RK3399 official datasheet [1], which
> > > says maximum link speed for this platform is 2.5 GT/s.
> > >
> > > [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Dat=
asheet_V2.1-20200323.pdf
> > >
> > To accurately determine the operating speed, we can leverage the
> > PCIE_CLIENT_BASIC_STATUS0/1 fields.
> > This provides a dynamic mechanism to resolve the issue.
> >
> > [1] https://github.com/torvalds/linux/blob/master/drivers/pci/controlle=
r/pcie-rockchip-ep.c#L533-L595
> >
> > Thanks
> > -Anand
>
> Hi Anand,
>
> not to put you down but I think your approach adds unnecessary complexity=
.
>
> All I care really is that the Kernel Project isn't blamed in the
> future if someone happens to lose their data.
>
Allow the hardware to negotiate the link speed based on the available
number of lanes.
I don=E2=80=99t anticipate any data loss, since PCIe will automatically
configure the device speed
with link training..

> Thanks,
> Geraldo Nascimento

Thanks
-Anand

