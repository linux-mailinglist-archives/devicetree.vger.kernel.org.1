Return-Path: <devicetree+bounces-37551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE26084557E
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 11:36:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61FE81F21803
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 10:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C24903A1BB;
	Thu,  1 Feb 2024 10:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ju2WgEPp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159AF185E
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 10:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706783772; cv=none; b=bgrJounSEz8uHddGyXbV4qsk1jY+HjHv5VavX9mU8gmBW6yCTcHD2yGIxWilem1EhDZwifHH5mzSNEqhbimhiooEianyKlFh94tvb8bTAk3e1qH5woAqvNCjqubTiGIKypAawNiXce7HERkXBOK7gG1tj0K+tPyG1VU3ep/uGLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706783772; c=relaxed/simple;
	bh=hke+AcsGSJc4QX/LANnvQFD9/kVcMq16pY1/yHnO/B4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jAo2thcDFT2WHAoEUjpVibSMdZx3s3wSnsIjxvazlxA45w5yRZPx3N17okAsVWxp4NLaRNm99bmD9C5c1E89ugekbN8YLyWdfC6S0QGmdheKa0a02VnyrOSf7/sTJ7TxtFQh4qgQdlVyp+X2JvC1q9EthYl7omasxfz04YjfDa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ju2WgEPp; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-55783b7b47aso1011447a12.0
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 02:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706783769; x=1707388569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O9bW5DWKZwEm3XWa3arzOrQZClJJLst9IgsA8gjEHUE=;
        b=Ju2WgEPprqwHxfJ8/T6ilxYwgHxQQkfyipXik1MhVdQ6PlpBNpyg7RgHDftMcN7+k3
         7xYi39Sf83Xa9H14wqxjJcRPhntg8IMTZRCTpwk3Pn9L1qvNm3ixSdi8BmS4HM6vj+Gw
         +EH47pPBUoZEuOX4OxnED/gzSSpHZ5zyeoPU8kRryTt3ll2++au5v1jaKWneJsGILcqj
         HqdzSea3LbxU+YFhLKOySj06HioXTzWS/6ltkgraLHYQh/rLekXXUPNJfCS1p5XQWyo7
         VpXmMPP7RdLEVckjIerYVZ4m1BVZTwIau81Xuxo7sAL9X2exvpiUENtbWChCQaeOe5/u
         dKoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706783769; x=1707388569;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O9bW5DWKZwEm3XWa3arzOrQZClJJLst9IgsA8gjEHUE=;
        b=kk2Vwfelu2QnAKIVF51C8P0d4L+/tVyOVFy7HDIAlq4APrkViMz7W9Qcrhff8Ybjju
         4u4oy6daiwvwuTEeIGRBfRbf2X07b+HcVT1fWuL/Rx3Q3XZ0TusgkDkG8w22bK6D3D7f
         zPHztTjreE5PB8yNxQ/HPeTGAnQSM7SiKLesdqg/v49Tp2KrS/xZHMuj6XctgTePlLht
         8u743vsp/p9n4E6HTEWoUwx0ZmCz8xOBKqjMBwpjdm0MRhryboC9wmE9PuvzJ0OMfRpK
         LPW66gXiCnnTR3mnwaAawJmKcXTFvBUyCM1bS1Fd9B78Nh3u5Takdj13F1P/MIKryZa/
         U62A==
X-Gm-Message-State: AOJu0Yy/uXMALuU4GIAdseOra+fn4IiWV1CZI4QOwwo0/1zrxwK1ePR8
	EdZhOz4BSpQAHyaznjC+eLhYVM7JtrSfwiATbps/F5oianu/8ID6MGzlDtJoGjw=
X-Google-Smtp-Source: AGHT+IH0PEtxtdLjw0ROF0VltCVw5n5mnSK/kesalTaXz2Q0NcDj/fGcH9Qh1lX1fUcDEcV6k4E5PQ==
X-Received: by 2002:a17:906:688d:b0:a36:72f5:af5 with SMTP id n13-20020a170906688d00b00a3672f50af5mr3475965ejr.11.1706783769344;
        Thu, 01 Feb 2024 02:36:09 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCW1ZdWP5vVe6GXZKwGv0eleCpoPE9D5supFbviv5vsvqLias0vAsT8XvaCIlZflJRIbwZBcOD53aj1WaerF6+ZnY7O+eB/SuVidU3N6WESgXKJYJLoDMAG3yhTNOcWHubs5PUTrV+IIhmpY/3s+PTgWPEo4LS7lna7nrBKfzkPUijWD1eTG/TLfh7OkhvxW+InHmIsumoJ2LBLtKtEaL2PqAIXRdNDF7FH45YipsYTZGC71NuioEWEJn5d8Jxipg2VrCwfn/lw4KcB1SJc3bx0k/UCGgHKQQJHB483e+Fa6fJfQKO7Mgb85No4xh7omxwSa2Hnp+ZkFgi08k4n3BNBPodQfIyjgK4J+n+BjBTFhg+wf53/Ahpzkyx0Hq7lMmhQvrqkh848TAUgW7mVUWbuDzQUjSp4kcQUuspSqaBGamrt5YB5fI/SQ9GFpzA+yJlkqCn5OMSFDQrScKRZPbnrzuQQcQLxusgONa77KZOGR6381Z2WkSdgfC8OE+UyxNGjuphT3wig4pX4bTjZaDeniSkohhz0Xn8Mfku5YV7L3keHmszqgA9oFQDVIUr6dp0HBWXtqnySJxOLGjpbVS/98XJwMd4mpllSG9Et69dIwYsb2ydzk4dgq+tV2IOa3v5zeVJ2tcFWw74pR0x2lBhkSoEB67y3iU5QgU+eAlMNM1IMmgnQN+A==
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id hu17-20020a170907a09100b00a3603b49889sm3041749ejc.21.2024.02.01.02.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 02:36:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, willmcvicker@google.com, 
 semen.protsenko@linaro.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com, 
 tomasz.figa@gmail.com, cw00.choi@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20240130093812.1746512-4-andre.draszik@linaro.org>
References: <20240130093812.1746512-1-andre.draszik@linaro.org>
 <20240130093812.1746512-4-andre.draszik@linaro.org>
Subject: Re: (subset) [PATCH v2 3/6] arm64: dts: exynos: gs101: use correct
 clocks for usi8
Message-Id: <170678376730.179918.14593646521347774739.b4-ty@linaro.org>
Date: Thu, 01 Feb 2024 11:36:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.4


On Tue, 30 Jan 2024 09:36:42 +0000, André Draszik wrote:
> Wrong pclk clocks have been used in this usi8 instance here. For USI
> and I2C, we need the ipclk and pclk, where pclk is the bus clock.
> Without it, nothing can work.
> 
> It is unclear what exactly is using USI8_USI_CLK, but it is not
> required for the IP to be operational at this stage, while pclk is.
> This also brings the DT in line with the clock names expected by the
> usi and i2c drivers.
> 
> [...]

Applied, thanks!

[3/6] arm64: dts: exynos: gs101: use correct clocks for usi8
      https://git.kernel.org/krzk/linux/c/512b5a875cd8b8352257fefe71513097ee97be77

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


