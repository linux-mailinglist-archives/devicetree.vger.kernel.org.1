Return-Path: <devicetree+bounces-215342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1ED3B512E6
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:42:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C60027B9E9B
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C216B314A87;
	Wed, 10 Sep 2025 09:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LJA+xMuv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36F93148C3
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757497278; cv=none; b=YUEQv7x3LtReymwAxK7WV5CurCuqvcg2Gt6n0rx8BEgMM5WX3Wq8LXpzuATSMFqFu5JyB8F58M/jwHiEI9I+hLNiC6+M5Xs8qfSfvL5KRIPSNrZj34mtOfcnflk4c3E+FpmPijSMJw+ZC3ZCc6iPqKZ39ChMgviyWgOvuDt/fe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757497278; c=relaxed/simple;
	bh=sZUp8SW9Tfp1f74Att6rsJtcQTfdahYzip3ExVh1YXk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=g95F15PMwz8ORrZkyasbKDeiHNmjwxhdflVc/sCr1TVh+OQaKRKZvS6AEl73cHbgEN4ig5Ybr3WoRot/XHFJ+MB8axce0VIDJF5oy7s1B2ysAUKfYmeBPbI+rXgH3yrEbRNLql+3AL941ex+7HBNaKXGKwHewxjZAJt5iFySkDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LJA+xMuv; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-629f06935e6so670049a12.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757497275; x=1758102075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KL8PU3/bJen0cT+fcrsTVjVS+BhRynUifUy443nwXXY=;
        b=LJA+xMuvKObaPLe3mrGZWMvVCZfz4x8rghuOC1rVlUQpC2NJ9vmaCy56Xtdl+lIDn+
         dvRXrtgkh0LcwHiaHMkMdaB0rCt/ola1QZI55JNp+y+1ghfVqs/TsXe2+Yzgkug/fGn/
         rzl+GdWncyNg+x6PvHsQf4E3fKHo6jNUEw5evraMO6EL3tJf/3VywI6CGCTXa9vM23bk
         0efiWPGUE/kx/4GDteT5iiuqtMTUJP3xE1jVeaTy7AQgxgbICUEkjtGIJ5FgcZYDGtNt
         RHdW5nV/TJ8wtwR5c3jzy1YYRxPDQBi+jrqCz/Dbz3MpPAO9i4q4/tM3Px7r20GGB3xF
         L04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757497275; x=1758102075;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KL8PU3/bJen0cT+fcrsTVjVS+BhRynUifUy443nwXXY=;
        b=OyXAM1qh+0ORK3Z2hUBG6Wh1vjzZ6HRHMvG3W2AUzV1xRzA0fRbx++vPCCLvD+GZzx
         6dineAc6kXTY+SqgySXT5CP0X8+pTlSl//jdha3udQKval1OzEskD4qbnziwMptWiyd5
         DqpTefWurVu61AzfIFclPAwha1qEba4UH0DW7yWxG6i/lnJdjyp35v1+vzsIS3DKsZ0u
         5iHDiHoGbX7St4LyQVxOnc6S5zAnipBNwZL0mfukxR8ygZeMMAL5y0g9NPHLnbtzbQP9
         ZHhSxIIWq8NqNmH+d2OExTViVy+5XU9B+8Yq0Olz1joUmsaGrOWZ/yZRlV4/T7TM0dZc
         ObOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlRt3ebJ5qq7pn987f+3j1oj1WmE8rZJPWWVmHS1R1P3WVIg62YZwGtGdApnAUGhg63jzo5ozhincV@vger.kernel.org
X-Gm-Message-State: AOJu0YzIaUvs2ZvbQhbSkn9uB5mM5AA+X8hy0DZ/twWZ2KH9bRgnrvFj
	cTA7jBrJ9FgKThFHSz1lhVuK9VkSK0Wgx5jBmkzD0+p53fSOrDScMakXmE+GvQLPYho=
X-Gm-Gg: ASbGncs7Bbg4eUXDujxoE5EtPPtEacX0KHjaKrup4maWgfveeKdJgiIB6PU7+sKTRux
	Lrf61A6gk1YQzoId5wrqZIGy8NXtvmL9XbOLnt2C4WaxZvy5gEPd3E6ztcY4I+dkKJF5uus8n/n
	ulIqV0AomiwydhHbYwHpFR3RrId/2EkcB/tNTqxK29JaxSbiL8+4+fkqNPEFEbRhXNQjYFQ5lpo
	EfCs1fKekkeVuavH++rBWuhLztTMRPXC0ND5s9u3qF7zv/HCnh4efuusyNrZgnDZPSjiJAV0Z5T
	6TjaFOnrGhVifjuD/BX1elXfny1nLWg0bS67eEU2Uv5svqbyAO/TjwrN037xjwko4Xod0BoEdx8
	Fx3HtRGwXPn7TS0oO//Tlym2yvRRP5806Fu4/aY+fhFP/e2IlMQ==
X-Google-Smtp-Source: AGHT+IFluU1es+hUKEAAQ6k+MN426rP6ABJMO4pvWzDg2AWSxzJmSyi0YpWdow2bVsSEtKWjT6rzNw==
X-Received: by 2002:a05:6402:2345:b0:628:3c12:8732 with SMTP id 4fb4d7f45d1cf-6283c1294c9mr5368678a12.8.1757497275239;
        Wed, 10 Sep 2025 02:41:15 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c01bdb7e9sm3021590a12.48.2025.09.10.02.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 02:41:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Dmitry Osipenko <digetx@gmail.com>, 
 Aaron Kling <webgeek1234@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org
In-Reply-To: <20250906-t210-actmon-v3-3-1403365d571e@gmail.com>
References: <20250906-t210-actmon-v3-0-1403365d571e@gmail.com>
 <20250906-t210-actmon-v3-3-1403365d571e@gmail.com>
Subject: Re: (subset) [PATCH v3 3/9] dt-bindings: memory: tegra210: Add
 memory client IDs
Message-Id: <175749727366.29308.15174837806848682381.b4-ty@linaro.org>
Date: Wed, 10 Sep 2025 11:41:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 06 Sep 2025 15:16:53 -0500, Aaron Kling wrote:
> Each memory client has unique hardware ID, add these IDs.
> 
> 

Applied, thanks!

[3/9] dt-bindings: memory: tegra210: Add memory client IDs
      https://git.kernel.org/krzk/linux-mem-ctrl/c/5f5598d945e2a69f764aa5c2074dad73e23bcfcb

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


