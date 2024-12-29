Return-Path: <devicetree+bounces-134547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 223619FDE76
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC0881614AC
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 10:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F8F155327;
	Sun, 29 Dec 2024 10:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f2MOFMTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3264B13C9B3
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735467014; cv=none; b=uGBI0fPpa+KXx4RIQhQa4D2TUwrCuI/J/t1c4kNvbqbse6+C/2aIOulN7GwOHrsS8RymFStr+kN0tEJMLvGUZ/PQIgk2BBrUSo5QsM9fC30S1R6A5UnTGVUYWaxF/W1CiVsyKyXMMZHg8CuVEs8n0Q89EasYQ6dheObnklJ1fB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735467014; c=relaxed/simple;
	bh=WL8Ny7Z67ccjmsSgCVQ1xohVJKkGxyxoZXIu5HuhE9M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tYbPhnHYSrpYSwN+LQVx/eaLlqbvTglHlqpe/rf0RCl5QZpLX0rCGs+gB02mAuCA6OITSqUTOeiS+B9GfUjDR7YED/Qd1lecRY0F2E7lB8SwyXydkAzlCWxkkmXPwkFDfLgVvoLvMIBfdmUa9kRaYI0KRf9zfu3Zs4Z/P6o0HEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f2MOFMTl; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43616bf3358so12774475e9.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 02:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735467011; x=1736071811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jo0lFH0D7L1OyRrRi/rC2RixuHioaZMR/O4UKhCo6m0=;
        b=f2MOFMTl1jFNNnAvYCXkd3/llDPLgX5NrlaDdP2fgyEPSD7JDJBlhjO8Pl1PyYbIpp
         vTt83JNYBVke6Mlk1OlR5RCKnWUjMUuYLBkVsdthgw4/21yyE3QWMQJaHG+m1JbFX78P
         z5LFiOWU6jnO/xWEoqGUqhNoraWb6n7EFRCvLJYQm61wzXqHNRSJPZd2u+LCJuAdx4Av
         wPG3DLrH7mOw0Jj4dvHX+Q8HPxL3Oe2usvo+Fu7C5fvjvhwOOZ3MjZLJooPza2fLvJR8
         dPnxPoyIVYaPjKLNPsR9POditxy3pw0T3jrnC50yAzvss17J4Su8vgRU3Lhvpt6HUhzJ
         e0IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735467012; x=1736071812;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jo0lFH0D7L1OyRrRi/rC2RixuHioaZMR/O4UKhCo6m0=;
        b=ByjlfKsnvPhbqMHKyxrpPj3Xjz4GyoaYcdBj/99igTEvacN9apAjoDfqDElCCvJtoF
         UmI7XJSBZViqze6kvLQi38DeicaIhqnIfHxBGXydccrpgVnMCFxM9d3AZHVMSC1pQPVA
         eBT8Zou7LcL0/Fbv4AY+D+ZJGaLdrHhnwZ5lEGftBvO4Di7p+4qyJcKEjrlPZuQQZKT5
         MlrqRSN8kNrgrrIXqCSiUAtMxGMKUmrymWoNqvLDvot1DzP2q79eOqDnt2ZL7jz0XlyU
         dChjL/RYFSAY1e/eny6/8ROqFtI2PBAHC7y5oWBsz+/Zstryc37PX9L08IPAHabFZwqr
         ADOA==
X-Gm-Message-State: AOJu0YzKnKphLIeaEsCIfM901h+arLkgDx8AQqs1w42ziA3H16UNmeOi
	ddVYnYmDOXUhqGuQ/MJU971oxHPgtEjbUSxXDgPT85RdKcww2aWkr939RPFrbKE=
X-Gm-Gg: ASbGncvJzAyVgwaJeNKw2AE3OL1rkdDuq7Y/vb/IcBCxf5AEa3/XufzagSCezXJRieL
	T0/oUmvPCHn/atI863n4PcV4GgVnU81hg9M6tYL6RLPqo4E7IDORg1bCSFGI8Qmtesk08mjP76M
	jLJRufPKPSrGJyYJxSIZLh2URXsk9VeAG51AzXGh6nwQYmpHz4v7Jb35eV9+G0CVp3slmB5F/X1
	Fg/d99OG/vRBsU1YVx0K+pabjoEnRBHDu6mXrxSUXStiKmZh8Q9ibHlVEmN/xjYDv/YR2hU
X-Google-Smtp-Source: AGHT+IHP1vNO4pX8rCVSoOO8ZA/PKbzvByEOcpImjWXAjaOwj9hxfLF/KNxyi+EPgVTvKCoXvpRUbw==
X-Received: by 2002:a05:600c:1e23:b0:434:f335:85c with SMTP id 5b1f17b1804b1-43668b7b619mr106181145e9.6.1735467011606;
        Sun, 29 Dec 2024 02:10:11 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea40csm320505375e9.1.2024.12.29.02.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 02:10:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Artur Weber <aweber.kernel@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
In-Reply-To: <20240816-midas-audio-tab3-v2-0-48ee7f2293b3@gmail.com>
References: <20240816-midas-audio-tab3-v2-0-48ee7f2293b3@gmail.com>
Subject: Re: (subset) [PATCH RESEND v2 0/6] ASoC: samsung: midas_wm1811:
 Separate compatible for tab3 + fixes
Message-Id: <173546701025.10606.6645019448209371865.b4-ty@linaro.org>
Date: Sun, 29 Dec 2024 11:10:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 16 Aug 2024 09:50:57 +0200, Artur Weber wrote:
> This is a follow-up to "ASoC: samsung: midas-audio: Add GPIO-based
> headset jack detection"[1]; it appears to have been silently merged
> except for the DTS parts, this patchset is a resend of the DTS patches.
> 
> Besides the DTS changes necessary to enable headset jack detection
> for the Samsung Galaxy Tab 3 8.0, it also adds a new compatible for
> the Tab 3 (samsung,tab3-audio). This is done so that we can set up
> different requirements in DT binding (Tab 3 does not have main/sub
> bias regulators), and drop the main/sub mic bias dummy regulators
> from the Tab 3 DTSI.
> 
> [...]

Applied, thanks!

[3/6] ARM: dts: samsung: exynos4212-tab3: Fix headset mic, add jack detection
      https://git.kernel.org/krzk/linux/c/2c3c373555460b79a6a201c87230d32b211f8323
[4/6] ARM: dts: samsung: exynos4212-tab3: Add MCLK2 clock to WM1811 codec config
      https://git.kernel.org/krzk/linux/c/d15cc681ba79fdc722d4aa7a83e572850cf5f64a
[5/6] ARM: dts: samsung: exynos4212-tab3: Drop interrupt from WM1811 codec
      https://git.kernel.org/krzk/linux/c/acd33b48ce663c7e293b11cd77df7ea702ca34f6
[6/6] ARM: dts: samsung: exynos4212-tab3: Drop dummy mic bias regulators
      (no commit info)

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


