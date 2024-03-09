Return-Path: <devicetree+bounces-49646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 593678773E6
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 21:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3B821F215E9
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 20:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0373B4D10A;
	Sat,  9 Mar 2024 20:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="vdlD+wbg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE1341C78
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 20:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710017069; cv=none; b=IGIz09gLwCe6uyiu2YaBc6xhmu605heGTWkNpl8OfYT5AOsTvpHFQ7LbMCzLugi9jubzbJ+pJAGr1OV+xFqqeCBZMzhqdV9hJ7lLCowtjNT9ypKdqnBMVB7ucVLVQVeeBHFL18dK1iwWh8E8mq7xZSSpLVPl5dOz92xMV8fPI/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710017069; c=relaxed/simple;
	bh=6je8OJStr4Pa4XP7b3zCWLl8tAl7bGyeNCcit1YI6VY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QxQMHMcg7XWmCRzIR0oF7Hi+T6A6nf1IId6sqPyseJeS8bi1wTW/eyIQeyXv/Jyns5xhYQyXP23/qmGLUicCDYN8gk+aehQ8SAg5pUHtJekxFVJ16uPeBDkUY6DYjli6qAqqH2o0ufqCQ32/wvf8iwCcW4EI0IxMf1Ul3C+A1tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=vdlD+wbg; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-513298d6859so3027169e87.3
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 12:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1710017066; x=1710621866; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a5lXn9mjoihAOGhp7B+d0tg2VVCvh11rhrbmBOOVVV0=;
        b=vdlD+wbg0xbBuOhaBDqU2aN+bA0uyoYvisrWborIGP9pGqAUvRu7nKhu5/hCTQMvOP
         RA+9wbfuXXWMbGsL7PSLjGrNPEKM2e1gPejHpxVUk1FjTfstkY+xBW5UVaz2HPIWt2Q3
         85eBl0fseSQM+sRpkx5qJ9Kdu7rInStXxYFmfvgIepvHjTb5TDHApPAy9l4KqtpsEsFX
         D2F4tdOpofbspFQuNasKaepVPG6ZBw4skqxK4XKmP26BaLPsj0YDE0sOxkGZ1lXA2JEK
         6mLATPtfnb2yXhvRI5ymrpPTH386AE5np21KiSLt3OQJ5CUDf7yrblGEpPYA9it1sc+4
         iwVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710017066; x=1710621866;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a5lXn9mjoihAOGhp7B+d0tg2VVCvh11rhrbmBOOVVV0=;
        b=j5QWByYRtRno5690QvoQYhIAZimSbWIDDJx/ptG/pSabKjOyMuZeBEKQMk6Q/rAjWZ
         VP8cr0Fgy7REolzYOPxtTwNBQarpifnb7wjQd7t28ccx5K9T3E0tuKXxnqy9MOG89AKP
         1vUDbTK6Bakymizh1clJnrulR22HuyvXUX/7epkDCFcS3YhSPnNIv8ojtUJ1FeVhLHey
         1Gtmcu6wYsM1UcPTw4Fbv9YN6aYqR08m6y6GPPq8hn3Hngssq8RZbGXDZ/xnvIFKGiFl
         AJyNRXBU3nqj1VMVPyi0TOONu2+vAhzzzrNioePKuFrwRo0ISC6cSX1yb1pBCVPo1BGY
         U3hQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb01ODmKbafgBUZNrFcQ/JPf5pGxMTL7PEnoX/6HNov+hQlu+NSvqLl/tdspzPELpEgdYn2lpXd0do7yK8d/l5pMu9Bot5ESqM4A==
X-Gm-Message-State: AOJu0YzmSLY5m7g1Ii2RutGJQvSNOBl/rXYZ/jegNlDJ8I9pDTS3FAFA
	zikFRCBxUqt9QOEYuSk9F+qj3Fx/zDc5DoPh6PCRMYBaUX1fbith3r/lIU7LD/A=
X-Google-Smtp-Source: AGHT+IE7NRyT3Ley26CaCThuo+hkdSr8zWugv9KKHw8axIGBGzlqd9vLx13tVr8cXJkBTaD+r1jm1Q==
X-Received: by 2002:ac2:4548:0:b0:513:5cd4:692c with SMTP id j8-20020ac24548000000b005135cd4692cmr1599691lfm.44.1710017065638;
        Sat, 09 Mar 2024 12:44:25 -0800 (PST)
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id l4-20020ac24304000000b005135cdcf4a4sm422870lfh.32.2024.03.09.12.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 12:44:25 -0800 (PST)
Date: Sat, 9 Mar 2024 21:44:24 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Biju Das <biju.das.jz@bp.renesas.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [net-next 2/2] ravb: Add support for an optional MDIO mode
Message-ID: <20240309204424.GJ3735877@ragnatech.se>
References: <20240309155334.1310262-1-niklas.soderlund+renesas@ragnatech.se>
 <20240309155334.1310262-3-niklas.soderlund+renesas@ragnatech.se>
 <f7bb4374-0afa-b79e-e64c-bd97b6680354@omp.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f7bb4374-0afa-b79e-e64c-bd97b6680354@omp.ru>

Hi Sergey,

Thanks for your review.

On 2024-03-09 22:28:47 +0300, Sergey Shtylyov wrote:
> On 3/9/24 6:53 PM, Niklas Söderlund wrote:
> 
> > The driver used the OF node of the device itself when registering the
> 
>    s/OF/DT/, perhaps?

I thought we referred to it as DT node when talking about .dts{i,o} 
files and OF node when it was used inside the kernel? The infrastructure 
around its called of_get_child_by_name() and of_node_put() for example.  
And I believe OF is an abbreviation for Open Firmware (?). IIRC this is 
because ACPI might also be in the mix somewhere and DT != ACPI :-)

I'm happy to change this if I understood it wrong, if not I like to keep 
it as is.

> 
> > MDIO bus. While this works it creates a problem, it forces any MDIO bus
> 
>    While this works, it creates a problem: it forces any MDIO bus...

Thanks will fix.

> 
> > properties to also be set on the devices OF node. This mixes the
> 
>   Again, DT node?
> 
> > properties of two distinctly different things and is confusing.
> > 
> > This change adds support for an optional mdio node to be defined as a
> > child to the device OF node. The child node can then be used to describe
> > MDIO bus properties that the MDIO core can act on when registering the
> > bus.
> > 
> > If no mdio child node is found the driver fallback to the old behavior
> > and register the MDIO bus using the device OF node. This change is
> > backward compatible with old bindings in use.
> > 
> > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> 
> Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> 
> [...]
> 
> MBR, Sergey

-- 
Kind Regards,
Niklas Söderlund

