Return-Path: <devicetree+bounces-256252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E0BD3851A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 19:59:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9BCAA30096B8
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 18:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59FD396D0E;
	Fri, 16 Jan 2026 18:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dlUCJCIT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B8B33C50D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 18:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768589978; cv=none; b=be6i+v+FXP1kZYcABsx4vMxJZhmdS28KAuc46whRGzIsbOs4y9yZl+C4dXjxpGcqsw5XPPmOMRgPhwmRuf/emXewCI0Jl8eKGotrMdmBxIlFm5TEzfqrZDKfMYD/0EG8s9YqfolQteJkyzvg5ztcErI007x+GlwBLkNHzrPqD0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768589978; c=relaxed/simple;
	bh=TzSo+tlzxFxHwZ9wkSBmczjkeQhikq+vs+l7Oy23ORw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aSDTUdc77a27pcO84huJHLC65N1wlSkf7AYm2nud7EIKiIlnQsuPZ+igUp7FZqOW6ACh6V8daxHIGiNg381AHAJ8MNSDBZ94P3QdYWYdgjRu4uCjtw6TYb7vmDLTqD8/4s6BhKVMpqSrI4yS9/VCmWTECVuDs2fsk6XTumlFz/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dlUCJCIT; arc=none smtp.client-ip=74.125.82.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-12332910300so812774c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768589976; x=1769194776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OsdpmGsyOkVZsi/y+GsHdikzRvoYJyk6QlblSikl37w=;
        b=dlUCJCITWmOW4mqAG7Xbkgj7NRmaG6VLpoK2ZrOwa9PzqpvHtGbpNt5DdfpbMfI6f8
         MBGic3fBcQxkFvtOjk955jVpueQA5L71DVScE8srthwcmmWi6tvUIoZqdNi2YffNpGmk
         nqVy3jRkPUWNZnptHQNu2KRgIOL7hsgUSXO1eWclnZgNriW3n4x8V9A0JN1Rz/eg+0fz
         I5uYs8QjYI8lqZOB6xDQN9pNTWgLwmbwOgRq3tRDln7ik7iB7ngax4onYVoAZIby/bP0
         gdQh79wASr6VolTux/EhIL5Mm+IT6ZYbr2SZABz4upgyfMN2j/1vF4xkRiVh0oXGcBrP
         GlHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768589976; x=1769194776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OsdpmGsyOkVZsi/y+GsHdikzRvoYJyk6QlblSikl37w=;
        b=iw/6po00ueNCBBm+qIQ47DLtoiZI4zHpH7mC8GVJEYIdieuSGVv2ASlqx7pruOkiUH
         /WKWi7Q03oC6pcM9ULm1gSyNqYmq73NrgPOmD25i/4kJGDHiNAXFd732dN85qHEW+fVe
         RL4pAiI2HCWkCxKZ286frCt22QbW/hqAvgPqkhzOA+L684sOCNvp4tOx6Oek0BwwbiZc
         S2YGK8jx8JchTWnUG+HSYU7PPfc/G1Tpo7btHUL9R7Vuf0RBpqukTQQDw+JwGV5XoI8t
         QMfafiwQmU83wTDCXviSfvC2sESODF6nyyMkBSb3/aQnc6AK+omqjQJi9aXCTHpaP561
         VAXA==
X-Forwarded-Encrypted: i=1; AJvYcCVJud4OVK7/oIbX7nFfB2RldRrb40VycyG8KFvAQU4YgwzmAl59U2qEgngehCFBUnkC70UXkL3Em6Nw@vger.kernel.org
X-Gm-Message-State: AOJu0YxzR0AE8sI0Y0Pd5HHn4TVXbYzyI8PgygnGM/WTOjW/Bduu3G+a
	C3TrZYKNBkotC8P0UzA/85kEgYDk0I+GCsT0BMxbb+vCzUtm/ysFDCxg
X-Gm-Gg: AY/fxX4szmU0/BRGcCjoiST5kDL0uEX/1OrAVvFjvmJ3WN9lOwUUFjYWNKHnfQ3lRjt
	lzsouGIC9sCLMIOaPuCz6OZWYt1TTvjLnjUhEsFZDUdjmqoaZ/a3rulSY1SPOaFjFLVcCF4RlDF
	pswArVjiWJIXYuyaIpB0Spc9ymIW19jFEiHOtdr6p8Nq7WgjcktIZqLMSzlglhdSVY7znUek5bo
	ggfx8/QQr0jyf5fXPd4ioyPMqChk//rpyirN9MwpWN3foGar5tonhAqd5rvX6027Bp5pcQ3DDTh
	q6KM4BxODsXVoSOct7mhVcK4+CR0nkyPKiyYr8efUVBKRtPvOotPgc221vfwUvkQ/M6Vf6lwYdH
	szgUhSWtHmL+JorYMHsEIB7/SOaN7dZobMaxh8bg9jEzig8fiDinTZlD9Vc+iMNZjVC5uOMmBXE
	RiUGIcLZ6b3HRRxpcWF0T1d0nOeGvVM9dVehF4XWF8SqG8avrcwIDrw/8UiB82QrtKrGZWXIinB
	zUTanU=
X-Received: by 2002:a05:7022:2397:b0:11b:88a7:e1b0 with SMTP id a92af1059eb24-1244a75f051mr3682555c88.26.1768589976312;
        Fri, 16 Jan 2026 10:59:36 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac57fd0sm3522534c88.3.2026.01.16.10.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 10:59:35 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Marc Zyngier <maz@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	"Sheetal ." <sheetal@nvidia.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>,
	Sameer Pujar <spujar@nvidia.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sound@vger.kernel.org
Subject: Re: (subset) [PATCH V2 0/4] Add tegra264 audio device tree support
Date: Fri, 16 Jan 2026 19:59:27 +0100
Message-ID: <176858995889.167465.8638060731154515673.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20250929105930.1767294-1-sheetal@nvidia.com>
References: <20250929105930.1767294-1-sheetal@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Mon, 29 Sep 2025 16:29:26 +0530, Sheetal . wrote:
> From: sheetal <sheetal@nvidia.com>
> 
> Add device tree support for tegra264 audio subsystem including:
> - Binding update for
>   - 64-channel ADMA controller
>   - 32 RX/TX ADMAIF channels
>   - tegra264-agic binding for arm,gic
> - Add device tree nodes for
>   - APE subsystem (ACONNECT, AGIC, ADMA, AHUB and children (ADMAIF, I2S,
>     DMIC, DSPK, MVC, SFC, ASRC, AMX, ADX, OPE and Mixer) nodes
>   - HDA controller
>   - sound
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: dma: Update ADMA bindings for tegra264
      commit: 919f6cd469c605f1de2269d46d04ebf80a1af568

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

