Return-Path: <devicetree+bounces-152966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB731A4AB99
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 15:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28ABF3B568A
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 14:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328E51E0DC3;
	Sat,  1 Mar 2025 14:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WLP38u8Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC711E04BE
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 14:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740838418; cv=none; b=f/VjXaB4fuNZDN5KfLwc9tdhgr2Azknmrsoh7alK4mGXfoEzTsWMiyVIt6Dne+jA3nELJoXLLz6yarp8MOz/+HDMCI1Xn9D6hRc1Rt7fwTQfDeYPxNsJZhkMJ057i3vq81AD6GECmKPS3T/JIqg7GlDO7zkes+1DaUvTfZZZwqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740838418; c=relaxed/simple;
	bh=kaLeNKCrV3DUrxPBC4orfb5NQSWt3UDFoXv2KQEv8y0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=oseBbaR+zOfVPuoXx56i8rqiO+dQudcAX6TPGOQWfysREGF2UqSci6RiYz6WMgyEo2xd6n18U5YviRpNWSHJL2OpRl3Uq9NJGxfXwAddVJnVGFd9u4z2rEMm0zs2kydmMqk9uQ6IvXmT86GLcBFLtYS6DsaLtvZTyORiAx76jeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WLP38u8Q; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-abf4145368dso15479766b.3
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 06:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740838415; x=1741443215; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JF2SZUIZ+BCUsqS+/yls5B4+IVbjBfE9IjNCznqvy2o=;
        b=WLP38u8QdiBjjb+kmfdvdhkkjvRGmFrdwKM3h7QyXEnbsJRNFXkDPjjnU+IIIbiT0r
         5Ff1sjD7QNhhymMNyxbgwUauDLRxwqnPYU6p9H4FMYlfuzZdjkDKDv2QBmhKVkA9OdJT
         VUaRZBubYyTTq5aGW/9QHhJ5NlsyJLrhZa1htmCL84q6q3bdY7IXyKG5ldyPqmcilyS2
         OnkPfKxAOSEtRSBnP9ox5ar4/ZMO6LaKwlFVhBNzhXacKgY2jvcCxVTsXkbkBKZCh21p
         DW/86jI8REEUM+FW7tZXrjJGZSlUAmLlnQnvQMhf0uVKY0L/p/wwqFZ08+e7whs49l+B
         YUwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740838415; x=1741443215;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JF2SZUIZ+BCUsqS+/yls5B4+IVbjBfE9IjNCznqvy2o=;
        b=TUrp/vHPMP0hh8/o7JkXSh9S5AGm01A17N9NgeLrgKV7Xk8UUVE2UsJkiMem6ZTzyS
         50dDStqO3u2ZMvVgtJT/FysdXN0299PWalk/sak3fC9V+d3rNhBLHIGylgf/IDG9ApYV
         4U/kzZYoJUCMgxYTZb0ZxxM+1OWoc//GnPPTMaCIfFC2c2bHUAYTGNy0o21VEwhxepgi
         FyMdHvy9rsIZ9wFFsku1J/+hRxpqj2MOehI1zVLMJFvEcNe18Bgmpz+FFixh8Li8N4eF
         FBxRE8vDLXJ+AfK6SKIUoBATK/w6D/SO+NlAB1/4B10BWctY3M6IwB4MFqo1tcemetq/
         dcdA==
X-Forwarded-Encrypted: i=1; AJvYcCWKB0tB2U3VmxAbhIaS81jdyfbgBYJmnYClWWncBexcB7W/chxKqID03hL8cUH0C3xdd3nJmeUbyQ7d@vger.kernel.org
X-Gm-Message-State: AOJu0YzullO6+gzx/T8FXQYTPoDFA2WyKSQA7esoE28Ll2HYTu8G71EV
	6TeU5uqy05cfAkE0ujl+giEOIyoKtxAsLWSs4oVVe8mylQXAdD28kzx+r7nTP7U=
X-Gm-Gg: ASbGncsoYXMtCmoqbhkwZrDjbeYmXPp6CFGzgfQ2b0MUZsfUgGs2AWLNsk93ycuvI8/
	gkDX5kJeAGY3ft/E08mh2903H4P85hA+VC9Ov8tTLu2yHuEobb068Apy1qvc6eiIXiqTHOK3JY0
	a8zp/hUTooEpYaUoP91qzNtK2GN41xnOMu8G4vmm7sVEoaH7UsdFpHft+zDCRFQlbjvdLB8T1H5
	yIihvM0garDgNcrB5OgcKnYvrm47tu4d6XN6wjXJWUoCMGuOIuHR/YTfQjcX1R/B3OGtPpF9Vx7
	BvUebHkQM6p1FpYFYQ+YM5ys0SplRbwLYMMh0nd6prj2BhI7CDWx7qStMYLh
X-Google-Smtp-Source: AGHT+IEXjfOAsbzmDdwBeUYHq/6or4MctOJ1aDy3KgGo+cF5AzBxwpd05SEBfk2hys/UsQO5ckCxQw==
X-Received: by 2002:a17:907:3f2a:b0:ab6:b8e0:4f25 with SMTP id a640c23a62f3a-abf25fbaf6fmr324049266b.4.1740838414804;
        Sat, 01 Mar 2025 06:13:34 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0b9cbfsm485532366b.14.2025.03.01.06.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 06:13:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250301-exynos7870-pmu-clocks-v5-2-715b646d5206@disroot.org>
References: <20250301-exynos7870-pmu-clocks-v5-0-715b646d5206@disroot.org>
 <20250301-exynos7870-pmu-clocks-v5-2-715b646d5206@disroot.org>
Subject: Re: (subset) [PATCH v5 2/2] clk: samsung: add initial exynos7870
 clock driver
Message-Id: <174083841272.17657.12697906967603393824.b4-ty@linaro.org>
Date: Sat, 01 Mar 2025 15:13:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 01 Mar 2025 09:27:13 +0530, Kaustabh Chakraborty wrote:
> This is a basic implementation of the clock driver required by
> Samsung's Exynos7870 SoC. It implements CMU_MIF, CMU_DISPAUD, CMU_FSYS,
> CMU_G3D, CMU_ISP, CMU_MFCMSCL, and CMU_PERI. all other CMUs depend on
> CMU_MIF.
> 
> 

Applied, thanks!

[2/2] clk: samsung: add initial exynos7870 clock driver
      https://git.kernel.org/krzk/linux/c/4149066a5e958963f7123be51d3a65d336045c21

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


