Return-Path: <devicetree+bounces-204213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F3BB2476D
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 12:36:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD7C21AA242D
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00AAE2F4A06;
	Wed, 13 Aug 2025 10:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XqLUgWhl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1492C2F6561
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 10:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755081397; cv=none; b=qa6kZwDC/e3PZSop6qUZrwLKi/cfWiQkYtd9Ljw42xnSjzgscX6zEoGYqRUFHAZtn4HOdCEaU8Uh+48ygBQhnGUNT1HEHgVO5TyR3A/Y0XbZOrsFBm6pv7a/wjpoFZ/Q35SX18mKse2gZG6wt0u6sZeNT0Rsu69/dtA4NMv1s9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755081397; c=relaxed/simple;
	bh=rM1VH7DXY3SQ5CU5JoXtOdVhg6Lj0cix+4FvL7D4Z3Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=G7Dq72vSj4+ErrlW378mCiPGTQ7K1aDa1Kx09h5KsIu1fgadwMnkP+IzLKA2n2E584O8uGLjbyKqC8iOCA3dH0/HjIOq7K1WI06OiIyDxSDkNm4Yh1dE1911m4jCi/BNggHbN7CEtWIBRgX9iSAOqkyYIOPJYGPX2kxtfyTKY+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XqLUgWhl; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-61539f6815fso1035539a12.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755081394; x=1755686194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZSse5z3Xz3M0O4BGbTx+nqu/znB14s8R4egSwB9b9M=;
        b=XqLUgWhl4cK8s3pED+YdqFOezhbepyC3P/7XsRA3c1rgqdPL2ghVGjcnxSi7Sad6Dt
         cnAjZIG1COXaQd8ku1vDXl+bSJRT/1F9MB/rMIuipBm+P/4tvhBXBd7jGFH6y8pP/D3v
         LkX6y+v7R4llOGaEIKOmj12dI6FwRKu/inR6qnquq2ISt41GsMzQZboJ4iWYuIKxCLbG
         GCcGL19JeuFYgQRE8PJh89n3Ky9enSIH+LNKEeEzdT1hvohncvU5rwNWAgHyWY1mSRu+
         5d5XoVF3RHm3K11p4xOavVxkdgBzNfDdhqUVzy+bQblLiznvoTAW9Jc+4D/OQKAb6ecX
         a45w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755081394; x=1755686194;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZSse5z3Xz3M0O4BGbTx+nqu/znB14s8R4egSwB9b9M=;
        b=rVW8axrrKMOHDn1YU1XP8Cn+r46OtYHgCSgJKWxmvKJk8AchVu5HedNk3zTe0df36h
         JbWPVodlK+V8afMXhKObdL+Fj1pkha4j94SwtXmgv6lk84XKzvv+trvf0d13UptcpuRp
         RIisLd3rHG/oy2EKM1IZzptc9H3hIoF0O/7JZol+rzL9KayIwEWdYXvYtknMCJ3qIY3Y
         LW2x9fMl1JKLEIP3U9n7OiR3kE17DfJTi5PvBYXg7CluNaWYAOufLqabmokTtAEBO0Rc
         5a2saDuwVnRd9CabX/ZdvbHZPOSRNy0MjHvrJFVASPQpeyUplorUxiE8pMUAzqE2vW6/
         xXlg==
X-Forwarded-Encrypted: i=1; AJvYcCU9ZtoahpHo4ao21ywJ4862FFJHRad+G9JtPwYvLmdXLHVRtUPUDihS3G2NNO63zGIRgIuVyrTiOrKo@vger.kernel.org
X-Gm-Message-State: AOJu0YziQGBI2ye3fVAeTIEfGmyhFigCsMs8vbfOeaLDoQkdL7yp5x5c
	u97BSvTYLhfBoWu9hBj/C2+8BheQOLCSFLiz81+YyMecEtY6FLpgJQwOy5LyddicjPU=
X-Gm-Gg: ASbGnct3sFAd/WT32EToTFzVXvAh/jkd2i1jf28pSf/Y4il81iFxyM3zoNzsiAol9jU
	0YMhOAsp5IiK1hqTRu+pf38HzapmWeb70vHvj9feG7IkfU3+e+PVfs2Ha3lqTWrmdgwXHoAaEKW
	V/ww2nWhkHCqR+SnFKJcXi57RBLaxKCbc63eCJQjaYX28hsCKrm2EcynipFaNKIAuhGEHhfVb5e
	PH0JsUlo8ecShAi3U4nzqLdGx5Y67F6u3uDEsSz6PrlC+ahgtfDzbXUk/IwSTQnTsfEZhhxZ/Ve
	lg/4JUtnbrNuipsZDTit6HiTBZ0TTh2zcYBHNo3pJXHzkQ5azrOMXugaHE2awRzjsW9h8cdxZRr
	+8N3fV7p+ehZiAFI71wPLkUFrD8vat5nFYJBLMg7cqegcOwVNvA==
X-Google-Smtp-Source: AGHT+IFIGBvJE51ImLFwJEf+HWdvDhMI/ga9sn6qqV6XG49qX/4+cl2bNcAjFXq4HMH1UQxepumpXQ==
X-Received: by 2002:a17:906:4794:b0:af9:7e88:e174 with SMTP id a640c23a62f3a-afca4e6e6b9mr94000266b.12.1755081394358;
        Wed, 13 Aug 2025 03:36:34 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c08csm2392328866b.118.2025.08.13.03.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 03:36:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250731234532.12903-1-semen.protsenko@linaro.org>
References: <20250731234532.12903-1-semen.protsenko@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: Add Ethernet node for E850-96
 board
Message-Id: <175508139304.40388.17997940621075080202.b4-ty@linaro.org>
Date: Wed, 13 Aug 2025 12:36:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 31 Jul 2025 18:45:32 -0500, Sam Protsenko wrote:
> The E850-96 board has a hard-wired LAN9514 chip which acts as a USB hub
> and Ethernet bridge. It's being discovered dynamically when the USB bus
> gets enumerated, but the corresponding Ethernet device tree node is
> still needed for the bootloader to pass the MAC address through. Add
> LAN9514 nodes as described in [1]. 'local-mac-address' property (in the
> 'ethernet' node) is used for MAC address handover from the bootloader to
> Linux.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: Add Ethernet node for E850-96 board
      (no commit info)

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


