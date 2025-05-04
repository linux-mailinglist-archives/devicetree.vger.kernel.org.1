Return-Path: <devicetree+bounces-173488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ECBAA8875
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 19:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 426911897786
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 17:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61DD31E9907;
	Sun,  4 May 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OWT9iGzg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9294A1E5B91
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 17:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746379553; cv=none; b=TaNh6XRtwCGVCfmC1IEMpxcoGp/YZU4xwrh6gFWScs76xxtsxg3o1Mziwnzd3ofoR1jq/knUGF8BoCPnqLfuxMDGiHAoJ7c+TOPNlWJDT4BNpWjVgZXp809G/N0Mj5TPnqo9FaSqggPUdp3YhuoNLgb2WiH4wwvMNqy141DWpNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746379553; c=relaxed/simple;
	bh=Ms63/2y0DA289uzZ9A2EmLRu7PgcSpq1Bh1Ff+1cH88=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Bv4T/bWHusW/yt2uT9UZg8XsfSBR2OTAQFiKkKV6+Vkx3y8o8EcVcPs498Wi9iNygoFuo5GZES/ZmPKfSF6yP0zorSoe+2Le8aoNxrqXLH5TJK0H4nK8CtbAadFtOLCEy2ps2/N7wHMTmHY0S3TeQ+AP0QjudrV9QIrE3/FRfq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OWT9iGzg; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-440668acbf3so5071115e9.0
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 10:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746379550; x=1746984350; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQ7tuwuM2LFYHZnclmNcrhhek280gEdNY36z2AcaptY=;
        b=OWT9iGzgRp0MqbPVRffzgaC1CvBlZ9aRtM+qf61+YYZEr0nF5fgC/+VioXPDime5/Z
         kr25VWt1iK+Hk+GoU6qSa2OEgxQjsd0VAWfxasgIsWgWN8cbFjo+89solvu0TPxhlbGN
         N+w7BqHau7VWBStxGSvx0sjPWVTjTgqU289inFLUED8rGCwhOGirdNEeOGPSMH+jtPLD
         zUnRJCv0rPXf4MaFA/p2nXdOx7/XeuAYappRIZfBGRppoQIh0/7lo+TCo/q5CfPZg+P8
         QTOraqWYcjKEwyex0bHhf8SQNV33M92iDP4lm1kwfLROBTBwitnk/sp9suXSM5Dwtpnb
         3o5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746379550; x=1746984350;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IQ7tuwuM2LFYHZnclmNcrhhek280gEdNY36z2AcaptY=;
        b=UOfUgvphuaD8kR+ORoyLjgUMuiIjyAa2JKq3fLrnFE2xRgpx3v8oBlbdh/kESrzXZS
         e0OTcKEyS3+jDoY7teTYLTN60+17b6c35D8F77KlzZnIhuCM6x/GiWHGteJOZa8QxMCA
         +tBRmNWLhND9QXSopidkdzaYXvy2Ne8BWymkqgYwLkMOpKjhKzIDq3h2ZgHbcehmoGj1
         dWrpnYDn62lxwwU3SIrHCBdZ1ZKu/YrIKQCfdjuDSq+7SfZNB2T4KaGe6pbK/54nvaM/
         ViIX8l+7RXbQXgdLByoVdKfyKTF0xVyC6Yg8dGx7/Gi776f/lmTMXdGThhuqzwnNwr0S
         8JxA==
X-Gm-Message-State: AOJu0Yx8YjjTsOb81NsiLZ3RjOHB3H2iPMD5nBF+MUD7jfM1NkSUg5tj
	AmTg+oghoZYJ5cB4fDYlZ2/QjGmLsu5xARiX1StfA6vdT6Z4GHreuy4oOTsXFQw=
X-Gm-Gg: ASbGnctRSiYrtIb1/YoG+KefJhebLMFr7t/ysgtr++JjqCj7bBiVz10hiwkuCWRVscP
	GIqwNp2FmKaCXMq7r4xPdTpduOGug6GvNQFtDjCFGEyF7no/MSJAJhXt5ur5UGiX2G/tqg5dq4p
	+bkKcw8MAlMkKlvepCpifZWbtxDZQE5DFxmFAox9QeAkth+OUbmnRXSsictM8EsRJ3GvG1pd0uQ
	lkSyPae3DHk3CCGFgMU3ugNswrEJqkOJ1LNaXe6rwWnuZev9+JL1CvrBZPXaPuiub2a6Jo0raLX
	ajQNA+CzJe1pJCTpB+Xdbn9b6d5ITTwX0ieO9wVvQRQ/kb1v7iULlg31ULo=
X-Google-Smtp-Source: AGHT+IGYW712LH8F5aMUoHbcA3Ri3a5MVIOjSwn5ymbnCfmvccr949GTsmCKBwzbaZh0jtas3NwXgg==
X-Received: by 2002:a05:600c:8712:b0:43d:fa5d:2675 with SMTP id 5b1f17b1804b1-441bbf4ba96mr30008995e9.9.1746379549860;
        Sun, 04 May 2025 10:25:49 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2ad784asm152058515e9.7.2025.05.04.10.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 10:25:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250503-wmt-soc-driver-v3-3-2daa9056fa10@gmail.com>
References: <20250503-wmt-soc-driver-v3-0-2daa9056fa10@gmail.com>
 <20250503-wmt-soc-driver-v3-3-2daa9056fa10@gmail.com>
Subject: Re: (subset) [PATCH v3 3/3] ARM: dts: vt8500: add DT nodes for the
 system config ID register
Message-Id: <174637954874.102817.534725446535416368.b4-ty@linaro.org>
Date: Sun, 04 May 2025 19:25:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 03 May 2025 15:52:33 +0400, Alexey Charkov wrote:
> Every VIA/WonderMedia SoC has a 32-bit chip ID register at the
> MMIO address 0xd8120000. Add respective device tree nodes to let
> the system code access it at runtime for the selection of appropriate
> hardware quirks where needed.
> 
> 

Applied, thanks!

[3/3] ARM: dts: vt8500: add DT nodes for the system config ID register
      https://git.kernel.org/krzk/linux-dt/c/a43a6092e33d6a5827114c797a2951c092851931

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


