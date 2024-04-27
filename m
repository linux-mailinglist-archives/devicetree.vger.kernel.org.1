Return-Path: <devicetree+bounces-63337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FD68B4827
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 23:06:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BF2C1F21281
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 21:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4900D145B00;
	Sat, 27 Apr 2024 21:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ferroamp-se.20230601.gappssmtp.com header.i=@ferroamp-se.20230601.gappssmtp.com header.b="cBUf8wO/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FBD447F63
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 21:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714251991; cv=none; b=pycEPv2KiyqqvUy4vhItmjp9kbu05mikMId6X4nIzfwxcrzFh2iCGOo2amBLz/sfJKB+cdFRJlUB6EWzDrxxAKZ8+muXl0j3y/kkdg99bHCYWsksGjjXpFE7DXIyj4yDUKSJXBauwNsJehft2VzUUe7cx3DejIyg9zJ1+tGOgMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714251991; c=relaxed/simple;
	bh=BPGQT9RvHD6dyBXeMZZlYnTR0tD/OFpjhgFM5V7pV48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F3C4Wsz+qOnxFoLE+UFwF5H/8nthvnkFW0/AOT/aIWxdYe9KNZBb9PvefKiXrqapb/9Tr95sRRZETevKFvL/EJgPzkesd46qmxRlBtsTdNWOx8cAVsKy0dKHnSlWfAUfCHYuGWax73kS+GmbxXwI1nfTBSswwAPFn1ARXql6J1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ferroamp.se; spf=pass smtp.mailfrom=ferroamp.se; dkim=pass (2048-bit key) header.d=ferroamp-se.20230601.gappssmtp.com header.i=@ferroamp-se.20230601.gappssmtp.com header.b=cBUf8wO/; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ferroamp.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ferroamp.se
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2dae975d0dcso45634461fa.1
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 14:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ferroamp-se.20230601.gappssmtp.com; s=20230601; t=1714251988; x=1714856788; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EqwxwLHYHSztUcUOAzJULG1B07hY8oWavjqK1Q3m250=;
        b=cBUf8wO/LuQ+O8DMbFdKOHVch0tZyruv56W47/Vp2sr8J2JwCUpuVygEMNpGGqO+ak
         XgOYXogt2nUDTKqhjYX/+qq46H0j7MBhIsGZk69/La2fiOfQQu+lYm84JQupeD2xSRJ8
         cw3/qrmq3dIMqJGSKo4sB09V+Oj2nvqkqhzu8luQCopbvhviAlreQHUv9rwXb2fqV7SK
         v6FBAFfXU+En/xySlvCKEVnCeGjVBOwjLlI78kmHVxNxTn4Bl8mfIEikvo8bDZlrwlL3
         nbjEOwvQw1W2cY2P6wVhMahwdT063/E+koXoVufJ1o4UQF4O2V+hi+juLEdrYJr/hpce
         WpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714251988; x=1714856788;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EqwxwLHYHSztUcUOAzJULG1B07hY8oWavjqK1Q3m250=;
        b=A5lxX/tNFn7p08nrAknRbDSEKNVs52KHMbtJ6Wl1LNy9xG1FapRAFKzUw4sxLjOdVf
         8W5g7HGP4MTPmxFujueZTT69PT6uEwM0xVqYe4H9w2ixEVJ5srZiGOGODaxr/MBKhaLZ
         908i0FU/TkYgTgeXLS97DokSJgaD307W0zQcpZW7wQerNpnNBCDJnBFyoqZ/ZnOZrnlL
         j21cWK1YkR0wR+xYcY+2cf/IKHiCUtRuRkS8vrTY3FrccOt5Hu2PGUpj/EZeY7ZoK0LZ
         2gxl/LNGmxgh2GHkjZgV1pI7eVq/SkhlcA31RwwC5p0RTddmNIpx0FVa9jFlGDw9IlKM
         1z0A==
X-Forwarded-Encrypted: i=1; AJvYcCWpeOFs0g1fZBkcqk+FwR9KMLrLXhUSisEUwLQHv1kygEdr7IQJQOYQzPaZkOrfZ7TfWzua0W5m5P5yzJCVMnChXZxS7WBdCJ8/ow==
X-Gm-Message-State: AOJu0YxPPkL+CM9dI6DMbAiLygdqXXvISnQhkpCAzNdl1fx6IT0w5qeR
	5CBo0lTpLygustti5Hzr0qDBaRCY6xTJmGJqLR77u8s2TSeNB45fsQjvpHh1e88=
X-Google-Smtp-Source: AGHT+IHgXfI8p97ruv5ETVys/NblWrTLmITHlfHrRMMEOsIzKJV93YK/2ydXEzUpnj4m5gNxN4GtSQ==
X-Received: by 2002:a19:a411:0:b0:51d:5d33:892 with SMTP id q17-20020a19a411000000b0051d5d330892mr227521lfc.28.1714251987823;
        Sat, 27 Apr 2024 14:06:27 -0700 (PDT)
Received: from builder (c188-149-135-220.bredband.tele2.se. [188.149.135.220])
        by smtp.gmail.com with ESMTPSA id t8-20020a192d48000000b0051971559a52sm623151lft.196.2024.04.27.14.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 14:06:27 -0700 (PDT)
Date: Sat, 27 Apr 2024 23:06:25 +0200
From: =?iso-8859-1?Q?Ram=F3n?= Nordin Rodriguez <ramon.nordin.rodriguez@ferroamp.se>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, horms@kernel.org, saeedm@nvidia.com,
	anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, corbet@lwn.net,
	linux-doc@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, horatiu.vultur@microchip.com,
	ruanjinjie@huawei.com, steen.hegelund@microchip.com,
	vladimir.oltean@nxp.com, UNGLinuxDriver@microchip.com,
	Thorsten.Kummermehr@microchip.com, Pier.Beruto@onsemi.com,
	Selvamani.Rajagopal@onsemi.com, Nicolas.Ferre@microchip.com,
	benjamin.bigler@bernformulastudent.ch
Subject: Re: [PATCH net-next v4 11/12] microchip: lan865x: add driver support
 for Microchip's LAN865X MAC-PHY
Message-ID: <Zi1o0SilOZ5gWMlT@builder>
References: <20240418125648.372526-1-Parthiban.Veerasooran@microchip.com>
 <20240418125648.372526-12-Parthiban.Veerasooran@microchip.com>
 <Zi1PxgANUWh1S0sO@builder>
 <e89272b1-7780-4a91-888d-27ae7242f881@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e89272b1-7780-4a91-888d-27ae7242f881@lunn.ch>

Ok this tripped me up.

> The device tree binding says:
> 
> +  compatible:
> +    oneOf:
> +      - const: microchip,lan8650
> +      - items:
> +          - const: microchip,lan8651
> +          - const: microchip,lan8650
> 
> So your DT node should either be:
> 
> compatible = "microchip,lan8651", "microchip,lan8650";
> 
> or
> 
> compatible = "microchip,lan8650"
> 
> There is no mention of lan865x in the binding, so this patch is
> clearly wrong.
> 
> What do you have in your DT node?

Initially I set compatible = "microchip,lan8650", and did not get the
driver to probe, so I got carried away with adding things that were not
necessary.

I dropped my patch and tested again.
What does work is setting:

compatible = "microchip,lan8651"

 - or - 

compatible = "microchip,lan8651", "microchip,lan8650"

but just compatible = "lan8650" does not work.

Also I'm getting the output
[    0.125056] SPI driver lan8650 has no spi_device_id for microchip,lan8651

As Conor pointed out setting the define DRV_NAME to "lan8651" fixes
that.
Setting the define to "lan8650" yet gets the spi module to log the 'no spi_device id..'.

I don't really have an opinion here, but I think there is a risk that
more than one dev might stumble on the same thing as me and expect that
either or should work.

BR
R

