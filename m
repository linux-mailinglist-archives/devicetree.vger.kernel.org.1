Return-Path: <devicetree+bounces-176765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D11AB572C
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F400C19E2026
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71CC0195B37;
	Tue, 13 May 2025 14:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CseQ8F+H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824DC219E4
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146667; cv=none; b=DqEtHwKL0AIc/4juxctkQhZLp4j1m8ZnOgxptmjbzp5twmTPos3Yubb7bVyfoPECOgk3BjE2VNiZjKFEEhw7NHOXu8OtocgTcakKWYfsNE/8p4+dVKD9SJsIAdeGVYG7tE3+XzDrUk5HeBrFKpfgvyRDiFkx9+CA12IbxM5zfwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146667; c=relaxed/simple;
	bh=GoMTa1oiBRufAMk+TJR19hVLI1uHIVu+p5+V59bCmTc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PIPtb/RuL2CIuqQa4l+N5vy8jCNslpbOlpBBkSWUrx0PXzMi4vBnZpBE2BCY1PMBkmxNXrKl6H/fYKUcp/ZhltEwKfsn0M8tBNt7qZs2RKAKPDTxigBk9yRovTQpvvd0ZztWBIzeeGQGGR2zuPr023+JwDVGZ8R444qNhNe0Qcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CseQ8F+H; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so41875245e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747146663; x=1747751463; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yyty9J7oFX8g3fubknNJuxgnKh0O3w+60/UN3l+3UkA=;
        b=CseQ8F+HhATdy8UD/Y+r1Nw+BSzQWu7Btu4Q6Dkj3y5GT2XE9kCgFDppS+YmhdBCd1
         hXqK24KnczpB0lsPg4Af0MWBv93V8KdOjJn0X/fDKMog4/SL1nW9oG/71M2sp126dN7P
         rucLcOmKO0PYOWkVlvUHVlJ9O0FC4GLrN9sol6IN+l9Id6GgFF5p19Zxdp6QJYJfrvVB
         Pj6WUj9YE1581+6yFou+NDuKJfGjmbO3+hyUVgk9sobrMj7lLEvduJ8TuzuJ1AT0uZej
         l9Y7bSW3qivT3edVWv678uHXrZl8fZWwkQF5fxGePn7n3Bk9wzJ3jiOzoyFRefUF0Cyj
         mbeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146663; x=1747751463;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yyty9J7oFX8g3fubknNJuxgnKh0O3w+60/UN3l+3UkA=;
        b=iR/HlEF2GKWk9UZw79rbyoVYZzVH/XMKo7djJzdrY0XBb8RPwo40x8h9OWy09rYY3J
         rrcCy/9wPF5RCVuvBUWA2e4+qIvEd4fcOYrz83C/Rom6sb1h3+Gbl1KXGd1v9jy+YsQR
         m4rkSZ38/PoxUtgiroEdeCODXT5HP4i0thURAgN4VTnV/5xL/cyRKpOwt9+uTX54exI3
         50v6XnE+AfrqlHQqAZbTeoID2MYOQnU154Pj7hcXAnN3vIjKeSq/1H0rkjRpEu3U450W
         iV18wTDxqMkbuFTlFkIiSNDP3qoBE9Im4v88cUjx7RRLe8fIpIhXcN0JF4lNKfsLryEm
         NDwA==
X-Forwarded-Encrypted: i=1; AJvYcCUpw/vsxYfOjWuckIa+ZKD+lyp8jI3vH0ZbKMLJPBf4wub54H2HnDoUDFW4oWHoGtf3nXv0nwLVD0xE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzym9uPPzUZoMgGNeVQsCslROeyV2WUQMBdMVGzTDFvU4ACXjKx
	48oQTCYMvpM/WCiP29kZKmruquKPB/X7TJOJ1nn6CLqNKtiWj61+GHHP2k/nmfZQR75vz4/Zzc6
	A6ngx0Q==
X-Gm-Gg: ASbGncvtMwGjnieJulB5+n9iwjsx91ZezgHdKoaUVnU11Syns4ZqKhbUnWMIqYdcSOz
	yS3OHma/5Xk164974RKRGt+kyXWoudKuZCd4VrGRSvK36/6dhhw28eiNqcNui7tFsGxSVeSrxOP
	YVvjXL6PEd8TH1mNk1Kw+MUQmq9ihZTotxyNn9bJ9lRLaZhzykfS87iBKQnMvfHzJpzl8Xxakjt
	szO0YRAHrHkac4NTLZM3jHlt9s9tf2TSweXF/s8PVwE7EXBiOQXCd/CIpYHpjk046a3hli5lJSr
	hBi3xXAIzkBzVZpciVWI/3/9ddddGdHlylq1hs+UJe7sMCc0gTqqGdgkQnyXczhioiPXUZqcMcB
	wfOYCg9zYR+dyYg==
X-Google-Smtp-Source: AGHT+IGyf1wD89DJXcgW642MDWFrZO+pHlL+xumUMPnNlympatoSZi++X3uov9+a1oXYEtcPTWl+zw==
X-Received: by 2002:a05:600c:a00a:b0:43d:db5:7af8 with SMTP id 5b1f17b1804b1-442d6dc7cd1mr139332205e9.21.1747146662687;
        Tue, 13 May 2025 07:31:02 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d6858626sm174090695e9.27.2025.05.13.07.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:31:02 -0700 (PDT)
Date: Tue, 13 May 2025 16:31:00 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Baruch Siach <baruch@tkos.co.il>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: timer: Convert cnxt,cx92755-timer to DT
 schema
Message-ID: <aCNXpHegnr4_FjfT@mai.linaro.org>
References: <20250506022232.2587186-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022232.2587186-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:31PM -0500, Rob Herring wrote:
> Convert the Conexant Digicolor SoCs Timer binding to DT schema format.
> It's a straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks!

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

