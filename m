Return-Path: <devicetree+bounces-177557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37674AB80B5
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:32:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FDCE1BC09CB
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 156C828F95F;
	Thu, 15 May 2025 08:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ayGimTK2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060A8288512
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297671; cv=none; b=B6VSi8cQNYqWLSSOgBQuLPx/KtCoEXegm/grvyJP1boFZFP4NYT/iTV5zKLOVTKGZtwQEfbDFhSPVs7g5ylqLo5vG+qD199COC5jkWqXNX6CoJawzu9IKN8eQkbON1FjlxfHjo3ESxzsPK6Ha7FTML7arEJPWgJ89mcE75fFoLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297671; c=relaxed/simple;
	bh=XBkjoe00oBlTYtry2tGVHungSfbmtqAa/sjWoE6QvJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bPbcMdp08mVKzUpMFUwlKb5Q/UeEvu3ZpidcxSZ/OIOYB4z3DoXZsV1y/jHGBFh66me2I1BKu7XWqW3aKjOSvn2zUyji0q9ymYZAeiaDPoFeaHQ4kEjZ9JhMbbFQYfARL3uuEj4Vhoc9QJ/tik+L6/e8HLck6aYT/+Ni/r3Ge9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ayGimTK2; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-442e9c00bf4so4686745e9.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297667; x=1747902467; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rcWMQqZPxyGhQrPRZPMbMh16WqECLxz8mt9XBFFtXJo=;
        b=ayGimTK2N+GnitVxqnsy6/zogGhwOow7hQgD5wYCHqibU530PL5W3sMpE2pdxKaTJD
         WPIyh1GhNRRklXWZLjHO0iHI/HGAIJpdKxWABVQ0kxgrXhPxAoEFJyqXygB9U4WpSJB7
         IL9zrNwHnXNTNMfo8IixXlYcyWHCZMA685IWeyKPqevjYqrx/E1nyj5gs/c6Bof6W19S
         AvFADcqJe9sspjjdIiHtjguSnRwHzi+TVv3vM8uHtGckikyGe8sLuZtDhwfD/fu+UM3U
         0lehgRxwqfttKqatV2WVy+bM+9qA794cP5+1hpPzpD6frF6YozBNLJoJBG/FNYc7YmYM
         i+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297667; x=1747902467;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rcWMQqZPxyGhQrPRZPMbMh16WqECLxz8mt9XBFFtXJo=;
        b=eJUdk2aS7MQmM7QS+DGxg+HWbMVqU0xbnYlhRZ06RZJrXTNQvNshJ62wya1ydN64Ty
         YrcEQ12j+5F5/wGyNA2m0+oT5Ie+zvYKC/i84TLIjKZoix/xlhcVhZR+adFBCP7gtsBQ
         D4GifuTMWRRrBEt6PSjV5y4keB6WnU2xIS0bICzYwE0G1rxqGpYmaXOu/p9WbUYPGbtu
         Dq7FtIDkr37W7orwwOJZUumUAbaxvcZPsrl0w55Q4Y2n1zE9RN6dJMUq7P9Vi1Y4NHfN
         b4fFSocCO5Q5KCEiKD0yi9tH1KbTBRWQDEm2vZmrELkPvrUGvz/CTD04DwtRZlJ5Tne+
         DivA==
X-Forwarded-Encrypted: i=1; AJvYcCVmdoZrMmH/lKSeFcz6G5srHDINHt+Lf5omWuVYWZiVbmqFp1J2mId/0GbyIeKooLrp9hNdPnnHo9aL@vger.kernel.org
X-Gm-Message-State: AOJu0YyrTiJ/ahi+x87NuYwwrw1KF0s+6HY23bm5f3DifXRTNL1OKKIC
	qkLEDeUtWy4Nziy6/DTD2+5+Qgbd0ZKwDfEwIi6zgRR8CFJn8SXqmOgJ1dImX2/D7uwpvIRvVfD
	pG8b4Ng==
X-Gm-Gg: ASbGncutmCKCkZ1ewJ75H4YgVl8UtJDPq4kHGQoUiOlBIyw7BFC7VPj9cvdzfykw+Mx
	ay/fjEDbIMJF1f9jQwRTUKfMdSjA7cnL15afrsoBnIUsWuBxV5a2B/3fRb/K1iT6UhnZr9soToI
	jCEkk9HnHSs9WQQmfjKmmk83VpGOMjNKQ9poG7AFdYNcNxQcCfEOgn6t+GQp/4H5/+iOK97UBki
	cKk8m9W2di6cOh88NVJJdpFh2qJYJp/UhpcZz/xSG/7dDzB6Uy8ujV6WkRty3YTKa7bE8NC7BDh
	nDbxs/UzXEj/RQCsNNo42/ToQOOfXTI0v/6qgF5GCZlwvB7q/kqzzOGtu2nmO3+JJzsMn/HQAZ/
	wD93W/lxJACCMrg==
X-Google-Smtp-Source: AGHT+IGM8pVAAaN2XH1upx9CNuC/JzogliRzg83rBByyimAhUDf8Q1jZavviL1SU8l8bL2kgFHxkWA==
X-Received: by 2002:a05:6000:18a2:b0:391:3aaf:1d5f with SMTP id ffacd0b85a97d-3a3537b2ef4mr1237676f8f.52.1747297667377;
        Thu, 15 May 2025 01:27:47 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f39e853asm60841685e9.26.2025.05.15.01.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:27:46 -0700 (PDT)
Date: Thu, 15 May 2025 10:27:45 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert snps,arc-timer to DT schema
Message-ID: <aCWlgfKXUC9LOou9@mai.linaro.org>
References: <20250506022317.2589010-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022317.2589010-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:23:16PM -0500, Rob Herring wrote:
> Convert the Synopsys ARC Local Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

