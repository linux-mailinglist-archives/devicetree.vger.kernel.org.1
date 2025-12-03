Return-Path: <devicetree+bounces-244128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B736CA18D7
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 21:26:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66F21300ACFB
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 20:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5606E312824;
	Wed,  3 Dec 2025 20:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PZgKVjFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FED0309EF4
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 20:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764793574; cv=none; b=OagZuiLTz1febDpHgg6e99sRT/I6GzJq6e7Az71JmkYpBwpKUOfvGo8EGmBOWNSBVr/P/9Xc6gDVG/oIhb5feHY38VL+C+YqEb5JD1kzWXQ3kJBlWiw/DBEP/A6vO/STMNb/J0POFw29OMQlgE1/khO8debRjDh8gHh+jU1ysHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764793574; c=relaxed/simple;
	bh=YEqoF5SzZx116Sccpcvt4hXy3j1TYKypmL6WYWEBLec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jTdbI9ZpU8b435OY+xS7jAO6AcC3x4L/0Bs5SAZFHXkjPnc/QwKV4H/dJCIgRGpG6++zB0Fpg+s8eRd0gTMg2AzjbBkvdDT5gc4DbkzI+OpNk2xF6kzQ+4N0VvocykSofSp8LTcjUYAMFZjD9SIZHLXXkGps5hxnb+3mT2/sgj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PZgKVjFh; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779c9109ceso156895e9.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 12:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764793571; x=1765398371; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D4U+z8diuyXhssitIdfr3VF+3PrEfPEyJkTdI0+umjk=;
        b=PZgKVjFhY7XC2vIqYC5Ntqfen3siC8/LLbsfiK3a9SYyF/9ypYQTq07sV2eI6HBb5Y
         EPQ6/Tj4wZA+kNRwM3qeSeHdCAQOCXzDmeiaaoXWJ4y6kgalbZMuX5EhZI9ZvTz30FMU
         5BsfN8wRnu2Hd9nQke/DLJCIdSqXK6qNTOz5j0HFhVLyUAu/nvZkXyO2yWkImb/VpIsl
         Q0Vis5lGoP/mG1iMRwoBe3UdZxcfrdnWRulzOyJlwu34j2e2m2pzipW5VLWzUXwhMuxb
         J52kKYzI6HZQz1tfS7Bf0LHrOIS30tsdBmHKQqJ7TKdclTTv1uhCnUWg6AbegcB1Lhru
         Aluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764793571; x=1765398371;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D4U+z8diuyXhssitIdfr3VF+3PrEfPEyJkTdI0+umjk=;
        b=M5XpfypKUhNhC0egNgu9priciq87HSCfoiQwTzGE8f8+Pl0l7X+0bAkQXEL+yYHYO2
         iFgiMZ1GrgBIURBYLdgfNhmFbQyEUrAF7eeYFVoLtMTNtGHfMpluxw3XkAcE8P6NYM2u
         6thEWKp0t4B2xAzy6/seDM5/PpfCXxgTb+EXzJBMzBmK8btnPEoc5bhFyDEA9xJQ10P7
         NUtAbOo0qBfHKLVlyrldbt/LizG25Zzco3tmR8vKATgsGCgVMEvTS2OJ2GPWsVrC3ihc
         E0ADey5lMmgVcfSY9yFTH05oovC2bvXZOLsFxBtB86aICqd1Co97GI/vl2ZNGYacvPKa
         3IWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdUNQAo0bb7RljO8VthAX1/9O808IQh2Ttmx3sm/NvVIAaIM4iA/Wy9Qrnu/bpx7IXj3fGDTqhijiF@vger.kernel.org
X-Gm-Message-State: AOJu0YxnyDhCDlAimMhhxp0hhU6lNk97JNX7Fq/AJ16D3Y9FYEUAUZ6a
	9WHDf//WRbtKT31XOaUxb3jv4oUmDXp5la2CLC4xxiVQKiNMGJStWp0N
X-Gm-Gg: ASbGnctBvm4micjuQR6eNA3AW02K/7F4s6kh0Jrpoc7RtZMujymZ9rxju5GHlOGu+c7
	fPPw3KFFW5SB1yOQXCgUxq7QpgeuYgOCnK8O3OCUnPznHyCWeosiOeWwQddD64wGJAA7h52Kh91
	1EJQD/Slg9EX5W3kKOqzAdTE/KXVurLS2nw2Bl2jJr41wKNj0M7kso+ERSCAqv+28bRsE8zB+GR
	dOb8lSkvCw51sdc5umHzqcXQLt1m/eId5FOX0+AegoBDgxTRn0W92A86yXNWHdDa/uHcYdtbsbj
	zcl1T/T2r+d9xRYH+n5cOZx/X+6VFQu6ahREpMWWTsZ5/kpk1tl/vPnF8Ss5R1UehNDAv8gVXiG
	c8r+5YbCyjgjeEB7jWf1DDobYW4/xbCjRHo8C9Orl5NVk5EyF+XJsQ827p/90UBZiq8TQrkyZ/v
	4asP8=
X-Google-Smtp-Source: AGHT+IGQX4FBRFi6oZxQ8snoDehTEr++YiEbkXccxBzPY9CWH/aUFpQkryVpXYyT9Si1SaWtVfs3fg==
X-Received: by 2002:a05:600c:1c27:b0:477:a203:66dd with SMTP id 5b1f17b1804b1-4792c8ac743mr18376385e9.2.1764793570705;
        Wed, 03 Dec 2025 12:26:10 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:bbd5:36b7:a569:69aa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792b157783sm26556215e9.5.2025.12.03.12.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 12:26:09 -0800 (PST)
Date: Wed, 3 Dec 2025 22:26:05 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Frank Wunderlich <frankwu@gmx.de>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH RFC net-next 0/3] net: dsa: initial support for MaxLinear
 MxL862xx switches
Message-ID: <20251203202605.t4bwihwscc4vkdzz@skbuf>
References: <cover.1764717476.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1764717476.git.daniel@makrotopia.org>

Hi Daniel,

On Tue, Dec 02, 2025 at 11:37:13PM +0000, Daniel Golle wrote:
> Hi,
> 
> This series adds very basic DSA support for the MaxLinear MxL86252
> (5 PHY ports) and MxL86282 (8 PHY ports) switches. The intent is to
> validate and get feedback on the overall approach and driver structure,
> especially the firmware-mediated host interface.
> 
> MxL862xx integrates a firmware running on an embedded processor (Zephyr
> RTOS). Host interaction uses a simple API transported over MDIO/MMD.
> This series includes only what's needed to pass traffic between user
> ports and the CPU port: relayed MDIO to internal PHYs, basic port
> enable/disable, and CPU-port special tagging.
> 
> Thanks for taking a look.

I see no phylink_mac_ops in your patches.

How does this switch architecture deal with SFP cages? I see the I2C
controllers aren't accessible through the MDIO relay protocol
implemented by the microcontroller. So I guess using the sfp-bus code
isn't going to be possible. The firmware manages the SFP cage and you
"just" have to read the USXGMII Status Register (reg 30.19) from the
host? How does that work out in practice?

