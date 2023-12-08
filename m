Return-Path: <devicetree+bounces-23326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBA680AD46
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 20:43:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD993281C36
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 19:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7B24F892;
	Fri,  8 Dec 2023 19:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qz2LBg36"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B77E1732
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 11:43:27 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3332e351670so2289559f8f.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 11:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702064606; x=1702669406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vEJCryZOY7/zM8uMtAIXnTjj+RgXAZj+NQh24K145R8=;
        b=qz2LBg36Un/64fIiuA/Z/wdRszfRJvtGyGInuxsx9eZKL4kFKaWF9i9TzUiecFv3ab
         WhCVp6aFBsUzSqwQ1IAPXzOUrrzaE/Efvz7VBOZt/0qwY8ZT39GxjTk6dIX6fh1Fb4ST
         CbqxA+w/MMIUanHCx2/R7xFpWf8bZKsgXtfByRzqkPKq7sTTquX4SPuH6g61Na0SzMrY
         /IkFXlAzbftUZ4SMZChI9zEGrCer+oXzN5n1+mDlLRll5j2/NTCRGiB4XjGGcpOGYxb4
         ldfgr3crGeikCq9LECRQSGfTDDN/wCFFeMUgPBHSBvKpdcK7okFSgJxppXpleZstA31s
         5TiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702064606; x=1702669406;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vEJCryZOY7/zM8uMtAIXnTjj+RgXAZj+NQh24K145R8=;
        b=ZxJ4fjtQT5xyWmHLk2dOzlVO3DAV4WXdMmK3Rwf4Htk7+FzJ1l2MV5vWRA3DCcfaIh
         W5D75FU1CY6eA1x96zoevkj/5tfppjWpDJdE2j9LFhD8oghQKJtuuBKYx19J/wB6+W8F
         K76ZrGQ55t4NWJzvTPOIiPLrsaZ6fDKcTXoBLTjtgOheKxr6uBef+5Qi8LSqFyVCkeVE
         3AbZjtLvh93S1dBes8xHzWfIf0HZUU2GgpDwREki8Ct3foEBNxp8zs5pc72O7jd2WPIX
         NVVwxdqxI2CJPpS9k0/xqe/4PdELYHK1iAr9Uh44L5ZJZO8kjb0ZuqVRYxl8LyT6Jadl
         /VdA==
X-Gm-Message-State: AOJu0Yy3svuawirAzb9v11glxelRa2B2HrDa02/EhQ+XA8xj3v1ck9ng
	/hHvq51AXz6szDb/Jfpb6gcISw==
X-Google-Smtp-Source: AGHT+IGUZ0M5XfwQtXVfb2fFWHIXJ8eCSwRd4AUrMyT3otXdE/VM8Wxvk+NVq9q1AibYzcHmtCgkGA==
X-Received: by 2002:adf:ee0d:0:b0:333:58eb:8d6d with SMTP id y13-20020adfee0d000000b0033358eb8d6dmr136808wrn.103.1702064605915;
        Fri, 08 Dec 2023 11:43:25 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id o10-20020a5d58ca000000b0033338c3ba42sm2653920wrf.111.2023.12.08.11.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 11:43:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Paul Cercueil <paul@crapouillou.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231206221556.15348-1-paul@crapouillou.net>
References: <20231206221556.15348-1-paul@crapouillou.net>
Subject: Re: [PATCH 0/3] ARM: dts: samsung: exynos4210-i9100 updates
Message-Id: <170206460423.126390.6462198989409881978.b4-ty@linaro.org>
Date: Fri, 08 Dec 2023 20:43:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Wed, 06 Dec 2023 23:15:53 +0100, Paul Cercueil wrote:
> Here a small patchset with a fix and some improvements to the DTS for
> the Galaxy S2 (aka. i9100) phone.
> 
> The first patch unconditionally enables a regulator, which seems to be
> needed for the phone to boot properly. I do not know what it is
> connected to.
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: samsung: exynos4210-i9100: Unconditionally enable LDO12
      https://git.kernel.org/krzk/linux/c/84228d5e29dbc7a6be51e221000e1d122125826c
[2/3] ARM: dts: samsung: exynos4210-i9100: Add node for touch keys
      https://git.kernel.org/krzk/linux/c/6e73b11062b2e3e873666ba35577437502cf1dd2
[3/3] ARM: dts: samsung: exynos4210-i9100: Add accelerometer node
      https://git.kernel.org/krzk/linux/c/50c7cdc9a4d2d21373c1ab52c131109ab30c53f5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


