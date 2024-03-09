Return-Path: <devicetree+bounces-49621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D17F8771AC
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 15:43:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94A37281B9F
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 14:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A053FB9F;
	Sat,  9 Mar 2024 14:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="q2At2he+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E7F2030B
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 14:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709995417; cv=none; b=bhU17hm6jpuOO9hT3NN3mlBBKFNFWREzi6fix+vONUyAk4l0XyibnPalM17brMse1nwRXbN5KkciOHqfGEHRLwr4Y7obGiRHj+t9P3gQvvqFdCxf/ib/LjmHiu3Jx+6KBHP0UIMaxzbvtBhfrO78p4ukVqOWNlAZ8RnG21UOUAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709995417; c=relaxed/simple;
	bh=ZCY5JrSi4R89WpooannJGpIoBE4cj43USWy07YiOlz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LTWtkX97gnmjjLc2HV3561fsXrH5n7ItS7SN1j/uKOAXFhPQT3Kp8ZKxk1KJ3Mo571zD+o+UsEZh3YflgwQLy06aYDohybwj0lBvPftjStBh8TaHfFm7eHyMtsp6Q86fp4Ow4s2Db4aCzaWiYbaBti5UlVvI+rSuGEurPPmdah0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=q2At2he+; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d2ab9c5e83so28574931fa.2
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 06:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1709995413; x=1710600213; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h0kW+Yjac8j5/LKoYqzeubelbIOefcn1QKUqPIQgTo8=;
        b=q2At2he+8KCg9MrniyX1ZLz5aK66+J6ohRz+bMqvkxtF1bZyfIDnccRvQx07RQLZjP
         pI1lUyvIaZCUG0KtRLjptwsG8ed6qVm7hLgBgRpDjH/64QBNfAbHiHWzCen9RHMGH3O/
         YvpSRF+J2nz8Mq2McP9QTwvLdHUGgSbxFzwuL3AJYc51Nql8j/wcjEabKU972h4+aotz
         VkihsSa9YK5dle63SL4FjqryeQFxt2O6m2HmGTX7lSUsmsA8IiQlpfeiOiv8X/8PjNWv
         E2YkoEYfnkEKZfpumfsPmHMO8hD5JiJougMcMSrCyKBbPe6XHA48X+ThakE9UBQxPDcK
         DaEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709995413; x=1710600213;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h0kW+Yjac8j5/LKoYqzeubelbIOefcn1QKUqPIQgTo8=;
        b=FZMD/EsyREjo0oZ/PHaCHsNCB5rcvQgD+pYb2bhtqUkvXo/hL4Fg5AamjuyeKU3GXo
         j70Eroeq/KenN3qjICv42rvJuSEQTR76Rze+oWix1mJi8FBNvPjeBUl4GqPiPHpcGMzS
         UFj+lW3gJ2EueOsYrvFwAlpyaDSbz620/BwqjerEriNP26q5sKcYzkc9WE9FuEzXe2RD
         yWW98O0nmuMDA3vH63t25bKemCc5PbjDQmetPEYo8Kn0rFemX6KfA6Rp06f67HRROB0e
         NMzgmguJf0TuJ3+nwHLgy/VqvyTXn6VIMsHy9kO8qOEnLIrxilRf7kV0tgExdrKF4BEy
         txvg==
X-Forwarded-Encrypted: i=1; AJvYcCVxVvYcX99bo1d5vvo5pwpCY08zi001KE6BZHyNuuQlhjbdsL9nGN2VCsBVZ9y5d3pmzB52xacKhV6nx7F6xCKhWiO80MZ1pcRhLA==
X-Gm-Message-State: AOJu0YwWId5Qu5BWTD2pJK91AXoz8pEVwExcsWqqR7QlXiI2nlhBTKxq
	epGq2XKTYqjeOr0dNxGUC2u6j70Mxfuf3s1CVzqrS+pgcCV3zaUEaoD2LM2smqI=
X-Google-Smtp-Source: AGHT+IFW2cnBAVhFZgw1YikO3bDpzTv5WTbqiwzGepCVZ9J1EVgmbWVLsoNajn5ktDhBFqGwt/Rgvw==
X-Received: by 2002:a05:651c:220c:b0:2d2:7e19:f6 with SMTP id y12-20020a05651c220c00b002d27e1900f6mr1586340ljq.23.1709995413333;
        Sat, 09 Mar 2024 06:43:33 -0800 (PST)
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id e8-20020a2e8188000000b002d42b09e307sm208232ljg.27.2024.03.09.06.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 06:43:32 -0800 (PST)
Date: Sat, 9 Mar 2024 15:43:32 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: renesas: white-hawk: ethernet: Describe adv1
 and avb2
Message-ID: <20240309144332.GG3735877@ragnatech.se>
References: <20240309013006.723934-1-niklas.soderlund+renesas@ragnatech.se>
 <cde6ee0f-31ff-415b-8b77-47936f2a7158@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cde6ee0f-31ff-415b-8b77-47936f2a7158@linaro.org>

Hi Krzysztof,

Thanks for your feedback.

On 2024-03-09 12:41:11 +0100, Krzysztof Kozlowski wrote:
> On 09/03/2024 02:30, Niklas Söderlund wrote:
> > +
> > +&pfc {
> > +	avb1_pins: avb1 {
> > +		mux {
> > +			groups = "avb1_link", "avb1_mdio", "avb1_rgmii",
> > +				 "avb1_txcrefclk";
> > +			function = "avb1";
> > +		};
> > +
> > +		pins_mdio {
> 
> You should not use underscores in node names.

My bad will fix in v2. Where I also as you suggest in the binding patch 
will use a separate mdio node to describe the bus.

-- 
Kind Regards,
Niklas Söderlund

