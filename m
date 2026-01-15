Return-Path: <devicetree+bounces-255817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D19D2984C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:10:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D8A2B304735E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 01:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 163213148B7;
	Fri, 16 Jan 2026 01:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uv/yDVWb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9798A2C86D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768525656; cv=none; b=agLN3qJInKeh3mMy3YJ4rR4fTLdBx8MrEc4EJCvIQgrl1LQeqnP3N8WaPgdsK6PTF3Zo4FCMJCkjcpob14WuVBUkMolHZxbjxIXGUs3qpuwjCs9bHU5JU0HBqzpSVlxiNNIztcdOVNTzhxj2yw/4AbJ0lUNMcqYQ1y2EofVMMkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768525656; c=relaxed/simple;
	bh=WVAFk/G9Jae2iegxU72AI5Nf1GESFNgXZ0s6CTi6AQM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dF4c75QANiX4mVDcdIK6CSQ/E/IhqPkjh9HmwFAMDkk7GL9jMpfdj7MBNWLnaFbEWUq0jz6LXL+sll39Ja3Bkhz/4TOq3yu2Mmtq/Hd19M0dl87X8JBSrcF3+brnF3D5qycNwBRXaYNQpfku/fBMm4ttp2tgUUUo0ymiE0iCZ5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Uv/yDVWb; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-4044854464fso434121fac.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 17:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768525653; x=1769130453; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wFG3gVNxJD7Ap7fJ1CZDygWmut6qTFwFZjaDYw553m8=;
        b=Uv/yDVWbt9YA8FhRmQl+E88AvjsNVIPn1I80UPRcypf7YrJlSJF58NE0VE7mO439jv
         5KUpwGxD3833ptPOYYU0SYhiKcFfdxUK4P4DPnTTmPBY9Fc0uatEWsyZhr+eFdmTBbwj
         gEQnjH3yNJsPvRCf+5yT/Be0PCjhMCwaVPgR88KgrWABPFhQ31U+/WRYy0mZPE8rtY07
         v2f3677vabH2sc+8TVx6c9QZfpFnqPXmFyJx1QAhPKPk8oYSZ6N+pTOmYEeMOcII8ClW
         WS98rMeHCb/Zw0BTToWQQuMkQobfvg1U2J29IGcVl1rGP8afMPXAr8KG8R710hZzmd7F
         C5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768525653; x=1769130453;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wFG3gVNxJD7Ap7fJ1CZDygWmut6qTFwFZjaDYw553m8=;
        b=DfozGxfd+aNf2xXPJmaUiRtmUWDEvdyA/NmS0pP+NhiNVlt2A6dE60lKLMKgd70DNr
         zflkYgCt8xzvprGoeYMpyZWsiEG5XHt5pPwp9etglqHkT1P8sdYwMOzCTW9y8LplgLWf
         lwSGPphhqEQT2CEctBUOpIaAiSsp/fMe3fliAfmlsBOxNiXYbNUG3YvXnm4UwB/IOsvk
         khmZ2V9Vag27da8LTJr51yKL2aTt600gbMDGiQkEo2u5Eenf8MYPXIEj7ABZiR9OLQFN
         gWNb6epYz3DgTcvlMMb3kT4dx8HuRnVtDQTKTJQ/RLYyn2AGKJYysEGF4WvB2yseyvdS
         9V1Q==
X-Forwarded-Encrypted: i=1; AJvYcCV3V4YJMRucYfWy0mgP9B8r7Q1oXThAwmos+Gq/AaFzu/FjjLQrMV9WEzc8o8YpmHgp8+yHOyJ/Ieaz@vger.kernel.org
X-Gm-Message-State: AOJu0YxGme9q/Crqw0JfdxEZ915vai1fFgQIY7jncsmlYl5wCmZRUOeC
	waDF1wuOrwHt6RmWtfbF2wiDxrbJ7QD7T8NM12S4oUjoDrX0MZuO+0hrIQh6gQ==
X-Gm-Gg: AY/fxX4TDBahskdqXJyRclWg6JZtNFyYEhdXgB2YhrELo7zMGjJHmGE0zjz1kw/BA9W
	iHINYGL45OyrPqcq7RKQ8iCjwty5qIGtidhUBEdnmFnMxHYz/0NtgMgGPRVG4lajjqTsZVZ3Ody
	RtfD/SGLweydd6xGgg5hpNiBdxEvWrlIV3+msXNIlPC3Gydg+KFN0aL6vD+x9l6mm+LpmMoxoam
	JZ7xi1LtZ48xsT97G4eIN3XWWjyjb11FTLuIAsgECXVvdm1N8d/Xyz1ZgEVCShtDCSL7X5Y22dE
	jcvzhFNhBpWrWAW+4ySlOuR3sbyrz8PFm66BHgmKg2PSyEvLmle4F2RL1ef5geDGrWpHWZkGBWZ
	xF/c85tuK7MEO3sea2XJ4WFbwBimY4/UM7pd8ZqgHJU9eWAGbr1sb6kEA7vjElZMbRHVnrtk9xW
	WVkyP4W+mtYA==
X-Received: by 2002:a05:7300:6ca1:b0:2b0:5079:d3c8 with SMTP id 5a478bee46e88-2b6b3f139f5mr1020729eec.4.1768520046558;
        Thu, 15 Jan 2026 15:34:06 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3696f40sm696762eec.35.2026.01.15.15.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:34:06 -0800 (PST)
Date: Fri, 16 Jan 2026 07:34:01 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: "Anton D. Stavinskii" <stavinsky@gmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 0/8] ASoC: sophgo: add CV1800 AIAO mux and I2S support
Message-ID: <aWl4fvKsUZDg9dwj@inochi.infowork>
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>

On Thu, Jan 15, 2026 at 11:17:37PM +0400, Anton D. Stavinskii wrote:
> This patch series adds basic audio support for Sophgo CV1800B, 
> as used on boards such as the Milk-V Duo. 
> The series introduces an AIAO audio mux driver, 
> an I2S controller driver, corresponding DT bindings, 
> and DTS updates to wire the components together.
> 

I haven't see your mux driver, is it missed?

> The implementation is based on vendor documentation 
> and testing on real hardware.  This series relies on 
> recent fixes in the DesignWare AXI DMA support; 
> in particular, correct operation depends on 
> the DMA changes discussed at:
> https://lore.kernel.org/all/20251214224601.598358-1-inochiama@gmail.com/ 
> The current driver implementation supports a fixed audio configuration 
> of 48 kHz sample rate.  The series has been tested on the 
> Milk-V Duo 256M board using the Sophgo SG2002 SoC. 
> The implementation is expected to also work on Milk-V Duo and Milk-V Module 
> boards based on the SG2000 SoC, as the audio 
> and DMA blocks are closely related.
> 
> Known hardware limitation:
> On CV1800B / SG2002, the I2S2 output pins cannot be enabled via pinctrl alone.
> Due to SoC design constraints, the output path becomes functional only after 
> additional vendor-specific register programming. 
> This series makes the limitation explicit and does not attempt to work around 
> it implicitly via pinctrl or undocumented behavior.
> 
> Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
> ---
> Anton D. Stavinskii (8):
>       dt-bindings: sound: sophgo: add CV1800B I2S/TDM controller binding
>       ASoC: sophgo: add CV1800B I2S/TDM controller driver
>       dt-bindings: sound: sophgo: add CV1800B internal ADC codec
>       ASoC: sophgo: add CV1800B internal ADC codec driver
>       dt-bindings: sound: sophgo: add CV1800B internal DAC codec
>       ASoC: sophgo: add CV1800B internal DAC codec driver
>       riscv: dts: sophgo: dts nodes for i2s tdm modules
>       riscv: dts: sophgo: add Milk-V Duo 256M board dts
> 
>  .../bindings/sound/sophgo,cv1800b-i2s.yaml         |  75 +++
>  .../bindings/sound/sophgo,cv1800b-sound-adc.yaml   |  43 ++
>  .../bindings/sound/sophgo,cv1800b-sound-dac.yaml   |  43 ++
>  arch/riscv/boot/dts/sophgo/Makefile                |   1 +
>  arch/riscv/boot/dts/sophgo/cv180x-dmamux.h         |  57 ++
>  arch/riscv/boot/dts/sophgo/cv180x.dtsi             |  49 ++
>  .../boot/dts/sophgo/sg2002-milkv-duo-256m.dts      | 231 +++++++
>  sound/soc/Kconfig                                  |   1 +
>  sound/soc/Makefile                                 |   1 +
>  sound/soc/sophgo/Kconfig                           |  41 ++
>  sound/soc/sophgo/Makefile                          |   5 +
>  sound/soc/sophgo/cv1800b-sound-adc.c               | 322 ++++++++++
>  sound/soc/sophgo/cv1800b-sound-dac.c               | 204 ++++++
>  sound/soc/sophgo/cv1800b-tdm.c                     | 714 +++++++++++++++++++++
>  14 files changed, 1787 insertions(+)
> ---
> base-commit: 7a52965b6976c936f413eebeee3f78c6faf09012
> change-id: 20260115-cv1800b-i2s-driver-4f17836dec56
> 
> Best regards,
> -- 
> Anton D. Stavinskii <stavinsky@gmail.com>
> 

Thanks for your patch, for all the patchs, I hope you write a
meaningful comment for the patch, at least for now I found it
is nothing in your comment.

Also, the patch 8 should not in this patch and should be a
separate patch.

Regards,
Inochi

