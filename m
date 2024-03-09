Return-Path: <devicetree+bounces-49622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B3C8771AF
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 15:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F0511C208DE
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 14:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9AFE3FB9F;
	Sat,  9 Mar 2024 14:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="HHx+ac5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC10B22325
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 14:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709995482; cv=none; b=CYhn/prQUUEMYXCbvQaUTS6bNYw2LzCj/dTh/pD5u3u5hdV3y6Sd8KNDWeRJB9zhtrbpNJjS0TqJ77LPr1IzzCdkZf7jn+TyN52cRH6/yKEJ9G2UcGfPdNJLjVPl64oQWPZgB4p1UDhm5RCtHeHDRqlnOZI3GKab1SVlo+4Qt1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709995482; c=relaxed/simple;
	bh=6GqHVDBrj8YKn1/IpxrLaQrkLLWux5IthJMd9uWOL/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fjhxazP106ffU7UfmSsA9sjE1fiKK04qThOPqZ1HQuedZYI04dMfQdzf5/xrhvDWgyUm1bqhnSLdJj0tj0AghbporW8KFKU/319mFlQvZaaQuUrW/WxhPYoW4mt9YPE/s6fxbFSrz6mxHf9zvhh5jIa9gk9lmXWb8iFg34pVSWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=HHx+ac5S; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5131316693cso3982820e87.0
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 06:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1709995479; x=1710600279; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WItnIVhzJupS/NyUTtGT6jr41h4emuWMVenWq8Wdc7M=;
        b=HHx+ac5S4Chw9s/zOKP7jf/4GhChLeDWdcRwiVimuvsyxog+nbUrWcsFHYY6OG58ag
         ZxmDtZ9ceFbUeKENEuLzkFAU1JyZeA0ozwGT2m5wZg0MEXNlr13XV5nY1lcJ/WuZ5tal
         HWb4k/AM/Lq8Hqan2pZhnDj+Fchc1wTwYLFhV4825oZ8FZxwbv/35DA+b2q+EVDrwIJj
         raTU0759bXkuwhDGwvAryeV2FsPFV79hXoTKXkpTGCJpXQsTKoFfAseEbyZ2Gp+rUQWO
         NC57cNrh10N/teqY+Zr2/AsxyshXxguzM1420oVepmIqiinzrXa1pbvRvQX+LEoTMCpL
         Vovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709995479; x=1710600279;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WItnIVhzJupS/NyUTtGT6jr41h4emuWMVenWq8Wdc7M=;
        b=CAGL3t2WtI9+H98ltr0Lm7Fm80ULrhyu5thd+voeI6bT1abuEVaMdoGlCtoS/Ew5qB
         0seCB1YB7/CqbDuxJ4eM9LCxQRC8Hotp9KB5f5Vb6tb2BldFjCgDDEO2kU/9Ya/iCfqF
         smuhA93XcDtfssX1A7+llkwkLzAD4TtzdEC9wWu6fQgkQn1DTYEtQMPa2DBAEocPsiyr
         Z84+A+bQxEsMkgLjPc+e1Wj6pFczBeJnfsXTrfwcUqnuL0q4V+cKWcwDSQE9edtV9hRY
         zAmtY+NMbsjOLRrYHWlLrmYdanhIjH1UyDq7+s3A5/6ewhu52QSBdXf+X/kGqWC6DLSZ
         ehcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtOxZRh1Pn08fNL2ckqGMP5rew/aO/sN+LXpU3I7Qg/k/bFqspRBBINgB2leuJqJGSxvI0EGqeSFFbl78KqrB9Uwa30vyvDnFT2A==
X-Gm-Message-State: AOJu0YyYp/PbbkIkSXVfZU/EjwlaiLRyM1VHLWQIjfyHJ9K3/DCdCaQN
	FQ4LcvnQtpGi5gbyntwMDh98MW40ZVtCVSDDyRTTs3DgvvNEW7tGI7KLFaiq75k=
X-Google-Smtp-Source: AGHT+IF06nfcwxxWY1OyKuANmdWzl+XoscvNck5T6b0zg2OAfS1X6aEa0uGLv/QQ9EkhSwYwZKQBiQ==
X-Received: by 2002:a05:6512:3986:b0:513:9c4a:a73 with SMTP id j6-20020a056512398600b005139c4a0a73mr1493613lfu.0.1709995478969;
        Sat, 09 Mar 2024 06:44:38 -0800 (PST)
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id m17-20020a056512015100b0051319dfe6d7sm334717lfo.75.2024.03.09.06.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 06:44:38 -0800 (PST)
Date: Sat, 9 Mar 2024 15:44:37 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: renesas: white-hawk: ethernet: Describe adv1
 and avb2
Message-ID: <20240309144437.GH3735877@ragnatech.se>
References: <20240309013006.723934-1-niklas.soderlund+renesas@ragnatech.se>
 <cde6ee0f-31ff-415b-8b77-47936f2a7158@linaro.org>
 <OSAPR01MB1587F0B5CABF3DDD83E00BD486262@OSAPR01MB1587.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <OSAPR01MB1587F0B5CABF3DDD83E00BD486262@OSAPR01MB1587.jpnprd01.prod.outlook.com>

Hi Biju,

Thanks for your reply.

On 2024-03-09 11:54:39 +0000, Biju Das wrote:
> 
> 
> > -----Original Message-----
> > From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Sent: Saturday, March 9, 2024 11:41 AM
> > Subject: Re: [PATCH] arm64: dts: renesas: white-hawk: ethernet: Describe adv1 and avb2
> 
> Typo adv1->avb1??

Indeed, will fix.

> 
> Cheers,
> Biju
> 
> > 
> > On 09/03/2024 02:30, Niklas Söderlund wrote:
> > > +
> > > +&pfc {
> > > +	avb1_pins: avb1 {
> > > +		mux {
> > > +			groups = "avb1_link", "avb1_mdio", "avb1_rgmii",
> > > +				 "avb1_txcrefclk";
> > > +			function = "avb1";
> > > +		};
> > > +
> > > +		pins_mdio {
> > 
> > You should not use underscores in node names.
> > 
> > Best regards,
> > Krzysztof
> > 
> 

-- 
Kind Regards,
Niklas Söderlund

