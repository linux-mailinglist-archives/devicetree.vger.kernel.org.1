Return-Path: <devicetree+bounces-235061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F974C3434B
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 08:25:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBDDF424305
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 07:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7AF42D23BF;
	Wed,  5 Nov 2025 07:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gmPiwXGU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29242D0605
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 07:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762327525; cv=none; b=vArro3ihxfGtDMdwUguDpOsXCUAcwphOSkojVxWaAj9VUhzfdqlhNZXjrKbS2rnOB0cz/Nc3fLfFTZQeP6aL7y3IYlb4TICBQSnxd0VmJIvbc8nxIzzjiAlWkIBkwhW1S9VsGgVEWoWLb4BUD7J5D85J0ThY5ISY3tWuGdxmXbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762327525; c=relaxed/simple;
	bh=tvmPBYZnlM8mLqw3SaLismRnZ+xLMx/VxpTUkKe69Jc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=XoNjDiTjwZLcPvbTA4SPdcUqBFfjfbkJ9GUhp/s46Lh4WA0OhgAsOZw6oPH+sMLoX48ZhMfyeLxnrluBmeBxbNJwCcidLpWWgfBUmABccxgKh1UXtXcYWraYHKXQUUzBzBiE+VEBYEY0i7dlvOROzIrVm5z6S9xmUBL/Pm7Itww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gmPiwXGU; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-640e970598cso299208a12.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 23:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762327522; x=1762932322; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bIb/KYzXNYt0u1RpA2PEFtOULDEYN0eGfooGuJh8/ic=;
        b=gmPiwXGUxFDhxWgB8oDGH33DrDsUQktXzPpHGpSY5WXjj0Cul0afuRBhGPQP5RADYT
         Sed2cNOZXDYbs6zIgcHQOq5e/qq2BwwTXEr6r0CHaO6C1DdAEbovYHARzjCpm7vgCnyj
         Z5A/3Klo8A39lagFqrso8S8Ywi9qzzVlpLVhEiSxUDdueVH09QJBP2SdwLqAr6FYc9JO
         CXaM7D1W/0gBPoT4OOV1KBykwM/vp6lX/dMb7k0OjjeEEPeOJZmc98MRwrev2blseXjf
         W9ccaDr6DHlsl+cPLHG1iSiVm0P9TdHSrLi2sAPX02C7jHNeSGV271776g2KZrKfKpGC
         2iAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762327522; x=1762932322;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bIb/KYzXNYt0u1RpA2PEFtOULDEYN0eGfooGuJh8/ic=;
        b=TgF0ZXQnHkzsLnwigCNMNoAhHGi2oVqGamv7XeXfFNbPIZg+gRl6S5UfZn6Cyj37zB
         CNCrVsglRdZCnyKz2QRvFPL4WcQglMH+omf4XoXI89d62PvUaNCWWLwLAppK8236go4k
         LULGWNis4LUfknhLSOOoX/GJY0j4RRNJWyfNzIEtHvyOUOZXJclmNfdXCIXYc65ZA//u
         BMl45A55Nld0K6pG+CuQNAPdUZ9iUWamETGRNZroJBngrbRIk33diGOJjFgTf3EW+e+A
         4ypxJw+y1RrgTFtaRzEGEtV/oYCpj4sm9Jax7npOt3+fn5y4d7OVSV1HIRyJEjIyL2QJ
         w2+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWX2M36PUkChhfdrvO3IwOC+zdsgIpBhFyZZxlkBjUtp4owVc5KrG6baNET9jQE++ji/iYxURrujFur@vger.kernel.org
X-Gm-Message-State: AOJu0YwvyRqKEVBg4pxkOnqlk74KKKJGXDp5kQ4cms5xm3gNuIc+BciK
	j3BEEkRoKsKrqhYkSyLxaKL8LVoeSgDcgKCed2oFjfQLiVo7yYff1hvNVZMKqij1adI=
X-Gm-Gg: ASbGncvI0nuwviWX3kgYoinBEMaPQaXcq1cjbA6CKfkuhBrCHRCKoIw96T/yMMwNNRs
	PJrYxosGEhm46jxASjkYyrOyfe0UnUgVDg+cFJh9+g2q5ZTUX+wbgnSBpxUTCq3zq3b7lPZA2f1
	xMceagsaVUZfw9JbeLG2Yr0SCZ6TEUa1GKw3m+qpjcihlHQ2yNw/AICBEvboiLo4p/T4isDHNPZ
	K2xwWYflDqNBhksoZ0kvfeY4xNSnulRKzX7CeRyxWH8lOl0Rv4J4XipIbXWs9OmFbVWfnSvixPW
	jVVoMSGgylR02PCOEAflXshLEs0JfBKxiipdWBbMLm9HJ4ZH+ITj/y8BV5ce/LTisJz/wSjEFPu
	sCK65a8m6hGxa/RjDo7ccPZFxclJ/w4NzbGUjfRWGLfeYPKt3I25kqIpCE7BI9yogJRDWsQbZug
	rzUdSboppcCLtgz896
X-Google-Smtp-Source: AGHT+IGzPFXwhqPyvOn8ewQmtIhpOZEz27+6Xn30YUvZx2NGtmHf7a2VZK75fukyF0zZjg0re8/YsA==
X-Received: by 2002:a17:907:2d0e:b0:b70:b45d:d9c2 with SMTP id a640c23a62f3a-b7265687d2amr98936366b.9.1762327522067;
        Tue, 04 Nov 2025 23:25:22 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d6f8c5bsm411534866b.20.2025.11.04.23.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 23:25:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251031-exynos7870-drm-dts-v4-1-c1f77fb16b87@disroot.org>
References: <20251031-exynos7870-drm-dts-v4-0-c1f77fb16b87@disroot.org>
 <20251031-exynos7870-drm-dts-v4-1-c1f77fb16b87@disroot.org>
Subject: Re: (subset) [PATCH v4 1/5] dt-bindings: soc: samsung: exynos-pmu:
 allow mipi-phy subnode for Exynos7870 PMU
Message-Id: <176232752047.13426.3419883403605615740.b4-ty@linaro.org>
Date: Wed, 05 Nov 2025 08:25:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 31 Oct 2025 00:50:15 +0530, Kaustabh Chakraborty wrote:
> Exynos7870 PMU is already documented in schema. Add Exynos7870's PMU
> compatible to the list of nodes which allow a MIPI PHY driver.
> 
> 

Applied, thanks!

[1/5] dt-bindings: soc: samsung: exynos-pmu: allow mipi-phy subnode for Exynos7870 PMU
      https://git.kernel.org/krzk/linux/c/81280d39a2f9e7dc12056db889da52cce067b1b6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


