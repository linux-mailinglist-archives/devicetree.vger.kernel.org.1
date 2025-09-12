Return-Path: <devicetree+bounces-216259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C2CB542BE
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:23:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B042D5A19E7
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 06:23:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7A9280CF1;
	Fri, 12 Sep 2025 06:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IM+db7CH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1FF280CF6
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757658182; cv=none; b=tgWbRctMoEKq9aPCWwSlyc9U3tSyuOOVR/9EFwFYtn4qWaDAnTKetsQ652iSFC1HpburS2nL2yD9I23Sf7P8FUXdHd6F3ZS0ggx8tzRSBmixu8fQ2TIBMz0RZZ5lgVM4yngAwL2a+Cb1DdbRmEIE4rfQyIsXFUyTd+SXBrkpQpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757658182; c=relaxed/simple;
	bh=zWY++i830LvVnaKNwrHxNlZ8d9VBtxLHBranm7dk29s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BIl558+Ar4xD+pl59g1KebUkowlI+PIFOMll1Jt1Pn2gAFYg+RPLsY+Kezdtqy3a8z8UK8GrBbKL9mo4S3XuOEcZJ1QhgZol1nfY+KHEvyn0HaIFSxVRxTtp9j/EkjZQwk2+X+0Yvp1NvuzEtWIgdcWAe3utcdmMGpn/I476JQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IM+db7CH; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-62ee43b5e5bso357109a12.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 23:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757658179; x=1758262979; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2vd3FO0uowfrzzTtnd+6o2GR4OoJtCyfIGsohefrxVg=;
        b=IM+db7CHN18P1UBOaxdqnMTeejy92JTiNIUu6s89/WenD/VlO40yh9Yqj7a8foCA/K
         dyrsrjHCcSlImdsReK66MOtBbpvOU/tFyuRTUybvpxMqA8mRRShUUSVgzCvZtQr0H6PB
         ZD8KFPnEq+DoFjOLk/dpyhEsrErxKfa89rK0I17EAvcKTfMVgk9btEfqnixxSrDIsF3Q
         E5SIiuvgMe81M1RGTyTBFi6Biq2udcCLDyjHBB0kz7UUgEQgk9nRwM7hU8EIqrezD6oI
         Gda4DpKW2JM/u/YPokZeeAA1kudnXxXmrwvGVBQlo86CRxx/8G58tcpNgF1SbMoG6gwM
         usMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757658179; x=1758262979;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2vd3FO0uowfrzzTtnd+6o2GR4OoJtCyfIGsohefrxVg=;
        b=AzgxBSij6Fw5queMsnKq0qHVgvQwBIgbcmr9nnrzVD2DqvhC4KgO6iNbMuylkwM6gV
         kZ+wciQBAQuuIAshZ61GdoF5Ps5NrScv4vAu36Vxm98F7Yc3Pg+Z8ts6kd/xknepiuaa
         nuLD38vFlN+LF9dsvutP5tNnhkDVaku/lYUFKUog1GSlcCw3rVAcYwhamJcqD/ANoKYG
         BAFJmvuaYtJi+KIXCtNk+WoPaOddcoVg1lQ2F649rod3+nW5ZlNg6TWvTi+WHX1+5ZYA
         5vIjfA2eBAfCUaXX5qZgYNFpmRwUxxkwEN/d2M1TW7tUXJtnjWgutY4CcL67nxHd+16O
         QxAw==
X-Forwarded-Encrypted: i=1; AJvYcCW/5u2b13D9uesHVUttxu6EBEZyU/BwOq6d/5x21cH36ntPprQj4cagraSqe2MFjn9Shl+6m6TfNVPo@vger.kernel.org
X-Gm-Message-State: AOJu0YzU9b+94fdpaSotOxCcBtYFLlSDZuw2kLSfWPf8oOgj7KCAUlz4
	hhseyk+ANqAFfSxkd/iNrwwkpJdvHSHpWr2nXZswFciWZwiqFAtx+7huQaoaVytO+24iXG/RNvu
	ECq0LV/zwZkPlejo/dEmae97ziLyTwRREX8IBKbX8ng==
X-Gm-Gg: ASbGncv6nXT3bDHn3rthUImZaIe+4hXfXfg5Mmj0LHshYLi52UijAFM+AVeAQU2ElRt
	3ki+tkTfENvFEuHtXFjI6xu2oYDCA1//z4CxZYVmsBaPiLRlSDJr9hg59SxmhXa1YuUXuPDTQQQ
	XSq5n8qmwe+roLho6ZnTLg3Ep4mo3XXqz1/mrcEnMh5mnuA/2ZCG5lkHwV5U1MV6JBccuwNdxSw
	OAWVdA=
X-Google-Smtp-Source: AGHT+IGdp3hwfo5Kwg99zLqhk776/MuEzEwF5dvS3N2lEAqhArzZMDnQD2cE/bqWuyKoeqbqUDyopoXkkgYUTvQ3O3k=
X-Received: by 2002:a05:6402:438f:b0:615:a7f4:da26 with SMTP id
 4fb4d7f45d1cf-62ed8240ff2mr1847667a12.12.1757658178563; Thu, 11 Sep 2025
 23:22:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1757318368.git.zhoubinbin@loongson.cn> <2f93b8f20c6e93a15258888998e926814bfd0adf.1757318368.git.zhoubinbin@loongson.cn>
 <20250910-fast-seahorse-of-valor-bf6c86@kuoka> <CAMpQs4K-6Re=-gELPEg8kP_NKR5_1U=BD6fnXM3wgUF+eMtpGg@mail.gmail.com>
 <58fd8506-678e-409d-8283-1dc44c9aa8e2@kernel.org>
In-Reply-To: <58fd8506-678e-409d-8283-1dc44c9aa8e2@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Fri, 12 Sep 2025 14:22:45 +0800
X-Gm-Features: AS18NWAFsm3MIrwnLZoEVJYwuVnBuLzeoBSPe2_MKDz4Fo1FlK2hatZH2ik4P8s
Message-ID: <CAMpQs4LjYPmZh2O5L8V9uKNspjMMq9w3cKCS9iSEStCHVGkg_g@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] LoongArch: dts: Add uart new compatible string
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Haowei Zheng <zhenghaowei@loongson.cn>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof:

On Thu, Sep 11, 2025 at 5:00=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 11/09/2025 09:55, Binbin Zhou wrote:
> > Hi Krzysztof:
> >
> > Thanks for your reply.
> >
> > On Wed, Sep 10, 2025 at 4:27=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Tue, Sep 09, 2025 at 08:11:20PM +0800, Binbin Zhou wrote:
> >>> Add loongson,ls2k*-uart compatible string on uarts.
> >>>
> >>> Co-developed-by: Haowei Zheng <zhenghaowei@loongson.cn>
> >>> Signed-off-by: Haowei Zheng <zhenghaowei@loongson.cn>
> >>> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> >>> ---
> >>>  arch/loongarch/boot/dts/loongson-2k0500.dtsi | 2 +-
> >>>  arch/loongarch/boot/dts/loongson-2k1000.dtsi | 2 +-
> >>>  arch/loongarch/boot/dts/loongson-2k2000.dtsi | 2 +-
> >>>  3 files changed, 3 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loon=
garch/boot/dts/loongson-2k0500.dtsi
> >>> index 588ebc3bded4..357de4ca7555 100644
> >>> --- a/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> >>> +++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> >>> @@ -380,7 +380,7 @@ tsensor: thermal-sensor@1fe11500 {
> >>>               };
> >>>
> >>>               uart0: serial@1ff40800 {
> >>> -                     compatible =3D "ns16550a";
> >>> +                     compatible =3D "loongson,ls2k0500-uart", "ns165=
50a";
> >>
> >> You clearly never bothered to actually test this against own code.
> >
> > Sorry, perhaps I should have included more detailed descriptions in
> > the binding file.
> >
> > As per Chapter 15 of the Loongson-3A5000 manual[1], the Loongson UART
> > registers and functionality are compatible with the NS16550A. However,
> > generic 16550A drivers cannot support full serial port capabilities,
> > such as hardware flow control.
> >
> > Based on your feedback in the V3 patchset[2], I attempted to use
> > compatible fallbacks to avoid API breakage.
> >
> > These fallbacks match according to the Makefile's compilation
>
> DT bindings and fallbacks in DTS cannot match Makefile. You are mixing
> concepts.
>
> I said, this was not tested. I am 100% sure. Instead of replying with
> irrelevant build related stuff, please come with actual arguments, e.g.
> output (on some pastebin.com) of entire dtbs_check proving no new
> warnings are there.
>
> But even without warnings, I see with my own eyes that DTS is just
> wrong. Or bindings.

Please disregard my previous email. I apologize for wasting your time;
this was indeed my mistake.
I'm attempting to correct the issue by changing the binding file.

>
> Best regards,
> Krzysztof

--
Thanks.
Binbin

