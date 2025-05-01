Return-Path: <devicetree+bounces-172681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9822DAA5DFF
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 13:47:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4474188C067
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 11:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11DF0224AFC;
	Thu,  1 May 2025 11:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bQQ6DbDQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D64221DA2
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 11:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746100015; cv=none; b=ZsEmrxcVeUiHSzAqTJ7gBQvJMJrQzc1QxzcpWVE1gm162aV3kcNrYxd7z5eLH2FrlfPPc9vP6gIew107f++nnP1JIV6JV3V71cuNLYdbTUBQwz19XdAlBlo2mbGIGFw2/zLIKUOozO18tQFWINpSOOVAY4mzqUC4Z77kUJJ7WjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746100015; c=relaxed/simple;
	bh=gA/dP/1fe3IU6fqje0YYjQwYu/yCBUq82rjIqFksv9Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Kpl6dvN+ibXGvmW5ixjul+DVUwTOSUa4qVQSQxN1NOvrjpvKqb1WfWY/GR9N/Hxilr7kQRHErynkvFIfjgKK+hX29+ew+TXYWPWfHB+vkxyMgyHQX5R1yiLBEhPSsERncfw3AmezkQ0wgEyt+YNCADlw8Iq91KTs8fjUYVYZ0Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bQQ6DbDQ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cf861f936so1587425e9.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 04:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746100010; x=1746704810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SgwakmqHlp3M4BuHJh0II3nl/7c5y+mQeic4clcaFRg=;
        b=bQQ6DbDQf+nsD5kltspnf1v29oQwmfh3U606Il9WwhmAfMzmcpKWXzAW8Z9oQ7LHts
         FL7mzFrdMXtivjcIxaEoP32ZAjFt5HHIb5Wg0m/z9phKyFjJKQ/pCUWmIl5FZXQI7vFp
         uBk9pqZKOIys7MhftQ1EHMqs2+NG+SIHFyCHXVOy3R9LnxV9oNg2vrh2N4IlEtL+dLh3
         aJEw3m9lBzbtXJ3TKxSAOLRJ0vE+lbCQJH2uWdpvg/0tXLRbPEWjc5VA0vkwfzyS7x0c
         8H+G1xbCD8brcwrs4SdYUdn0KeLzy3RoAH5jT3T81G8fScytc2/VSpnn4gLhqHut/or/
         ajgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746100010; x=1746704810;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SgwakmqHlp3M4BuHJh0II3nl/7c5y+mQeic4clcaFRg=;
        b=jJVW6eKixES8vzC7jk2FBtg0xpt0cQHxky5SvEq1FebsY67EhKROWx+TAyeTnJFb3U
         b1upQ+fBJ7/boThf++zjNbwG6Uu0oARZmjAOFbSFzVOwMsmHPSBIQLhRE8XIPfwBMH9J
         cxAleofDyLatskU710uc7mEkjqN5LaviVlTTEUTGJpYktJakDOmFrJ7qhCOOqWONrkak
         ZWEd84iWO3bLqKSpoGfUgB9AVckQ8wQAUB1lpoROq3I4DiEdeIBVXf4JvpIoncgCOrBO
         LDRlDIGjvxpcJpPAq7I0FxT8xzcu2sQqIAIEGAW4VGpX5YlIkcXRzDOe1f7B2jbIHVY9
         g3+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVeCj6ttAk026gF1+OWgZctnIspVE545gHlKf4aNsqp2BtBqp1IUi0A8SaCjil35hKq2LlPg3Pcaf/D@vger.kernel.org
X-Gm-Message-State: AOJu0YwvI6cj1Hr1JoAkrvvhQFRr6jSh+bjlxk6AO3AoXRW4ZFyXEG2a
	drK1MvaPySPzdrEmYT68R/Y6nx6OpGUfh6HqdV3zFjaSgmcjXVRqG4pSWobfB84=
X-Gm-Gg: ASbGnctKsKWA6ChbAtYH9a8fxBiJt7VRqEVm098m9mt3l8lP5ifpjfBOZDKQzwpdt+o
	lgSL7uip3+91rnM4T3lb/MR4eVdiEV8QlUmnEKrqrHncS0rpPL8yRZqedCG63FcC5omnQRX/Rh2
	Fj1PKBDAQrKYI+tNPKWJq3OFLb7qRd9tI9zSlY30gwAiv9f09SuCS41XKqrabls+sidpB2yYHu+
	FCAbffeGdzpc3VAuMF4omRSuvZGRDgS8lQGCKTxaimiHXAP5S+guua0TYPz4LixNYDEWopJbiug
	VlJLB7yDoM7tQ0g5MVyatyB8CqgO8xCE0VoejsQHksDK3fy6cg0kg6Zb55k=
X-Google-Smtp-Source: AGHT+IE19/IV2sTGx5RIWEjQEneEcVM1DQ6fXDyvBd3U1JlBxsPULPZVr3GiI+mJAGk12V9wXMS3lA==
X-Received: by 2002:a05:600c:a281:b0:43d:fa5d:2675 with SMTP id 5b1f17b1804b1-441b76d51f5mr4498065e9.9.1746100010177;
        Thu, 01 May 2025 04:46:50 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2af306bsm56097115e9.21.2025.05.01.04.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 04:46:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
In-Reply-To: <20250501-exynos7870-v7-0-bb579a27e5eb@disroot.org>
References: <20250501-exynos7870-v7-0-bb579a27e5eb@disroot.org>
Subject: Re: [PATCH v7 0/5] Add support for the Exynos7870 SoC, along with
 three devices
Message-Id: <174610000860.28558.16541132218843175138.b4-ty@linaro.org>
Date: Thu, 01 May 2025 13:46:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 01 May 2025 17:02:56 +0530, Kaustabh Chakraborty wrote:
> Samsung Exynos 7870 (codename: Joshua) is an ARM-v8 system-on-chip that was
> announced in 2016. The chipset was found in several popular mid-range to
> low-end Samsung phones, released within 2016 to 2019.
> 
> This patch series aims to add support for Exynos 7870, starting with the
> most basic yet essential components such as CPU, GPU, clock controllers,
> PMIC, pin controllers, etc.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: arm: samsung: add compatibles for exynos7870 devices
      https://git.kernel.org/krzk/linux/c/004bd8536cb9d56cfe2a13a6e05a4a1998455b71
[2/5] arm64: dts: exynos: add initial devicetree support for exynos7870
      https://git.kernel.org/krzk/linux/c/d6f3a7f91fdb84f286d943d89cf082f43fab239e
[3/5] arm64: dts: exynos: add initial support for Samsung Galaxy J7 Prime
      https://git.kernel.org/krzk/linux/c/61296c6b604df4409834eec0bd1115ddbaecb921
[4/5] arm64: dts: exynos: add initial support for Samsung Galaxy A2 Core
      https://git.kernel.org/krzk/linux/c/d5cbf26a5c8f57536fcb782c8985a83ca16dfc7d
[5/5] arm64: dts: exynos: add initial support for Samsung Galaxy J6
      https://git.kernel.org/krzk/linux/c/fc581fae50a2d9777a4056c07a62e5f0470b640f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


