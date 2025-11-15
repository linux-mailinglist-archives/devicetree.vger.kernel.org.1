Return-Path: <devicetree+bounces-238954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB9AC602DA
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 10:53:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4E693BA4C7
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 09:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D4B52820AC;
	Sat, 15 Nov 2025 09:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b2YytE/h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8F6281525
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 09:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763200397; cv=none; b=qvZLFlFGKMLgYCsqt0cbEqK36Cb2ASHNkZTUK+579BLLKryIj8DqR9a2MBhrl5QPQM4G+cAzGa8nbn3jcqrTVbn/Y+skXXCFt9KR9C/hIGv5Kx35imwaJwg8xldtkCzXUJyYCwc+9WU8nTCz+S4wPmPhTjCrW7ljsAIWdKPwE3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763200397; c=relaxed/simple;
	bh=NADkc0zeBGzZkHCvKfmiBGL52ZZ8HLGD8XBHm8M0ToU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XJcj5Y73UtGbJ5a3WrG943Jo7cmMG3sGvRuBxU3954Sg+eP9dyzLfUARWHEPSkauv5D0AqTnuI8LH73ofxP5FFku61CUF/xlsec6IKqniCp1UiljiMdzBoMyOy9H4G2UBI7Zt35dmfhiEZJDAEMWp1AXUcpvh4/Hqim5TxnZxcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b2YytE/h; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3418ac74bffso2019492a91.1
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763200395; x=1763805195; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2Vqb7SuC6LdXp/wdF4JsayTM+a28625NUpBifotjx9o=;
        b=b2YytE/hvXbldAaK2eAcUzcYrVpCKGgqhuAYqghvgdciK5SzOdCxoqxdT+/8AJHK3u
         0jL1fUTiiyaEH0zLq6MyA/Zi4zjBAd62RrMxDARVrbo2zReoj1jzGZkE91t1Cnc9Lp1o
         Mw47C8wXTagRg3/gkJh0dFyIxES1lq4nJ81UDRKUsM9g76PnOwsAQnPLlzczjf44EhzK
         PdKSGbmin2C/YO8UCNhKmAOKxF54G8Uc+3ZNmPrJzt1qrwjKdoKGWO7gYyMYUywmV1bo
         Nc6QjNHhnuGZfjz8DfyNTtp/b6OgISB1Qb9j7x7NNVuf4N+U2+VXZ+Bn5bFayX+WW6g0
         FHmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763200395; x=1763805195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Vqb7SuC6LdXp/wdF4JsayTM+a28625NUpBifotjx9o=;
        b=qb8XOI5AECetdu0sVyMzAlolgoq4b7ROIjov0oHUvQtwNF7yaaIrg57kscOp+5PJIU
         tuNAgQknTR8lhu9HLW9s1YEPVf6BtLqS2TUmKMF3GoxykVr1Jtn9rQPQmURwZeIE3aFd
         QSaha7tvKnNbqrij8wsRGhCrq6hosyuCzCnPuVwur8UVQA8sSYuCKJBLGyiy+aF7Xi3p
         5XzuW1UGfz+qbQ2k035eWiAihhex21byqtDBaDZ3TdaNv1grWC3BOl8sggussMqpRjRC
         VRBNQTYnAMcm8ZylYb/yn2RUZJlZwSWK0AHuGnxC2hJCAOKQSgXihw1kKYbdiLo93p+u
         OzwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjPB2atJDrJOSB7ao4MhIETGaGfzGxo9vUt2P20tgxuIaNluM0xHiFe40qMvOK0Bl99dw1LVx9Ae6Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzYG0vYE/MAoMu3mghQ+OvW0JLJAVe8BO2ywj4qmQPyd2AKQ1qA
	rqsnwY46/4P+8k2I/l535zvBiG6qNI7OPHoFn6EAQagdZ6vii5XGsLWvvk1snDXi
X-Gm-Gg: ASbGncsA+Fql0bBLsDRbJGJNOxiYMMfzlFxhyxfoO+AOgNgzZFW+uwvzvJsNTul0Bdp
	9c0q0Kj5XXpDHuLk2fcyplfKKrlyWHzPuHG8GrLOVK7ND6iBUFfWS1rpShNgs9fKs5BrIzeeD/v
	jHhGv46w9zn1DRJ+49fA+hWsM08OOQlmo0USM+1uxnUmZpSTB8o1USEy4w7AkT0RRdifJpbKol5
	mtez1x+iNDpiSaJly/6NSWOaTFWrwi3GEXGY36CUlPadr+nkBYxrXJlKdkV9VV4MFwam1dQ1vbx
	FMM73BuiqQ0kKcGFiN72Q1VWb0k1RKpdNpV8kSCtpr+Uu6CJvl+nsq6GRT77/qH+R2Z/CD0xndU
	1kJG+9dG/E0BqhANI+VpdjZqTLoo0Nr7pNV6v+1IzE6rsCeoCbpLVIO0EmDmdPBcUWlQzYTlALA
	==
X-Google-Smtp-Source: AGHT+IEYodkeyJHv+xttwJ6T2c5dA0IZP7idIsWFckZLeRS6DJQ3X3PmhrR/pJfn24PkyDvZSHZZRg==
X-Received: by 2002:a05:7022:5f14:b0:119:e55a:9bff with SMTP id a92af1059eb24-11b4120001bmr1447186c88.27.1763200394907;
        Sat, 15 Nov 2025 01:53:14 -0800 (PST)
Received: from geday ([2804:7f2:800b:a121::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b06088625sm20242225c88.8.2025.11.15.01.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:53:14 -0800 (PST)
Date: Sat, 15 Nov 2025 06:53:08 -0300
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
Message-ID: <aRhNhKjneo1Ny0O6@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com>
 <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3f13841d-030b-0202-61be-412c0ab9df6b@manjaro.org>

On Sat, Nov 15, 2025 at 10:36:17AM +0100, Dragan Simic wrote:
> Hello Geraldo,
> 
> On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > Shawn Lin from Rockchip strongly discourages attempts to use their
> > RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
> > failures that may happen. Even if the odds are low, drop from last user
> > of this property for the RK3399 platform, helios64.
> > 
> > Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > index e7d4a2f9a95e..78a7775c3b22 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> > @@ -424,7 +424,6 @@ &pcie_phy {
> >  
> >  &pcie0 {
> >  	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> > -	max-link-speed = <2>;
> >  	num-lanes = <2>;
> >  	pinctrl-names = "default";
> >  	status = "okay";
> 
> Looking good to me, this rounds up the prevention of issues
> coming from buggy PCIe Gen2 on RK3399.
> 
> Please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
> Though, could you, please, add patch 4/3 to this series, which
> would remove the redundant parameter "max-link-speed = <1>" from
> rk3399-nanopi-r4s.dtsi?
>

Thanks for catch, will certainly be included in v2 after I get a few
more reviews.

Geraldo Nascimento

