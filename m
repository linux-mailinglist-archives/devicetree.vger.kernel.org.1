Return-Path: <devicetree+bounces-164148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA42A7F4E1
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 08:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75B37169477
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 06:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C653D217F56;
	Tue,  8 Apr 2025 06:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="j5Vdvc36"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5318B217704
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 06:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744093125; cv=none; b=L0NTTjLC63RZ1J3K5n9F5cw1Jhiuyod8t3pUKGV01p8oUqF3BCYjtyipeD4fbV+PYf+xijQpyIrY6ctSSvWKB0WB/r16TwuGykkWFCBzctg15tbuE55/Sjr1ArfMSQKFXbee7puBbPZN072y0Glj1LKequ900DfL+lce9TZHTzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744093125; c=relaxed/simple;
	bh=GcnFZcEGQMiHc0FBcbjPVfNS0TVEEvBhD//hwnSNGwM=;
	h=From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:
	 MIME-Version:Content-Type; b=OOEvIVDyyTk1sFKAErBmpFVCbNGoYZ4+hVFgxWyPB16vJixfwASHSMZ7FAq4MchECn3Mjl9Ii4DNHQOFBrlzBne2FiSeHmNMfp4Qu2PCfjzM0XB0wXg02lS5PK6TToCAwcPBhPeTQKfRp454s6qUhkx/p+HPDqp2IHVZoyU7TcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=j5Vdvc36; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1744093097; x=1744697897;
	i=markus.stockhausen@gmx.de;
	bh=Vdy3R5LBFRPswZsgGftARRLMlVG4M6OL5XY4NmQOOQ0=;
	h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=j5Vdvc36t4MLDd6kwGsDIzxL8FEEFFJh7vg1u3t4TXymVn6bncEbEakltTKKsgqf
	 DjgcAtLHkJ58uw83l1OKAWgnaPTi8LWwAl4GoWvnUm5Y+mQCTsQmlUrtyJRHkHIQ1
	 SNAy9IGR9wgLcTL8mw8hcbY8Tz/vjnzNIgazVSIfuYfuenSTUe3w/IT26FGfpnG90
	 CdyENkINNjusmsaegYmp0rvwLhK7y1j/t061AydyW+wEc/kGgX+6YR87+QHxduYsJ
	 rOX4iAvuWAk9OOz3ZXlhAtqXUw2gj+M151L8/qfW3FxfQIjzs/eqUT/W9T8DUrUuQ
	 ALkq27h8T30XhL2Bkw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.55]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MxUs7-1t9Dc033Bx-014ko3; Tue, 08
 Apr 2025 08:18:17 +0200
From: <markus.stockhausen@gmx.de>
To: "'Vinod Koul'" <vkoul@kernel.org>
Cc: <kishon@kernel.org>,
	<robh@kernel.org>,
	<krzk+dt@kernel.org>,
	<conor+dt@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>,
	<chris.packham@alliedtelesis.co.nz>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de> <20241017162400.3881609-3-markus.stockhausen@gmx.de> <Z1XLheRVQYu43hI+@vaman>
In-Reply-To: <Z1XLheRVQYu43hI+@vaman>
Subject: AW: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
Date: Tue, 8 Apr 2025 08:18:16 +0200
Message-ID: <138401dba84e$04bc0cf0$0e3426d0$@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHuQ/ENXHiu4RPVNXA9/zCVGi8qxwDL0dQ7ASW79VGzZIaesA==
Content-Language: de
X-Provags-ID: V03:K1:mVkXhrRhj698K+E1SZ3JAiIiVqk0zP+Wora74Jn+2oySCajbSx9
 DG/ksNhquPhUaSxGYvGGosRtr/MfgEfmM5vFaVNCKX/vCrdMNgw78zsMnn0SeZ+mSy4aP+Y
 cCUBM86EItQfR7W1OuErG0aBriAmB6mfcVg11Vs4VJR7LCylb/FBUhjS2nG5Ot+/WU3O/ff
 I+7odBOIPrNF0yPc0K6Bg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:o928rvRmvpo=;zYthLJ1CPmqyesOrnbtj5oFdfbr
 PHEZCIJ9htSHY6BNW9k2uPtzgRvNvrjZ8tZglbN3JCIHt3d5N4NR8MoeQusp3aDnq/R15eg4n
 2j4JaHPEkdlUkZovJYWzvZandZNEFxnG2Pt1IRnHVMhfVqCzfcp8et99BPEWagxb2yjQWORpi
 F9rj5YglG3+pyI5T1Ulb9PYJ/MykhlXLz3V409lQqny5Tf8DVN+QRcPF7hdARnOVg2jAVO5am
 oeceIOB2J8yrmYF15jTvi9OMOjehOGhB8feM9gnVIGDYiUMOxbB085NzBglLnjior/v+dIiMz
 09qn5ROndUFdAQax3cIYlYHjl6W/eH13pjbc+Mnop1Ds2RGYeEhJeeFIWWBQrZGsh8tUG4gxL
 mwx0xonPxtJflj3QXgqrZQN6vPWWo2RkWgcNHqqtUw8Hcy7L9yeRxqqrY09XrgDWFYZzd/tOD
 Bgqu442yIaX6GgcXCK0CyYWuGPU65pZZhsdH0cK9vwRjltftNKP2C2gnGkkm+0F3sT8BhyByj
 x48LWfgbVgHNK0xmImAwnFMbUg8gty0EDRMNAXzDeLdpKsOLRIreoulMXJWkBE+ofp14T/uqU
 +m7GWIZScwn9EPefU7nYOv0bWOCfzVspqxp9/ye7M/wI/MUEj/LO2ePdeKf2wJxsr3EZnljMm
 6HXb+j29TjY1Ilv/FElB5ayoWXnWeqQxkVwDoqR8QoKvOT/tkdFbYZ0MSTIf+JbCmtkPVisXb
 0cLeCOJ67pxiAa6neLW8mfLEf6WJP9Futhhj1iaeFxHCnL9qmItjG0yJG6v1ffcl+0GKEdrn0
 rC2j25aP1m1oz/6FOCfXqYQflIEnVcrWRMvGPHCo+WPOnnBvWdtf3EBntqc6ywk7JZI9moOCS
 0Ip/ePUaXJUz9zKRF2sn82umgFH6VboUVmP2VLKgKKzCFNrFQMtBecLsKgwV1zklirdAcWMAd
 WKs+6CarPo1WyyYEIuSybfq5AaCOVl0pCdQBkUt2lL+Rx7ZxQXZqPcJyL1Xxuu0ztuEGoZMKZ
 c12Ub9hbA4/3J1dq4fzUZLwcGM6ETH/Wd9ftSHpIir+Xx9rP1aqRXqqu+WCzDCRyMptpPe+xO
 UjKXcir+IdAcyp/gaUGfPFrQ5XMaI47rMEsCaaBMvT/WChcseb51sG6EFB3fpDeVtGNEeW23S
 8HyIkiDT8cCTd3t4IQvCQasfPEv4kT+CoUbV4OaTRIG7KgjLGXbgWoSdJWPMz1c/CMrRrwZ4K
 6uzjBRo7yqpo7omm3sslIqEuT/IudiCDkg7SRObYS4dk1/FwWEODha+UNLenEYwN9gFMT1DiV
 eAVBu8RCY2ppt1qzztkCcFRpgJd/Fmd/hN0YVDaMrTcm1EAMfw0DL/+aVqviqQE8IPlR3F013
 TWuFS2fPQMjwb9sRW9s0AfoJ7YXh9ZqVcBty40v4dKgN9DekqUwzgk58+0XawRPVR9U/dK+hp
 Bw7mtLfNFofujGmfITYF+/cuPixiQ1Ehgfdjl1mNfELycYJbh

> Von: Vinod Koul <vkoul@kernel.org>
> Gesendet: Sonntag, 8. Dezember 2024 17:38
> An: Markus Stockhausen <markus.stockhausen@gmx.de>
> Cc: kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
conor+dt@kernel.org; linux-phy@lists.infradead.org;
devicetree@vger.kernel.org; chris.packham@alliedtelesis.co.nz
> Betreff: Re: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
>
> On 17-10-24, 12:24, Markus Stockhausen wrote:
> > The Realtek Otto platform is a series of 4 different MIPS32 based
> > network switch SoCs. They consist of:
> >
> > ....
> > +DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
> > +
> > +static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid) {
> > +	debugfs_create_file("mode", 0600, ctrl->sds[sid].phy->debugfs,
> > +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_mode_fops);
> > +
> > +	debugfs_create_file("reset", 0200, ctrl->sds[sid].phy->debugfs,
> > +			    &ctrl->sds[sid].phy->dev,
&rtsds_dbg_reset_fops);
> > +
> > +	debugfs_create_file("polarity", 0400, ctrl->sds[sid].phy->debugfs,
> > +			    &ctrl->sds[sid].phy->dev,
&rtsds_dbg_polarity_fops);
> > +
> > +	debugfs_create_file("registers", 0600, ctrl->sds[sid].phy->debugfs,
> > +			    &ctrl->sds[sid].phy->dev,
&rtsds_dbg_registers_fops); }
>
> Please create a driver directory and add files to that please

Sorry for the late response as I have been busy otherwise. I will take car=
e
about the things you noted. Regarding this advise: Do you want me to creat=
e
a separate directory in the debugfs or for the driver source code?

Markus


