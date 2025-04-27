Return-Path: <devicetree+bounces-171312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F19DA9E468
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 21:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE8AD179445
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 19:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5021A1FC0F0;
	Sun, 27 Apr 2025 19:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kkwBeALu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CBB1FA178
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 19:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745781922; cv=none; b=HyYpIbb0WJ5vR9V3o/+cVk6r9RQMnWNqqSnHwX++jKvHJ/Yw4Z7UxAbU/erPSXRZ+FCuDiIGDhRcEckOSZ8581cWrF1AGnxH727cGZbFc0y2Pzgdg51T9jWaID7Jdvly5F8izMdF6I5LAq1sxkHVlWhqKiZy19sqL3iibmmLP7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745781922; c=relaxed/simple;
	bh=/t2+YWKsBNaTZjRg9QXhq2gQ9OK1h3FqoqYWVASNd38=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=O/CL7n9KDt1G0zpv+5l9eFcHHSXG0Vp8/s1ae10sGsXCwDwNfHj/SACJkvvJhLfB0Uj4Fds7BEm79OPnmR9I+B08UiPtDfL82ioZEZAWNOQ5n2oa3qKqxHu6NU+iBwtPuvsHS1b9ScpHZFxRjCMBXMJE67WE//TGcYwkX2PPttE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kkwBeALu; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e82396baaeso591372a12.1
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 12:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745781918; x=1746386718; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g6ciHLBQ7v+KERtVpL0VN+WVIHbN2nip11tdXEkw5/k=;
        b=kkwBeALu/WUD6Y1YQQkrBWiqyFAyqAxKOJ+EfqM+ray7RkuAF7UHR0zD470F5zps/A
         ZOfXkMmsag+9haBh0Z0gRvIrzz2C4pccvG/LnJ6U2fmwwyq2q8JqS3Neam9XTEUg/ATU
         rGo2ZMO0l+KMAU6QP5glCm080hn3R1wHWPLeTCS4BevKmQYChpwvSbQZo2NltcL+lsqf
         ZkRW2edOoGtpZ5k1DB3KyWw4qu+97O+aDAMpd8GxmUmsdW2MlLaVdDs8jMoUB63CG+R2
         UVSrk80vEJ2zPm8Aw+9BqkfgUDoiSpIv5mWZeWSLhWgui0H3Uvv0rSlClOM3+ZtB4x9g
         mAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745781918; x=1746386718;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6ciHLBQ7v+KERtVpL0VN+WVIHbN2nip11tdXEkw5/k=;
        b=txFQUDMnOz6mDa3TaNxyPrdPYDJpQa/dOU7DPRJF4PRAtv1QHTA1SSRNEWbp1PmVFl
         rVqGjI/MeGz7ppn+NTzvozLWl1Lm9jJDTPBQ2sbWo4dMKLgvZKJx9ImImhXEVK2P5Y8v
         wIvPW83l/CVBs1lzkBBmFjpNN6Hq9WxW1ovtyIUGyN9bpmSMsjuL+XJe05moweB1he/v
         hyoJJZ63/jdJAQOFMNd83ea8pFhcRaaC4zArragP7KG4Aie+0hgBs0RN6egLOoKj7YF7
         W+pQNgXGHaLKO4z5Ot+VKFjqjqJUiHAQUZWYxaU62bEFGthOdM5DSbXU3jHVVxBsoo/2
         yW7A==
X-Forwarded-Encrypted: i=1; AJvYcCUn7YF6uvV2imZ9OROiZDuUeCg74FXj+3R1u0RTvFyCMedIhTcOoxAlVD9gL3roDDv6dforVGQNtpS2@vger.kernel.org
X-Gm-Message-State: AOJu0YxnDT+9kFZAcNKfvth5/2rXh5ex+t0mapBhIcfV2XiTAwGbKN1I
	KHXtloFnjOC78t4l0aC4jDo2tRYyZaOX+WMivLFTtQJxwNfSCQD/akdxbaPudbI=
X-Gm-Gg: ASbGnctfEOpBLoT6aP4l+PP8NycnXmXDsgnXFLtLCO2GzRFiDepM1857hsv1T4+EPw7
	q6Ig5IF3jU8ZXpuz3RnHBqBzJOMB8hy0VdJgqyPCNOb2Pv83HalP8F53jeBLL3SUIDp1uCqZQUg
	HFPzAgtsL8BKEPbU2z/AVD0B4/WhCJG8ORiT8AWULi/DCz//GLEkH6ucCHJkLiXwAYNCyHUTcPx
	jvrq1vcxNVbpv1a47gSmbaEeZrGqRa0XZ8sqFPnwzlFjM6iOAT7gXUIi3eGHd1aajmxy63nkZfk
	hYLKpdimfFb1ljUjqL1pzn5B08Vx+oanIPEDXGY8TbeWwNTjAK/QpbdCktQ=
X-Google-Smtp-Source: AGHT+IFKU4psDf5PYHdZCtkO3pzmjbu/DFKLJPT1981+M/z6WVOmTWVD+2jCO8pEXGfM0N5n5sGArQ==
X-Received: by 2002:a05:6402:5110:b0:5de:ce71:badf with SMTP id 4fb4d7f45d1cf-5f723436a14mr3052840a12.6.1745781917715;
        Sun, 27 Apr 2025 12:25:17 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f66b7sm4650196a12.46.2025.04.27.12.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 12:25:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sunyeal Hong <sunyeal.hong@samsung.com>, 
 Shin Son <shin.son@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250423044153.1288077-2-shin.son@samsung.com>
References: <20250423044153.1288077-1-shin.son@samsung.com>
 <CGME20250423044159epcas2p26a4d07552b5646c7e076f3989d8ea354@epcas2p2.samsung.com>
 <20250423044153.1288077-2-shin.son@samsung.com>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: clock: exynosautov920:
 add cpucl0 clock definitions
Message-Id: <174578191521.47282.12191544954441136681.b4-ty@linaro.org>
Date: Sun, 27 Apr 2025 21:25:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 23 Apr 2025 13:41:51 +0900, Shin Son wrote:
> Add cpucl0 clock definitions.
> 
> CPUCL0 refers to CPU Cluster 0, which provide clock support
> for the CPUs on Exynosauto V920 SoC.
> 
> 

Applied, thanks!

[1/3] dt-bindings: clock: exynosautov920: add cpucl0 clock definitions
      https://git.kernel.org/krzk/linux/c/e2642509e3d60dc90b74d27b47e36cea71a96186

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


