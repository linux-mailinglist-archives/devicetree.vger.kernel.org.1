Return-Path: <devicetree+bounces-222830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 629D9BAE05E
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 18:11:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11280164E6C
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977BDFBF6;
	Tue, 30 Sep 2025 16:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bjfqs3d0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B720B307487
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 16:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759248680; cv=none; b=G6tHYozKA46KUYwbJMopQTCAASskNJfXTNFbBqVbfQKaUnCvQZisb+tq8IbcK5l++dOBJoiyqPLUwb0NSpoX4zP7FWS9eoAA/zLxV4WAnHOYrlLJ01qQpSx7Pay/99DbU50ZFDPzXb8Fg9mAkIe4W0RcxdVKyYTtCvJyn99N8Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759248680; c=relaxed/simple;
	bh=MndQLK5x5cGMTWMw/cHXzHjTxE6qM7el/nwtDsSCCTY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f0cqgUVUXRYiM3165b5MtjV64+whFoIJF2C9GS8VmUvJda7UJt1mpBIGqtTLyPdNZ0X4e7IfRog3jk17RZZygaMrZAhtSr+37XD/vDELmY9PxegGApQGdw7jq6dES6v8Ez4Rly7L8uUWL/gccAEu2ojZsFYsh9pzMqxLXJ1UIRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bjfqs3d0; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-62fbc90e6f6so11053475a12.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 09:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759248677; x=1759853477; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxp5oWG2zYQb/bAadgrp+7BT1AfD0ElhKVNTGDmQyfk=;
        b=Bjfqs3d04VPJV8ct8Yz4LypBylL5fXBHzPOCB4Tp32M+2WUnrh8CXoovx+Mo3HqnUk
         E0m3cqyt2a0mcEKyLxugCoQfCm/ttu1w8uUrikySR2gk7iznG3r3KSZUj7XB0HUi9GpM
         uSNhZt0P07EnZ1ixxUKiYJMrtGeTf2nE+DfwraLmh1Y7p5hH5gXM4tiq+RH7dcBobsk0
         olOh/gqH7ab7flrSThZLkW1QT1mx1BaHHTRqgNJDaJY+Hy2rArDGuAzvnuCtvceodMDv
         IfL0/2S4Kl1w1FcDFiSKXS3awbZKP6AZw1ly7/Ej2EbYmjDiOawdvnZhkOQP/Qem2Qoo
         zDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759248677; x=1759853477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oxp5oWG2zYQb/bAadgrp+7BT1AfD0ElhKVNTGDmQyfk=;
        b=QTOkstL362U6/hNlYW8zqNC4d+Q0Wkrm650fxqW8Fxx0O++94uUsb3c5Msbm172dod
         q7dzZGz0aAqOc75pZqw+ASo26YQWHFjt9Kd/LaBZOsDc7vsmzR6iPpfNlxRtQ2bo1ycA
         xG9guuK+Q6xkyyE+Ltjkvv3FzySJfsDcJsIs9lX1j3wVjMVO9iFRYiIPty2Xk0vcBXDb
         RI0s3NG9HudBFBmfMAVMMnxQ3hcCDGzIT8aM05WP/RqVN1pR9eKIv9wYBoAeGjwxeRqE
         xPuZjyGJJooEuP2SdAuCBygwl+l/dH/SUH9KmZH8OjX0i51FiJKaYplHXEsFxq9KJjbu
         q7Lw==
X-Forwarded-Encrypted: i=1; AJvYcCVPH3IMOCQYBxvzqSfbm/7fyJcayTg7L1fB6AHcsIskFsyM9luf1Y4T6oDbTF0CHhKdUCl8Nq2XYeib@vger.kernel.org
X-Gm-Message-State: AOJu0Yy34ai45LQ08zK0i7+uA4OXx9KI2TrOo6qqvdKrNsXqcqslDrcM
	/GyGO2UXe/9aYuh1wC0Lu5dKZpO3ftzsPsBjmPGpH5Dwoy60f/83Br9d76/pGdNEl/qDO4/UlrZ
	EtdSbwSg/B8M5omN2dHZwkFi2qcsMl3qlIzOp1UkgmQ==
X-Gm-Gg: ASbGncvELVL37PsZWdZztDofvdQAaXZo5BUQgzECHH/eK7Ij4Wn50U7Jq62dBWVY7HQ
	Cw0N3zwDTu5iN8SoHpZSV3KbyBg3PB1Elpgfimn5b6I0MHBxS0JEtOY0DjABIvXTO4M0IJdA87X
	S3DjSflDXQgUHWHkp8LRiVDiwizg/vTcEt9wqnJm3cbgIGtVSz1p/XlzO6bNDFUQyLhpLcBv/SK
	ADVlGEMNIOjz2m8b7cqckEaEqrXMTaQ6Gj+nNpZTtzcbzV5baJg8Mx81Y6ykXgjRT7rlUc=
X-Google-Smtp-Source: AGHT+IHcT65SCb0YDaj8HXJyzDEr17zNKjdB+wgbHVUN98mdk2+pEmJMBE3H+oYu+G7ZvB3GLkI42wO9NC0FtjKrGmM=
X-Received: by 2002:a05:6402:3584:b0:634:abb6:8b4b with SMTP id
 4fb4d7f45d1cf-63678d0a45amr507520a12.22.1759248676729; Tue, 30 Sep 2025
 09:11:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919155821.95334-1-vincent.guittot@linaro.org>
 <20250919155821.95334-3-vincent.guittot@linaro.org> <4ee5tqdjv5ogcdtysiebtoxmrvrzhkar4bjcsqi47dxtgwac4c@rezn4waubroh>
 <CAKfTPtAEkegCV-9_x-dXSWQFOoG6kO5JbJq_LToY9YuuRusoVA@mail.gmail.com>
 <lmczw5agheqbcl6xcomlhf7yfbdvfx45pozmaxjmbkkqudsxlu@c7u6s5h4xm6j>
 <CAKfTPtCacFhJztYvWycSdoWMUStaf1WAcGJKHwk3y4n-uEELSw@mail.gmail.com> <xmjgs5ssolugcq2ogjc5j3ccwalcc4q3whl64fcra2aiebhtci@qwobbjtb2wcl>
In-Reply-To: <xmjgs5ssolugcq2ogjc5j3ccwalcc4q3whl64fcra2aiebhtci@qwobbjtb2wcl>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Tue, 30 Sep 2025 18:11:05 +0200
X-Gm-Features: AS18NWCijqY2xYOImmRNqiG0s-RQFrJ1uFUZhBOTuBa0xoCxbLUGNkckGMVPh8A
Message-ID: <CAKfTPtDva4fUQty8b5b=tLEHcd+OGFSS9i0DJqnn3vFvgG9wrA@mail.gmail.com>
Subject: Re: [PATCH 2/3 v2] PCI: s32g: Add initial PCIe support (RC)
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: chester62515@gmail.com, mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, 
	s32@nxp.com, bhelgaas@google.com, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, 
	Ghennadi.Procopciuc@nxp.com, ciprianmarian.costea@nxp.com, 
	bogdan.hamciuc@nxp.com, Frank.li@nxp.com, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	cassel@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 29 Sept 2025 at 18:32, Manivannan Sadhasivam <mani@kernel.org> wrot=
e:
>
> On Mon, Sep 29, 2025 at 06:23:05PM +0200, Vincent Guittot wrote:
>
> [...]
>
> > > > > > +static int s32g_pcie_resume(struct device *dev)
> > > > > > +{
> > > > > > +     struct s32g_pcie *s32g_pp =3D dev_get_drvdata(dev);
> > > > > > +     struct dw_pcie *pci =3D &s32g_pp->pci;
> > > > > > +     struct dw_pcie_rp *pp =3D &pci->pp;
> > > > > > +     int ret =3D 0;
> > > > > > +
> > > > > > +     ret =3D s32g_pcie_init(dev, s32g_pp);
> > > > > > +     if (ret < 0)
> > > > > > +             return ret;
> > > > > > +
> > > > > > +     ret =3D dw_pcie_setup_rc(pp);
> > > > > > +     if (ret) {
> > > > > > +             dev_err(dev, "Failed to resume DW RC: %d\n", ret)=
;
> > > > > > +             goto fail_host_init;
> > > > > > +     }
> > > > > > +
> > > > > > +     ret =3D dw_pcie_start_link(pci);
> > > > > > +     if (ret) {
> > > > > > +             /*
> > > > > > +              * We do not exit with error if link up was unsuc=
cessful
> > > > > > +              * Endpoint may not be connected.
> > > > > > +              */
> > > > > > +             if (dw_pcie_wait_for_link(pci))
> > > > > > +                     dev_warn(pci->dev,
> > > > > > +                              "Link Up failed, Endpoint may no=
t be connected\n");
> > > > > > +
> > > > > > +             if (!phy_validate(s32g_pp->phy, PHY_MODE_PCIE, 0,=
 NULL)) {
> > > > > > +                     dev_err(dev, "Failed to get link up with =
EP connected\n");
> > > > > > +                     goto fail_host_init;
> > > > > > +             }
> > > > > > +     }
> > > > > > +
> > > > > > +     ret =3D pci_host_probe(pp->bridge);
> > > > >
> > > > > Oh no... Do not call pci_host_probe() directly from glue drivers.=
 Use
> > > > > dw_pcie_host_init() to do so. This should simplify suspend and re=
sume functions.
> > > >
> > > > dw_pcie_host_init() is doing much more than just init the controlle=
r
> > > > as it gets resources which we haven't released during suspend.
> > > >
> > >
> > > Any specific reason to keep resources enabled, even though you were r=
emoving the
> > > Root bus? This doesn't make sense to me.
> >
> > By ressources I mean everything before  dw_pcie_setup_rc()  in
> > dw_pcie_host_init() which are still there after dw_pcie_host_deinit()
> > in addition to being a waste of time. Also we don't need to remove
> > edma and free msi
> >
>
> Let me take a step back and ask, why do you need to remove Root bus durin=
g
> suspend() and not just disable LTSSM with dw_pcie_stop_link()?

That's something that I'm trying to clarify but it's so far the only
way to get suspend/resume working. I have some hypotheses that I need
to get confirmed but it doesn't have full control of clocks and power
domain

Vincent

>
> - Mani
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D

