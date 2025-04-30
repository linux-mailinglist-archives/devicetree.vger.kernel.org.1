Return-Path: <devicetree+bounces-172550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9D9AA52A2
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 19:34:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19D72460166
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 17:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61DB5231845;
	Wed, 30 Apr 2025 17:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SuZ14dUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4962DC797
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 17:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746034491; cv=none; b=GYIsWg2CXbDV2ImiAD7X3WpqX0D6X9OzIbmZj8TJWzUYjlUdEVdrI+Bg20WIipXCDGz0/XQiJxtL4u0kVAEnf3rI1QOnxdjJbx+IJlYnTji1mpkheWkNmmH9jjjU6NydjdLBJq+1aH7UFde/lhrg88NMHpS54nr3wFFSNDUrUCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746034491; c=relaxed/simple;
	bh=sJjte43NiqH2GdRtJKGWRdZ/3N4yBzH4KP9o7EOuCCg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ShZ5SxKL08xDOVSSYXubF+sSor1skvtKGDjglDovHyTJAW+4pbdmL0wRb0DhK55RBUQRAagfmd6CT5LsxvwJPVbDhbdgjG90akNhmOrSn7VwdMhRiom076DFa9Fh0el+nt5o+20YjiGs3udhFhggK8I+cst+HRCEOVsiWhs28OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SuZ14dUU; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso620275e9.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746034488; x=1746639288; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BsmKlwi6VoIc+NxJ9bjfNJ7tqKCea+kyj34iqmwMPBk=;
        b=SuZ14dUUp+J+5J1Z4nWalK92Xlv3IxD9f3BU+2lN2sQWX1YlLkQk3rgoQzTXLLx+H0
         z+EtmQrzEFgWtSOplScRUSwoxoZK1DRVmMslS7CXEgFzRQxhayhhukBBCVlItespR0Cr
         mfzVFiYn1CmEIYehLTQpafxNlSGf92CFL3d1rzEiLmCz2O591H12Ul/DMWJZ6//L9/sT
         As2DD7tJM4hCXe3t84/DnQ8fIoOklNebcBO/tmabU1wGrH35dofFL/qO8A3Z2NRO32Ls
         OOqd/iqL8My9XRUcNaeggvp3Xw1u+7IlqUUAOtobmonpYst8qTU8PTLeQRLYsWe//AkY
         E/vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746034488; x=1746639288;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BsmKlwi6VoIc+NxJ9bjfNJ7tqKCea+kyj34iqmwMPBk=;
        b=PAD3yj1FcjrExPaYEeYoW9+5t48nNPGEaGPzqjVbNGgp4XtdaCQuZL0jlt8ZRXLYyD
         75cm1fTJEGB6Zlc6M6J2KnA0slIP44tCOv/fVkFVtMBqcoqbsWrCSzCcdrooSo0OqvpS
         TF/mcFJPtKNBa+EOfAeXiVQ5h9sCDipwdIoYYjO8hpXU0kKdEDYsWnFo51crpensQC8y
         KOlXFMPDhTHjEgiqYyeJaLt5VWAuAk4edHINZdSEnwbmtUzrII7mEWge+qWHkvSs20CR
         qCgG4OtH3Cy+XGmTmb0LOT0MZhnb0bkN21wazoy9DFHJD2xNEj6g4dYgVQGgehULWf/R
         9weQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxcXTdDie0fUSD39019mWTd2O7KAN70ZgFzRFRU5JhN5Uv8H60WUCz2WheNOAO5zl81c0eqks0zEHu@vger.kernel.org
X-Gm-Message-State: AOJu0YxFWPKPJMWhRZibcm2obBTGXEj/ETy1/3fWxvMSHbbU8G2TLjau
	07M3SM0RwBmCOQ2gG8TzFlJjc1jOe+LynZMcR2MOjlx0tekJqEFa/9IZlQ9HD1o=
X-Gm-Gg: ASbGncv/zP6yBg2PL2xjBt7uMxZYUggDGxd7IDcVGfQslLqhWAzLN2FtJY+ZJhAVvNX
	82CAjUIf+FNugmaOKwL+63qMEI5WwVRKUeyl/vCKeaV0CYNaqThgD1s7jpwKf9EZKG9zQKc4Pog
	TUzs1n1o48IMY7lNehKpbjIWvMyG55Zc3xFaURqFfDhRyaoClyjCXaxFQh/4jQpRi7eIw3gQRoS
	JKBnxZTbPehxVjqEN2jssSOk71vOAHaTJvqMT8JFfqmnodKej8MEl0eT7u9W0UYgbNwqGwHKt2S
	HC8VECySsslEmhnN+qSAkeJwl7Aiuv3Kwn6HqggBwdJYeRo4QD5P+1rIlpFhQS0ga2sxvgZmBNH
	6rRY=
X-Google-Smtp-Source: AGHT+IEsPUiA9LOUkG1xv7zhKzlXK69TsSqILwiy36DX8ADrQygaBETAnGzi0xwryrCsYw7tGEN9kw==
X-Received: by 2002:a05:600c:1385:b0:43c:e8a5:87a with SMTP id 5b1f17b1804b1-441b1f3a597mr44224915e9.16.1746034487889;
        Wed, 30 Apr 2025 10:34:47 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2bb5c49sm31222815e9.20.2025.04.30.10.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 10:34:47 -0700 (PDT)
Date: Wed, 30 Apr 2025 19:34:45 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: j.ne@posteo.net
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: timer: Convert fsl,gtm to YAML
Message-ID: <aBJfNY9LihDBLDXO@mai.linaro.org>
References: <20250412-gtm-yaml-v2-1-e4d2292ffefc@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250412-gtm-yaml-v2-1-e4d2292ffefc@posteo.net>

On Sat, Apr 12, 2025 at 02:56:20PM +0200, J. Neuschäfer via B4 Relay wrote:
> From: "J. Neuschäfer" <j.ne@posteo.net>
> 
> Convert fsl,gtm.txt to YAML so that device trees using a Freescale
> General-purpose Timers Module can be properly validated.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: J. Neuschäfer <j.ne@posteo.net>

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

