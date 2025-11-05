Return-Path: <devicetree+bounces-235062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 35020C34357
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 08:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5D6C034B2A2
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 07:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0452D47E6;
	Wed,  5 Nov 2025 07:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="okarLFN+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFF92D0C8B
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 07:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762327528; cv=none; b=DdUZjE6VhQ41QJQ7cUdWDjMXgJZxXxYFIKoE22zvDn1u59m8RR08esCWZIacGzmxhx5kpb293EkG97LPFZW6uAn1LRXH+kTCU6vJYpcO58GyMPL1selONFzFHz7sXx4RHn4kNxlv7+ikwSrg/sVgOAyj5EzqIuFczkrI2ZHzrbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762327528; c=relaxed/simple;
	bh=9STBCQOILyz749lFbNAuvnKVBlSgF+Sd3nrxQOUQ2Ss=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lgARHSXX3rU1qG+izX5mYvPncOWbFweisOXyXE6Ot/PHdikhejUpccbIe7XLJslOPbqzH+OoJpohO349Ef+W2/fyr1Mttd+1JUFUUY0bd4SBL1m+QcPPqdDYDzbHbDH2959cb70OXXM8x+fNog1ArdHRn+G8ueeSF/AUO9FE51c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=okarLFN+; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-640e970598cso299212a12.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 23:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762327524; x=1762932324; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TBCEYpPk6nDrVD/DXvDSlhdXPOYf8NnBeJJnqXSBeoA=;
        b=okarLFN+Y6fU58s/f/fVLwHP45+cEZ1LVB6busXSzC57prwLbSDD4a/lPnhz5RQOkP
         FmvAfjveikEU2IL4ENqUGlhYZKhnP51CChBC7E841eefz2Xnp8AL1M8uvqaYJ6iZkRhR
         ZBFt2L4cKWCGeNj7DGwCmi7jx6PpMFT+DmNtYEPiCMsgLYk0y0Zu/yef6pzO71aTscRc
         R+Aj0ph3eQg+CnocvQIXoyMuiao71HJ84byFh+LEYPrlIivifca16aHtkaoEm6FOJSO6
         QyCqcaAH3hwuThglJO6MoNpmcpF5FclzcRUYOanK7Rh62O8ZeAe5L0lQx84RGtgpFpSY
         +vIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762327524; x=1762932324;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TBCEYpPk6nDrVD/DXvDSlhdXPOYf8NnBeJJnqXSBeoA=;
        b=Z1Tr5NTj3Px2ycassjCAIAhsI3c7eKFXNU8tR+JTY/+FllqjL0kcCjoPdgoJvpFK3T
         a9+lv+2++mqtRyWU6fIxx3z0Mo0iBmq5BSShv+VB23cR75H+/edmZPxgDK9igTpwBZ8D
         3Z77ms10a8eFGkCd6o/dOjq0Aj+Jn+Pa+QxNvZfwQ7B7gQFHJHF+nECt90V0B0QujtsB
         rSw4DQCUqQwbKffvsqKNdZh0vZxNy+k4iGA9MrZZi8oP637rOfHMIFCSGJ5M9dTNA1uF
         Wa8JzlP+v/uZHjsp6YfCUDpyHsAOgIHn6RJnNpSHNkBskANGicc/gtFobdkpfP3vBN37
         qNCg==
X-Forwarded-Encrypted: i=1; AJvYcCVNjjqTRQM+jvNeyGd1rbyb5SvfgnF9Jr6+pMD0KPOYLAcdvvrHvsuL2NOnd0uG260P+5KAae/dIJxR@vger.kernel.org
X-Gm-Message-State: AOJu0YzxNDYfFnffdsI9IFYYweHtgaJvGc4gWyav9MdqXqA7Usi0sAmM
	YaHE7+ILs41HcgOWhBpaqZ/BmmIMbgbLFviu/NDfVEkGj6a9rG7B05LmoUNbmqi/FxQ=
X-Gm-Gg: ASbGncvTWDpGG1p/iGuuIVLuz0uGCDjcsE452qPUxdGVVoTaDFR5/LDzSiLRy+p8MMP
	9bUkae9GxvGaNl67ZVnzIRJLXH3eoIDz6m8ldovFwf4Gx86ZBZbkf6cMocR9WZJf3TcUhjzSjJB
	YULB4U87BFdV4HYm8E5Ii8gEpWVuQzupI0Iiifqo4lsPiUt5AdR3KrOl9yXuaQbJyDuwlLD1uwb
	v090j2GNTYTNzIZ1R7bLRTQXOcqBZsM/18TlqQ40Um/43aSZrulvFRIHPkpnnwtLTsX641qb0RW
	f/W3wcDTX1JfE1shJ5P9V4cX4tphPWNztFE4RPUonSbIctP+EJ8LctzVcbhbjJNBUi1KTWc+kSV
	7kU4S2MQ+V16QzausviwXqDTqaYwORHW16zFR7ymxAfI+oaCtzKcvWex3cN+Vp8aGvPEtz6seGf
	T++OOquFny+qKzqC/q
X-Google-Smtp-Source: AGHT+IEnjtguPuZ2sKAErgkJCvf8b73YR4c88V8qvFIT7wye40P43wR9p106dk24VUSPEEUbZI5zSQ==
X-Received: by 2002:a17:907:60cf:b0:b71:a627:3da5 with SMTP id a640c23a62f3a-b7264e1235cmr109681666b.0.1762327523668;
        Tue, 04 Nov 2025 23:25:23 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d6f8c5bsm411534866b.20.2025.11.04.23.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 23:25:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251031-exynos7870-drm-dts-v4-2-c1f77fb16b87@disroot.org>
References: <20251031-exynos7870-drm-dts-v4-0-c1f77fb16b87@disroot.org>
 <20251031-exynos7870-drm-dts-v4-2-c1f77fb16b87@disroot.org>
Subject: Re: (subset) [PATCH v4 2/5] arm64: dts: exynos7870: add DSI
 support
Message-Id: <176232752223.13426.17010346252705230831.b4-ty@linaro.org>
Date: Wed, 05 Nov 2025 08:25:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 31 Oct 2025 00:50:16 +0530, Kaustabh Chakraborty wrote:
> Add devicetree nodes for MIPI PHYs, Samsung's DECON and DSIM blocks, and
> DECON IOMMU devicetree nodes. Enables SoC support for hardware to be
> able to drive a MIPI DSI display.
> 
> 

Applied, thanks!

[2/5] arm64: dts: exynos7870: add DSI support
      https://git.kernel.org/krzk/linux/c/fe02894a1930c85e542e5dd2044e6a3afcf717a7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


