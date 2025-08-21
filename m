Return-Path: <devicetree+bounces-207545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AC0B2FED8
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 17:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4559E6864E1
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2361B2749D2;
	Thu, 21 Aug 2025 15:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="HQ4uaKV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FB4258EFF
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 15:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755790511; cv=none; b=RwZ759WWEpWlFW7um85OpjyPunCfIgURhTZiimje6ckRPBvLPNa891vs73iIHv7SLUyCq6sa0yv0VzgVJcnZ43JW2Z4m6pU6nuHIpXOhAF3hEthcYZTIF2f01HI4+NuQ45MYHI6H/r8d6YhrCVJc5IITCSTedYh2aeJ/TCYJ+CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755790511; c=relaxed/simple;
	bh=uM1DaZTN4c/PIqaezw/b3XVLI8CoBrBbp475FXL6Bzo=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eP1n2/sQ6c2eFiS6jrU5VUFdu52yjsjv9ZR+H2M7GJjqqdDAfyv9i88X3I8h2cKwA/cn2lqFRmSnEVbnGzPCePYufP55Mff/grf3bQmnrhvn7XdnPW6NCVrdb+pTxOSAopLk37rjoByn4+4l4mTC237pil1uoV31pIRHo2C0J14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=HQ4uaKV3; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-6188b793d21so1756702a12.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1755790507; x=1756395307; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bmT4+9q+WF2xuKvhWm+16FMNcdazw5pWXArjlhN4f28=;
        b=HQ4uaKV3/xAEwTazNgWf1qnJRbTGBKl3No4pd7XyP1/avBkeytennDO2l84KossPmW
         wOMNwZvAdV6FjizLcQeGYfRRUyKK5AEU8ZZgCHIXa0Aq6PrRscqc1gqxzq3qw1UZVVh2
         aDB27RSb1cJ/vxMqp8teAkirnB0KmcML8MuujLDIUFEO7VCiZnKSS03KH8i3KCDe2wle
         MijnJ0uv0RPjPY5YteKLDZeXyqRsftOKiLUhOmU8QjedRDeJVohuznw5ZBMECyxF9pVw
         qdEXTL3K7Vl09nVYD3CxeBPR/bFCR8sVhp43aV1x5F0E29/RDK4H+POc33mI5FONkgYD
         /Y6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755790507; x=1756395307;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bmT4+9q+WF2xuKvhWm+16FMNcdazw5pWXArjlhN4f28=;
        b=q+e5ufcf9k2ZfTPGUczBE5onao7CRxtlVFFlUKyYKzfp8sEtiHPPoTs3zGFKwh/1jT
         Pc0c2R1iqRUssIKWvpVTJSYiQAhqtwDYSwAdhqbunId/GsgH84OWiowMVss5JKmAOh61
         ea85bhb65AmnDiKUt1cAIfQdReKUd6LTZSFi1cdoHKv9BCVCHNL8eDk/YaxhQNMRvZvX
         AvJ51gCju3Kql8rQvDxKYgk35/DiP3HD6Uheb8DSYZRG0oADFJxzbyhI8Zc6gIsCY6UI
         g4GQTm1WyVhmlwOQsFg7kCUwdQGu4NEf683O6LlKEHGy1Ycs9tzGHwkKy42G8as+CO7z
         NcBg==
X-Forwarded-Encrypted: i=1; AJvYcCWQuI2QOO8mHWy0r5eTpOcbNgRtLozv7NuNZ2hKAbRdz3Bo/zFRB1/7HhhHT7V5u016dHx0H4SzpsDg@vger.kernel.org
X-Gm-Message-State: AOJu0YykRxOJDIVFYyfd0vG8ef0YCPcqrjDhGrYHpqZnCzJr20JTIJtH
	o9QftaYShdBz4hLK3vyOlSiTp9JhgPMCvqJVoLr5fbXie2BfKKXCN/U74j1gsgbgphs=
X-Gm-Gg: ASbGnctGEY17lTWAURX7w5J+7xfR3T8Ttk4B81V98kfamI8mY3OeVEdua9b9DPw+gNd
	rHeEizI94qa7wDnLHGjEL+iipHDQteiqKOEWd4fzLvOs2vWzaFgTIKooTpiRknUWtwl/QNaFbB3
	YQKyrC6yP8vrEG1288rZA34CRwm3ZLc+9U5UWLuIw9PvWhdmRwDG8M4uYtKy8qwopBhQHJKFi5z
	7rNSWbT9R0nuZPwyMBAmTEyStn3h7zE2ZXXs+Ry9rzQiD7v8SHN4g0QNjQQpl4sAY2MWH7jhgln
	8AOCnvI0S1YAQhOZgKsF9f919ucz81EWu0Mrj2rs1W6fbLO7jk+pttzDyLPRb1uAyTSCFP2Bqpi
	V+QXptBDsDjzInAssx06qcbSdicJP+pEHmIByb+FIUiqwHSS6ZgF8kzn0EloK
X-Google-Smtp-Source: AGHT+IE6i6MAcGkPSHSM0qg6lud9wFnrIlBRLuMIlOpoA2gcWkZO7oMKz2wMyUruTfC+VDFOVZS35A==
X-Received: by 2002:a17:907:86a7:b0:af9:d7ba:4dd7 with SMTP id a640c23a62f3a-afe074c7c05mr256732966b.0.1755790507054;
        Thu, 21 Aug 2025 08:35:07 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded539d39sm399697766b.110.2025.08.21.08.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 08:35:06 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 21 Aug 2025 17:36:59 +0200
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Andrea della Porta <andrea.porta@suse.com>, linus.walleij@linaro.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v3 2/3] pinctrl: bcm: Add STB family pin controller driver
Message-ID: <aKc9G9owEfYD-_qM@apocalypse>
References: <cover.1754922935.git.andrea.porta@suse.com>
 <bb746d2fd50ecbb9963438fae8601c2e4901a126.1754922935.git.andrea.porta@suse.com>
 <6d812c08-341f-4f7f-a9ed-4545217cb8a8@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6d812c08-341f-4f7f-a9ed-4545217cb8a8@gmx.net>

Hi Stefan,

On 11:18 Tue 19 Aug     , Stefan Wahren wrote:
> Hi Andrea,
> 
> Am 11.08.25 um 16:46 schrieb Andrea della Porta:
> > From: "Ivan T. Ivanov" <iivanov@suse.de>
> > 
> > This driver provide pin muxing and configuration functionality
> > for BCM2712 SoC used by RPi5. According to [1] this chip is an
> > instance of the one used in Broadcom STB  product line.
> i'm not sure about the whole driver naming. The cover letter describe it as
> "pin control driver for BCM2712 SoC", but this patch is described as "STB
> family pin controller driver". So as a reviewer, I'm a little bit confused
> of the domain of this driver. Is it for a single SoC or really for a whole
> family of many SoCs?

It seems that this is indeed a whole family of which BCM2712 is the (first?)
incarnation. I'm not really aware whether there exist other physical
implementations but I'll amend the comment accordingly.
Please also see:
https://lore.kernel.org/lkml/d6ab66cf-09ac-4f53-9102-11f207d16db5@broadcom.com/

Many thanks,
Andrea

> 
> I'm asking because all the other BCM pinctrl drivers are mostly SoC specific
> and not really general for a product line.
> 
> In the former case, I would expect a driver name like pinctrl-bcm2712 to
> make it more clear.
> 
> Best regards

