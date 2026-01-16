Return-Path: <devicetree+bounces-256230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56471D379F7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 18:26:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 674783021E41
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFEB0342144;
	Fri, 16 Jan 2026 17:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZTLXafyk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8C733A6F1
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768584359; cv=none; b=mRb9RLDQ/6zGMu9Rw/RdYmkrs4TPZ9m9pGB5981FWNQLoF9xKQkrosn/KQ4xunWsB/plICkPaTQra3p24lwtM71QdLwhlMp0T2vY8NlpSw+4Gu5KdnCViNWmzWVfH1CVVBR/FTmD2EQtFripm9gx4ALMc2su+uz/iFeEenNRTuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768584359; c=relaxed/simple;
	bh=YdviBTA8jRw1D2gT88VYxUJR+OiJuzgjG+E0JzrSNxk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=skLXneQJD1NELsK0yd7O8YbFT3X9RTSVWXQDO/aBl9wq7peYDebUg1mXlBDs18MGDx0N0FHy34pn4PE3v38qSQaLOD0Y7fOnfQ7MevtA7jvWNtDJAEPjJOnDT4WYADT01VL4QncsJepA96Bv9hxTqH4xTdT4nh6QiwoPfKicXbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZTLXafyk; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-432755545fcso1368307f8f.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768584356; x=1769189156; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=guLdPSMspTYOQSTOoD0vgqQiAA/YDtF0X8jjlbY9les=;
        b=ZTLXafykwOWeH2jSFBA9oCl5fInL88gaM1UOVuOiqisXzYS2AIkYkkpx4c2KawaIcN
         MNZDlaeBPHeHalbcvtMOtYBbm+L7dY23vUF8B0uTvFvAHPtRbTUNwVjvWfKmn1CNCGD2
         VCfdBOJRgYZcp0ZAnd4hyYz9GDaJyKzVa50Cp0Xu16eB2VOz0vePVuCTJnkUkanzLo9Z
         nJoZrfwfD/6T41sqZfGQ03QuwQ2FpDRu4uqupvltxREoIloEFjgacx2QpXhDDTsjx0zl
         tp4k0QgKdPUPxWuM1hhM7BV7dQNoF+ZjIpRQE1m1sgW9lAnIcgr+mF+BucFOr234QA2s
         fakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768584356; x=1769189156;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=guLdPSMspTYOQSTOoD0vgqQiAA/YDtF0X8jjlbY9les=;
        b=umEgHxyyokUnJ7P8Akych7t8cVQ3iK4rNWj23z5UZR2wgYgMddOx9jf129RFJkBa9j
         4APuX1WBv5jta0vhuglk/IUGbhNFq2txM4a6CR6d+lZodE1ffkg3mphAEhgii3LLmHOV
         z6HZ7HCJcGFh+5E1Cewkx8Qnumb1NU87agdHxCA9ITYImIPcH3ooEbBuw6dOWYLmXk7B
         g41apyUsmAeYr4eHZziWzsKiQsvqivmVBvD+fNKhTwJQoCmu62mimjyIAs2jgj2ixVqe
         bBe2n5sF5NS0J3f1cqhQQf37JtT8oBPCeQaSLuzv8RQZpGE+lBZIHsze1Obclr82CwQM
         Kv4w==
X-Forwarded-Encrypted: i=1; AJvYcCXX1lwamkDIGvyyuKf140QNNTytzUU7mOPoX2vNW1zW1te+74SBFztgf2RwSb35dBiokk2di+Z6hIRY@vger.kernel.org
X-Gm-Message-State: AOJu0YxisSCQSWZxoNNjIAKF8Ng5Hx3huYFZgisrA34gm9uWim28YjKK
	oIcP4o1djih+Fk+fd021daL4GeWLE/AfipFhrikeO/EbltDAZyD0dxmc
X-Gm-Gg: AY/fxX4d87dQ/S9teSMk4R1Rzoe1Hv6ktylOIotwGXTZ2vkIEeORasdqGJEljvjMPdA
	0kHXN3+BgiDTqJGulkbswNTVK1rojIKS7xx21pX9rkHAWaHfMdgqY33mD5SqEGc0GX+lZvo8EDi
	YD0aa4zEE7uTAo//CY0bmVl3LF6lbKjZ+LrS5TEVtFW86WNSvCx1XchtAawWzct7B1ZONggQiLN
	22EsUYSi/OnOWu5KN0iUnVu1550/0PXeSzauuDYUStb+wA6YQAVR0IDA+uyk7nEEw6Hz2gA0zAo
	JeIY/QCR5AlsKsC4TgXtJOpCLH5VAPJYpfYkFtoLHIiJ7LtbSklw84pOPa7zTZ4lp3PuWmitVs+
	xuUtQLiRkfUxvOgldbPS2CEHsL2f6t75PVGpIcDml8SenNY77xj0FFokkZ2ycNFu+qqzQJ2ZRVL
	6u+Q8sNTEK+77aIUo7ogb10+5nEXY+6hyd++tFaSwzpgvbb9I9qJLfMsY=
X-Received: by 2002:a05:6000:3105:b0:430:f622:8cca with SMTP id ffacd0b85a97d-43569bd2aa3mr4952607f8f.56.1768584356323;
        Fri, 16 Jan 2026 09:25:56 -0800 (PST)
Received: from anton.local (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569998240sm6098837f8f.43.2026.01.16.09.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 09:25:56 -0800 (PST)
Date: Fri, 16 Jan 2026 21:25:51 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 0/8] ASoC: sophgo: add CV1800 AIAO mux and I2S support
Message-ID: <aWpyLQ6FR8_RsD1n@anton.local>
Mail-Followup-To: Inochi Amaoto <inochiama@gmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
 <aWl4fvKsUZDg9dwj@inochi.infowork>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWl4fvKsUZDg9dwj@inochi.infowork>

> On Thu, Jan 15, 2026 at 11:17:37PM +0400, Anton D. Stavinskii wrote:
> > This patch series adds basic audio support for Sophgo CV1800B, 
> > as used on boards such as the Milk-V Duo. 
> > The series introduces an AIAO audio mux driver, 
> > an I2S controller driver, corresponding DT bindings, 
> > and DTS updates to wire the components together.
> > 
> 
> I haven't see your mux driver, is it missed?

That was bad copy paste from original version. 
Thanks for noticing this. Will update the cover letter.
I want to not overcomplicate already big patch series.
So multiplexing will be done later. 
> 

> Thanks for your patch, for all the patchs, I hope you write a
> meaningful comment for the patch, at least for now I found it
> is nothing in your comment.

Thank you for a great help with that series. Do you mean
I need to add more meaningful comments for each commit or the 
cover letter is not describing everything clear enough? 
Anyway will do my best in the second version. 
> 
> Also, the patch 8 should not in this patch and should be a
> separate patch.

Yes I've missed this thing. I will remove the last commit 
and move codecs nodes to the base dtsi file. 


