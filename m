Return-Path: <devicetree+bounces-249376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 904B9CDB6E2
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B40D3036589
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 05:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0F7632826B;
	Wed, 24 Dec 2025 05:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HEzs6za+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8F932A3D4
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 05:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766554737; cv=none; b=jj85JfuQjBMo6RdJvXyzwmOy/ag9T2a1Vf98BADxvlDSigIOkHrDVvmJurqOppdINPaxfWZLfKa93QtrSAgfDwNpec/csMcd2dGmGu64NJLUX+8muQr53s/x4KJFHUgXG4s9b/VoaQhcIk4pcyuw+nOnfAHDeXcrwAWXbJ/4v5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766554737; c=relaxed/simple;
	bh=gYJuqgstKIh0GJjfHL+Z+Y8jqbQuzP2SNZTadlMrpwc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZY18Xv3zEnyJC06XaDA+TkUaf7qqxiu+juWqv1bgNQu15iNnJS/Z5CT/dgvJ/h6OxWTLwESjgtNLcwG5YEUsWgtZZTO3y7bjkn43GXuPXBaNFBb8ugFQM6co8al+tPcwBFM+WAjuxG4zVp9xI5iXZfRKdC+tngFg4CtqiNIFJ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HEzs6za+; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-37d96f97206so43111071fa.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 21:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766554732; x=1767159532; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gYJuqgstKIh0GJjfHL+Z+Y8jqbQuzP2SNZTadlMrpwc=;
        b=HEzs6za+cUrXJh+kQooA9bq6BhJMRFof2QyHck4FC1VqXCAP58wB/1/6XTp2lmRQJE
         uvcmHO7ZFIJ0nDIztrO7Yq3JKHF8E8P3F10LFIE2lGKDUgARP2QSyHfMAW+mOnH6mK9B
         33/wpwWC8ccfbHQ8I9h/erK7CjqwYj7h53FsgdHDt4xJfTvsFAWdA/PYcMkVLRg+xK0k
         GvvP9LJzFwSHoZfS2VvKuA7Vn+PwufBwygPMsn/w+B4O+YuzMoek0a+Sdo7AY3pJMAbV
         5ZCqiDFxJZgZqVPDHjIEynp5LVGOh5AmF8pPY4Ir6xQ66LfEoiAJcwhkSCEhoXb++2Am
         Yvrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766554732; x=1767159532;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gYJuqgstKIh0GJjfHL+Z+Y8jqbQuzP2SNZTadlMrpwc=;
        b=jSSgRfGcw4ugaX3pZJXOckV2UwfTnGgReC7Rfnip/wMl3ecSCo75G+WGCbzev8S1xR
         Bf8vHiX8e9XMx72sz5a9dGDuL2S6WNw8logTGlhPum+e3m6Y73qanYXeOPvLSNC4f69Y
         OU/du8PkKcBHdNm8rpDZFTzex9uOACBeX6KfCttMP9XjabLHYxwTOVVzY7Vr7TqHcQES
         YHEVBMIl7k/zXgICtmJxidyRnW7xwad3wHpbg4pTPry+VqexCO123A7wxHeJh57fHgBs
         AXvSDe0iM8ofbAv2jMFOQVvgugNxIVrCnHSSqrkOhge+UeyriC2iggu28H5nZBimlyX4
         teIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAgDMDILMMDy7XPziINcmaap7/rjxssRp4PC9NvjyiRgMVJSWG/QzdnLtKKTlRufS/Y4LHC3UlFCt4@vger.kernel.org
X-Gm-Message-State: AOJu0YxIjHwB9eOej53Y92FoDPnNXOd1tj1UumMcdfxZrAXV7MBOcKNg
	7lgT5B7rwsPOUCM3NRjg59cMf8x40vaEq3PjfrdYusZFpPpQ2fGSy0e1Gx52ppX3dge9Bew9UFV
	Vw5pMYwPtPsdDyzJUoLiv1Rq4gKVIbRU=
X-Gm-Gg: AY/fxX5Gowo0hdQq+DFqKt5cfBP63CA/9MIR9w/sbNyyxlOOynNu+yv9vbm9t4ZdWMx
	PKJF5bSWnONUbmeu3qLnRmXhvAimdv3ZmeVojbYIih69CqpZaEQLbsRAyrH3Vh/8h02q1NcnA3v
	OBW8SWFZ375hi2fbSrcGksyvKJLIie3v+ZVa7u4txVw8/4xhQJWtmS1zgmtjMFTYosXYC+HZroy
	SGY/LJRFHMX5psWWE47vKEElC3zAP4hxP4sMo2b2uyPWDoGUj9un9rZbiLh9lgJRG1xDUfVQouu
	y3T8fJ8=
X-Google-Smtp-Source: AGHT+IEhBbHKWWQqJ0bLZ90EcsrdJcWpLU40nsZoqwzQPtLYH3hGZjtotZ2t+Nq21znTqVIk5zZUzbsS4uHKvlFDmMM=
X-Received: by 2002:a2e:be20:0:b0:36d:4e3b:f1e3 with SMTP id
 38308e7fff4ca-381215967a0mr50931101fa.13.1766554732253; Tue, 23 Dec 2025
 21:38:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
In-Reply-To: <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
From: Geraldo Nascimento <geraldogabriel@gmail.com>
Date: Wed, 24 Dec 2025 02:38:40 -0300
X-Gm-Features: AQt7F2qOfdS6yP1-vW3vU0Wj_YVm_E2b3cZOlrdQ3B5k7vwUx3LT0aqmG2BtcdU
Message-ID: <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Anand Moon <linux.amoon@gmail.com>
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

On Wed, Dec 24, 2025 at 2:18=E2=80=AFAM Anand Moon <linux.amoon@gmail.com> =
wrote:
>
> Hi Geraldo,
>
> On Tue, 18 Nov 2025 at 03:17, Geraldo Nascimento
> <geraldogabriel@gmail.com> wrote:
> >
> > Shawn Lin from Rockchip has reiterated that there may be danger in usin=
g
> > their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
> > from the default and drive at 2.5 GT/s only, even if the DT
> > max-link-speed property is invalid or inexistent.
> >
> > This change is corroborated by RK3399 official datasheet [1], which
> > says maximum link speed for this platform is 2.5 GT/s.
> >
> > [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datas=
heet_V2.1-20200323.pdf
> >
> To accurately determine the operating speed, we can leverage the
> PCIE_CLIENT_BASIC_STATUS0/1 fields.
> This provides a dynamic mechanism to resolve the issue.
>
> [1] https://github.com/torvalds/linux/blob/master/drivers/pci/controller/=
pcie-rockchip-ep.c#L533-L595
>
> Thanks
> -Anand

Hi Anand,

not to put you down but I think your approach adds unnecessary complexity.

All I care really is that the Kernel Project isn't blamed in the
future if someone happens to lose their data.

Thanks,
Geraldo Nascimento

