Return-Path: <devicetree+bounces-236472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C487C44A97
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 00:58:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2D7E1889039
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 23:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791DA274643;
	Sun,  9 Nov 2025 23:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bUDTdBoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1B3264612
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 23:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762732685; cv=none; b=sPQqaDQOTOMKIVLCwvb6c3nnGspGBqMqW3WNw85eQWVxbiHHMhSI89uWNX5c4tUhX2btf+SvJzL1Jw/XN5w2W93/5jWGY+zKZudwP0S29uSSlattKy/EqRRNNuZjn1zWTvL3i86eFQJka8oFhtwrHa0KRPVgOzkQKwZdEtfRHjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762732685; c=relaxed/simple;
	bh=VYPoW3UY0CELQy8XzPDSdrI2ABoXchU20b+SMwMONAQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AocTD06KKZyUmPn2JwVudIzE4E4NyuApUZJCr2aODsOWE5queBFIOx4mqW/bYGRmyOJNPrP3oSTRLMGkH0zTV5gaU9wrY4YA1B4ztJuaWwp9U6Tbv9hfjwx7MJThF2OT3Q0V4Pg2LFZ1v1rfKTp7UhKC5uE3nkRif4RrT6IKY40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bUDTdBoT; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ddaff87c82so1994230137.3
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 15:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762732682; x=1763337482; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ciGXNa1z8OLW1upm7VDcuKg7m+mkewvk1om1QMnHPzA=;
        b=bUDTdBoTIr6XCmxW6aMvQNwbXKzjE13//r4WFAOJ5pFDX6E0imd5bvPzHrTasbosFr
         w85qy0bUoMy+MTme1RB2dgptUh2e8nPkyAYTzKPpgHEv1iS430jvoMu8xQQkUlvBq1dc
         TcN7o9O8EAc5Kss436g9N2WL3sl0q23GRaIlC+f+Aaqr9xPjGVVrL9lhAnX6OU1+RXdE
         Uzfu1+HlgaSXAW6ThN4BOuLrwYtzGgJamvnyPYsl1s0bdoihyaNG0Zfc58FJIcX78k17
         m95P0jv5s8GrMiyqDTs+yRV4UL6VY9JaME+788PVIgBW4aJS9eCKL0kRqcKWu4652rNJ
         8FKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762732682; x=1763337482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ciGXNa1z8OLW1upm7VDcuKg7m+mkewvk1om1QMnHPzA=;
        b=r8IWPhCxB4XZxtfSJbRIlnDiWXPssugmWvwiXDhma7yaEQqJr7rbJzKlbIxq05a1ba
         qfsSJlqTbt8wdS+trvSzvt6JrxKN718cOyWa7oXqkG2Tzg32ku+2cAk7yzSw8EwGbx2o
         l84rAJssBi6OmgZkAKiYjJag0dVybDTSzrQTEChgZFqHXBHjvGIgTbuDI389XNykC4iN
         /4afzpRSPObKD6GVyptN7vngWKdNA1djTaVlt1LL9J/x24haNPV8QpdjCALFVWjYDWIv
         vWDjw7GNm+xfSeBMvFp9tJHPcp1A2RrYU0qiK/kTRzRP7zrTs/q6boEv08gjcKrJBb38
         fpmg==
X-Forwarded-Encrypted: i=1; AJvYcCWjCBDfwV5nJ9Ll/OgJbTt7i9RQs7YO5hY1FkYlJcJkFQP15WOHw7oJqkNhTEswBm0OHjI/sIrCRPNz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3QHctZs1wrRfwE5EcazDEfKyhQi5ZFBhRrmPhsaJYrG7N4JuV
	rXwOMQB66dAuzjLEp7WCpNaz1NfaEj7dvMzl+9T2oYs6ufX/mUinqGOJ
X-Gm-Gg: ASbGnctdKONHfBMiwIXaP83iSp7r2REvvvjpqDLfbJuVCfq74qKnJDZ0PNiYQ1cbBAm
	HO2KiwMTmL2A3Bn8hVT4xZgtWC21sAwCW2eirczPffUZcAoECy4QDQyNCz3+rbLSyElTHnL2hKa
	ZZM5e7amwyr8NdM8kRGQXAE2v+vs+SafUPsF3zZ72th8A6E+lzh8yYszy5a1vTlIjjeGMbqHPvn
	7qF8VY9MMpDIz+MSBOmyAogN4iyQ9bch1PAeV6Voiu7U4uCD5OT7PCpUeLfzdrvjTDOHsWeNj1T
	YZBW04erZjhI6tv+G8FYWUYnRkzuRqmytCgMgVuqthEA3j6Od2WwneFtdHu0AivV7WVhthrpldA
	AbCj1nESpuobcYe5WY3wJBq0PMjfrrwRIxPozxuo7CvhBNyCfztW8ut1GHZDYRjJO/cv2iqDpIl
	inr5vhTePT
X-Google-Smtp-Source: AGHT+IHkEshzMykihoxZN8xwmOnrJz2pDDGH7SWMAzmcaEUtc/A4N6Xa3uJOm+m//4yVDMfdlbkPlw==
X-Received: by 2002:a05:6102:3049:b0:5db:f031:84c4 with SMTP id ada2fe7eead31-5ddc475a644mr2405338137.28.1762732682621;
        Sun, 09 Nov 2025 15:58:02 -0800 (PST)
Received: from geday ([2804:7f2:800b:6140::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-559958320aasm6388204e0c.20.2025.11.09.15.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 15:58:00 -0800 (PST)
Date: Sun, 9 Nov 2025 20:57:52 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linux-rockchip@lists.infradead.org,
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
Subject: Re: [RFC PATCH 2/2] PCI: rockchip-host: drop wait on PERST# toggle
Message-ID: <aREqgL8JVYUcKO7R@geday>
References: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com>
 <20251103181038.GA1814635@bhelgaas>
 <aQrKtFT0ldc70gKj@geday>
 <17220ae9-9e0e-cb0b-63bd-eaf9a6ed6411@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17220ae9-9e0e-cb0b-63bd-eaf9a6ed6411@manjaro.org>

On Mon, Nov 10, 2025 at 12:51:49AM +0100, Dragan Simic wrote:
> Hello Geraldo,
> 
> On Wednesday, November 05, 2025 04:55 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > I did some more testing, intrigued by why would a delay of more than
> > 5 ms after the enablement of the power rails trigger failure in
> > initial link-training.
> > 
> > Something in my intuition kept telling me this was PERST# related,
> > and so I followed that rabbit-hole.
> > 
> > It seems the following change will allow the SSD to work with the
> > Rockchip-IP PCIe core without any other changes. So it is purely
> > a DT change and we are able to keep the mandatory 100ms delay
> > after driving PERST# low, as well as the always-on/boot-on
> > properties of the 3v3 power regulator.
> > 
> > This time everything is within the PCIe spec AFAICT, PERST# indeed
> > is an Open Drain signal, and indeed it does requires pull-up resistor
> > to maintain the drive after driving it high.
> > 
> > I'm still testing the overall stability of this, let's hope for the
> > best!
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > index aa70776e898a..1c5afc0413bc 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > @@ -383,13 +383,14 @@ &pcie_phy {
> >  };
> >  
> >  &pcie0 {
> > -	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> > +	ep-gpios = <&gpio0 RK_PB4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> >  	num-lanes = <4>;
> > -	pinctrl-0 = <&pcie_clkreqnb_cpm>;
> > +	pinctrl-0 = <&pcie_clkreqnb_cpm>, <&pcie_perst>;
> >  	pinctrl-names = "default";
> >  	vpcie0v9-supply = <&vcca_0v9>;	/* VCC_0V9_S0 */
> >  	vpcie1v8-supply = <&vcca_1v8>;	/* VCC_1V8_S0 */
> >  	vpcie3v3-supply = <&vcc3v3_pcie>;
> > +	max-link-speed = <2>;
> 
> FWIW, we shouldn't be enabling PCIe Gen2 here, because it's been
> already disabled for the RK3399 due to unknown errata in the commit
> 712fa1777207 ("arm64: dts: rockchip: add max-link-speed for rk3399",
> 2016-12-16).  It's perfectly reasonable to assume the same for the
> RK3399Pro, which is basically RK3399 packaged together with RK1808,
> AFAIK with no on-package interconnects.

Hi Dragan!

Thanks for the catch, you are correct. But in this case it was just
for my tests and it crept in in the git diff. I wasn't really proposing
to make that change.

Thanks,
Geraldo Nascimento


