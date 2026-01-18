Return-Path: <devicetree+bounces-256576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 21549D398A8
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 18:56:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C85C73008884
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 17:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791612FDC28;
	Sun, 18 Jan 2026 17:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ExXiwYo7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CD22F6903
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 17:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768758962; cv=none; b=nWkIJ59jXh+K5De0kqyU47yTUVlpzPqUGnh/SJAldIRxpsmcVef4s/0YWlpgO+gPZFZWwa7HS9Gd5vjB4YJXCL5giawZsGDf5XpOTZh6334fec/Mf0c4c66B7s6QHMyp7gXXPk6OesreIF160EPFsXpbADNp6cNzk82B05OQBV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768758962; c=relaxed/simple;
	bh=Cc02viVpEJM5zY+cD0JHltfguubiCXPcNGv6tOSGjus=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KhyEY1vf/jRmTRQERc/qdgaP3I1+h4I9HNb5x42EeFaXz7fIkonQwA1w4/u6oVzHEJl1gTJ5IFyoFccKf9LPeZKd/Sb5GLKUTbic7P3Te/2Qz9F6TAZU9QWbj0Q0Udy15UJ3gpVvG8oeKbMX1MiBFBBCZaE/UMniRaTFIAN7dSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ExXiwYo7; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso23210095e9.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 09:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768758959; x=1769363759; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JmufyVTFi2Nm8r9yuM1MA+Nz0GRNSPj6jIbhD8ad9xY=;
        b=ExXiwYo7eGrOGhBaJX5ze0KqbdSB7nR3TpZewdhUBEbmJjHgOZUgJBkDyiaI5U9wsy
         QLW8Fd2w46SWxlOAfYAaLyQYdJf0SDxkBsSQbwgdnlMDiWYW+3Eq1c0Z/SRNqgUNie1q
         7EBMyv1tnVNXbduRqAe06LEcn53Dus/yQG6UX5mrVKgReSAnpRCZLpH9uoRV9/JpPsuT
         q0X3yv6lQY0LQNKZXmQe+92uqLhCUXRhHvIsWj8hM+f+CPRz8qVb3p5KhK1Xp29SaZRC
         IcUcJeyKJlsJD0DqWn3NCQhQEZLnVBBWUUmoI/DgLuDywxjBQg6R89svQFOIC4GVJuOA
         LSAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768758959; x=1769363759;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JmufyVTFi2Nm8r9yuM1MA+Nz0GRNSPj6jIbhD8ad9xY=;
        b=BMSqMpvgJ/uChDf6RJFng7Ia2W9DXQOCTgqxSLENvRTdifU2bcKeg3GZrk8oV0QSn4
         pTuSAlhdstlVHksUrZG2KjZGBxiKEa3LqZexU9Ip0J7n1WO6mOLc9LRnoMyXoWbydDTI
         rxD1c4+qJAi+WoOZwApbJMQNqh+NgNF6lX4RNgnyTfaoaZiacRd7SYYUvZcDdky5co66
         xJ5PRnxi7WlkT750+IFNFc5z8V+X6rPT3EVy+BfF7T30b0z8XDWyqr5UYl6qcA6KnVWT
         PrJX3Sxowro3UQrZPoLcorem1KOeyihZxUM4aBrTVXvYfjuoS91GtalROdfpdOv5KdoI
         qWTA==
X-Forwarded-Encrypted: i=1; AJvYcCXkx3N/H1MJprqFq27Xa9cr9nyap/es1yaFdQa2CwgjbMSW/bi1holTFdi8+d2pKJwZ8EfK8cJVWaUQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxpR/B1wwePPj1CljHc3WBbxfy3Xd88Y0g5+4UmMp1QuGWbPs11
	NCu7DQCIMogdofWkJ+WiPjb0TXbqHnd8uwfEgw3lHebI9qp4EY03jGOw
X-Gm-Gg: AY/fxX5Oh5UCLWABseqeTYsmMR2Kdv8nKBlDoWZ3hvJPrynhmgFfEgYAjcBSb7aTNR7
	Wa36YGQBiMq1iPBblqGTmRl0nGdz9QHI6lOxASPQ0x0B31OI+4SS8NZBDDaFVCbrFvlLtfQEgIH
	NYuCQOGOFmkZPQD+0iZGZcLvlg82E3H8utTd+bAlt7yBXcGbOqecjSxm+3PmH7k2zWlILW9x/GN
	5Fvxa8V/a63HxbCpXUwtFrbu1tEhtNwk3X8TUPJLRZhXfdrqBTOXnxZNGZN9JVHSPPTR/S/RMob
	rgpk4WuUEl8WyycE/xI/xJvQNomz1/KHE5D8qVo35Uau0H+e8dz13gADIIen/FmRXDlqk6oAvyU
	7BPpA1TSTwWDH8a42QZLsrghesBRNQAc9mGD0Gnwlo8m0MHuauU8EkeD6TvndW3nhR2ubyT/Qc1
	eUu7L/XenmJSwlOjryOSvDpBveEQwSOKSbSwHbpbWepm0=
X-Received: by 2002:a05:600c:1c24:b0:47e:e2b8:66e6 with SMTP id 5b1f17b1804b1-4802590e305mr97146725e9.14.1768758958917;
        Sun, 18 Jan 2026 09:55:58 -0800 (PST)
Received: from anton.local (vps-58d0fbce.vps.ovh.net. [51.178.29.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8d90b3sm154086955e9.15.2026.01.18.09.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 09:55:58 -0800 (PST)
Date: Sun, 18 Jan 2026 21:55:53 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 1/7] dt-bindings: sound: sophgo: add CV1800B I2S/TDM
 controller binding
Message-ID: <aW0a9e8Lyv1tu-mZ@anton.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260118-cv1800b-i2s-driver-v2-0-d10055f68368@gmail.com>
 <20260118-cv1800b-i2s-driver-v2-1-d10055f68368@gmail.com>
 <20260118-famous-magnificent-peccary-474ba8@quoll>
 <aW0SikDtd0HIrT4v@anton.local>
 <37bbd795-a0b1-462b-bf0a-2713f79ef2b8@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <37bbd795-a0b1-462b-bf0a-2713f79ef2b8@kernel.org>

On Sun, Jan 18, 2026 at 06:32:24PM +0400, Krzysztof Kozlowski wrote:
> On 18/01/2026 18:07, Anton D. Stavinskii wrote:
> > On Sun, Jan 18, 2026 at 11:14:34AM +0400, Krzysztof Kozlowski wrote:
> >>
> >> Please use subject prefixes matching the subsystem. You can get them for
> >> example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
> >> your patch is touching. For bindings, the preferred subjects are
> >> explained here:
> >> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
> > 
> > dt-bindings: sound: sophgo,cv1800b: add I2S/TDM controller
> 
> No. Read again, I even gave you DIRECT doc link!
> 
> > 
> > Is this anyhow better? Also in the documentation directory should go
> > first but I didn't find such examples in git follow. 
> 
> Huh? How so? Where are you looking? 99% of commits have correct prefix.
> Where do you see sound:
> 
> b7d53fe53cb5 ASoC: dt-bindings: rtq9128: Add rtq9154 backward compatible
> 35bffbe49dfd ASoC: dt-bindings: Convert realtek,rt5651 to DT schema
> 70d95c5d2081 ASoC: dt-bindings: rockchip-spdif: Allow "port" node
> f66e7da2a6b1 ASoC: dt-bindings: realtek,rt5640: Allow 7 for
> 101b982654ac ASoC: dt-bindings: realtek,rt5640: Add missing properties/
> b540b4e157c4 ASoC: dt-bindings: realtek,rt5640: Document port node
> 25b858474497 ASoC: dt-bindings: realtek,rt5640: Update jack-detect
> 66b47b9c069f ASoC: dt-bindings: realtek,rt5640: Document mclk

Sorry I'm new to this and learning. For some reason I thought that "binding dir" 
in "<binding dir>: dt-bindings: ..." is actual directory of introduced
file. That is why I said  couldn't find any example because I didn't
find anything with "sound:". Thank you for clarification. 

Got it now(I hope so). Removing sound, adding ASoC. 
Also the word binding removed as you told me

ASoC: dt-bindings: sophgo,cv1800b: add I2S/TDM controller


