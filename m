Return-Path: <devicetree+bounces-174600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B96DAADB9E
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 11:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 312B67B1691
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 09:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A61281FF601;
	Wed,  7 May 2025 09:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qyoSRpfQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB1E1FAC59
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 09:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746610859; cv=none; b=htpd6ZJC9C0PWGAvgECCn17WcnTA0oLI5nhny8YRN4YHqxF/8u/VMQjaYZRwwWi6fUbN07TeUEVzRxZ7i4GVgd01oyDIHv36sdklFEGYiOSL9F5IPfAiNTXwfXdQ2RyAD9QAbOUMcTs03/UOc7lKkI3bSpTDsaP2w/lUzJIXr4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746610859; c=relaxed/simple;
	bh=bs6YtQ1JU4Jn2bZj4Pglpua0bzQp27vGMklQDNpTXPQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fUQbvne9NaW509EzVpbe91XJcOyEoiMfQacJy7vY+pVysg7qj025NycL2Pb0oiNUv32J2xWMKwEGW4LPKEy2o1OEecM9bfWp5MCGKzYDXQTs3/Yw9GDgVu35ztga9+rb+KlnPr36H9A8zk8awiVII1fdJ6um025uzL9uw50PVUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qyoSRpfQ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cf861f936so11063115e9.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 02:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746610856; x=1747215656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SsMa39hOSR7BVVNPX8WISfqJOyg0i9Y558xWbDK1MN4=;
        b=qyoSRpfQ6hzPlbZ2wxKugE/yCXIxcjoQn0mGmKJsEVvfqXE6xzlRejSOSPDe3oLO0v
         2Oezco4hSuHi9Q6C3/CowezHtZnPx79KR1igZCU7ybzkyJcODROeOz/0bSUS1cMc77o+
         2yWrSvQRen60AAfQUFABuBBLggR1Eeimuz+FZ9EWumLcSxKfAn7YK/7DCu9uxLYPTIty
         Xr/b7n+vd8Tm0Trfbmmu6ZKUDV7BFjD0KmSxW6L9bP0ACb1IM0LhdP5siTOv8GBFVD+n
         cVTYv7OrIPafHQIboweaJwN3HvOR9qjINX2GXU4bP5/bKRQMg9WYYnHi8EzoYqLpdDmV
         eTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746610856; x=1747215656;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SsMa39hOSR7BVVNPX8WISfqJOyg0i9Y558xWbDK1MN4=;
        b=sqsBYxc6vrufWTPXXOQ7WDCBpj7iaaW+SB6xpmTjqoitt0tPbWJJBzM+yRDojAqwfs
         VjcR5q7R9i3xBri/fmVcfXlduTKEgMi/eAizipoGwMMnWP/ceY2QpqJDOt988+dlr+q7
         LM7seLHBxCjofsI5NVXdxll+ylXZQzWvumSHsoo8v0RVgNEgiyVo8mETioi9a4SjfbPC
         XQGw9w3S0VQykWPTu5fbZeC/ib04AyPEy7xXiNS35cqQfcju6TgOLfTmbBmQTyyYbjuz
         s9rY2vocPtovNYgGX607NyAQetlctnj+29OvB7FVR7iYOoqCf6dEGO5f4+auUz0xWWSx
         5xNQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1iZv1Y1ngzzgSjYKZ9RbdSsfBGD5Q/V6g66+oMeoQf9mQqdXdYq8NQdIg912JPWCePvO621saXma4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw19Ph0LYhiOaTNtOFkeeDy/3I8NyBppbD9fECrfYbryDSLjodG
	DOcHoBfgIYkJjc2JThtrcUS3oiQtLUtXSOP7UKYGaOArPPx26432D6PnY6znWzQ=
X-Gm-Gg: ASbGnctV3n8JvDNoLQs4crPhLQeUki3vhz/kvWUQUwnMCyRRGDCl0PGP8h/guE43iV0
	4EXeH1N3hvZo47YyUGZDaP2Wg9PRRKsNWxmzz5ouHnt2IbzjJTW26yo6riWzbyKxbL02NhB+s0f
	dBo/mX5sFwWjMNv6aZErnYwDmPrp8vs34y/mvrjYx6aTIOBqow9TTKomSjeoMC3QLdqCz9ntEPb
	iVLdXYvgIndvmdxokrsc9vy/Et/DJlep5/UFbE4RDkTyiyK3ML35fOCr5fLet5TefZRq+beay6X
	3XwBn5D4qX1cPlxnvpUD/BAvfyikiHuoar5R7ysteIKxMWOxW8PyYt1SxTo=
X-Google-Smtp-Source: AGHT+IHHRs9t+0O91vMmvLRz0jrF3T3wosfwokty0h5PfPEgbCXS3pXL2K3J+ylcQS0xgqc/9SJF9w==
X-Received: by 2002:a05:600c:a36d:b0:43b:c844:a4ba with SMTP id 5b1f17b1804b1-441d44c28edmr7459275e9.3.1746610856002;
        Wed, 07 May 2025 02:40:56 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441d438e7f0sm25374535e9.29.2025.05.07.02.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 02:40:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Patrice Chotard <patrice.chotard@foss.st.com>
Cc: christophe.kerello@foss.st.com, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250428-upstream_ospi_v6-v11-0-1548736fd9d2@foss.st.com>
References: <20250428-upstream_ospi_v6-v11-0-1548736fd9d2@foss.st.com>
Subject: Re: [PATCH v11 0/3] Add STM32MP25 SPI NOR support
Message-Id: <174661085466.105567.8801540643758026671.b4-ty@linaro.org>
Date: Wed, 07 May 2025 11:40:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 28 Apr 2025 10:58:29 +0200, Patrice Chotard wrote:
> This series adds SPI NOR support for STM32MP25 SoCs from STMicroelectronics.
> 
> On STM32MP25 SoCs family, an Octo Memory Manager block manages the muxing,
> the memory area split, the chip select override and the time constraint
> between its 2 Octo SPI children.
> 
> Due to these depedencies, this series adds support for:
>   - Octo Memory Manager driver.
>   - Octo SPI driver.
>   - yaml schema for Octo Memory Manager and Octo SPI drivers.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: memory-controllers: Add STM32 Octo Memory Manager controller
      https://git.kernel.org/krzk/linux-mem-ctrl/c/4a98ec836a201d34ac27636960c2c81d9b3b7e19
[2/3] memory: Add STM32 Octo Memory Manager driver
      https://git.kernel.org/krzk/linux-mem-ctrl/c/8181d061dcff140fd5a40e568d8adb81f1403a28
[3/3] MAINTAINERS: add entry for STM32 OCTO MEMORY MANAGER driver
      https://git.kernel.org/krzk/linux-mem-ctrl/c/02eaee70babd860d76dc23f9165f4496d0ffe77f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


