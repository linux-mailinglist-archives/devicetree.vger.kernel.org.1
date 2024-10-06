Return-Path: <devicetree+bounces-108227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7A399211E
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 22:27:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 299BA1F2102D
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D43D18BB82;
	Sun,  6 Oct 2024 20:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cs8o1h4D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712BB189F56
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 20:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728246437; cv=none; b=eEm1A+729ENFKTFNKGJUS7TeDc44LynwFESKGD2ZXFcC6jx6T5LcJUVDCG7Oj4cqiO+xRahJZjDNxRzJ2wTmBNqxjNR/VVDXvwNv22nnUb9ehnAcm8WXVWoaxXFMtKlyZgmbf7pFGjZd3IWJW+ndCXuqo++ssTchXZwZTi4L3nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728246437; c=relaxed/simple;
	bh=yhPA2kPPr+irT5h+ngrDZkWz+Sy7YuDwpnMMCxiCuOw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LsNkwk0DPbR60FizNRRJPpkYsOJ1OZ25E8/Hu8wtbyEmvNwD5JfsVDyJCdTU84pADb6aBwNfW84hmsmst67/vBIyvZFzPl4keqDqVjTqvqVvNmdJzfScsu6/At/bGBwf302P1iTa9CE0xGXCBD+jX21PaiwnTzm79Yw96oTRC6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cs8o1h4D; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fac9eaeafcso38511381fa.3
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 13:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728246432; x=1728851232; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KG4Cu52jH1+wuoZCYvuQvhQt8ogTWacNvYvQVScmYPQ=;
        b=cs8o1h4DeEQbk18TuCqyDOuOAcfbRQWG/Y6NRloo73oVk9mrTExR0aM2VQIEXo4oCm
         Mus87edzbTlhRLtJ9a8fvfREv/i9SwEWzVoIMhXcMP2RFoyQ9opKVwBJ0OshjG0sDImR
         8EfeAu7LqEk3DSAt+AQUCmet9C+cpWf959JXNCMKCf1Ve5Kxm4YyS5yAEJvHCzba2lQl
         JVel2nzEx93aAtQQ+htnRfGo2ha99Lmbtxv+nEJEOWab9lf31S71FgrgiTXLjl39CLZI
         Z3DK0kYqC77lOYgvY62jOkud5v83g2usyNF+fo9LMTFRU92+KtzjFbbgaShknmColFxI
         eYmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728246432; x=1728851232;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KG4Cu52jH1+wuoZCYvuQvhQt8ogTWacNvYvQVScmYPQ=;
        b=sGGxRlNuVFMwyz6exNwVfuaK301PcLCxN8aYBHz6GeXEQWNvgG6IlDj07ixVL4rDul
         vjCSE+Dq7zdUsvlLFz3Aukq19ol0XFlB/frKqMTBVPZgexCBvKIOJSq1xYQrt04/w90X
         qLsFpendgng67h3kXUbOtWxADliUucPuu++r7G8KZK2P2EmkTsQF1kgZnaRO8d5qZkyj
         DJewwrOrlKdtLeWleF1Va7m3j4afODNmW89AA2AwfEYYJ/VltsfO53sjxRZJzJ8jB01X
         veSvDh2jxGzQ4rXvmrpnjjkvYw2qo9Z8C8Y1hzXG/j2dthOGli4DKWIrVrqypyvnmCBG
         tkMw==
X-Forwarded-Encrypted: i=1; AJvYcCUYo6B7N/yeuJxZum7xsVllaybGOZ1g/RnL9Y1gMjThG92R0MfSf7wyGR6bRjND445b/Rny1W7UpjkN@vger.kernel.org
X-Gm-Message-State: AOJu0YxyXdN/Crx3tdRY3QhxoIg8SgxnvYAwQwuTIiHHbGOsRp6qAy80
	ZwxKuGbxGQMSIACwkChXwoIdzQgUfkZEbqM+31AbV0lfSbySGBKzsMe9EabpBJE=
X-Google-Smtp-Source: AGHT+IFXh/4eKKDLzO40PDk0m4HqYHS84qgcRmgFjXIg9HcENQ7CKLytVUOSpIL6hB06NTq4BXBqUQ==
X-Received: by 2002:a05:6512:104b:b0:530:aa3e:f3c with SMTP id 2adb3069b0e04-539ab87476dmr4490318e87.14.1728246432493;
        Sun, 06 Oct 2024 13:27:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff235casm599750e87.226.2024.10.06.13.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 13:27:12 -0700 (PDT)
Date: Sun, 6 Oct 2024 23:27:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm6350: Fix GPU frequencies missing on
 some speedbins
Message-ID: <2hhqe7s5agfcjh3gvunggxr5boblc72747lo2qktprxlibiz3x@qdgvna6ufz3g>
References: <20241002-sm6350-gpu-speedbin-fix-v1-1-8a5d90c5097d@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241002-sm6350-gpu-speedbin-fix-v1-1-8a5d90c5097d@fairphone.com>

On Wed, Oct 02, 2024 at 02:58:06PM GMT, Luca Weiss wrote:
> Make sure the GPU frequencies are marked as supported for the respective
> speedbins according to downstream msm-4.19 kernel:
> 
> * 850 MHz: Speedbins 0 + 180
> * 800 MHz: Speedbins 0 + 180 + 169
> * 650 MHz: Speedbins 0 + 180 + 169 + 138
> * 565 MHz: Speedbins 0 + 180 + 169 + 138 + 120
> * 430 MHz: Speedbins 0 + 180 + 169 + 138 + 120
> * 355 MHz: Speedbins 0 + 180 + 169 + 138 + 120
> * 253 MHz: Speedbins 0 + 180 + 169 + 138 + 120
> 
> Fixes: bd9b76750280 ("arm64: dts: qcom: sm6350: Add GPU nodes")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

