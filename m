Return-Path: <devicetree+bounces-33704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4C6836183
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F1191C260F3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB54241762;
	Mon, 22 Jan 2024 11:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UZhLTcjv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1074122F
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922119; cv=none; b=JXfRaOpmK5FhlavyI6tYhX94fH+Xt8YNyIKCa8ZVT7Dv0ngQwnqsj/yOlzYKrdXF3a9Jl9qp6WKSYKty+IyFVtLAQN6IjbpA6WB+TFYt1BGsiHn04yJ+hchOHgazSH+3/q6M2U05q+PN5JFD/Ke7hPfPqBDz2IZfMiIEgHvV5nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922119; c=relaxed/simple;
	bh=sBhXk0iAvmnXKdKuq3EM3icTN0+ZEsMN1H17Lp5WitQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=auEZ+gLhG8yR5s1W+p5FUgHdz4FV2dNzq7Hp/p5+fyEL4T7CbtzmhChphUbIpsZ9zguxkoDP5UvM7+nbQVphF89bjFqvUOdISfQQ813BNqzXq/UEQzRYCBfP7hV85FWTC6X7pW6R+LG9+Pjk+Wup8UuH3cDnLZc4/W2iztgWaiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UZhLTcjv; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-559f92bf7b6so5321065a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922115; x=1706526915; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QYvtByBMmibUCUZcFilpUEWd0hC7XPo/IrPVWnAuEF8=;
        b=UZhLTcjvE0ZAg/jfoS95HWO04R80AF2ndbV/z4y9WRbDLkD7Gl7YXWzPcjqWX+ETP6
         OscKhDb3C4BI5RyYtsZeupENOm91YG6rGp6KJNRdPUDRNapn6lXP9echW9P+TrI5JIix
         +CkzSdLHHm5Q4xnzIzX1bMB0qz0afSGVWr/GKCqS5DNKKnNMJ8qgaCL/+yU84j6V7Jj4
         CDucigVg3JTmy+w/JUJz9YGRcbAd0Yba0guEumTsVsL78Ptb+IADQys/J8Zc+wYKm6eZ
         JVJUQ+VIaTs5cRavYcXHYSaYo7BV1VS9DCaJNroaWvA+ARszYDhzlnmbFX8vubSzsh5f
         xU5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922115; x=1706526915;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QYvtByBMmibUCUZcFilpUEWd0hC7XPo/IrPVWnAuEF8=;
        b=e+r1vDuToWP5SpLl+2s1UK999HLGbyiWr7Fq5Vp36GAsB0OE6p28LBKIPopqjrk/uz
         9rBri4pVpS6x/b2dSp2fLSsNZCTXbaKhTQLP+UJAwKmhSPOMIjoO7nK40HGqZUPJilio
         IGFz5mEZv45U4oNk3a26atJvEZKht/3UFqAjOKzG0XDxN1RQlylsaSmV8hg+UxYGISiU
         +sG/rpUxm9kn0SVF1+dqrWqBZrm6V+G9C7IRwCIQtCM2/rl6qjkkMDMnPBLr5iQe6mTN
         8GLTlWlFMIwCiLDkLHRrZGI97866PohY738eRRQHgcLazw+ufZlm9Xnv3v94JKUrNE4k
         /sPw==
X-Gm-Message-State: AOJu0YybBi6gp7orz+to0Q7BK41wkKEMwzNT045A7dLOvdKiV210y0Wa
	7EwP+XLGdWflhtY2kJMfenIvxwG7uuvFUjXwdi347nnlt14NPEImqH+4eq9kCj8=
X-Google-Smtp-Source: AGHT+IEZONRRWwPg55Bl6j+qg9gT2tMH2N7hRshFExy3U+WwV/uEC+1jiGK+QgUlbmP5FuFEZwo/rg==
X-Received: by 2002:aa7:d750:0:b0:559:b1b0:4437 with SMTP id a16-20020aa7d750000000b00559b1b04437mr5881853eds.5.1705922115799;
        Mon, 22 Jan 2024 03:15:15 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 daniel.lezcano@linaro.org, tglx@linutronix.de, conor+dt@kernel.org, 
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
 cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
 semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com
In-Reply-To: <20231222165355.1462740-3-peter.griffin@linaro.org>
References: <20231222165355.1462740-1-peter.griffin@linaro.org>
 <20231222165355.1462740-3-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH 2/3] clk: samsung: gs101: register cmu_misc
 clocks early
Message-Id: <170592211404.45273.11848415644684146235.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Fri, 22 Dec 2023 16:53:54 +0000, Peter Griffin wrote:
> Update cmu_misc so it is registered early, as it contains
> the gate which clocks the Multi Core Timer (MCT). This clock
> is required early in boot, otherwise exynos_mct will fail
> obtaining the clock.
> 
> Note this wasn't previously an issue as exynos_mct wasn't
> enabled.
> 
> [...]

Applied, thanks!

[2/3] clk: samsung: gs101: register cmu_misc clocks early
      https://git.kernel.org/krzk/linux/c/163cd42fc49081964e0fc6f0b1e94b6b50eb85f5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


