Return-Path: <devicetree+bounces-25007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C53811E99
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 864EEB2134A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD0368283;
	Wed, 13 Dec 2023 19:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OF7jP/Fh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3772D0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 11:16:28 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40c2718a768so71949765e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 11:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702494987; x=1703099787; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IlTpAm/op63WnQxBaylZlpeqHoqAOxaydKFKKqlx8Ys=;
        b=OF7jP/Fhi62HDUkpJYjCk2BE5ZSbVRbFQM4nDSlFLIapAyMYNBaW1DULTbuyUEOS0X
         nG7LKkGF+L11nTwWrL1n28ba7dn8iCnrHHdG8IzNAjWArZNYG7zkqob5kYFGJ4NVWSpn
         wZV1wDHjQw0H4pBCdLslYbRFzctVL1t4tqFtbNC/tbjod3QnYcWXXjJXKF4P8W6WdkRK
         u975+XQjfcZRxGbrtXV9VFjVx91VHFWWa5iukGplH3mFyL6PPGcHtXwaeGCGS/de5aKg
         4x9eEhuPQZBc0UHdnYBnFnb25lI6XuSCGevEwiqiRODsZW19jYncyltu7ZQNROf5Gy4a
         3tuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702494987; x=1703099787;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IlTpAm/op63WnQxBaylZlpeqHoqAOxaydKFKKqlx8Ys=;
        b=V50XwEmBr8XEZeKMzAoPxUm4AO3JuoiKGtupZYrUhciQpolSqhXHXUn9nPNGmAyolD
         o13xGG00dQkbmcMmj+38N7eF6GZe9z6lASY9E4PhUb/+lrM3gKFu/Tly4v11BCPRnjyK
         scJx1Zl5BtzzUdMcNGGDmPN3E5mq9BBVfew95FnLP+iuRMK2Pc+sR/+gUDAoRzCjaRHu
         ihoBXIhVx1GKdxYvyQR9ru1fZRKppd76f+l1UDFKUWQP0XVhG6FIcJCRZ8OvFGkTMpjz
         qVkVMnnv5DbGvF8tnax1+2VyA9/QCcFyOBCEhdJCgVVtEscLtXEL9QVS+0c3Eg2uqufp
         3OuQ==
X-Gm-Message-State: AOJu0YxX1CVfkVR3vYglx1hSt3kb/brRfOgkecRE3g7pCZoo5/LA9xao
	qJG2ZGxZyIQXBhITfLFUeQPGkA==
X-Google-Smtp-Source: AGHT+IH1ybS2vp4ps4bx5XfivcvSrtfbsmpPh+9TZiuzBpYyh8K77ozNJBAjVyJ9cyE16seU6Xnbog==
X-Received: by 2002:a7b:c457:0:b0:40c:267f:6e79 with SMTP id l23-20020a7bc457000000b0040c267f6e79mr4619281wmi.4.1702494987371;
        Wed, 13 Dec 2023 11:16:27 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id v12-20020a05600c470c00b0040b37f107c4sm20190085wmo.16.2023.12.13.11.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:16:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
 tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
 wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
 will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
 jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
 semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
 soc@kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, kernel-team@android.com, 
 linux-serial@vger.kernel.org
In-Reply-To: <20231211162331.435900-15-peter.griffin@linaro.org>
References: <20231211162331.435900-1-peter.griffin@linaro.org>
 <20231211162331.435900-15-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH v7 14/16] arm64: dts: exynos: google: Add
 initial Google gs101 SoC support
Message-Id: <170249498523.308886.9560205658028235022.b4-ty@linaro.org>
Date: Wed, 13 Dec 2023 20:16:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Mon, 11 Dec 2023 16:23:29 +0000, Peter Griffin wrote:
> Google gs101 SoC is a ARMv8 mobile SoC found in the Pixel 6
> (oriole), Pixel 6a (bluejay) and Pixel 6 pro (raven) mobile
> phones.
> 
> It features:
> * 4xA55 Little cluster
> * 2xA76 Mid cluster
> * 2xX1 Big cluster
> 
> [...]

Applied, thanks!

[14/16] arm64: dts: exynos: google: Add initial Google gs101 SoC support
        https://git.kernel.org/krzk/linux/c/ea89fdf24fd94cd37a7e2c51e09c39423ced7ccb

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


