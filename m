Return-Path: <devicetree+bounces-53541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C775788CA0C
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 18:03:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51970284627
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 17:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69BEB208B4;
	Tue, 26 Mar 2024 16:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dD2PjWvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7021F605
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 16:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711472059; cv=none; b=Pl65ADV44/pfY72CeEkTkk2w9wZkaqJSH9oUomuHnEg+IgoI+NbGrbinaka47xeBWeJo7S+ZwVgvAaSb5SLw9WNvkJnPI9P2IQfBdIJkmjZRhnxYErS6dgghcCLB0VORK2iBOjK2QlOTG2369cx34IlJ0ylGPl6cYi8O+0ZAVdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711472059; c=relaxed/simple;
	bh=dAPiRo6EKZ0GJbRem2h3QKmGNumGT58ATjERpW1nkZw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dP2A+Tn9tWLQ9dFA1QTRRVqeqTNgiNJJn+RmteDDONP05ctxOyZ9fyNbvUV/6BtFDa4WCvO0uvPu/Nzeaqxxq5WW4MlXak8uonR/D0NVcscICj9bSKzqC4DGsDUol7cudDFnAidJOGeRKgY2DNPtt3RmtxyIKv40QHTnDGD48sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dD2PjWvS; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-513e6777af4so10461905e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 09:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711472055; x=1712076855; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wv2qyZiJW3rhsfMocz5xAdPhBZSACPMqswxeiiKx6rM=;
        b=dD2PjWvSPo7Yenb3tAYRAhr9g4GsNbRgtVLccLqP3u+V6Z+hI634rzM+N6IAOlYApo
         w7GtOzgZrL/ajDd08T/175rxurKMHMAwozQz94FYTdkDeAJI1vv9UKhvPWT1FpCaYqW1
         kE0jvmudzBtBaiAzkjVzDRWmW9dcP72kBukD/LMQjT1YlsyK3L29iGw9aWHnDqeXJRkV
         UnfxXt6hLdyo8gtOw+Pwjb80C+I8DYgg3TJraLA7fFF4tI0nl9Mwsh7BCcuHjJh3+8qZ
         eqd68OblB0f0bD8qRhXv2t3BdXqe37IYt01bO1xMO7aKJ3xbv8xgeFsPTOGu6cymxEo5
         mx1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711472055; x=1712076855;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wv2qyZiJW3rhsfMocz5xAdPhBZSACPMqswxeiiKx6rM=;
        b=iUuLL76gcfXBRPwh+iikYxukBNcyJsNQ6DSpHFoESp6BjCBKxI/fQ0XYu6WzaPMYfo
         Vp04PMjKf0avlvMHc6Alpp4PcWD7iir2eOT6xpNcq2r9SntDeJnqvIn1c2Fn+INlJwDC
         4gqdg0QaH/Msuap58uCgWO2FIQ2JXPgSR7c//vCpIdTYQSserE3FYAOMm8yi4CU8jHkQ
         1kS7ijyBeyIqiQto/LBi80g+V4INcHasX4aHV4uv0YjjVAyj2pyHDXBoOHArW9bo58g7
         i8LGn/AvWuagSnKtnMrAlkFwBYTtwrE+Ty4qFcXw3oJ5LUMVJoyPkWir9TqSg4xGMoiw
         djcA==
X-Gm-Message-State: AOJu0YxIpB8Bc/9LujTSwbDAdkejJSc3WzcijDH9pqPA1M7QbRtSTf0p
	iwQ4Ts7zWSXX99WRC32b/OoLwQJZtHVx0y6NFIafRh/2MH/NCQBkn5BMhz4poqs=
X-Google-Smtp-Source: AGHT+IFjDDsVihyBu7OYkASnulfwdX39S0/WKKAK4kHDTgGoAo5D0BhXUAFl1ZDrAcfKm6wlGhFt9w==
X-Received: by 2002:ac2:4d92:0:b0:515:ad80:c227 with SMTP id g18-20020ac24d92000000b00515ad80c227mr108290lfe.56.1711472054791;
        Tue, 26 Mar 2024 09:54:14 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id le13-20020a170906ae0d00b00a47464a6ee4sm4043708ejb.173.2024.03.26.09.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 09:54:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Artur Weber <aweber.kernel@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht
In-Reply-To: <20240217-tab3-limit-usable-memory-range-v1-1-49cc9c86a5cc@gmail.com>
References: <20240217-tab3-limit-usable-memory-range-v1-1-49cc9c86a5cc@gmail.com>
Subject: Re: [PATCH] ARM: dts: exynos4212-tab3: limit usable memory range
Message-Id: <171147205364.149174.1041854841396715933.b4-ty@linaro.org>
Date: Tue, 26 Mar 2024 17:54:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Sat, 17 Feb 2024 20:02:47 +0100, Artur Weber wrote:
> The stock bootloader on the Samsung Galaxy Tab 3 8.0 provides an
> incorrect available memory range over ATAG_MEM. Limit the usable
> memory in the DTS to prevent it from doing so, without having to
> disable ATAG support.
> 
> 

Applied, thanks!

[1/1] ARM: dts: exynos4212-tab3: limit usable memory range
      https://git.kernel.org/krzk/linux/c/7bff1d35c1294c011b0269b8eaeb8f930df386fe

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


