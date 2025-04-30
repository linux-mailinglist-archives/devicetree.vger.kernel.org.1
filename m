Return-Path: <devicetree+bounces-172244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48947AA43F5
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 09:29:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EECEA179AFC
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 07:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B750320E718;
	Wed, 30 Apr 2025 07:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NjXCyseA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA60120D505
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745998124; cv=none; b=h5Aq4+xk4EmvoII5IxoUED0BQT7TPzwXEMnYkw9EyMiL4ZJmTNLGUNec0tI7ilTpnLvYk/RKchkRAoNM4Gg30iCUGeDDG46fMfqCjsZEH8KlCq/xdBUt3nOOtKb6uU1RXkQFcsJZaHlrGn8iBx/0bFLXN06skGoXJewejX+dV3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745998124; c=relaxed/simple;
	bh=DMPBebC/TSzA2g62eZmB7bECxsG0d/WX1GH9o31fkOc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=t+PNDwrvZQg5uQNGyvuI4VgbJnLkA5E36uiXC5uxBnAVkwSb43xvffFdPlF/m8v+gy5ztzT6LRCi8UcN+bk8rRnkKtQWFLqf6Mm2TLHfjUJTbTbHWhLh3kBNqstpJ7W+MueEoDLPa1WbZtsuIlXp9FyKEMIp+qk1IDEWQ/i2Ego=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NjXCyseA; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43d16a01deaso4950755e9.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 00:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745998121; x=1746602921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8p7Pv/AQU5RzinQRXhOmBpGF3PncV2+ClGXaJ1wYs8w=;
        b=NjXCyseA36j3K8G3+mwlog4nnX7oku7uB1tA4rqjWcLYckk6TpiiT5vOskKUgUW546
         6X46N3aogp0M2gzUfbi0w1F5OtAfN7/kQCFacxOsf4XAgEuzViN8A1TqUfIZbL1sxu8Q
         8XVj5pzn18/hMzBhpAAUsARVmTIGqUKfPjMomS2fPcO4VkwQue/iAzZatMJAjrxfw1DH
         WJntckLBzkAFyhx2EsdV5+A6bn5x1/N0WZJxUi3sQgQLRQOLr4tDRdL9TSOVRVV/dXvk
         a91OJvpJAqbXEOXuF4LmTgvQFxG/UheBsgZYsZ+0W4CUYFhkGy62VX8Ahn40ccQ6v80R
         yuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745998121; x=1746602921;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8p7Pv/AQU5RzinQRXhOmBpGF3PncV2+ClGXaJ1wYs8w=;
        b=VeW0sVPTQpTAWoZZx+WdldCffIR30WE0L6kyyjfJrdh4EFJiN+q04T5Px9GLNyfdRC
         d5iibKkp2BFqGcx3KEphiJ6xl3NiOvLstcYc2YgN3DjGCHReKc8PcQg/RraCjVum4614
         n8kD+dqyB7TPXqOQhfuiRfou8N7EVtjnAs0SXi9sU7hQdwBX4V9EvklrfxJMoBpdI/EH
         vKZRlGCXgnXVhmvJOlCpDGlAbzxVx4FEk8xjwIIseYdDxP3rG7rT+NchvETbIgSFUhiL
         32B42oR3s6blxeq/9uUoTrMYxPLDcR8GLXoZHI4JmGwCKyASkQ52nzCYMg2EWTPk+Maj
         M4LQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvbr8Wgb/YWTTJOO+D9kcz4ocBcGRTPhES4+zd4Xkfha0L2egoBuREkVKHF6HC7umvCdzMiIpFuGrC@vger.kernel.org
X-Gm-Message-State: AOJu0YyKSRlx1+eIIJxT4TkI2WgmCmzz1OuDWXW1pX+xFDHWJKdVcuLv
	h/K5njLb/t1Ku5C/tB9ShttKQIzL4WVkU/WNwYZrp4J7KX+nR3+Htjx0ffC4E9g=
X-Gm-Gg: ASbGncstbW1nja0F0tiHjaQ3n7Ru92INxXWiNhp+z0PAKswI/zGgpCTcIlPCHSrY7MU
	wqfquxxR2AwWaIpdkTnen+G6zTqABMC/x2utcL/7UOna9Fi9V5568WRNtmPT0+96ORTi9mgKeK4
	4cQJXnwbfM+5Q/ESfFIGyUBzyErVcyXJe1L6fuUMU6A7iGHSr/+8DPlzS1FNsZXVAyjA0w5KUA5
	F/eEZ3A4sCDXdvfJoL2HigtBLDJb6i9bbjkqnB5SSaslpgGBpbRA6uKr3VxwKrpneSNQojO3g1+
	6sKrYhZpu9HBj9/G/dK4J98A+7DuS9cYYjpC7O9aR+B+8eLUF9X3lQvc+/s=
X-Google-Smtp-Source: AGHT+IGrVsof/wIDybs3QwM9wHFkyf2SoOTy/a2O4W4oYL7B1nHSN5cZorob92KX44pZ56YDgWr94w==
X-Received: by 2002:a05:600c:4f07:b0:439:a3df:66f3 with SMTP id 5b1f17b1804b1-441b2df81d6mr3954545e9.6.1745998120821;
        Wed, 30 Apr 2025 00:28:40 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2ba4a6asm13905525e9.11.2025.04.30.00.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 00:28:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sunyeal Hong <sunyeal.hong@samsung.com>, 
 Shin Son <shin.son@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250428113517.426987-3-shin.son@samsung.com>
References: <20250428113517.426987-1-shin.son@samsung.com>
 <CGME20250428113555epcas2p2416815cf6a41e0004f56c0a26b7be5f4@epcas2p2.samsung.com>
 <20250428113517.426987-3-shin.son@samsung.com>
Subject: Re: (subset) [PATCH v2 2/4] clk: samsung: exynosautov920: add
 cpucl1/2 clock support
Message-Id: <174599811943.45412.14873339958379580394.b4-ty@linaro.org>
Date: Wed, 30 Apr 2025 09:28:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 28 Apr 2025 20:35:15 +0900, Shin Son wrote:
> Register compatible and cmu_info data to support clock CPUCL1/2
> (CPU Cluster 1 and CPU Cluster 2),
> these provide clock for CPUCL1/2_SWTICH/CLUSTER.
> 
> These clocks are required early during boot for the CPUs,
> so they are declared using CLK_OF_DECLARE instead of being registered
> through a platform driver.
> 
> [...]

Applied, thanks!

[2/4] clk: samsung: exynosautov920: add cpucl1/2 clock support
      https://git.kernel.org/krzk/linux/c/84d36f26d0314a089405af3df9e213dcfb8ecbc0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


