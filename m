Return-Path: <devicetree+bounces-158037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 299CAA64417
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 08:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A787188DC0C
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 07:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F03AA1922DC;
	Mon, 17 Mar 2025 07:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S94YBgtX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2954018C33B
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 07:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742197529; cv=none; b=oUL9dLZcmO6v0Qr6GMohrAHT/thLyroVj1JXKEj4Zd3+cHRzFpm01sQjAJ6F1Bhsk+C4+4XRht9qeDsIo/IOrihX8LBzh/JxsemJzIsglB8/7wwUpieqPjkdfhHDgsa02UVXKwR9SegLb5DUo7p6RsliiNG8vPXd1Y/hVEQBv2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742197529; c=relaxed/simple;
	bh=FndBGzuNT8Gm1jDepbhawwofxANfeqR0ZG/3Vxl00nU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=od68Oq5gzkcTBW+Fa/wkes2Zsm//cVcu1+GoQqpKZk+0cYR6sKCkCO/9kY6fRLBOQIjp2k14d6X/MT+ocByXBKG2E4CrM/QQzKTZpTInaBkwRPXQlKneeEpGe6BAizWKFN/KXg19rPNqGu+S9aGeh9ioS7Hkq2DsoOJ04SbZKPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S94YBgtX; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-394780e98easo2583494f8f.1
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 00:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742197526; x=1742802326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vk8FOGphjAtBrbDVk0JfE+k0FaInbVBLe1YsUYKxuMQ=;
        b=S94YBgtXsi3LfWcB3tTpIEchZGOHAH2o7T3LpYee/ZNEJrldHVJ2ff5ZXrffs0ug1Z
         EMaAcwJyOwPwMkGX/g2kG57Zkn/XSYsczSQU5D1JM7tdqrsicL+Pu5j21ip879zMcOUa
         gLc66E9PVkbFGH/gImJ4OeRlxIcIHO2dsve+hLGBf87WS0MtYA/cb6WuYVVU3FhM2noh
         LtX0JQAQF54E4SErKF9Kxq9HgF0QpuwwSvjmj3aO0C9JDieuuKmqgwX0OmfE+/BhBphH
         n1TM7aioDLQGWE11YEEabiFsRNBV1f5xM3tuhRtdVds1nhlJ926I486Ocyy+RfWo6SzI
         3CgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742197526; x=1742802326;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vk8FOGphjAtBrbDVk0JfE+k0FaInbVBLe1YsUYKxuMQ=;
        b=vnUuYsfGyPE6O+n7NT84V2m8LlPn2IjwOUEZLdoiwo/b7d+GXeNutJgWjr/1PFoACM
         w0JtfCO2uxT9egjnaXKr3hCumzthysFMDKnDXE1USlSSPNcQJHvhHvAJoLvsbHXIiv7e
         CIAjW+6oT3/wbJPh/kU55JOpwPeZDzcN4z8uBdsVTxSQo+SBFnUqdLw9UOTaQjdSINsu
         imH6+rjIFx8FLW+q0iI2RencCOumpPpVro9Z4/Ntvjl8TAppN57DSO/GDicQy14yPPax
         qXuvByff88pEsrpvIucoiqe24wvcnhzzcO1YB25u79B8i10HEUoRRJkqyjqO8CVTtN0n
         FlIw==
X-Forwarded-Encrypted: i=1; AJvYcCV3DjyLRvEyLJS/5DS2MUM/zhtflnt7pj+FwIUjUcfnpz/X2kL9TY8Y+IibOWnO6FYLRVDE8bpxrFBO@vger.kernel.org
X-Gm-Message-State: AOJu0Yyoy4KeHTNW8s34GY/uDeHOddgY3yqJC4s6bFOF7acvNVWuq3Zu
	8o36+K9zWgkeaEanVVf3Z878DRhQYBsCWp8SZZnmo+OyMfUdT4hj6BqD+ENJTXE=
X-Gm-Gg: ASbGnctGsFkSVuxeJKTaSX1wLtuKK7Whr0m4TKa1EnsSB+yprByBObDd9/4XciFiEra
	ONbwX0JtJcSy3bbDko14P3FWt8ISRqVrHVQf48tCPX4scyxD4XjwvxV9rHAT80yN3rXGXAX4Mwu
	hIExWS5ljveNKtkyeDOYs11m04PIACujYFy7U2gs1lNgNBzAbmADKOsYQA6d9adOV9jUKRBxgPB
	BD9jjJ457UA+IPJp+IaSy1Ys93NdOh0BQ5081A+IF5ysaFR2yKgx+onjapdUXJ/ssAn2a8yvhid
	TCbKLu0bt9ojfgSeHd7D1rhjnXnkezaJzIOtNabZILOmiEWwTnFMXq1zNjz31cJItA==
X-Google-Smtp-Source: AGHT+IG6OwIB09eeL1gfs5VuJzC5+gQBxu1FXFMWxkoy1MNMXoRRCuRseYNCRtOrnhIHeZxIA4bArA==
X-Received: by 2002:a5d:598d:0:b0:391:3988:1c7c with SMTP id ffacd0b85a97d-3971ddd6086mr12870277f8f.24.1742197526437;
        Mon, 17 Mar 2025 00:45:26 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c7df33aasm13884756f8f.2.2025.03.17.00.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 00:45:26 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20250311-irqchip-gpio-a4-a5-v5-0-ca4cc276c18c@amlogic.com>
References: <20250311-irqchip-gpio-a4-a5-v5-0-ca4cc276c18c@amlogic.com>
Subject: Re: (subset) [PATCH v5 0/4] Add GPIO interrupt support for Amlogic
 A4 and A5 SoCs
Message-Id: <174219752573.3092000.16919170480596322661.b4-ty@linaro.org>
Date: Mon, 17 Mar 2025 08:45:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Tue, 11 Mar 2025 11:08:26 +0800, Xianwei Zhao wrote:
> This patch adds GPIO interrupt support for Amlogic A4 and A5 SoCs
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.15/arm64-dt)

[3/4] arm64: dts: Add gpio_intc node for Amlogic A4 SoCs
      https://git.kernel.org/amlogic/c/31c6bc1948b5a0a0d7679cf948351156608ec148
[4/4] arm64: dts: Add gpio_intc node for Amlogic A5 SoCs
      https://git.kernel.org/amlogic/c/454e0353b226a47f3c3369b17c7a4893f74e29cd

These changes has been applied on the intermediate git tree [1].

The v6.15/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


