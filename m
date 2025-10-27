Return-Path: <devicetree+bounces-231799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 501EAC11AC4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:24:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65BD43BCA60
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A443329C64;
	Mon, 27 Oct 2025 22:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XKn+D6Zm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B0F2E5B26
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603736; cv=none; b=q1XFJcBvkVaZx2Zmks7Pwb+sYlWm7Z21WHpNh+pDpua7LrqCVcWYIhLEE66H8aKWa6bPzEPUzLLtzST8k7K5ihd84FkEWSHNM/w+ySIYomcfsqwpaUCmm7z53lkGai2Bp/NlCwvhl4YQuZZ+3JoShtyLKkaag29Tg9W9r8qtEZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603736; c=relaxed/simple;
	bh=Egn4cV5CnJgU9OUEpru5VJybNcrGCiO3dvs+v1/WofY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pISjbFM5Wps0uEVLotyUSFiK8anjeBjlnY9/EBQB0QYm1GU9LXwsKK+bKxQS9o7M228i8PL+XM5SJj2R2ew4MggIHdFWIM3DA+T4qbqX9y+onkue+OD+Ze+/dJ2q/t+cQuU93Q0/k4kkieX1SSh4Xvhdz4rkKZWNmw+stzZuvdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XKn+D6Zm; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-40d0c517f90so380736f8f.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761603733; x=1762208533; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TPQWg8YodwV0TasyiuBuXsJUnrrwoBhVKhLf4m0cFkM=;
        b=XKn+D6ZmrbjLYeIS1bPp384GMSDSjoL+g8iKdKDsVAiAIEEGPFrSnY2wHpBgLkKU67
         eiM3Jit2aSSDfo6RY2MOd9AwOqfeJwYCLUaqMa0VsA+fVH2nvMgElFywzPL/t8I6+XaM
         cAhEKh0xQLqrvo93Enns9/FxP2e/xRPyKGixLZTDc0p2K3KpLL8wQJImD562SrH1dFGP
         bfihBsG3hEGSsHRBT+ekebUWcwX//EC7KZZELM10ghtWywr97YLJ4j47y/JnH855EV6u
         JBomQzI0+qbugCP6IZY9sInLVtIeABgZckFjEO1pUH4sFYaZ9cB7FP/xfzG+NTWYitFT
         DWFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603733; x=1762208533;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TPQWg8YodwV0TasyiuBuXsJUnrrwoBhVKhLf4m0cFkM=;
        b=s8vJfrYeZ8Jy6kEcpxN9XOQyPat3mvqx/9NLD8kefrakUld4R1fJsnH8kogBAmHMcz
         yhh5ooSoVcEmJUUZN7EmeIyzX8n5YBPi77wFDw2MkxZ1XYjFReEiee/wwjdkJl5mharm
         9ZqVAvJMatNVssBVrTRR87i+8sq8VXH8FX4QV2sPwyp35Ix8nOQjDkn32EnX/7ivXwM7
         D6+A4siuLvqGkD20YPfruqxW6N7/Pw3Tb2WaNZk1M2NrCv3kJ1S7n+80M1OccBThajxq
         b4l+d1boqaE3B4ig2nOoeTadGlyxrw+BUA2/0p7VNVsa5uXjgCOlVTZF5ZE4x6OQmXvZ
         9E8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXcd30cyn5dyR/tnm0ESBtkIIqLpBZ5D3Vo00HsKs6AL844XTrO3aKD70Q0NjXNSDYkPYnHi8cELAW+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3wxr8pBicZu1ufDgK3qzfZZs49AoPD8VW8rhO1pKQVx5m2/1Y
	pfB+UABcd7DLntDGrWtnoBurLnQVRfF1dK6y16S3t1WISyJI0pMi08cZ
X-Gm-Gg: ASbGncsGH3mGxNiEJUpamI04N7WPsVmHKUBrcnplb3FdxyZfAgfD2KngETIVkMLufXq
	gUdJs+9rGtSInoiQQ91rKGVZz/YF7B0fOaIHD6lW7vhuw7yPV/vtAU/WbAd3E62GgfZyyhvFl2F
	bvd+fSfx/d1SW/H7DdcIBu3dTilJgGK/jyNES6VNaHwL3y9Ak7ggJSzzVQidomEmWl7sIXLUmRk
	x3CgVXBY2ALoVKeqg43NzcjFCnrPOElNBdCaczo0wgn6ZlJqDYfc0+9+ehcisIRO64qUOFMTMEO
	3ZPMb/rVXlxG6KGiUF4hVdPKEhD45v9Sd8gyEYscm12ji0pRp1wWPTrQYI7uRlXB6ZKKhv9kJAM
	Wi2J5Wd5KJn9NWsL4yivuRLVTk5D+oFoFdaUr59OajX/B3FdkUHkdt3+ySVxADa0QSNtIP0q1oF
	cdvwg=
X-Google-Smtp-Source: AGHT+IFKML31j6wnI6vGTYle4J1PHdCjOW/A3I5JFdqfSeewCWVjPwljp6TGGzZv8i+BCRDqH3AhJQ==
X-Received: by 2002:a05:600c:1987:b0:471:703:c206 with SMTP id 5b1f17b1804b1-47717e6c391mr5547955e9.5.1761603732680;
        Mon, 27 Oct 2025 15:22:12 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d406:ee00:3eb9:f316:6516:8b90])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd4924e2sm159570265e9.8.2025.10.27.15.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 15:22:11 -0700 (PDT)
Date: Tue, 28 Oct 2025 00:22:08 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Andreas Schirm <andreas.schirm@siemens.com>,
	Lukas Stockmann <lukas.stockmann@siemens.com>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Peter Christen <peter.christen@siemens.com>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v3 01/12] net: dsa: lantiq_gswip: split into
 common and MMIO parts
Message-ID: <20251027222208.yrbqt5n3mseslu5d@skbuf>
References: <cover.1761521845.git.daniel@makrotopia.org>
 <cover.1761521845.git.daniel@makrotopia.org>
 <ab056e0761db65483e30c0830ba919c09bc101aa.1761521845.git.daniel@makrotopia.org>
 <ab056e0761db65483e30c0830ba919c09bc101aa.1761521845.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab056e0761db65483e30c0830ba919c09bc101aa.1761521845.git.daniel@makrotopia.org>
 <ab056e0761db65483e30c0830ba919c09bc101aa.1761521845.git.daniel@makrotopia.org>

On Sun, Oct 26, 2025 at 11:43:54PM +0000, Daniel Golle wrote:
> Move all parts specific for the MMIO/SoC driver into a module of its own
> to prepare for supporting MDIO-connected switch ICs.
> Modify gswip_probe() functions by splitting it into a common function
> gswip_probe_common() which covers allocating, initializing and registering
> the DSA switch, while keeping transport-specific regmap initialization as
> well as PHY firmware loading in the new MMIO/SoC-specific gswip_probe()
> function.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

