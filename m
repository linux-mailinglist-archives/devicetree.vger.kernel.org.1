Return-Path: <devicetree+bounces-238951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B42B0C602AC
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 10:49:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 38B69348E6B
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 09:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACEE528031D;
	Sat, 15 Nov 2025 09:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a6i4zfta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E600274B53
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 09:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763200183; cv=none; b=fF0C+suiwRMs05j5bQl6NW79o1Ph2M4vZ8QMFb6kXB3+4/NMf8l4G2rs5wI+5tmezvaTbFXrJG9PmZEo7wIrOTPCxZY32WJdIhPiT2uMjNdeflf9I6Hb7DblP/kG1lQHU//Uj6SgH7Ghkq2RCJStaAF/Jy5lpvXU/KxMqPqsUqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763200183; c=relaxed/simple;
	bh=pzql7SHdC4gyXabGm1aAvDmdKPa3cQ9FY4OzZp2mAac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aN96OcxqwTOf63Q+FREHtu8ck5OU3yQFrXaY5/EVQHqKX3fKsigc4DR9mqO/AftsKNT7/ov/3NWWad9Bte88kEie67BJoqd1YnqXGw5UXPhVhPMo5GPSW1iatGLd9ixGWmyYnRzY4tSnBqHJU4Mpz2hQiM616cyU5Z8f5714Nkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a6i4zfta; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7b80fed1505so2365396b3a.3
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763200181; x=1763804981; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wE07oQibqqeqSQy9mXIzB1NU0J0tg0hcvxGPotz1NFE=;
        b=a6i4zftaTyuecD3ZKhqMneWz3+8+Kfdpvdqmpfp3dwUrUMJNBYLv6iCWBgLkuRQURp
         DYsxLWY0HL6D156HQLjFCwD7BJnBVMiYrW7ZdJvdmHoV3XULK6pTK+B8AAQyevxGVKns
         pYg1Mlh5iE9PM3JGbZpJThZ0g5wDodyYbgizDnoZjdVnLXif42dwtUL0WKKleDqBRoTE
         fn1hyVE8myU/ALLX2QRCm0wOvapWNEV5ZXqkllIypHoOxNsNgrwC2ozHxJhsVgJHpg28
         Yp4sTnHKXg+ghnAg4xVzXsRwVlDr3LoxHGARigByeiRq9J35XkWo0TJTgklyGCfgthfI
         JKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763200181; x=1763804981;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wE07oQibqqeqSQy9mXIzB1NU0J0tg0hcvxGPotz1NFE=;
        b=BFZHwCk7FBUSGRS7A98yHTQHxsMndFnNyX0FHHxjrz5XXUp439r8Utb4AI5UViSWVQ
         XGMnnNljzKl2idruW1PrI1KyszNaAZ/uYbPl1bsYAwZ1xHelU7Nf6jpOtMFDkYSZ4TFV
         2talz58biYE4ig3wjW1YiSvPsTJKKNBV9sJt/grJvLp4CBRyuBYzntOu02QencN+coRY
         UMpqEKxhafxiqtVmykY5R5WgqN6b1GpCsGud5wy3MZiP0k/DTuDGv43dgOH3UA/21DLn
         89rUULxu1EtRrJco8iNQMFFdqrpcb07YP9SOCk2E/Cn/1CRG82R0N6xCrzy8o9gXf4Yw
         SdDA==
X-Forwarded-Encrypted: i=1; AJvYcCU+o+BArIzGu5CHOHAsQQp6RLxXFXV+LyLztCNn6UpKgPyxy4wr+263siWInJWoiDM6RJL49R2kWcXA@vger.kernel.org
X-Gm-Message-State: AOJu0YzDLNCRgsVtkVqR9fYLM0OR8/IALScOCxsAr3HWDZaH0GHiHSLt
	2ZJH4Y9WQMjT5gp4FU2wzKSCrKZBuX1KOEsmA0C4segzPHAh+biUtqnF
X-Gm-Gg: ASbGncstH2/F30TDRUHgEpTwhTbLnhk3FeEaLPZTzX9pwJ3ShjYujYKi0HSdXLu/3FO
	1hC7y6Fgh9S0uJvVEEEYImX7ESPdTGUfAZff9jnoOtW5+/qK01Ew+JFZHgrUXFTTGVwNHtIq1aS
	TqISnVAfvtK3KBVO6WkEgotVTkzrR6ztiw/ilODsDxFdrgYrLT1TUVLfIo8ABYPKzsgo0lD3K3B
	fvNoK4VNN6bSZpCXUWcYVLj0iKMmi5eXaDUlrYmdYR1ha3lIcMJEEVkKXyoxDqFo8xn4RHSjvju
	ZnUjOCWfCkd94zHamAMn/ka5zhExcVhgVeFxy5IX8DO7broCOS231xTU2rUUZ0dzquQ06XTPO+J
	T0fOEwCLYOd5ytQBlatjsjWxTqidmFD5mR5Puh5sre815KsGEssb9KicNXpEEBH9i6QEzCaoILw
	==
X-Google-Smtp-Source: AGHT+IH17OP8J1VVJXCEJ0MIe3g5xMSq/3p+n5rpNXju3JOpEjrQNJV81hmioCrP4BodIIfRH/nioQ==
X-Received: by 2002:a05:7022:43a6:b0:119:e56b:957b with SMTP id a92af1059eb24-11b40b29d05mr3386170c88.0.1763200181160;
        Sat, 15 Nov 2025 01:49:41 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885c0sm23755473c88.3.2025.11.15.01.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:49:40 -0800 (PST)
Date: Sat, 15 Nov 2025 06:49:33 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/3] PCI: rockchip: warn of danger of 5.0 GT/s speeds
Message-ID: <aRhMrXz_RlL0WErZ@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <d6593ae4f59468f294fdddfef83791e0db100e13.1763197368.git.geraldogabriel@gmail.com>
 <a214ac9a-36d9-6505-64a8-92af2da42cf1@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a214ac9a-36d9-6505-64a8-92af2da42cf1@manjaro.org>

On Sat, Nov 15, 2025 at 10:24:49AM +0100, Dragan Simic wrote:
> Hello Geraldo,
> 
> On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > Shawn Lin from Rockchip has reiterated that there may be danger in using
> > their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
> > from the default and at the same time, drive at 2.5 GT/s only, in case
> > the DT max-link-speed property is invalid or inexistent.
> > 
> > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-rockchip.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> > index 0f88da378805..ed67886a6d43 100644
> > --- a/drivers/pci/controller/pcie-rockchip.c
> > +++ b/drivers/pci/controller/pcie-rockchip.c
> > @@ -66,8 +66,12 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> >  	}
> >  
> >  	rockchip->link_gen = of_pci_get_max_link_speed(node);
> > -	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> > -		rockchip->link_gen = 2;
> > +	if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
> > +		rockchip->link_gen = 1;
> > +		dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
> > +	}
> > +	else if (rockchip->link_gen == 2)
> > +		dev_warn(dev, "5.0 GT/s may lead to catastrophic failure\n");
> >  
> >  	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
> >  		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
> 
> Looking good to me, thanks for this patch!  People often declare
> PCIe Gen2 on RK3399-based boards as "works for me", which actually
> happens very often, but such simple evaluations cannot be taken
> as a proof of Gen2 correctness.
> 
> Furthermore, RK3399's internal interconnects limit the effective
> I/O speed of PCIe transfers already, so switching to PCIe Gen1
> actually doesn't result in some large I/O performance penalties.
> 
> With all that in mind, please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Hi Dragan,

I think I'll include a Reported-By: you too, since you were the first to
warn me of unknown errata regarding Rockchip PCIe.

I told you it was a test of mine but I didn't realize the grave danger
implied by Shawn Lin declarations.

Once I realized this could end badly the only way I could retribute was
to send a few corrections :)

Thank you,
Geraldo Nascimento

