Return-Path: <devicetree+bounces-225793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B9DBD109B
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:02:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 959BB3BC398
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1158A1F8722;
	Mon, 13 Oct 2025 01:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="srI11DOG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC381DED42
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317313; cv=none; b=Fla3672HByi3I5eNsHkik+V/D70Ums7HS6j0y7eh7Wm8rQ8IG8nuRoa6a10EJjLDPU/ailPxhWG5ysR0im+XTBFQBUNXMkd1ERIKZVPNQI3YRD47i3tjDYCbwcH2vSFUtzkt4V/ZRcyG31TPbdapzvbgZqbPutX3Q80sy1szPvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317313; c=relaxed/simple;
	bh=uegJ+8RLoxxTRW6gNc5D5RPMM2auhwSLgi+Duc0LorQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=JMUVcMBojhFuzZzVuIkGG5YLA9//A6q0FZo7vAWFjCHgY/76jjcBn5SGNkWRtWJ2VPiKq5zpsnA3rRvf5U3Cb+ZOcGLVEZv7wrXwlGF7a47IwWrbFixRf2DxYncKUEy1lZbiGOYOdsUq3ZRFRZRjm4CLHSX1w9wz96jUal2q5Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=srI11DOG; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-27eda3a38ceso8683755ad.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317310; x=1760922110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+xGmBxaIsrwhsJmTSFTSbNR3poI1XoEoSNvgqP8h3X4=;
        b=srI11DOGPmE/QUuEvkAzLf6p7bkc9aRz3JhFc3CNRFapxPd0PuYkC7YADBpTf32h2v
         1ohAggbFACpMfll7ii4z3213a4nLeClpMSvCZ/lKIn3ltXI6J+NJjddaZKBVeX9F594L
         foTJKIkX48x4Q7aUzD3UVxR7dWkmTesRnnmNtI+3kH9I8tgB31XDMvH1Axc1QWxqL2Nf
         K/n8IqRIfSpEcDU/NhS1+QuaR+VJQ4RZchW6Lp8RGx4Rg3BJrdaxCtm9/yIhEFKDO2cO
         UDFpRmGvUq7O+x2C7t9KyLKXcCv4243FeTAPmjboiU+UUDOzJWcYDHbel4tmgDAvKU4i
         tc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317310; x=1760922110;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+xGmBxaIsrwhsJmTSFTSbNR3poI1XoEoSNvgqP8h3X4=;
        b=isnBv2RyDfuafzyLUX2YzOltY7c9wieoVo+aL2Qun8jDsWmxUt79MyBoT5HsuRIsM7
         WCk64b7rw6mspm2Wb9KFJe1tKLxQvW0VPcd+QDEhjXIrrPhJWGEcN39Jx9zOsZ8l9VzW
         p8XBBMP/uynKlElWeDxH4K0NUWgGuO0F2P52NVz8AVLtr7HWsbxISm8r6cqUeR1fWZU9
         nRxl/UNqaVS7pZixOMCnlFrbyWASXjOYGrvYwC99+pf1cj3vG26J7ZqZwax8pA4cd36P
         X4YoTQOrmXGUR0P6v1T/7Rc58Sfvg+ZdmKhg6Dx3IWmlPID9Q/WPzgfx1jYSQ00RANLQ
         RFbw==
X-Forwarded-Encrypted: i=1; AJvYcCV02W2Tx5saQTq4JPjFH2G3NRwOYkVIxMGW9a+HWd0Lt7GUG5HZxBF8z3ZCSTDOwbG9VsDqcHe3hHf7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/oNvSOMdiljrbQKPwOIBCSvbMYsSB/MmROG9SXQtgwWMvH5Vf
	MIdBw9f6QcBd9ucqAefjquUGPO3Zq8iPFyBrFmy40ccctrMxw1/MmNxGUYQq+23Yt2s=
X-Gm-Gg: ASbGnct56vqTfVMSs3OtDfGPlAqN2x/i+m8nIp5nzyIXIRKzQ3GcMqYqESgj4GSow7c
	ZX2Jlo5tgFwKZwuE6GooOPZOZ9WXlf7qJMB5IDbR1Fy53FUUh9zwo5zq64yDXiuiT+lMWxbeEFd
	Y5NV1KLo9i7m933M2zh8lpiAzA9r0bO3YHfyaN3tnctroxfFj1Hf1+vphmmSzX8IH9dabGUPHjF
	Pv6X57Lm5WLGsVWNoBsa0iik2Bg+sic186o55xZEuRF47dfrG+pvTXVgXpxZBW+rIvapffZqvIk
	txWksHrQrSPF53q7BHcZwQDcBU+SLxxUuXGql4N+A3Kdi+1Zav+xTnHDguyr/NJKgdS0j7+cs12
	n7B9XGK2a+RBgfTWaP8VCuKO0Zs9FEgsWb26O2WVKtqeZSyu4ufF8jYYp+sOMf05lwHDSr9JI5Z
	+8gXBPlw==
X-Google-Smtp-Source: AGHT+IEdNeiQ4wkmg3jWNQmCnD1QT61xdTtWd43pEBCPOTtLFYBI/MtFdeLT6J/Z75wGvx4fFSNIgw==
X-Received: by 2002:a17:90b:33d1:b0:330:6ce2:18d5 with SMTP id 98e67ed59e1d1-33b51395750mr14768734a91.6.1760317310483;
        Sun, 12 Oct 2025 18:01:50 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:01:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com, 
 shin.son@samsung.com, Raghav Sharma <raghav.s@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, chandan.vn@samsung.com, 
 dev.tailor@samsung.com, karthik.sun@samsung.com
In-Reply-To: <20250925130457.3476803-3-raghav.s@samsung.com>
References: <20250925130457.3476803-1-raghav.s@samsung.com>
 <CGME20250925125620epcas5p359a6c18a13f2a2f895433e4dd241020e@epcas5p3.samsung.com>
 <20250925130457.3476803-3-raghav.s@samsung.com>
Subject: Re: (subset) [PATCH 2/3] clk: samsung: exynosautov920: add block
 mfc clock support
Message-Id: <176031730436.32330.1825346216693912031.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:01:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Thu, 25 Sep 2025 18:34:56 +0530, Raghav Sharma wrote:
> Add support for CMU_MFC which provides clocks to MFC block, and
> register the required compatible and cmu_info for the same.
> 
> 

Applied, thanks!

[2/3] clk: samsung: exynosautov920: add block mfc clock support
      https://git.kernel.org/krzk/linux/c/25e476632cf7135aba11b27e3807a2692a3e5e13

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


