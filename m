Return-Path: <devicetree+bounces-33700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA798361FB
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:38:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3636CB25C75
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562AF40BE0;
	Mon, 22 Jan 2024 11:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UZvbA9Aw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEF53FE4E
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922113; cv=none; b=o3peUL+1WP4TWRlx+p6gmAGTFgIzAn5oycb1GqNqog4Rb9rPSzvyZSvKeLP7wABLaluc0sa7rmAIpBQR042rQ7NBBrJW6yCO7GbQlHwdxsdw6Dv7f28/fHksrcI5EvKFzWtJQZ1PPv4kd90gPfLheWalDv97Fucn2MNwYZOAvSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922113; c=relaxed/simple;
	bh=FrLltAYAafwmNfsSwZb6drJlItmOLUVtoXUr0w3aI3g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lncaGUZ9AhlOet77EsrjUOS1FalPX5udbWW56aCf4TuJ+t/vDY5YdzZ/t63WUhGxJ+qVP2JIi+rJNpKfMmxGizPTCfAo4d6itBu749WOqAZhpKwDPP8/2Rku+kDJVStwnkcYj6DTzH2yscjQksm0+Ff6YQ3qiuvURKgu73HA2lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UZvbA9Aw; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5578485fc0eso2879709a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922108; x=1706526908; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OHbd+XvZHal91iZVjgEUlEy32Vop+2YCwqb7bnIY+aY=;
        b=UZvbA9AwHPV41Po3K2xMTI65cdc4d4LKucqsxr1tYCIInF5CwgG/aquP5p+ejn54zw
         Xmw7fETijokVoKptBaOrFSFEHxhCKQMScg3sGjS36P2w7yPQrKXEtfZbrUG4h8QVJ/6A
         m/kN4/wBHqRxHZMran8KGAM6a4+AJXt9gPSLhr0gQhXybC9L1KQxc2OMTvwo1ivjZg21
         GPS3K0n7kEtNkSBgVmbiBP1F3+DvVSVMQ1L9DQIzz8Eh0SYcLiAulw8rTSR81RPiMCJo
         3UUFp6AZ8cXSkMI8x8xncy4kTRj6XHIbpBLkjgKRArWetbATBCGnUfq3XBuBKGvQcXRT
         xpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922108; x=1706526908;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OHbd+XvZHal91iZVjgEUlEy32Vop+2YCwqb7bnIY+aY=;
        b=TC0mGxWDyo+gGYqa5HmM1zP5XmBIvqIHTZz0hcl3If710eKd14J/vRkf8JdgfN+B8X
         2OKxl9QQu14pj0OYcZPtJSFwriyoYjy+F4irBFa4GQsY52oROEfB7I1VnYlS7m1z8kK5
         eCcSlsdvghhsH3cKUft7JBOQiDEyCATpTDIjNEIPZucfcMXILczO88HoSC5e9vCZfBLK
         lvD+NAS+BgIO0Q29/g8uoPTEqLRORIMyIvhq7nxQjWUl8pzXrPb1BYDq0+s38Fcx/6WW
         6JiWEmhrD1Zfrdmuqa/P3YQJlNxbcN27e86lPC8mH2uS+OTgKThQqtHVx2G3b4BaQ/mH
         UA4g==
X-Gm-Message-State: AOJu0YyyTo5ozwyLlBvbpZy1ST6p2HMPSNyEJGaigfyhe8xDTOl3/wcw
	gfYxXhghMpCWs6kQ1noR84tPYx8rWzMbAGGF5Y9PRFa81roejDonju5IYITzNyc=
X-Google-Smtp-Source: AGHT+IGN2jpvmAMaNOzfz+OiH67F8gD9wv2bgKogmBc069zcmzFB9DMlj+GkpZ+chu6sUiM7wjZGoA==
X-Received: by 2002:aa7:d883:0:b0:559:ac5b:1a8 with SMTP id u3-20020aa7d883000000b00559ac5b01a8mr1589347edq.80.1705922108741;
        Mon, 22 Jan 2024 03:15:08 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: LKML <linux-kernel@vger.kernel.org>, 
 Mark Hasemeyer <markhas@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Tzung-Bi Shih <tzungbi@kernel.org>, Raul Rangel <rrangel@chromium.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Andy Shevchenko <andriy.shevchenko@intel.com>, 
 Rob Herring <robh@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20231220165423.v2.6.I06b059021de1bf6103e60a73211f078f2af75d17@changeid>
References: <20231220235459.2965548-1-markhas@chromium.org>
 <20231220165423.v2.6.I06b059021de1bf6103e60a73211f078f2af75d17@changeid>
Subject: Re: (subset) [PATCH v2 06/22] ARM: dts: samsung: exynos5420:
 Enable cros-ec-spi as wake source
Message-Id: <170592210746.45273.11030827655294566757.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Wed, 20 Dec 2023 16:54:20 -0700, Mark Hasemeyer wrote:
> The cros_ec driver currently assumes that cros-ec-spi compatible device
> nodes are a wakeup-source even though the wakeup-source property is not
> defined.
> 
> Add the wakeup-source property to all cros-ec-spi compatible device
> nodes to match expected behavior.
> 
> [...]

Applied, thanks!

[06/22] ARM: dts: samsung: exynos5420: Enable cros-ec-spi as wake source
        https://git.kernel.org/krzk/linux/c/8f51b5290ff4f8a9f1c634cf42ca37cd9e90018c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


