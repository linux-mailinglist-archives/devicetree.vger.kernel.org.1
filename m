Return-Path: <devicetree+bounces-230620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79548C04792
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F7103B4B7D
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 06:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A3F2580F0;
	Fri, 24 Oct 2025 06:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M33umFR/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3B4266565
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761286641; cv=none; b=WYYV2tjfXFJ2fbv4dhmawiC0Op50WX1IQMuVFenOkXtUkNAGsNPum/sertGfaM6Y7misprHnNfKEvjvekhdwbJ6Gq6Vcls4EjEK1ft9ynerOCMXnsG1O69d+TPmpsfAE6aopijXMcfiZ3vzBtj/QZpa8bSSAsmz25NlYBQqrP0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761286641; c=relaxed/simple;
	bh=56hNuT/xUKtLWXLBHxCtWU4pY9tz9h+vffMnxjNaQR0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=itt4l/a9Be63bZbTQXOJOkHhl9p+X6L5wfP9Cb5OUfiXjI5fVhSbi7KDBe83fq4MHOa3ipiPv6g2sEJQEisQY1PHI1DJn5GCjWlDeqlHKqcEWakmFC5+oskcBvFtMcbYQbDEQOe1h4eSYe7+9A8L2zsjzg0wBtJNj70tCW6ySnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M33umFR/; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b4539dddd99so337589966b.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 23:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761286637; x=1761891437; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CvQDWtdQ2sodUGWH+64s7RFvD8lI9WBRcaVgkVNkp50=;
        b=M33umFR/y6xIzhgcuH8h+3PJFMMjy8ZqC6BFCKznEezK/A4UXcd3ylhbTEc/fszt4O
         BNq2kYrUWMqWDFmnuYW4ZlbgtrH0Vv1q+IU28pAo2Be3VeTxziZYDLEqocG+IDeY4xsJ
         BQDk0QIEeb5yuw4NmvHK7rCr8Dw6Qc5BNBkNuzazeztERqXJ5C5IS7XhBxxB5H8bq+HI
         ya5yWfESOYqUI/oBQs0mzIkrJTsDv+A7XW3b+eZ62qPfhTnIUi5ZIXXT0sOJu7WfbfI2
         FCRTuCgdfvEu6wGIzTq2zcb5e9rpp9VYAS5TIelib8Ie3HJ7ESspKHe1b9qvsVybqUIL
         3H2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761286637; x=1761891437;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CvQDWtdQ2sodUGWH+64s7RFvD8lI9WBRcaVgkVNkp50=;
        b=tRoYTlIMni0y+2ASG7RJM2995U71RXQCIIRAnIwfpdDBHzNliNuQ7OwojgH3ah5G20
         +tUj4lfM60S5Yo7djP61tTzVj37kMpa61YDxYHfEJHXVz7N3ZNE8BBphWS2z+rkomErK
         /yWRlRAMr/k4ocSLL1KWEgR43Vls2G1Mq76hwUh4Kga1UAIW7XEGXTN2phhT+DcLgERl
         0HOslv5rrqLprq75T6WanWfhZv02W71TQIQqcGYs0SoH6eQM+sRKCo8i2DT0ibq3Zr0D
         RzJw46sFp/ppD8UMvSRGubOLE2Tec2v8q71zV+pngJSHq0RXRZTT0pZX39AlPzS4mY4n
         PV2w==
X-Forwarded-Encrypted: i=1; AJvYcCUvcssdh8JJJQJDuMTpsv8ehMzIwdQpE6pPKIZAlOpKxq1SkjSn4HO0HZplFnvdL4t5Iy9R9BdFPWc0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4r0s8lVY1rg6wZFrXF9RGv7WBHMrlhQxN0CAWwhelDX850VrU
	JpC3ZmtpdeoFjOT4BIg32MJgwXcyHNHbwWE1EzfDDkd0+T9ZSvt1CFgiqeQmpRzLZ6ITfNYXlLC
	xlWzYBrNkUVQiZeeF2VJyUHNo9Rqlpx8=
X-Gm-Gg: ASbGncs+cThhhnz/+w09WscTwVM4aztZdlw+DY9WwWb/fklQ2Z022MIIl7l+d+5BXWD
	5ELAMDt/XVbKeWOp3/ZgGL2zLTUyAuAAz94hyEQnM60ZeIRCeZCCyo6ZK3OpwjeRWlpnDEkGYaD
	scR6MhGqk9dUdBwXP0HLdJWr/4pgga56Waqqp5+Ik4xuP1QC32dG9UcUsWnWB2xvqqtZl4A2cFd
	uQMDmQxXfjWRPMoGuZPLzO+3aPuh9ngX4qNZmt0hv6FzQGi5SgKPIislBKMJoIsJZXTFw==
X-Google-Smtp-Source: AGHT+IEYzJae7VoT/c7FHoFZ2w1f+vGPYbQGnE984l0qzu5gM1i4HI97k5jQZaiikEMv2TwzZxE5MWhZESWWNIE+YQ8=
X-Received: by 2002:a17:907:1c1e:b0:b2b:59b5:ae38 with SMTP id
 a640c23a62f3a-b6d51bfb0e1mr629125966b.40.1761286636888; Thu, 23 Oct 2025
 23:17:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926072905.126737-1-linux.amoon@gmail.com>
 <20250926072905.126737-4-linux.amoon@gmail.com> <ose3ww7me26byqwsyk33tipylkx3kolnc3mjwrlmjwsmza2zf3@os7lkt4svaqi>
 <CANAwSgT0VRFFpKv3saJTAA99oGoAHhP+bx6Xe-QGf5b4Dgik=A@mail.gmail.com> <6eqqafz2dojo533fw2j7say3p37simug5bol2s5dvcpac77jzb@2x22ekyl4qdq>
In-Reply-To: <6eqqafz2dojo533fw2j7say3p37simug5bol2s5dvcpac77jzb@2x22ekyl4qdq>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 24 Oct 2025 11:47:02 +0530
X-Gm-Features: AS18NWB79LzUXZfNM_Vk4QnYlquHYcZbCYFtcNRut2QcVzty8nJpzlwr2rljOfc
Message-ID: <CANAwSgSeOrVjkuFbPKAPXDnCrsApcgePEs3D6MWwtsu9nYNesw@mail.gmail.com>
Subject: Re: [PATCH v1 3/5] PCI: tegra: Use readl_poll_timeout() for link
 status polling
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Mikko Perttunen <mperttunen@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Manivannan,

On Tue, 21 Oct 2025 at 07:13, Manivannan Sadhasivam <mani@kernel.org> wrote=
:
>
> On Mon, Oct 20, 2025 at 05:47:15PM +0530, Anand Moon wrote:
> > Hi Manivannan,
> >
> > Thanks for your review comment.
> >
> > On Sun, 19 Oct 2025 at 13:20, Manivannan Sadhasivam <mani@kernel.org> w=
rote:
> > >
> > > On Fri, Sep 26, 2025 at 12:57:44PM +0530, Anand Moon wrote:
> > > > Replace the manual `do-while` polling loops with the readl_poll_tim=
eout()
> > > > helper when checking the link DL_UP and DL_LINK_ACTIVE status bits
> > > > during link bring-up. This simplifies the code by removing the open=
-coded
> > > > timeout logic in favor of the standard, more robust iopoll framewor=
k.
> > > > The change improves readability and reduces code duplication.
> > > >
> > > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > > Cc: Mikko Perttunen <mperttunen@nvidia.com>
> > > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > > ---
> > > > v1: dropped the include  <linux/iopoll.h> header file.
> > > > ---
> > > >  drivers/pci/controller/pci-tegra.c | 37 +++++++++++---------------=
----
> > > >  1 file changed, 14 insertions(+), 23 deletions(-)
> > > >
> > > > diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/contr=
oller/pci-tegra.c
> > > > index 07a61d902eae..b0056818a203 100644
> > > > --- a/drivers/pci/controller/pci-tegra.c
> > > > +++ b/drivers/pci/controller/pci-tegra.c
> > > > @@ -2169,37 +2169,28 @@ static bool tegra_pcie_port_check_link(stru=
ct tegra_pcie_port *port)
> > > >       value |=3D RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT;
> > > >       writel(value, port->base + RP_PRIV_MISC);
> > > >
> > > > -     do {
> > > > -             unsigned int timeout =3D TEGRA_PCIE_LINKUP_TIMEOUT;
> > > > +     while (retries--) {
> > > > +             int err;
> > > >
> > > > -             do {
> > > > -                     value =3D readl(port->base + RP_VEND_XP);
> > > > -
> > > > -                     if (value & RP_VEND_XP_DL_UP)
> > > > -                             break;
> > > > -
> > > > -                     usleep_range(1000, 2000);
> > > > -             } while (--timeout);
> > > > -
> > > > -             if (!timeout) {
> > > > +             err =3D readl_poll_timeout(port->base + RP_VEND_XP, v=
alue,
> > > > +                                      value & RP_VEND_XP_DL_UP,
> > > > +                                      1000,
> > >
> > > The delay between the iterations had range of (1000, 2000), now it wi=
ll become
> > > (250, 1000). How can you ensure that this delay is sufficient?
> > >
> > I asked if the timeout should be increased for the loops, but Mikko
> > Perttunen said that 200ms delay is fine.
> >
>
> readl_poll_timeout() internally uses usleep_range(), which transforms the=
 1000us
> delay into, usleep_range(251, 1000). So the delay *could* theoretically b=
e 251us
> * 200 =3D ~50ms.
>
> So I doubt it will be sifficient, as from the old code, it looks like the
> hardware could take around 200ms to complete link up.
>
Instead of implementing a busy-waiting while loop with udelay, a more
efficient and responsive approach is to use the readl_poll_timeout()
function. This function periodically polls a memory-mapped address, waiting
for a condition to be met or for a specified timeout to occur.

If there are any issues with HW, we could extend the timeout to compensate.
> - Mani
Thanks
-Anand
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D

