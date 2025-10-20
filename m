Return-Path: <devicetree+bounces-228624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F244BBEF940
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 09:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37A511890455
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 07:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7388D2D6E53;
	Mon, 20 Oct 2025 07:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uiM46Q14"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7F02C2340
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760943986; cv=none; b=HJ6TzrLqws1GKCsQDaX7IZrM8BwjMz/DeCcKudHTh8taNHRq/mJ2ME0mPSwHrgH0mYe50FawsTYKwgeFK4s9FuvfKV/CHXvEMIoN3r5FkcC3ddzbJYvPt9KZ4Ttbol5AyLjVjx8bI5UQmVlKHuPgUEmJOP/MgV26T3t/wIZkGCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760943986; c=relaxed/simple;
	bh=rMm7BYc9re9L6JYscXwi2llMLU3UnSVoJxhS7c8RKYk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=aUAGdP74LOGrHCmlvGTJg08S4KCzxVqURfMH0ju9/LD5F85TLWv0p59hBEQ6z24PNNTZcoHixHFf1KA6Ipzbrch3nQ4TtuNy1jTWrWMGL3cgOB4dEu7AW/PB1NP25QsnNXo76Jt3OYWBgdeiHGrDKXP0gJ59F79m5STp6SjRxaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uiM46Q14; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-426ff579fbeso474446f8f.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 00:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760943982; x=1761548782; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BL4ZYF94aOfs6GrfgQH7uz/6YUTAgWONeedgmFFItcs=;
        b=uiM46Q14qy/hoHK5gicz12T8unN8yFHSllvw4zido9me/SjUh1PbU1xSrSiFri6lha
         WV+T/r0pk9AxHt1ZaO8tWGXwWVMCUZSW6PFBFpc6gw9EWt8KKUHPUiQ0F2RXKgTUkYRz
         JddG84uC/QQ4N1wN0IbN7Ld5KJ8cpRfIiC8NPBVTmtxPKfdBKCzF+8qhcm/IEQtm4DA5
         9/0ebAMOwAUGZ8zWsYf8FAUCtoPKAR5i1kHGN4cl768n9sKQ3Myul7mvZwwidgLDyWwY
         /OWWuTKQUcxa5Q+if3eZ6qRhBMO6uZLxvH2UW3hFwzqgHTRkIZx8sFG38STFViTiO491
         OZZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760943982; x=1761548782;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BL4ZYF94aOfs6GrfgQH7uz/6YUTAgWONeedgmFFItcs=;
        b=h4vjdeyMzR5qZc2FqTtPlKq5MsPPqjzkmUANaEOaes/euqzjQQCr91NgwUaQpZ2NBM
         9cTPQsSqjVLyCcMnzFS4JoyMjzuV+A7uGyAp6pn/vxJzAZGfb1ojLHLqtbMXojbFngyY
         kofVYFS5JFFa8xIwbM/dOEavwKPQn2OAVbxpWa3UjQfFdsA3+R1Zr+SuxHOiWyvDrvrx
         bOVcLMiOXRjAdBtmoL8BDFYkwAekbcIt/hldkXM2DqsVEwv1LsWA3l0ZJAMWKimCJYyf
         3qGKMOrm9SWeiAav9fXHLx72LIRZW8lxVWStrR7ZfzJTKXtgno2kqyISOoIeYstFwoL4
         wzeA==
X-Forwarded-Encrypted: i=1; AJvYcCUyuhvxHslX3C+V+xNuabsnMcgw2kZyi66CQhEXh4o7tm8kNZXMKxoVyftK/Hj5qsfbWuqYORHNOO7d@vger.kernel.org
X-Gm-Message-State: AOJu0YyXFxJyCg0yi/hctLbXhFmVpjNKyEaknKj69AXPMNUzuy1S17zz
	yUkk01e2c/4KTXwACxAWTZb65V7612tJpg5wAMusyK3qvbMTXJBGUV1AOFbR3ZKuXhM=
X-Gm-Gg: ASbGncv0PcMexyX4ENYi0moSod0nkaBQH+5OtlU7YnNY39fMipDrvk1gQU+FqrUVw68
	lcQn2Mlr/RCE7QrwfHWM/HF59QHFwguc4e5VOGAnvqOPzJc5e1v8CGfFl5+FR/jx5YegsLDFSPN
	JJdZwzry7GqHZ74jko5Gt4aUkAYR2zZ3AJMInE3CrVv0uJzn0TM39QPQE0551R8kdhbZ5fY+9Tu
	mZWsVUGgfwIy5DhXLpKfTvCyrns9K/YQgS/9dU0MaAo8qp/q5po94l9DytRxe8auovzlGI7uLlt
	qG6hDumFQp0IDn9thA3jJL3DI18V0p3/ucf/e7n+iQ00pqXOTjGgMUWMRqYZIgH+Et2sJVpmHNW
	qAbnuk0JF+DnzDwZQDgc0mOW929iMuN17jslVnsBGVnAVsgmrF/f3K71He4u1s5nsjj80iCQUZq
	GJHjT/dAddbWJxNi7J
X-Google-Smtp-Source: AGHT+IGxcE1H5Tv0iSV8CsOY/ouiQBwzdpqvV8wjkhYvo0l+T5f2NGZtvR5ODn0Yr9X/Rd9I1QZNeg==
X-Received: by 2002:a05:6000:1884:b0:3fc:854:8b84 with SMTP id ffacd0b85a97d-42704d55175mr4636053f8f.3.1760943982413;
        Mon, 20 Oct 2025 00:06:22 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4710f28a920sm102535935e9.7.2025.10.20.00.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 00:06:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20250924-acpm-dvfs-dt-v4-0-3106d49e03f5@linaro.org>
References: <20250924-acpm-dvfs-dt-v4-0-3106d49e03f5@linaro.org>
Subject: Re: [PATCH v4 0/3] arm64: dts: exynos: gs101: add cpufreq support
Message-Id: <176094398077.21021.10319434896360598218.b4-ty@linaro.org>
Date: Mon, 20 Oct 2025 09:06:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Wed, 24 Sep 2025 15:14:40 +0000, Tudor Ambarus wrote:
> Define the CPU clocks and OPPs.
> 
> Patch #2 has a dependency on the ACPM clock bindings sent at:
> https://lore.kernel.org/linux-samsung-soc/20250924-acpm-clk-v5-1-4cca1fadd00d@linaro.org/T/#u
> 
> Thanks,
> ta
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: exynos: gs101: add #clock-cells to the ACPM protocol node
      https://git.kernel.org/krzk/linux/c/2e96df32009c2d7e4e210afdcce40bab17d0076e
[2/3] arm64: dts: exynos: gs101: add CPU clocks
      https://git.kernel.org/krzk/linux/c/025707fa269b0cf65fc2e10bcdf23359fd0e978b
[3/3] arm64: dts: exynos: gs101: add OPPs
      https://git.kernel.org/krzk/linux/c/bb103f6c7317bbc9cf4ee3a2482e74483876e412

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


