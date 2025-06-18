Return-Path: <devicetree+bounces-187071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B72ADE901
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:32:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD38F4043A2
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 10:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20756287503;
	Wed, 18 Jun 2025 10:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hr6b8wA4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CF127E7C0
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750242336; cv=none; b=Cf5XAB3OpyiWmEhdM52wjmTc7zshmFVQDhwu48CGs4d+zBZrGDApWmY9lCJMawQuATVald709eNPTEphdpwEjoFPhCrMqFPaxHZFWyoWVddjFTGDnlPrA6gwC4te8gsLd4/Quhu+Be+GpS1JtsMS/qAAxRb/i9kQrhz3JbrdrEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750242336; c=relaxed/simple;
	bh=uo1jmmJSy0Tm6Ew7GTrNegQ39fiELjbLn8M0YyzkaJw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=LGP6w+VGLgc2ZnIU85634Yw35w6R0Astkez7Us/4/1J0Iedqw7nwHvzQpbMR+x1cg53VFz5X8iy2nDoZ18qoq9jt/1xCL1hCK6rkJ8mNZdi2pcExLyada1dPESPgFX4keMaDun2aBupQW4EH0qVS48+UARzdWwCE+T7pfzWIyts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hr6b8wA4; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a4eed70f24so635997f8f.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750242332; x=1750847132; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kScCCH5B6HIlYQ8SpyD5iNsGwgWDsSmheszSBGTWPdk=;
        b=Hr6b8wA4ZVknv3s4tX8asKYW/bbgPEfyGaUsmU3FRIUEw4xDT7C1uP8XSciWW+IPqW
         /lRl3HtLsDKNj9pWLJvvYM2smcCDzseN2F/T2Az4P9AMZh/p9qIlsKi/RNFa6v2twa7z
         RuTbmHP2/CIsBm8MsgvrBMtyfOEbLEQKgdwuySv/xzCElXfEJp0A5zlbKsYTy3whdDhV
         TZUA6KgYxbHoMZsHFfSAqiPn2fwd3cY1u0z1oGjRi1WWyeiakJez8ovuI7YQ8HIbGLx3
         9jFwMZFBVDJxdbY6rWD/aKAO0eNnDg/LxPtfNmTIC4sgY9VZrhsPBQmTtKHHG1fuIeos
         4lVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750242332; x=1750847132;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kScCCH5B6HIlYQ8SpyD5iNsGwgWDsSmheszSBGTWPdk=;
        b=Smi9LUtOQppDnxWKj/kRRPfum/6YCJiZwoXiyVbrIm4sSMXKawtSB77528pjku9hTH
         RkvX1iaC0fZOw2lm37r+C3bnYBP6GZvJ6KvH6ZeLZ8ChXsjLvlXlf7ADepPCr7FyQOSW
         Gle+5/2Nd0I85/Nv1ShFZ1vpScpf99mNhOUig9v+gKR3CTvfuIAcYRyglSKu3Xs0DRkz
         4zCIVYPpmf5WkojlQU9MOweebDZ68MvtKf4/DB0ezqpCgRp2Dkf6Fxf9bBGLZOSVKSO0
         FQE67SFkkjU9tDexVuKHyyCswPHVff7pR2uECvz2BxfFcPKdtJ1mSCv1/L4KodbWgIfi
         ROvw==
X-Forwarded-Encrypted: i=1; AJvYcCV1BmxFU0xfi2TEQGL3AYaDS/UYqCGFdGrW1HxfAEUrnylOZ+As8ngu/DoZl/ykCQC3HxA6KCb9/nzg@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ8Ksmhqc66XtkBZjZjPMur8SVX43o2pq8scK1KItqbooAiPK1
	pbOik8vthE00jxavmk853Gwgq/NMDCaGbeRDhlO0vasiJ+7sFLwEXNizMtIXHAGe+4Q=
X-Gm-Gg: ASbGncuHWLC1JvnKDh6ikXkGAw6X4fsTm9+fr7HgkD7mupdrAv9Jl2zILWPUvIWneqw
	giNkzpG2Xk0yP6n1xX8UCFJ/9hl4tQZ8PMq4dbpCYUHJtV7URtLKcVgP2i+zl7SQbYFoz/lftB7
	JO2KRjhjLSmJ8Z3JmL5fOfHKcS11IrV7CMlVTJpbleE57NO7EA5x50nprqddGmJPBMIKx93Q2YZ
	d3oj6nt/JDxzpWWBk/vVnPqjPq2kYSzi2ceV3heRzqM1wRFvVSi+D/3L+Eib/2bGpha2w9Yn1/q
	Tevfg0QfWWH3Hf5KUxz06fWBphNTpuJYQZ1Q2lieDjiQB/Pek6GkPPUbtgqrH550Cfxxlaa+m/X
	4t7TaVEI=
X-Google-Smtp-Source: AGHT+IHBRUMdMxTk0qQ52qgdxfLoQ44QoZ7cH9BJYyT5RbkqGF33Qob2tRNXh5Ck86JRubBU174MNQ==
X-Received: by 2002:a05:600c:3545:b0:43e:94fa:4aef with SMTP id 5b1f17b1804b1-4533cae6918mr59442205e9.8.1750242332303;
        Wed, 18 Jun 2025 03:25:32 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e256630sm208260265e9.29.2025.06.18.03.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 03:25:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: William Mcvicker <willmcvicker@google.com>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-team@android.com, Will Deacon <willdeacon@google.com>, 
 Youngmin Nam <youngmin.nam@samsung.com>
In-Reply-To: <20250611-gs101-cpuidle-v2-1-4fa811ec404d@linaro.org>
References: <20250611-gs101-cpuidle-v2-0-4fa811ec404d@linaro.org>
 <20250611-gs101-cpuidle-v2-1-4fa811ec404d@linaro.org>
Subject: Re: (subset) [PATCH v2 1/2] arm64: dts: exynos: gs101: Add
 'local-timer-stop' to cpuidle nodes
Message-Id: <175024233092.57697.11258654075985089157.b4-ty@linaro.org>
Date: Wed, 18 Jun 2025 12:25:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 11 Jun 2025 10:34:25 +0100, Peter Griffin wrote:
> In preparation for switching to the architected timer as the primary
> clockevents device, mark the cpuidle nodes with the 'local-timer-stop'
> property to indicate that an alternative clockevents device must be
> used for waking up from the "c2" idle state.
> 
> 

Applied, thanks!

[1/2] arm64: dts: exynos: gs101: Add 'local-timer-stop' to cpuidle nodes
      https://git.kernel.org/krzk/linux/c/b649082312dd1a4c3989bbdb7c25eb711e9b1d94

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


