Return-Path: <devicetree+bounces-225796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EB736BD1095
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:02:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D9DB74E7490
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F896221FAC;
	Mon, 13 Oct 2025 01:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pAPvZrGf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457B0220F38
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317330; cv=none; b=fuuTiENKSk8Fa9Uei1SQIHtsPuqJxxJvgpOfa7iHyoZwgmc9b3Ev47PKSCq75y/4LTeeThIvmMY2r8Rijg01iQTaG2gPIHFmYDHB4PWdV0Zv6tB9vCo9MU6VQ+E8flKkW8mdmmtCR4mOJhX8mTzvO8hC+AVq2cP4kZSh2oTVNR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317330; c=relaxed/simple;
	bh=6M7PF3xNLpktje0EOKWg4z9Nu9yKC8jqvoHS+dTKYjo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=K6Bc+pWr+RCCLZni6DYJrJpQpYq6WmQIkuPYzH48vZ6ZRYbrDzncETqb/r/TQKRx2O8rQU8HswrkcKHZoF02WSbpZhf2J5C7RE1aB13U+hsldP7rnwBgvP/95FnC1XEKQaglMcZqNVFgBcyKMZGLQd7pMVWdp3WZBMWvu5h15Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pAPvZrGf; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-781257bd4e2so269136b3a.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317327; x=1760922127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8h7DDrA7j+9540Tqy/6NV+bqJw0DCMI3GYZXvoLWyYk=;
        b=pAPvZrGf06WxIkf+1gAxdUEmVjrAS2lXR5mK7jR+EGRi289foPcqoJ6GpuDLidDMKW
         wo2cF6M/mnn3kj9sEVwlNH7apR4oIf+Fg1gDr8WCPnpuPHiWZIIFd/eb84fTPMjDmR6z
         njyKzztl32ZwWymDbBzDtfe68aw3sCMVlV5NUJhTwp5sn/BQTgULijqNlAsVyo2L2ZhG
         UK+mFnW1go12VzJUFUpx1PjlyVqu8ckiQfT1wje+V6hThVOPbjiCYZ2/QFSYAUrktrgv
         kQqLy89UsSHcrQhE7o+gp8MkhcQjcCKumn/4U5NBasXwaEaqAtJY8z6acT/GFL+9HYK5
         P0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317327; x=1760922127;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8h7DDrA7j+9540Tqy/6NV+bqJw0DCMI3GYZXvoLWyYk=;
        b=BCtPxCHV8h50QxesspMH5gQyVromn+IerG1RdZTa9xE/0ApBV0O4O959u8730jpXyP
         oZk06tFeAOimy7FXrc2VC2eVxS2MJY4s8mjLllmY1oI3j2OCQKX/vdxdSqKyoZRUPswq
         PBYaIrRO8RHn9j+KvoSYPnkhU7MnUausxFyXTnzhgYzgyG4thtWlvipCMpETICimlsSw
         QOR8XlwVOe+8UpGg7XleiYnuQlm1inKKLV2AEq0KAriknhh0a4yT40AWOEa2Ju1FT03j
         IwSzTcP1QMJl5pbRvy/EzQQFKANZrY8hAyr19EGzmxdKZ8Ndr/RMExs1mudeMVPAFlgH
         YL5g==
X-Gm-Message-State: AOJu0YxgzugtOY+vCNEeSB2k3omJoaKlnPAHwCFuOmxddh7bpsQQh0Iv
	xrDhyaVHAV2jaAd+dCVx14KR6KkmKO3SRUB8vWMlPOhblhGwk9UbCcQ1oYnjJHEK8IE=
X-Gm-Gg: ASbGncvxDZbza9u1qK2+GiDTD+zqEQbpYtLO/z6yFdibigGUS4TZm6vmjmiBNwYqAIc
	5R+R15JbQiuEI0B0lW8U2RfVaZ/89J0U0Rmzn8q7axCMb+uQ/cR1cnrsL0v4wXJFG4+zfLOh19M
	JzrwgPmJ/T1ydVVLTXtwnvs6+oksOjMGFUTH9t04VKJH6VjYN7B3gYa2CTS9RJtTCPrB5xVUc5o
	3XUzuEN6JiHtiBr07qT7andfvaJ+jCCKezRm2l/hd0rlcDTY/vtf5M1ZHPSn028fAdKIGuApv6s
	Vsya1B62niq1oRyYRd/AztPQCbl7n4zkA9bVMTv51JaHK0An2BecvljRCALW60vO+8tHYRXF81M
	JHcyCeJzS2ye1KeqoF8Ny6phQD4id6d1QYJVZM/HKxRTmGeZcCppEjNCV66vknvsTgkJxftI=
X-Google-Smtp-Source: AGHT+IGnD/2S9vnckWUYx+lQefO8k9+6JLQFNxeCb9U29jbHzHiJy1UtLcBAdXedqp1xT25g8Y9crw==
X-Received: by 2002:a05:6a00:1705:b0:781:229b:cf82 with SMTP id d2e1a72fcca58-7938762f1fdmr11941331b3a.3.1760317327480;
        Sun, 12 Oct 2025 18:02:07 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:02:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-serial@vger.kernel.org, 
 linux-i2c@vger.kernel.org
In-Reply-To: <20250917-perics-add-usinodes-v3-1-a3629e4666ef@gmail.com>
References: <20250917-perics-add-usinodes-v3-0-a3629e4666ef@gmail.com>
 <20250917-perics-add-usinodes-v3-1-a3629e4666ef@gmail.com>
Subject: Re: (subset) [PATCH v3 1/7] dt-bindings: soc: samsung:
 exynos-sysreg: Add Exynos990 PERIC0/1 compatibles
Message-Id: <176031732291.32330.1246219208832468083.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:02:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Wed, 17 Sep 2025 21:04:21 +0000, Denzeel Oliva wrote:
> Add compatible strings for Exynos990 PERIC0 and PERIC1 system register
> controllers.
> 
> 

Applied, thanks!

[1/7] dt-bindings: soc: samsung: exynos-sysreg: Add Exynos990 PERIC0/1 compatibles
      https://git.kernel.org/krzk/linux/c/ca4bd675ec459bb7bb008f15f5d866c9ce35f4e2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


