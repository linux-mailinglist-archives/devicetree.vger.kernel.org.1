Return-Path: <devicetree+bounces-182862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EC2ACE3AC
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 19:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42AF4189525C
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 17:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59331F3B9E;
	Wed,  4 Jun 2025 17:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JzhMZbfn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5857319DF8D
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 17:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749058276; cv=none; b=tEhGxZu6OhZvlSFx+WKQ2dlIuTP52ZX4jYx7SaZpLcyq8MUNehRkYJ5DdkKI02Ft5Buw/yOxyOX4lkt1xnpQN8QEjXHxu4EggAOO/nyXYXdffxfTYBXcj3FpofYXY0HI89wxLn2SbY4W2rjfXXH3EuFrcm37zMpuDtb2r0c7mXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749058276; c=relaxed/simple;
	bh=q3sM5ckkqu3S1pmAwhJML99ONUvr7j4/sHrWjEGrst4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TOtZ1bSFakdIIkjv3dyw7bdEtSeqhlZ2x32+bc2ojmqHYpEZBRLKkI/fF+cjmtJmFUixf5nbL84n9oJI2EEysnmB98vh4UTS8d7yGPiMhgiBjkrWKul4khVobZhACbL85d9Oxf8OXSoaphtjrB7naNB1XU/qcfITI4rreBZ+P60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JzhMZbfn; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-22c336fcdaaso718625ad.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 10:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749058273; x=1749663073; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xOObWxm0mCeJEpZwglb2CEVZr9rm6jEf/VR9UY9bUP8=;
        b=JzhMZbfnuYM+p039M/njIQ0ic2qUG/QZfO9DZZS7yP0TmyXg7knaNKGmUC11M4ZWMM
         iMb7psbuW29PNZR2Ekai5Y4wLJ3qCjI2dDD/i5IR5PknNt3uW7wRk4cu/GXz/Uxbm01k
         qK8QW0dKDejMbE1/FUNJmTDcEInqhO0unPHfkjvILPAwL2ktLpvxhQekeRSulqKWAzaO
         1dyKiQk1ah5ULVN6LhGsQdFpX+Gn0arGYCCSfaevyO4W1NFUARfD3GR+1mgoVNFRLOeO
         7sQWg6dJjTGI54eFoo1aZSp5zGMa93ZgA0eDnGTcl+Us/FZo0evtpcGY+oRQLVllNXD6
         M1ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749058273; x=1749663073;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xOObWxm0mCeJEpZwglb2CEVZr9rm6jEf/VR9UY9bUP8=;
        b=piMtlRbIZHSP0zHXU8hkMqszsuH529O+314/9Uoy4tmjhVuMxt9jYSiTPAFHJT0tFl
         g0hRTqU6uCbWm32mD9whgicHEzCxOR7N9H5l60NEAioWk0oz5PagL7PwoAh7MHYbHfCy
         fp8ICMMJJxcNM/RuDtHAThpvhXrNdEASPNxr3Jq4jO6AYTjG8HfofUbpaBRMQKUSWzse
         Id05LkScUvu3y2qeCJu3u184L2/Xd1ALmDF2cQnrU+Bi8zfPHv89aKG7wzhXNk9PNy/4
         e8VmrJPBzw59rs2fELTuairlzmWGy/W9a9MF8qpXTVd9lnzPboCklE3A6JwCm+iuDWgu
         +yaw==
X-Forwarded-Encrypted: i=1; AJvYcCUFaBap3y4VNVQZ3Iumanh+zAX5ThIcUFbQSxRJffu5G6JfT7t8ofbJFH59+PgKEn0Ya0qlWSx26bMz@vger.kernel.org
X-Gm-Message-State: AOJu0YzZWsvLKoshx0sOZFoUfBAzj3HjyCgnS7EngIWehQk8Sv0Ar4gy
	SPFm30cgfMr8bFzP9ORRs4sAum1GUxHmji5xQm518VForth8XAfYDF5T7lDDFJJ0BA==
X-Gm-Gg: ASbGnctDOuD50v87qZ2t+bdK+ZkFsmYi1ufYvh2UlyXZMEr6vY5IX3tXdGfEqYzPCKF
	wJe0ncgf/5UTcvEZxMuLHTdvzvyEuhcQR2Y4xBj+pJ2xsJgQcYBP2HbKuGyLrKg2NBYVxLOQ+By
	J6h0eNeuGSBf4SlCWtpB6ybIPskjxhhiYjKcU79q4f8NeRUNt8y3/+1gfy77C93VwJY5dMWn6YD
	+K+VsMkJa1w2FFclMlGJzItJU9TXcopHBFx87q1NWxztqoYJcFfhMhbFal0AHUoZgH0SaYafboa
	dYRljEOqNwc8rD/t1H6QnFEW/kUb96K3A5zmHwfzvXIhfLFq71DfMz6WGXXrpw==
X-Google-Smtp-Source: AGHT+IGIJbSx2qDc2q2Gt3qbCZCgqmWW4FPwxtFTdbgDTBwo3IdO7XqHuYRl/uF5BzOmzUrf40UoSQ==
X-Received: by 2002:a17:903:1c9:b0:235:6e7:8df2 with SMTP id d9443c01a7336-235e11fcb67mr57141715ad.41.1749058273586;
        Wed, 04 Jun 2025 10:31:13 -0700 (PDT)
Received: from thinkpad ([120.60.60.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506cf50c9sm106668185ad.162.2025.06.04.10.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 10:31:13 -0700 (PDT)
Date: Wed, 4 Jun 2025 23:01:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	linux-arm-kernel@lists.infradead.org, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Bjorn Helgaas <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: renesas: r8a779g3: Describe split
 PCIe clock on V4H Sparrow Hawk
Message-ID: <egtsvxsfc5c2s4hrwucsqk3s5dv7xsi6ghrnf6jd3mvf3zvskb@z7hvehbd33t5>
References: <20250530225504.55042-1-marek.vasut+renesas@mailbox.org>
 <20250530225504.55042-3-marek.vasut+renesas@mailbox.org>
 <CAMuHMdUVYzaUyP=OUOST8SK66_BpubOh0WCXcaVWBy=RxBrquA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdUVYzaUyP=OUOST8SK66_BpubOh0WCXcaVWBy=RxBrquA@mail.gmail.com>

On Wed, Jun 04, 2025 at 11:24:17AM +0200, Geert Uytterhoeven wrote:
> Hi Marek,
> 
> On Sat, 31 May 2025 at 00:55, Marek Vasut
> <marek.vasut+renesas@mailbox.org> wrote:
> > The V4H Sparrow Hawk board supplies PCIe controller input clock and PCIe
> > bus clock from separate outputs of Renesas 9FGV0441 clock generator chip.
> > Describe this split bus configuration in the board DT. The topology looks
> > as follows:
> >
> >  ____________                    _____________
> > | R-Car PCIe |                  | PCIe device |
> > |            |                  |             |
> > |    PCIe RX<|==================|>PCIe TX     |
> > |    PCIe TX<|==================|>PCIe RX     |
> > |            |                  |             |
> > |   PCIe CLK<|======..  ..======|>PCIe CLK    |
> > '------------'      ||  ||      '-------------'
> >                     ||  ||
> >  ____________       ||  ||
> > |  9FGV0441  |      ||  ||
> > |            |      ||  ||
> > |   CLK DIF0<|======''  ||
> > |   CLK DIF1<|==========''
> > |   CLK DIF2<|
> > |   CLK DIF3<|
> > '------------'
> >
> > Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> 
> Thanks for your patch!
> 
> > V2: Use pciec0_rp/pciec1_rp phandles to refer to root port moved to core r8a779g0.dtsi
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> I understand this has a hard dependency on [PATCH v2 1/3] (and on
> enabling CONFIG_PCI_PWRCTRL_SLOT), so I cannot apply this before that
> patch is upstream?
> 

TBH, this patch is describing the binding properly. So even though the driver
change is necessary to make the device functional, I don't see it as a hard
dependency. But since people care about functionality, if both driver and DTS
changes go into the same release, it should be fine IMO.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

