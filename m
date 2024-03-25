Return-Path: <devicetree+bounces-52875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE7B88A4C4
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EF3A1C38C5E
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B334213CAB5;
	Mon, 25 Mar 2024 11:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dNsTE94T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27F2136E2A
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 11:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711364816; cv=none; b=ILwmJYLKZkybk3haSbc6RKmNs2LAdr07hyuqP+fMG5Cp27GiJvOmr3mDTY/4Xtkqj5LQWFCIDK8JSj3t/grVX8XjIV4wF8UmZ4qreh+PHcr3UwmYHVKLOd0CzXcjMxKu49ezw9pYL260qDA9P8R3TQd9esimluCUKfS6Mz45PZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711364816; c=relaxed/simple;
	bh=zZVSu7G/KQ1PdKfI0EA3pF7R9i/joasupj+b2tIRGjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FcH9Z5yUu9k3PFMycxO0b3IWQPvpL+Za1xZ1Bjoj3KFR0bhfRiSvTFx6oY629whoEfakaP9bVupNSpIFFN/1I20BXHXt5vtlomXvt4hIsge02KIHNW9yswJAOR4i2LRVzGz7nWpMbGkqDhl5/N4ghYZwWndMe1T3UXfkx9IiRJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dNsTE94T; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d4a8bddc21so57612751fa.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 04:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711364813; x=1711969613; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OzYo9oAHWPo+TRsqkkObBMH6qMGOUpYvfb9XwOQz8ek=;
        b=dNsTE94T2drxD4NlIHlramlUIYfAVQK0w8UHOzM+8QzlNM9v1fQEy+nPckwPMmajob
         tg36oM0iYIQQ3F1aLVbcNzuu4KBWlmhCHMCpdo1dbFP78JlYI5pA5TjGmCp9yRC6msXm
         /zlWfg1PAh2xCHCf1kPz67HLlBcayumDRyDCDC/ojv56qLP4SKqoNm6Uc289E3O0aqyp
         GV3n6rnIczDmtVbrFl324BebKJn8gN/o684pyRBLnQPvvefEsCyNgasYHh73ctON/v+K
         hg5DAcfrqDGeQFyM/O4M6XqdIqEMZWf4gyh8LGs3XxXIWwM44GRblgAybrKjT40BSHY3
         GeFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711364813; x=1711969613;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OzYo9oAHWPo+TRsqkkObBMH6qMGOUpYvfb9XwOQz8ek=;
        b=rnIE93KnVCl/tnI3rIa5Ih6UvRstENO+/Xc7YCdGVreSfbZieYuffxBBDaKy6Fm1SU
         ZY74YZUc4x9fw7jB8AFqDEzrJL6ZF+p9ubG91AVykNd9TAVCt3h/u2z6jFiiNZuHqd0F
         lQaJZSXi5F/F0X+XIPaE6IAMu1zBexm3+OXbgsdfINj4BFCJ2KyQ5xJbQx8/FYkE8Vvg
         ommUj9RJg5xITQYTI5Sa2lvPQoAhFDKdF9lqfeGNBHB+wfAqxAd6AY7M1ez5jvFJA4RF
         X3qP7CA2JY9cri1XWPIw2y67coF/meBL6Kwk8DvvsM49tSQ4/5PDYskzPXd2KRxjqwVl
         VwrA==
X-Forwarded-Encrypted: i=1; AJvYcCUgwWLG9D2nUx5/X0y8xktMYyeISaFAkfgoDA+uLm/KV7mHtSmq/I4v3x2FM65zvM+CSBN/k4DYjupBCZoeaW9Kq/xCfm9gu1K2wA==
X-Gm-Message-State: AOJu0Yys9AWt88+Cry2RxCWovurbYrvUcaRfxBQjig7HbZDD7VZ/9Emv
	lD0+KyTdOGZ/OFo/qf1LacljuiPo64xrtb5nPepxrvI3LPB6LLU1mDKCfe9/WJ+b2lGG0j0IbhP
	/r8k=
X-Google-Smtp-Source: AGHT+IFyw+VCmIwfUgfLpo4PGCVswJxK5GtlgxguZfuOrp12zUG45UoQztc69XOjcZt7uc7aTZj+6w==
X-Received: by 2002:a05:651c:1502:b0:2d6:d852:1757 with SMTP id e2-20020a05651c150200b002d6d8521757mr1739225ljf.39.1711364812918;
        Mon, 25 Mar 2024 04:06:52 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id s8-20020a05600c45c800b0041487f70d9fsm4539285wmo.21.2024.03.25.04.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 04:06:52 -0700 (PDT)
Date: Mon, 25 Mar 2024 11:06:50 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Patrick Gansterer <paroga@paroga.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: backlight: Add Texas Instruments
 LM3509
Message-ID: <20240325110650.GA190215@aspen.lan>
References: <20240310135344.3455294-1-paroga@paroga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240310135344.3455294-1-paroga@paroga.com>

^^^
Is there any reason this patch wasn't Cc:ed to LKML (it should have
come up as part of scripts/get_maintainer.pl)?


On Sun, Mar 10, 2024 at 02:52:56PM +0100, Patrick Gansterer wrote:
> Add Device Tree bindings for Texas Instruments LM3509 - a
> High Efficiency Boost for White LED's and/or OLED Displays
>
> Signed-off-by: Patrick Gansterer <paroga@paroga.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> Changes in v4:
>   Use backlight_*() to access backlight_device
>   Do not set backlight_properties.power

This looks like a changelog for the patch set rather than for patch 1.
Normally that would be posted in the covering letter rather than here.

Nevertheless:
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

