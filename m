Return-Path: <devicetree+bounces-228617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A27C4BEF88C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:56:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5676189B2AB
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B952DCC08;
	Mon, 20 Oct 2025 06:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tic0+zRJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039B72DBF6E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760943358; cv=none; b=LGKKMChtG4+4qgSskxPh1zT4mLpg/co8sKe1XKSsD3CYfIlV7+Mj4H7T/hxHvVvwDsk3rTMXXMcan5GeqlGu4NGrp+o6EnorJYytsTIj8GDo1/+SUkJBMWCAvWEGXIpsLkE84cQom85WMwF06v/Zc31eBScNSp23x9voP5RHgPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760943358; c=relaxed/simple;
	bh=mecDzN97h600ak8xyTQUYCNTdSnUFsMCyfQwupMXyXU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=I0ASq1vrEhmOFT8HeyiS9jdVNE12VrBJQnsCL67G/sYP1razbnnr7BvkeiMIb4oCAXihcFOxtUIaY93iPeJB8daO4Ke0mqWPpEABBgS2iHF2QtwL2PcO5SiEz7GHSxQM+KM5dDr/gMDFUQTFaQtTLmxfLiGIZ3oaCF7ZxugLBhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tic0+zRJ; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b3e8f400f79so67271366b.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 23:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760943355; x=1761548155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jaVK8QBoBqs9ihl8Ihmd+vajoOav06YKNVafHor6TD8=;
        b=Tic0+zRJKoBAb/XOsggVV821SpszQxvsXVwov31kOsGDq8k0uqQYMvu2ZJGImPszJQ
         id7siSBnNlKG3g5tSAbFtaOTxmpGN44Ae7KBZH+bGcdHBnO4psh39BzCusooun+9FZzi
         Lmeuiu6Nm19craV3LUYyu45/Ou2kJpq9e5CYz/rdfneU0up23o76sP89GBCLqXOJi3S/
         E1RvAPJByDegVRch8EkxrhdhHXk8DzNcfCdLqqaPB826gDXGk9p1PcZ5k6VSE+9xHsLZ
         1cDRSVbzuIbm7r9AALGCzYIuSsmqKAXcY8CAsSrQCLUQIrDVUfzKMYPScPBgamswynZG
         xA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760943355; x=1761548155;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jaVK8QBoBqs9ihl8Ihmd+vajoOav06YKNVafHor6TD8=;
        b=GBC/Dimv9Jayjoxsypc40yJip7+61FDC75FZhZSYzWjLl0Ao1ea7RsVBuyTgDayUEw
         JpyfkNU7wKaebadd4lWi/fhHyKZjdZbTT+fr5hcPadOcRWSvWXmLChEAMm78wIz0weZD
         eYAPUXopoIox+buhHnF58MytanBZ3inqOLDz7ruL0BnGiuDmbmZS8kYexaDDFaneHJGq
         G5XwB3OfeQWcwowd+E59/t5b1TsCEdvXJOaXXIz/Tjqvwy4Fg3FqIu29yudUlwCIEYbZ
         EuLg3YuYVs4YFM112pNxlK3wIHYid4u4UvGVTscTit7JShXv4LpO2stfj/Bt9e3JplLT
         EUHA==
X-Forwarded-Encrypted: i=1; AJvYcCVVpb/8WiYUNmACMKuNTbRSTVFY+HH2SThIxi3QOGAsNg/F4NYtQtJd86/GfpYyYMdhOlXb/+dWqCGJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1ndhhzZZSxaDp47Zh0iJOSRh7vvPc7zvYLaUkq6nBWp5OpyLk
	VqwL5C3sfb1IjWEgTy8IYTLQP3fI+BAZpJ85I7k/W6pNQzMHGiEBqDkoH95Y+49zHmo=
X-Gm-Gg: ASbGncsKwdhj7wqcRTFfZb6kZjmSF1tPCC97D9dGSqRd8I1j44qu+ufcUc/R+JaXCfG
	yGbSAwqSuNx2A05r8ZgnKzbmkpZpfYBz0veYqSp5FLaYH7yzfVdSl2y1a6Z0zsq6RWV028a0ixx
	dgOv9FThpJenuyy74B/fQ5gH5BqRJRuFSdDqYHm5y8Yy0BNvalIzLovgCgJl+j/6/daGBPfaQwt
	ltK6EuM04WZ8ptnw7RXMclQhL8cPU+lblJy0htMfpUV7PETt9+RMGUnnt0kizLJ4xYThMrrhEeJ
	cJx09TIcizlRKSqAxTCJMTMbzNNoh3evh9Bo3aoA88sSfcR3qirB2Zv7CJY4HTZdIoGlme2VhWK
	hMkXnQYLoajhnkoqSfsNU0nTk2x/ss/mnrCMiusTmnEn0kodpjpabDp6fK86Ctfihfvp5ra6/jY
	iWs6FC5f43fxb5YGoYTLx9n8c6yig=
X-Google-Smtp-Source: AGHT+IEACXSl3jMi8mrVrI9HpYdMwelIyG0kqNi6i/MEHpYubXK9Mls2weDpSKYlpFEBDaF0smnKKw==
X-Received: by 2002:a17:907:268b:b0:b3b:44a8:c64b with SMTP id a640c23a62f3a-b6471d45511mr806758766b.1.1760943355217;
        Sun, 19 Oct 2025 23:55:55 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036a3esm711731466b.46.2025.10.19.23.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 23:55:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20251010-acpm-clk-v6-3-321ee8826fd4@linaro.org>
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
 <20251010-acpm-clk-v6-3-321ee8826fd4@linaro.org>
Subject: Re: (subset) [PATCH v6 3/6] firmware: exynos-acpm: register ACPM
 clocks pdev
Message-Id: <176094335329.18498.4540786180572368152.b4-ty@linaro.org>
Date: Mon, 20 Oct 2025 08:55:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 10 Oct 2025 12:46:33 +0000, Tudor Ambarus wrote:
> Register by hand a platform device for the ACPM clocks.
> The ACPM clocks are not modeled as a DT child of ACPM because:
> 1/ they don't have their own resources.
> 2/ they are not a block that can be reused. The clock identifying
>    data is reduced (clock ID, clock name and mailbox channel ID)
>    and may differ from a SoC to another.
> 
> [...]

Applied, thanks!

[3/6] firmware: exynos-acpm: register ACPM clocks pdev
      https://git.kernel.org/krzk/linux/c/bad0d1260b6dc229657b942400c5fc4f257f50cd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


