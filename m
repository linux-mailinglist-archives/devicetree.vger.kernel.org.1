Return-Path: <devicetree+bounces-131066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F6C9F1E13
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 11:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8F57168091
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 10:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AB36187FE0;
	Sat, 14 Dec 2024 10:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tm5xx/Xs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC7B16F8F5
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 10:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734172815; cv=none; b=j52ZTIzVnP48G5LJJBKagOOPP0zvuQJjzASLPKs2gqAqQwuAi3A39yCxybDl6H2ykL1Amt4o2aGVCkQzqLSGOtF3uwo+HN3EUE+BRfiLPOwcoIO9DHxSMLfx7dB3zEpEV/ynv8TnHzakEj4AYBzwCcs9YCzhiBLY4GeIQD7DW70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734172815; c=relaxed/simple;
	bh=vLgZnBGevkb+s5SDd9vhGESHydnh2nVi8ggdWP6Lt3g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ZnPIR8cZcAYCiuqSmQ2SqwZo/+uhU167n0ZWton5Ci+V+m7ScQvPrtyY1ELFumFygqG7bNe4Oh72/5yg6OICF6K1vZwdViOnrF9xpacX2rb5saTe23Jhk5Hcty1U+xGGzpOAGsSnKjSwHCs3pFDObW8wG8M8bvzLz2Faz1MsrsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tm5xx/Xs; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385e0d47720so241051f8f.0
        for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 02:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734172811; x=1734777611; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8NDdZ7criVQVdKqHwJ2Kal6Xww02rI16R8MBCBHunDE=;
        b=tm5xx/XsP9hRqdmUUExfR1RcORjh7kOXroscjmjbaHSs/GmCyANWf6aO2c7WiTg4U8
         KjfARbD9r59jMrK9W5BrhrTX2FZpyo66LO+I3PhKa4rUDP+eRp6VEp2kP/XMjWp8T5q0
         MUKnKf7uxfGOYjtoQjw0ZtxZTtZHR3sMCnvs/SULz/9jqCFh7fG7Nu96t9zAF44gGRnR
         Nl+vMHybbAcDIyszxFUhY6FlwxNhujiOomLTntwheU33Uay+dl2WANhzkHqgaM8pBeQc
         hQNlp0MAOZ7OOJrP+5dq3SdLqBPQKaxlBPpx1PyFrMLODYz7EyZnj44TS+tqVAbSdFUC
         Ddjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734172811; x=1734777611;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8NDdZ7criVQVdKqHwJ2Kal6Xww02rI16R8MBCBHunDE=;
        b=bv8gQN+kJGDPU3O+9pSX4alcHfsCfhGQ+5m6KJcOfB0y3g/3yedAuFsjwItK+zy89N
         RPiaS4D9LjiRx/0RHMIrUCwTFEcfvnGqI/IKYc90VNefyguF/J2ySQvDIhmgGYfaSx3/
         IVvr3mTFvKcopsd8Jpg9fGxK2nWWAwfGQKwhI5cAlzPMn8ok2QVB3oS4OP3hA26iSfMl
         Bqu9eGlbS8Lu/suScyEKH25JP/7qiQ3AVV4zXP57YhOPsiL2atjjBY+fYkTJYk+q0iyF
         K1cYRab/ZvStFa20AmFgnK3Rt9Rq0TV/z62rTf5H9ff+BFP/R4H1EoAUXtba1aWxBz0v
         RGFw==
X-Forwarded-Encrypted: i=1; AJvYcCWoQgg+s0BVpvFSm0D8kuVp3M/ts39utTPFak9fMPVjdPw71mINjPDqj5Xk5nLr++WxM6tWB22vSVkX@vger.kernel.org
X-Gm-Message-State: AOJu0YybU9i5eI/uxk6IUMmuBr7BKMQ19dEJI3UGQAyr2WuAWYROzic0
	UotfHM/UZ5llZTBZgzugOoFTO/h+nmSJM5Du5xZwiDbhK+eO9YCt7MPvqAaAW8c=
X-Gm-Gg: ASbGnctPZ7AA6xFzRehcJQ2Y0wqMY2sO1gZ48jVJZfLRGWs8jYgiROQL8zLVs/tEMm0
	6J4KKTJ5KlDd/uCfDr+uJD6QiURiE4NIAZd2o/zUdLYqV7qAKyUsOL9bzjrRJYnnQk/HWweVCx6
	7xZTIbdXy8YtKC1mtrOXPe3xVzAThO7BswHdbmM7rqkGMh3ssZUS4MgfOuJ5jHl+qEwheTjYhdw
	LZfsYVlnVHz69WBZpwdltcVSHjCw250xQ4DkS4iG8NIIM9SUZK6azOnE7BN9wGqODrbyc+Q
X-Google-Smtp-Source: AGHT+IGr1iG8RISOHOiTTg35lGNZDL66gDIhEtHLO3gjjE3O+P7pn6cBHt0y4vmKD6qwOfGi/YuUXg==
X-Received: by 2002:a05:600c:5493:b0:435:192:63eb with SMTP id 5b1f17b1804b1-4362aa3a034mr19610635e9.3.1734172811452;
        Sat, 14 Dec 2024 02:40:11 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362557c357sm75366345e9.10.2024.12.14.02.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 02:40:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241209-exynos990-cmu-v4-0-57f07080f9e4@mentallysanemainliners.org>
References: <20241209-exynos990-cmu-v4-0-57f07080f9e4@mentallysanemainliners.org>
Subject: Re: [PATCH v4 0/3] clk: samsung: Introduce Exynos990 clock support
Message-Id: <173417280888.20557.1392916695437038027.b4-ty@linaro.org>
Date: Sat, 14 Dec 2024 11:40:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 09 Dec 2024 15:45:20 +0100, Igor Belwon wrote:
> This patchset adds support for the Clock Management Unit found in the
> Exynos990 SoC. This CMU allows for clocking peripherals such as USB, UFS,
> MCT, et cetera.
> 
> Currently there are two blocks implemented, CMU_TOP which
> generates clocks for other blocks, and CMU_HSI0, which generates clocks
> for USB. More blocks will be added (hopefully soon), like HSI1 for UFS.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: clock: Add Exynos990 SoC CMU bindings
      https://git.kernel.org/krzk/linux/c/5feae3e79dbe2d357b223fc48ae907ba0aedb271
[2/3] clk: samsung: clk-pll: Add support for pll_{0717x, 0718x, 0732x}
      https://git.kernel.org/krzk/linux/c/4a450ed26c580316d720154e7ffb5e9b4763a11a
[3/3] clk: samsung: Introduce Exynos990 clock controller driver
      https://git.kernel.org/krzk/linux/c/bdd03ebf721f70df1458a720b25998a489f63297

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


