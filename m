Return-Path: <devicetree+bounces-78920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 021DD913A7F
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A42A01F21009
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40DA9181B9B;
	Sun, 23 Jun 2024 12:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zMtpx7HJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81118181324
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145358; cv=none; b=htNV3mfLDZuwc/CDKmQc3Ab4hZBAGRgfMKAtwpx70qIoHy+ZOaQ3S0OJjqCw5wVRx3cgrPEiwJA4nn5b/faM7A6UMfPslQ9lzvQ99HH3xJZAt24HBD2Yhcj7kqb3++VHyQ/CV1xQVtKeP00rDIUFzgWmTSe0bQuaX7p9vH4vM14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145358; c=relaxed/simple;
	bh=NOjUsR7RIcA8rG4eq4ot+rZaEmVPYNRTiT3ZrTnRGI8=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WXtFEcO5KAzPKFYplnyQQllhutLF26G5k4t+EmOSQNwM7tCUCLIc+bdh7qyfAdq62jsiWQEZB7fDckKfYkewXoq+4VhC1g/4UiJOZ7zNMgEVOJVHGxC+ZoaaM5HzE6mJRW16cjYRKsT5cM0S8wXoF6ngxmWIzDcuIcLcn5DBazg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zMtpx7HJ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-424720e73e0so30770235e9.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145355; x=1719750155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fOMrIEL0MhxUAR/0v8yW1hxKjvgmHLLdsBRgChDfOiE=;
        b=zMtpx7HJDomEq/k0RdekpPUMtXoMd4EA5HgXEzxOgojMplC0xTUqDyRCLo63Q3vBky
         LE7OvO3EQ3f7pY88bVBqyuaXNWy7Aeh4NgrDZ8phKmmic2IfTcOx+5uwMdAc9/RjTe3m
         2ZzoooHdqp9TnZy3ugjX12UhZbM16XiFT5ZyCamaKarvAeCc9qFAPsELy0yAvAt+X0gA
         rJ97eAH5ZVvus3XqHzSaNhfsHUheV14rBLOBWnaQzxQsvGw300lriwQe5ESL7BS53ZwY
         1T3NnD1Di1DqPrfygyGP9spO8mQZ800CPdD9TnqTlXB9r+QkHFilldxai6Z+RPRJzhDc
         hoqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145355; x=1719750155;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fOMrIEL0MhxUAR/0v8yW1hxKjvgmHLLdsBRgChDfOiE=;
        b=lIly9fdQuffQO+Q5mUZF7yvtpdFsg2wSyqsQSsxDM2Qmy8QCmxAGWezKjQHWxclQWR
         kI7l5W2Q4zYGCBwaWyelXznyVeK1tj2x7fc4H4TdoVbwLyDIUXsVkIknCr8//r1QhoLF
         6NM711KQbhKE28+UOwVizbv+6tV+T4vJrIpmUYsD+sLfpevbg9RQ7mf9ly7eOS0l+y7f
         yguewsMQAfFzyDRPrrI5yqHrf8NfqJI1gSYxxAllJ0Cfyla24WL7iOnkCAJanA7ePvtT
         rB80J7thTV3pbzn0M5D5Wv0bd87bt/X7ygXAUQ89AFjRJO2mAd9hMZ6FTfK31r9LOafH
         Vcag==
X-Forwarded-Encrypted: i=1; AJvYcCWL6bORXT6UIdRgP9OMwdS6fX9kVcGgoqOoOuiRjghPG1MXUU20aeRusxFT4yZ7tNrhv/8F+sXrAh4z9LtGW/juEaKNU6ZshQ0d5g==
X-Gm-Message-State: AOJu0Yxbe5+q8IbXZ7zBaIpfjUK4pKCcEbs0fOu3k0rlKql+53bBNNGF
	Gv48+9qZvgOphF+ziARmCkR2WmuG28bnmusz9+9+jK3xBFYJd5Frw+0e41NPV3U=
X-Google-Smtp-Source: AGHT+IEvE94OtsFZofxgbIqys2D0deVC/6lNHjtWLqKY/YBn8di6oHuMsYKyljgRWyW0hjDE/F8OwA==
X-Received: by 2002:a05:600c:4853:b0:422:6765:2726 with SMTP id 5b1f17b1804b1-4248b9cb18dmr16494685e9.30.1719145355013;
        Sun, 23 Jun 2024 05:22:35 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0be841sm136955455e9.20.2024.06.23.05.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:22:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexey Charkov <alchark@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, arm@kernel.org, 
 soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Olof Johansson <olof@lixom.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240613064612.8589-1-krzysztof.kozlowski@linaro.org>
References: <20240613064612.8589-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] MAINTAINERS: ARM: vt8500: add Alexey and Krzysztof
 as maintainers
Message-Id: <171914535352.46985.112856994022791159.b4-ty@linaro.org>
Date: Sun, 23 Jun 2024 14:22:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Thu, 13 Jun 2024 08:46:12 +0200, Krzysztof Kozlowski wrote:
> The ARM VIA/WonderMedia VT8500 platform became orphaned in
> commit 8f1b7ba55c61 ("MAINTAINERS: ARM/VT8500, remove defunct e-mail")
> and clearly it is on the way out of the kernel.  However few folks send
> patches to it and it is nice to actually take them, till the platform is
> in the kernel.
> 
> Alexey Charkov still has VT8500 hardware and plans to work on upstream,
> so add Alexey as the maintainer.  Krzysztof will collect patches.
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: ARM: vt8500: add Alexey and Krzysztof as maintainers
      https://git.kernel.org/krzk/linux-dt/c/084e77a12c3a1c255ea0e944e9d77d21c9d2247d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


