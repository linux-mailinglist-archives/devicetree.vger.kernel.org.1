Return-Path: <devicetree+bounces-128577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 269FD9E90EC
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA7B5280DCF
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535082185B5;
	Mon,  9 Dec 2024 10:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d561UqDy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C863218597
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 10:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733741401; cv=none; b=qCakvAgrBoktmFUQv3qllST8jMt2NcF8mZn1WF57NPnGptRscKgkXllf1WLPE0hgiLwTsgawqZ1W04vIt2FDja2Zw0ck0MvHMRCZpBOaBOp3I68Fhij4OcPHb61FJ2UZOBOXCD1I2951r/N+tTm1l92JjsDDSAhR1D1dz4G794g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733741401; c=relaxed/simple;
	bh=PWJY9T7StgCjlU/EoLY1YnAftn+uydTuW14dCopwpBM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mOIFfJcWVXTIaYf2OwHhHkXqcL2OpSFi6mgA0ox9oudbRqdv7Nsc4gonjaTeTlomCvCaX1YdW1mBfnXns3wyga2Csxy1Ts7f1WfwAaoEIybGUsaeI8ghCxYMzurdjzPtXL1YYf139OnWZiyD8Ffo3KdTNvu6LQNg0tdUZhQI6yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d561UqDy; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3862e2c9bb5so274954f8f.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 02:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733741397; x=1734346197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HldRgXZlNwLf5fyqIyt/xpE8o9fTDtPf3iGgDTBBGX4=;
        b=d561UqDyIloQiSWd88UWENMh3OZMNLU7vkJOSfA+epcNhPilmNHJFn24z4Dmn3ROu8
         ngH5ypClPJ9PcK01TnfLfDaDjcfLQiBI2ZaEfy+KOx1bfwRNnpIknEbk6g5Jo53m8/4+
         DjHF7n/l2XQtoJxQBF10pAmwdpKGcwMyBdsz1CIpCM5jVkKXKc+oygvbMoN011sPNEh7
         uyTgZodmx4M9izY3Y3CpgrkLRUFBNg22V2mPlPgiOVqbqUR+iHJrXKqxta/u8it5ZCPN
         CObeUNP/nU5PMLnv3ChvPbHKZqkIhL1px+0T0XSIvvxd3SpLnwub2+6ubR2rxec2gta4
         LT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733741397; x=1734346197;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HldRgXZlNwLf5fyqIyt/xpE8o9fTDtPf3iGgDTBBGX4=;
        b=ujHOFutMsxbiBy/KGRsqgkfWbQULixIC00J308Jr4kze6HoO0YfTp1wYf4bYTHqW8h
         y9093jGpN1GiV+RiVNDsaRu8WG3gDa/vfOHFJp0dVFg/OvRSSsXpVfxTZ8v4/BE/P36s
         umMXd481rwkheVkIFjSBUvhta+SV5nPQX/QL0ZmpSyrtFdD9josQvFElaWDEMPCUkQgj
         MpJYeZy+AqGhHc2m0DmE4zqGv4RptWNxeChOsBdi+iOJV8wjN8PZxt63qb1fSr//8VzM
         XQQdtz6CO5S+WDY/WYrpyUW+WY/+UsMep28qiDvtXrp5LUG7L/m+sprF41AzLOadH9/v
         +KiQ==
X-Gm-Message-State: AOJu0YwIaEwuujAp2fcLfM27UzjFgMFaacAAOowSIQg9ZZ33QcDoTzj0
	HFLpJ+faOpT7udd9QnsYgkoHL+KaD5CCk+TY96HkZHg07jLt4vHb7V75AJmtoUM=
X-Gm-Gg: ASbGncsydpO1OHZstRNksNKFyPA2riybOB+Kask12FStyqNQbpvvm0KcRhffT959bbN
	kRaGqsYxRwknZalUNrbmYzbFckzrqDrbZx2oolApM87mRvc8yTXRBKtaI/4s8KIeye3OaVTADUA
	6i/gOTApxPa8VcamGdXCIJ/VskRB2GqX6zCIX7pfGWB6AUyZzX9unyNQU1XL+igzgqrWX6dcI0a
	d/nNFOlIuppWRaHpLUE6OueNfGlcg1M42aiS5zQ8BeoFD+B6QxfNL5r1eJX7fzRKg==
X-Google-Smtp-Source: AGHT+IHxRoXs2saioOScD36Qx8G113XvIArop5p7MfwoQX5UHxDTuYrweuCHNEqAi0Kh1dl9f33ubg==
X-Received: by 2002:a5d:64ec:0:b0:385:ea11:dd8f with SMTP id ffacd0b85a97d-3862b368a48mr3146673f8f.7.1733741397649;
        Mon, 09 Dec 2024 02:49:57 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434ea1ae415sm80301445e9.33.2024.12.09.02.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 02:49:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241204145559.524932-2-igor.belwon@mentallysanemainliners.org>
References: <20241204145559.524932-1-igor.belwon@mentallysanemainliners.org>
 <20241204145559.524932-2-igor.belwon@mentallysanemainliners.org>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: soc: samsung: exynos-pmu:
 Add exynos990-pmu compatible
Message-Id: <173374139637.46435.13275133164438214681.b4-ty@linaro.org>
Date: Mon, 09 Dec 2024 11:49:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 04 Dec 2024 15:55:58 +0100, Igor Belwon wrote:
> Add a dt-binding compatible for the Exynos990 PMU. It's compatible
> with the Exynos7 PMU design. It handles system reboot, as well as
> other system control registers (i.e registers for the USB PHY).
> 
> 

Applied, thanks!

[1/2] dt-bindings: soc: samsung: exynos-pmu: Add exynos990-pmu compatible
      https://git.kernel.org/krzk/linux/c/33ebc0fb73ba8fabbc1c8f581f7f512a0b277645

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


