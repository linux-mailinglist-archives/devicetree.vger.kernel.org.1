Return-Path: <devicetree+bounces-235064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F13C34365
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 08:25:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC28618C3F79
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 07:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0B62D660D;
	Wed,  5 Nov 2025 07:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pJeAXZSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479502D3ED2
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 07:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762327530; cv=none; b=HmLsXm4g9HX10MzNZvKOHdgFDbP3o6u6AuElrrs3LRizjAzKTje11/YSkvHStDtV/CAg/t+SBgawO98u+WURYB/Na4JYGhhOcHIS/lBWKBM5UW+3UzfaChBUObgTip/oOaR3sUn6hFrlckRv3B3zcKPzYSh5+5/mp2uNw8EqtAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762327530; c=relaxed/simple;
	bh=9rhD4dmDekp23csqlrhuysA0+MtGz+uIxOlCxPQhmZE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=V81IJKIO4EHZ+x/K5p2fCvQslDTZtbQgFmZ6khXkXj/yP2sEcRMkPjAXWgDZ/RIjApoVm6FVBle0J593R7xEvUrgl7mzfzw4OjSOeakrK+L1FQdCycr04Fv3olSCuXL2qaYu0ngq6qR2AoIG9RBU7m7rE7TbtEowx29Ag1RP1og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pJeAXZSE; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b3df81b1486so102811366b.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 23:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762327527; x=1762932327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mtTea7R3YJBuOC6RfV8X0XMfpykeCTOh6GwDCkF3AOw=;
        b=pJeAXZSE+a52azyJCdhLFC1UqOfLMnGAFb+bI+cgWgwcNdXeJt9k7PvotwSLC5eJOl
         rV/UOZUPNW1lAJh9CrLw743+entQL07yKfjzjLAoqOfaGERyHPPrX8nSpu15xoyv8Fo6
         BRPyS7qibTi5J/zRkwm/ZSx745ocPb3tCe2cciW3dWMDoPmfZV/jpk250HXK1S9x1ey/
         VsLhvn0i/+A1P2Ck8k1c6RowrUIbrY/CFOoGcjSTgD1wBgPFYjgTaTqajUF4G44ayliB
         iDH+GgbwPRWTmll2LbFhfEUv1GZAfF+YbkzjG4+lNwN50lcljL0B2qFxfxujkcIMF/Gs
         sAbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762327527; x=1762932327;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mtTea7R3YJBuOC6RfV8X0XMfpykeCTOh6GwDCkF3AOw=;
        b=IDaPNPgB4iRDkEryE075xVubCMOCJgyNhduy/XtFbQSdw5gc9atvrflPc9LzLf0eDd
         aopefoEES68PBQsBlLndEdfnW37DkMRQ27S0OXX83JttISFfvVNw3muRgqwONdSas3HF
         2J4BCOiDG0r6Up7daJ47X28XTjp8a1IS9jB/ze3P3zIkCkogAPeA+wQpUHKVGS2R0liO
         UbVYNROEoBkZLAWCCtdLQYQ1pvvrsg+KbVLr272cz4izPnBY6lXBRru6ZH1sOZ9MRz0t
         xWZiS4v9ue1eD990uWfaPYzkeB2Nvpwk8BWNuaADt8yUxt47OGvp/PEu+6aTPhrjTzUR
         NteA==
X-Forwarded-Encrypted: i=1; AJvYcCUqn/AaGq7zhnCkPS9xEjLKeJAWhDnkcOlTNyatZ46KfeT8AvfF2k7RuvcUpHw5QShKgE1RFa+q/f6h@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo6vZB2SVLjf/9+Mhdo8xaxGLGRdcdCxSmU9jaID5ZpCBi+hpL
	jqypuA5liAqRyM9PQI66VWSFSt/fDULrML5F3NOeB1HBygVvV/RAiZv0GISdd68ct28=
X-Gm-Gg: ASbGnct5yfZ2kb/Bc8FyKFhg10T4f155VLjvBrL2dz6LJTFmK+llRZ0v64GQqRMOb5u
	THvB0IQL5gfviGD6trKET6OfHten1nvwlznc04M7d/PEVH6Qs6N+HwqNbaTQFciE80neTvLmsUT
	BAOV5fTtHhJjuS5wGWRlx5PryDSHFB4jVC+rsUF1qPnJbsniJApx1APPCMUMBF5Bh8lMEiJZO/e
	9Qz9m6WBucct/wQ284txaJ/Yuc6UeEH8Ftrw1EjxLAlXz8UX76YsY43y+nTsJR1P6xjqUJAvuNn
	zwhL1cvl410RBlG2LJUMctpAk+PdRh5LbMABKx78/5VHNAkVTvgZk487e6IDABRj4m1hlqTVDJw
	CMgDt1tSLL9ULxTwmFo3kAyDqPE6vcHmiOhYO7HlRCvd2eO62tILmILcezOYdIQAiXbLYwHidk3
	MB+2mira7VGBiLK47e
X-Google-Smtp-Source: AGHT+IH5piUBnmYvJgxB5GNOkBUWa7uI3f0Itj2oI/p6wHP7zi/ZySBa/bWL+wMjtsFvIeyWMU8PkQ==
X-Received: by 2002:a17:907:7248:b0:b71:a627:3d9a with SMTP id a640c23a62f3a-b7264e1fb60mr110002166b.0.1762327526646;
        Tue, 04 Nov 2025 23:25:26 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d6f8c5bsm411534866b.20.2025.11.04.23.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 23:25:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251031-exynos7870-drm-dts-v4-4-c1f77fb16b87@disroot.org>
References: <20251031-exynos7870-drm-dts-v4-0-c1f77fb16b87@disroot.org>
 <20251031-exynos7870-drm-dts-v4-4-c1f77fb16b87@disroot.org>
Subject: Re: (subset) [PATCH v4 4/5] arm64: dts: exynos7870-a2corelte:
 enable display panel support
Message-Id: <176232752532.13426.618023682429747371.b4-ty@linaro.org>
Date: Wed, 05 Nov 2025 08:25:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 31 Oct 2025 00:50:18 +0530, Kaustabh Chakraborty wrote:
> Enable DECON and DSI nodes, and add the compatible display panel and
> appropriate panel timings for this device. Also, remove the
> simple-framebuffer node in favor of the panel.
> 
> This device has a 540x960 Synaptics TD4101 display panel.
> 
> 
> [...]

Applied, thanks!

[4/5] arm64: dts: exynos7870-a2corelte: enable display panel support
      https://git.kernel.org/krzk/linux/c/ba2cd209cf8dc6e826f3ede80212911c23ed2076

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


