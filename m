Return-Path: <devicetree+bounces-238955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF42C602E6
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 10:56:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 66ED4349F14
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 09:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 875E928312B;
	Sat, 15 Nov 2025 09:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lmi2y0fU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08536281525
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 09:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763200565; cv=none; b=eP+pqMZO6BmDw+DGgoTxHuvlFECho4CkF7x3wal5sPb8kQficuHkMLW9BNOKq0fHageMEP6SF67YwUk0P/eHUg3ZgkAIH8iDTgOPbbRJ+OvqJpjzWj4LKnRMrESen32sFDd/Pcj3i53DyV609RFLsI59khZyu9uIJ/UbPbuDdo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763200565; c=relaxed/simple;
	bh=5vAa/AvCQcXHh91WW/DQKgMQwmnitPwp4p6M47M3aOk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UUPCItHyXDylEvv3ykVsk7uTNfSvdtF0T75OyxZKOikIK7gX0gZxNsIdGSIIhp4sj+D5qj0JqLt3aOTcciJGIBTKh571Ku7JNzCe02z4B2uEY4NCvDcyyrXG9LMx7qGbfgkn+tzOZZngvij1UH1k33ugURq54DhU9CTfk+SGhlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lmi2y0fU; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b98983bae8eso1705224a12.0
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763200563; x=1763805363; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xXnS95zIUe4oTXytX7J90dCvdMH5uRG/iOxKBN187eo=;
        b=Lmi2y0fU3knXha93y7gAerUg0Ub9Qbwle8M32LNcHqgfo/Ud1PrwvfTj5hnCt8VjFX
         h6ejmIYL6qt0BPxQ5xDc9JaiVihzCz2HpdyLenC5YhpfZ5cIiaX3uGX8ZouYX2OSAOvx
         ZaojaIpTgPfEDcMxlfgsP6XCosXO+WemiDIEJMiG0TRsL7FwyH3bd44KzPu6yp0ZaRHd
         N7aIqb3lrwRpCmngdBaMENnG39F2dC8PMRpJKNkvL0nLKJVjFUITqWrMV3m7RHZayXsD
         GIuzDo15+u9FiCd1zgMf2N6SckA2zlRsELch6RjybwGHkA5UzsLnXEv8UMAfPG3s+ywd
         6Caw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763200563; x=1763805363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xXnS95zIUe4oTXytX7J90dCvdMH5uRG/iOxKBN187eo=;
        b=sakhkE714fkMpbQ9gUq43rUD5jTOZgK33U0wab1r/ilNu2ou07u8FD8DJYVnofa1zV
         TC6plMmu7CxA87S1y5DD1ZwmNgKm87fs4puxjVL7nLS0/4b3vxtpscecgL8RCmtWYX0t
         dMJ/FF+arHvFSWoMzTYtu6LOZQoFhCD3XJGkR7JuiXqE2ysiI51WqrBT+rITupo6c5zf
         8b00N5bTe2eS5v7HPdqE6KszOof5cgBEua6xxq9ngTfocLVcVxntcZhswO4B4BDRCpS8
         CyASNeneoNea11LEOwtka+9azSl/wsYYg65qD2x9Yzy8WJSpDB1OT+7cRpFQaX+sE/zJ
         t3eQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFH2ZjBn2KBnDYs46wHXCkkNM0eARMTtILmsONwzih1+aPxQ9WMVNXRnU0s9TDIvLhVSR9ztfSrtCD@vger.kernel.org
X-Gm-Message-State: AOJu0Ywotxl8NAB1sTyhoVM2InTfyBpR7oUOTitukRqqF27s9e71cgu4
	S8EzPhK9ugwvaJpf7x29FOkbt+C4Zac8XX8irojjiYSeuzWymUiHhA1m
X-Gm-Gg: ASbGncvLySnZ4qRXtXtWVTBa/rg+dNwB8+qW/f59YWUQObgnhlp+wePjVeKX3JpfrvG
	vPcM2g1r4/EWPUK/Y03aa4DcJ8FPalAh1lBBWbK1tekvcIuPj8AvzqLWafgs4TjLbwM1N7PFcwn
	Djai06vx9GrOpOGPJGny5LVKC6JRw5gYK/5tKM8EuLbCCDHe6+d96KVuVqGKUxHDmvaLvsznsu2
	n/dDAacifzZPnCeiMGEWhSFDMVzi8gHaMOyhPfQ2MBy06C5rehYyCQ4ExJ9k18ToxCwl7FVo8e0
	pn7SyeDF2V5UYKfdeSz72F8KoFjLOp+778ieiy2AG0L8vS9GYgvHO2DL08lfpWUNk7nQJ+z75Lf
	tuJIt93W0T2OLIbgDCiiyzhRfJlA1blxpcKFo9Feh+1EsgKGec/Zway4c1bvf5zqoJgKFQHEXHb
	bmPwI2henVRXGfv1VkSSQ=
X-Google-Smtp-Source: AGHT+IHUlupuM7szZcYDg9/TlMwVZ71HSLpjpZExx6vY1jp09oOh8FYjiJ3nZkXQKy+o63KI20P1NQ==
X-Received: by 2002:a05:7300:ec89:b0:2a4:3592:cf6d with SMTP id 5a478bee46e88-2a4ab8a9516mr1719763eec.17.1763200563112;
        Sat, 15 Nov 2025 01:56:03 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49db102f5sm16240515eec.4.2025.11.15.01.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:56:02 -0800 (PST)
Date: Sat, 15 Nov 2025 06:55:55 -0300
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
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: drop max-link-speed = <2> in
 helios64 PCIe
Message-ID: <aRhOK_aDoJYfgbRJ@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com>
 <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>
 <7d300769-9803-9c0c-60bb-4a724619d8e0@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d300769-9803-9c0c-60bb-4a724619d8e0@manjaro.org>

On Sat, Nov 15, 2025 at 10:42:40AM +0100, Dragan Simic wrote:
> On Saturday, November 15, 2025 10:36 CET, "Dragan Simic" <dsimic@manjaro.org> wrote:
> > On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > > Shawn Lin from Rockchip strongly discourages attempts to use their
> > > RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
> > > failures that may happen. Even if the odds are low, drop from last user
> > > of this property for the RK3399 platform, helios64.
> > > 
> > > Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
> > > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
> > >  1 file changed, 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > > index e7d4a2f9a95e..78a7775c3b22 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > > @@ -424,7 +424,6 @@ &pcie_phy {
> > >  
> > >  &pcie0 {
> > >  	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> > > -	max-link-speed = <2>;
> > >  	num-lanes = <2>;
> > >  	pinctrl-names = "default";
> > >  	status = "okay";
> > 
> > Looking good to me, this rounds up the prevention of issues
> > coming from buggy PCIe Gen2 on RK3399.
> > 
> > Please feel free to include
> > 
> > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> > 
> > Though, could you, please, add patch 4/3 to this series, which
> > would remove the redundant parameter "max-link-speed = <1>" from
> > rk3399-nanopi-r4s.dtsi?
> 
> Sorry, I forgot to note that the patch summary would read a bit
> better if it were reworded like this:
> 
>   arm64: dts: rockchip: Remove redundant max-link-speed from helios64 board dts
>

No, I think:

arm64: dts: rockchip: Remove dangerous max-link-speed from helios64 board dts

Is more accurately described. With focus on the dangerous, we're not
liable.

Redudant max-link-speed only for nanopi-r4s include definitions I think!

Thanks,
Geraldo Nascimento

