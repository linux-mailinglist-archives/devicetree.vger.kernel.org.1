Return-Path: <devicetree+bounces-36379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E465840BC7
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80FD71C22EF1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 806A915704B;
	Mon, 29 Jan 2024 16:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GetVDMWW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB83A156972
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 16:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706546084; cv=none; b=tbykTJ2ELa/OI8vBwtQoMEXMZvrSvNabGrteILOtogO7hsCsG+cd5lpMSaYIpD3kPhM4SsrpwmOEkmyIS0v7wkW0bItOv7ol/hoQjRIQ5lZ/5G96wGE6bcR4POWSy7jzET3voQjrzffGXZe8D2J0FlnHfb6h6d//QRh5oWKi7+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706546084; c=relaxed/simple;
	bh=DZ1/Lt2XeZ8N7ZlRDPICU0NnPsl3dsLafwpn46RvGsM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZBguv/Tt/Msv24UCq3QHWKBDDdeNkIfhrpmQh4FYqlXC1PJScblETFQ0ikjGS9FePUeu/xX7FGrXAnTX+Hr+0a6wTLHBUtQFPT0LcfkDDQc5/G1xrZ+Xe7VqFzyN3ulHN7PvV6+ohatsz5kMKfL0eejkhlAYzbBThEuDsBcqe/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GetVDMWW; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6ddf05b1922so2384714a34.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 08:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706546082; x=1707150882; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fIE7MVnsGMDWWJrtfQ2GIjZCJnpM7Y+nioDW77prozg=;
        b=GetVDMWWac3Myi7B/L6aXI85rR/cpKqDsVnCPV5rvsnxh6FMhAIMUbjjhR4/FXXv8K
         ePtEDYfVl8sCTkdyNP76OSPKNISYorDC7ZTx4mQdX+/aCpUfKTfMsHVnFY0pywPRABUG
         c3TERWTW+GpHndnNkYz7UdDkyKDByeIZAvf74wddrlidV4LXJCNp/6b3wXUB/5jWbusE
         e3PWPOJDnQIdvoi69SUzlMIt2niFtEA2RsYAa3kd6msIqY5QUmc65GFx4N6lnhSApM6N
         GR9Qoxbr/I9xox/d3BTBd1hJZkjK96mGsDE9KLpbuu/Bf4cvqRos4LwoN/Asm+p+PLsX
         aedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706546082; x=1707150882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fIE7MVnsGMDWWJrtfQ2GIjZCJnpM7Y+nioDW77prozg=;
        b=XMDK2Hxd9fMe16Yrcaz+VtwG/rv/eajE2/NQ4cDzdly74N67hSgyHWatGDcvfdcmNs
         owgeU7/LIqxo83YJj3DmrSATBz1N+K0fB9ilURQ6KJliHjPx+O4HOVV0EGr6Z0H3X3a5
         GbvzHTutESJLTVlM0+A6fpz6HnAyMj+touW0UonF7X/POhweFxQGzJsaR20hcd0PwL3H
         jcmYV+uQ8fQYdQlnN4BHBf0xvbfWha3gt6KJeAbu95/2gFYcCGD8duRX2hBXuNfCP6pu
         xrI0LuFCLDJEUtTTg4V/rpOH7pR9VD/OY9wxfqWKirlLzKzB7iZYnhsdEzU5tMg3sijU
         XH1A==
X-Gm-Message-State: AOJu0YwqgN/NDYO75fU+PLJJa4xLwmf1feQ3MALoISeRpPvSMwjTiP0X
	QtddTArvo1GxzH+NxqocOAcDZ9UTrwy/h2NeQgE27eH1qe19DASi7Euzq0ICalAB4XrDw7fXNXm
	F6IGrBZ4NcM2N81kzVf4utr3xHUSzO51/TPCedA==
X-Google-Smtp-Source: AGHT+IFR/lXrslAYvsfTLAD59PjcNkwmdU+1xJqBt3z10O3k3Fc8WFZF6p/UfVn3P1FSriG+2FEnUFiu5ahNzgsRcG8=
X-Received: by 2002:a05:6358:90c:b0:178:652e:5e32 with SMTP id
 r12-20020a056358090c00b00178652e5e32mr5573155rwi.62.1706546081900; Mon, 29
 Jan 2024 08:34:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org>
 <20240127001926.495769-7-andre.draszik@linaro.org> <CAPLW+4m4G+-zFLGr6Bp-73-mERCofxDiD7F=2fd_Wq+18iTs9g@mail.gmail.com>
 <0d3236e90604e82a609d205c6fbb56fd882ecfbb.camel@linaro.org>
In-Reply-To: <0d3236e90604e82a609d205c6fbb56fd882ecfbb.camel@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Mon, 29 Jan 2024 10:34:30 -0600
Message-ID: <CAPLW+4nk7hStr=g4vt+iztOr6bqbtJFVDLZ37BfFh4POazgjJA@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: exynos: gs101: enable i2c bus 12 on gs101-oriole
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 29, 2024 at 4:40=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> Hi Sam,
>
> On Fri, 2024-01-26 at 20:58 -0600, Sam Protsenko wrote:
> > On Fri, Jan 26, 2024 at 6:19=E2=80=AFPM Andr=C3=A9 Draszik <andre.drasz=
ik@linaro.org> wrote:
> > >
> > > This bus has various USB-related devices attached to it.
> > >
> > > [...]
> > >
> > > +&hsi2c_12 {
> > > +       status =3D "okay";
> >
> > But there are no bus clients declared here? A bit of explanation about
> > how this bus is being currently used would be nice to have (in commit
> > message); e.g. maybe it's used in user space somehow, etc. Because
> > otherwise it doesn't have much sense to enable the bus with no users.
>
> As per the commit message, there are devices, but:
> * most or all don't have an upstream driver at this stage
> * it does make sense to enable the bus, as enabling it allows working on
>   the drivers for the devices that are attached to this bus
>

Then can you please add the corresponding TODO comment on top of the
code you added in this patch? And perhaps also describe which devices
you have on the bus in commit message.

> Cheers,
> Andre'
>

