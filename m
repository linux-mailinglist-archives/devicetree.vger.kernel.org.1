Return-Path: <devicetree+bounces-33708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99939836193
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:29:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DC451F2289A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486FB4D136;
	Mon, 22 Jan 2024 11:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bbrnlqj5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83BBA4D10C
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922126; cv=none; b=BAI8KAbawjZiYrypZN9TA9ib6rQxKH2p/GFK8+EIThApcHEtvs552D5l77XD71qHD8IVj6jwD91rWOIKnrYXjAyUXMHW2qcXNYcNX+tHEYdCzMr9IBiSpLRTOBZktADv65FV9mb2DksPhSoez32pwYKEk2ZEMRJiYDLkJ28sVX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922126; c=relaxed/simple;
	bh=jz5+fq15v8P2y1IAjuMP+zZSU56HsumzIfdjgfbshWc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EFI4r7TAzQJgac9FpkyxMJy/8IQhrWrScjaxiwwfJu1u9/pkHM6J3CSXNRIdxJd8zltFTa+1UNdpfX83erkbBjTweaS1FALauJtuxOi+o0z8k+VKe4ke8tiAdkQihln6HatGst5lCj7JuegiR76+Mx1Ps6RXc+/U5DZ8uespgrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bbrnlqj5; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2cd0f4f306fso32300771fa.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922122; x=1706526922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DcuxO13l9rVY0t17bgZ5rUtyhA0tzJvdYRk5OWx3zok=;
        b=Bbrnlqj58dUry9GOIU1x058bMXzTRNGlmh1uOq8GxRW/f2lmU9vUog9CivUU6F277k
         JHr8gNQ+rwzV4DTpqeFHVI40Si+BPJ+FNNWcOmnWdDOfscPlf1X7ZYEYCsLPTLb6yU3p
         lLnHr1EoLqKPkQn8YtDmMw6cvXvg9niscgwufeZR3vSgB/d9NdzvIAs6Nx5JncSX4oQj
         /iGQ1VMB+82yKReDwsNolULXAxA6kBEHqTmS4kQCYbTtIrkSgHOLETtLP+3uUsK94pIT
         MDj6hDGBfGQgMSwTvCcJNIG4Z4vhg7nmn//wdH4gGYKjQjI0JWChbW3CtzYwacn84R+z
         eAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922122; x=1706526922;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DcuxO13l9rVY0t17bgZ5rUtyhA0tzJvdYRk5OWx3zok=;
        b=YTmIBQZwsucAr5n2TBl5TPvuQq12i3U57dBD3X52ODTf+qOYOrMLs+EpMSUx0LyTTR
         ZXzwFxK5myZAxc77j9qhhcpY/6+ZgIMBxJQv8I2B3yoNNABWJmCCEcx0qT44HNkUSOl7
         UWE42H7P/k367chlLYQzuwXbjipHDuWa5GGRao5xIlW/mtrexuZUrDZgS2kLIEjjPHt0
         pKQwAZZrb+55UpAq2r8gdfWEWKPUISgPWw5KDjCSmVR/rerqd4lhAvuNUb7O1ebc5IgB
         /T2u1OLtIqDPWDNCSSh9K9JZwZZhCk/m4KZGetKB/Jjh8Amlhmw8EQj2xhREAy/NNDic
         iWIw==
X-Gm-Message-State: AOJu0YxtohEpfAtfhHwOJmhq7Iu9F/P/apvzF1T0AwrvGBYPjIBwtrL3
	/cY6ammalTVKXNcHrwXyTCqZMscXAzczIsC6P96LMoHlMpB+3QQCi/WjCphL8Io=
X-Google-Smtp-Source: AGHT+IH9GCOtDWvqqem7I6JtqINBeY4M8rLVsz/vddPraRdlqQUuPr0C1iB6ZvQxovWcHQFQ8xuEQQ==
X-Received: by 2002:a2e:8895:0:b0:2cd:8ee5:2d8c with SMTP id k21-20020a2e8895000000b002cd8ee52d8cmr1592791lji.33.1705922122727;
        Mon, 22 Jan 2024 03:15:22 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: andi.shyti@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com, 
 tomasz.figa@gmail.com, cw00.choi@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
 andre.draszik@linaro.org, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20240119111132.1290455-6-tudor.ambarus@linaro.org>
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
 <20240119111132.1290455-6-tudor.ambarus@linaro.org>
Subject: Re: (subset) [PATCH v4 5/8] arm64: dts: exynos: gs101: enable
 cmu-peric0 clock controller
Message-Id: <170592212128.45273.4024019835261321108.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Fri, 19 Jan 2024 11:11:29 +0000, Tudor Ambarus wrote:
> Enable the cmu-peric0 clock controller. It feeds USI and I3c.
> 
> 

Applied, thanks!

[5/8] arm64: dts: exynos: gs101: enable cmu-peric0 clock controller
      https://git.kernel.org/krzk/linux/c/8a670bb84cdcf1397fc4a3bc295c0008f49bed91

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


