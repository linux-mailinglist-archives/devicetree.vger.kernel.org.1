Return-Path: <devicetree+bounces-184103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E0761AD3027
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E18A41885566
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E5B283142;
	Tue, 10 Jun 2025 08:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e8SK26Ec"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4449C27FD6E
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749543805; cv=none; b=l5F3W3+zCv3GogdFWjzsjzKZjVmgK4Eg2q8tF37pG2kZrU6s280L2z507LRL+Ko7mPOVq2PURM7uwMqv9O2lg7QHY7YRsEHspOlG6ULD5iXqctEUk0eymss4w1uauVtxBD3vPrDwUfd2k+5ErhGIoX2wzi+gunJNdp/XoELU9lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749543805; c=relaxed/simple;
	bh=fy2npRMTfmjjPLmznoZQcWxLmt/rqxFEr87E/XoWX84=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=o6y4J+EpzKNaK8e7z/oea+sLnO8F/015H1Iw3iqlU0rcm2J3dAzwTjcMbhMAA7uKmNUw9KQvHtltIok57iHvbtYQbsrRO/n+3gRVyR1OreNoJUo+c4YLP57O1pNRb0REiWcTmBk8QT65r6sscjXumDycOddguYsHgRRglvBHe4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e8SK26Ec; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a4ee391e6fso524974f8f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749543800; x=1750148600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=juVrDSxpmMtgoJh5pc1VP5Zj0Ly8Ck76E+2hldG+2FE=;
        b=e8SK26EcwVhm2+m31rjjb3YQitysUawGzo+63k6yIDYy6eCApfJO1CmDQdhQz/8tvQ
         ijBHklw4QdfohPp4D4s+0du43DzLwKRmNkKEOMyGi1GRLRs4b1tBu0IjoMN/eUYLtb/l
         t9CF+wZcO6xau3he2lg0G5yKo2PavJXHTNo5ZLhnjBkoAYKAkRTHrBodTOWaHgo8NPPW
         F3LfP+PRn+XRP5c3KDAf4UBUm9MVYbUzsqZxr3bCK+FrfDMmir8WDoeXR6dTLKWArz44
         fyxqH7z77tIJkySWYJ6b7o2SCSuw81qoPnaOseC0d6ey7OWLD+N7gbiOcAFGR9po9ib8
         W53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749543800; x=1750148600;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=juVrDSxpmMtgoJh5pc1VP5Zj0Ly8Ck76E+2hldG+2FE=;
        b=DCE7MdKmNMjFBN2GtKJbDeDhmUC1HFdGtUAYywS8rs9Wc2GAXy92zSIqK5oo0fSiuV
         q8oNBkwFochOl4lD4ak+8zlgXAxahfAYjuonP0uDB1zR2MUBd2acyWIhAr5BbTqBFT7z
         sjgsuiv7RXzM4gfElgZFwmNWTGIY5H51SlaNmlW4+BnL3wsQghzKoOEPCVu0VgzSybTu
         C3StsXXvdk3bOISwTn5SG2w4rf9LIf09GnPixV7+mDBnPwD74tGMUcJ6meDKuZk//8Vs
         wLfjGaXtlGOuZQQ4xK7oqEyJl0zaKN4kOcORYOkUHFc1+RT8ohaO7+lkwnAhiNcjUOvL
         kwpg==
X-Forwarded-Encrypted: i=1; AJvYcCX50bablEj1Nh+67yAa3JT8C7D6Ia5i6fsugxMh0jUQOm76I4dDQFF/LBiVeCBXlZaM6NFnh1Vz8Jkp@vger.kernel.org
X-Gm-Message-State: AOJu0YxcIXlQbrT2BFxRl6AbVOs3TlXaXvozMPrxIvxy14BVRPs7ec8T
	6KTZurOJ4Hpe1IiZIcdQ4smV+gYwv+Pk/PMpGYjbnUNy2X8CAIFvHG9kEbjA8pBOPU4=
X-Gm-Gg: ASbGnctQMY0b8jfsAOZBhiwYqRKme+fHj5afMsAgfoBTlEhaq0mY08Dq3UHYvjKgFkf
	u3LlKa6/wnTkyOIVTrE+FdARVLokJ0hRbiGzm0ALOKIQffUsCpoJVmapqzCSrcLlIOoNXopxGGs
	C+J7c2jirjVOVfLXn/gtGhMu0APxW60JXNMa4XZOLxzUZzMlO58nh+V/fq4btjTn0Y1wUED3ZFX
	j6jWGHGNC0xBC0dMEGTETzF0/S6lvK4C3YEBol0NNVsxdnexXRXDfjXiBkPUWxu6D0feWoJ2pas
	72UyBddouFgw1Byh/2TbcFQ5wnvu2/vE0Jz+l5yeBx4wuXLjCpP36AQbBEeiJLc5XHftB7jor2T
	7Se+Qxg==
X-Google-Smtp-Source: AGHT+IHmkbNCG4AE+Jw0uIEU/GxFnvKzXvXYiz5T9eY+25yhF+FTVYqqY/1/ANURHD1E3O5PMpRiXg==
X-Received: by 2002:a05:6000:4313:b0:3a4:eb9c:7cbc with SMTP id ffacd0b85a97d-3a5331ae097mr4937643f8f.15.1749543800578;
        Tue, 10 Jun 2025 01:23:20 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53229de01sm11895403f8f.11.2025.06.10.01.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:23:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250525190630.41858-2-krzysztof.kozlowski@linaro.org>
References: <20250525190630.41858-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: soc: samsung: exynos-pmu: Constrain
 google,pmu-intr-gen-syscon
Message-Id: <174954379928.117699.14584808679236287569.b4-ty@linaro.org>
Date: Tue, 10 Jun 2025 10:23:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sun, 25 May 2025 21:06:31 +0200, Krzysztof Kozlowski wrote:
> PMU interrupt generation block is not present in older Samsung Exynos
> SoCs, so restrict the property to Google GS101 only.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: samsung: exynos-pmu: Constrain google,pmu-intr-gen-syscon
      https://git.kernel.org/krzk/linux/c/952a81b137473cf679c229e7e7e175dce715cd2f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


