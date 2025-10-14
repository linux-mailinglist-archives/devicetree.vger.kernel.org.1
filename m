Return-Path: <devicetree+bounces-226644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49933BDA42F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:14:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2569A19A501E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 645EF2FB614;
	Tue, 14 Oct 2025 15:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HWYqf0RH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2FF2FFDED
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454740; cv=none; b=Q4Iw+pqmDapu3ahH89pv/thR3/mANZESQCAgI8Bmec54I2a+Am9nn90ITg/asP+HRioJAfgsZuuqqJYJIp/fxdUX7xE5ynirRfDnL0xPFeYKGPtT1mQLQlK6Csqnm6+3yZBkdVogeCnq640JBoOPAgYAHFLVoGx9Fw6fHyG3Qxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454740; c=relaxed/simple;
	bh=agFpJJOlzEJYaGOnRxTxzVIHDdp11sPEE1v+94YWpr4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KAZ/PMj8uOEo9uPU+nttRMK8bT3K12c979R5DUkM+QRE2lqDS1DmGtzTly5bRJJ95rEVbuR0bwMRr1CadOfaVtEniXhzhh+I092ACS842uovwjaSKJo2PprrP+2RcLch56b5pSWn8FAwcfFv+YyB/zzivEUtZmsGrIdQiIKLBps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HWYqf0RH; arc=none smtp.client-ip=74.125.224.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-63606491e66so4062405d50.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454737; x=1761059537; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4qOcf6u0Jl2HywXXHEcdL2wknXpRCkA3j+3Ynd20y0=;
        b=HWYqf0RHklPzqZ7FnihEJFb273jcbpU2MOLVBFeOch6lbozx1ASMmm6H//kiPVD9za
         YCUb+9lyC5eyJ3gsUzbyuz0kp7R5j1WQwrl/gHsqR776znwBTDPn9qKj2HbheJN5Eez0
         tqZLPZC8VRQdMGwTbKHSph/N/5wzjbgbf0GDIVsKnoTp4XPCsoIyIe2F3670bERJKE2S
         PdznOdmOOU/uUsM1aR3t2OP4GsJJmqfuz/WGS5kDOynvjymyMgTZiT7lXGdVdaZYVwjK
         TyPJvv8WQswK4wlJI48/Zcd1m7T62wZQk6/CB0UQHgu2Wpmw2a8DofKpNqjARe8Za5Xg
         h3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454737; x=1761059537;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h4qOcf6u0Jl2HywXXHEcdL2wknXpRCkA3j+3Ynd20y0=;
        b=oNb7iqSibOc8a/uHElgL0EzY56wJH/iVbnWHUsPB9frmRxRzAu+jWjNCGNAHHoXoEH
         2mGOUOQ2tshZp15slKw/aRr6RfzEz95IG6l2TNEJ4DljNucJbTqrYoI/Pf5ByuUA3QoP
         Sq5v+ymydqkUeqHpd+R5THU7U60Kn705bGTnNdGiA6zquxyHj9d4ajQM5wBRak8VO9Ad
         l7wFj3DvW6QrtUsMBAnMR9587IkAE0pDa6pFyKXX5arXYBADZL3DjMN/AOaQ3K1kgPlO
         t2aYtw2uQ2aHuQFq3uEnb2JG85JEiVKnPIqkSDxfYcGupDLQOcpn6dXCttkzsWd2gsnh
         HhoA==
X-Forwarded-Encrypted: i=1; AJvYcCWwdJXU6ftqY4+NRE/yRbJUPk4mSLxA3DTevAPGNJxV+1dJ2bd6eI2bWITe4PkB8v7W4y8a3mAy3iS7@vger.kernel.org
X-Gm-Message-State: AOJu0YxgbmqFUGDKVcVsiUErB4pN7Aw+1NzDhAVkdyDFIVZ9juqE46Mk
	WoDq28ZXoJYQsSDVIaBa4u60pnEoTHyR3DqAQLhl4laazLMntz3BmtjQ14jrHurJLAzI+cPwJTK
	IYStkHQv8oFdctqC4cQ/tepUuXDHBqQg=
X-Gm-Gg: ASbGncs6Ritts5+JQ4H0Ddyhbb5JnfSvBnxt7h/bFiq+n8Avvwf30ytWnUc2N91HD0Y
	S9KNwYBcLIqqIzZiQSsT20mkATJ3BCpL6snRpOiwGPMflIHaFvXyaVZxFp2adHBsIH6U5ElCYWJ
	73QYIu3ypXI4mT7KBZSJwA/MBf7HG27IgSQgLo63Bbi82iNfQLtV7j4KreBJEgrZHugxm5yR0M7
	SR3DhIIQTyE97oSr4NCSBtn3QUHuDTb9wjg6Ws=
X-Google-Smtp-Source: AGHT+IH2P8Yg+f+JuhkBHGL/IjxEGiEOxzuf8m2HuVkmuCbK5MaDW8zDZMh09LbYzGBsCEUJWcBfsA+yuKq0iWW1iXE=
X-Received: by 2002:a05:690e:155c:10b0:63c:f389:9e9d with SMTP id
 956f58d0204a3-63cf389a538mr9992020d50.26.1760454737427; Tue, 14 Oct 2025
 08:12:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014044135.177210-1-ghatto404@gmail.com> <20251014044135.177210-7-ghatto404@gmail.com>
 <ea12c0c7-c629-4014-8bbf-862264182c0b@oss.qualcomm.com>
In-Reply-To: <ea12c0c7-c629-4014-8bbf-862264182c0b@oss.qualcomm.com>
From: Ghatto <ghatto404@gmail.com>
Date: Tue, 14 Oct 2025 12:12:05 -0300
X-Gm-Features: AS18NWC64-nwS9O4nKaGJWLeAu2XZmNCImChpzZ3nq0fjJrl0t_uVC04MI9V9JE
Message-ID: <CAMQHOheh4MTKS0dLA=zC2DoGvN-x773c08HO3n1_ucXSSXOKnA@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: r0q: fix reserved memory regions
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 7:02=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 10/14/25 6:41 AM, Eric Gon=C3=A7alves wrote:
> > ADSP and video memory regions in SoC dtsi is misplaced on this
> > platform, fix them by deleting those nodes and redefining them.
> >
> > Signed-off-by: Eric Gon=C3=A7alves <ghatto404@gmail.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm=
64/boot/dts/qcom/sm8450-samsung-r0q.dts
> > index a3b81403d180..8ed8a67aae0d 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> > @@ -10,6 +10,9 @@
> >  #include "pm8350c.dtsi"
> >  #include "pmk8350.dtsi"
> >
> > +/delete-node/ &adsp_mem;
> > +/delete-node/ &video_mem;
> > +
> >  / {
> >       model =3D "Samsung Galaxy S22 5G";
> >       compatible =3D "samsung,r0q", "qcom,sm8450";
> > @@ -64,6 +67,16 @@ splash-region@b8000000 {
> >                       reg =3D <0x0 0xb8000000 0x0 0x2b00000>;
> >                       no-map;
> >               };
> > +
> > +             adsp_mem: memory@84500000 {
> > +                     reg =3D <0x0 0x84500000 0x0 0x3b00000>;
> > +                     no-map;
> > +             };
> > +
> > +             video_mem: memory@83e00000 {
> > +                     reg =3D <0x0 0x83e00000 0x0 0x700000>;
> > +                     no-map;
> > +             };
>
> Please keep the entries sorted, also with regards to the existing ones
Sure, thanks
>
> Konrad

