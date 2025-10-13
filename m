Return-Path: <devicetree+bounces-225795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFFABD1089
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:02:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5A7584E6DC0
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2FCF20E6F3;
	Mon, 13 Oct 2025 01:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lgf29vI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47100212B3D
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317324; cv=none; b=O/eRqrC5/dmZauF27eMQR+Y30CdX6ENPdN1mPWpMBBH8r7rS4JnrLOTZXwGa5ShINFRlOYGPeg7DwgNhycVVgfuvZ8GaVFKEJmA04EHVNBSJ76IKozS6KIsl13rrVH0InU1q2ZoSJZLM4L6P8zFWx10f+hms4V4SR8/JB20suRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317324; c=relaxed/simple;
	bh=5QsolDiiIg8i4wa9pi0bcArvGbChTBgEPx+xwIk7v7s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rABcEeIcUxANO2mI0PJ2J15JXhLIC4J+lXpxFM3Jl8vre5XHZC5lxv/MhNVlpwV4hrY6ESkQAj6sPJq8b1yIR2A+lHVZkarYEVa1hgUR+wOKWBEOCn4xyjkwOY4JQkQf4grnZku5StVrxI90DatgXIyllVC34ed1BDK1rCsy/mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lgf29vI7; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-789b93e9971so286596b3a.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317323; x=1760922123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E2VZD0X6ZKBVyHcu44cQwkRlDd6EuJvxZbXDHRQf7Yk=;
        b=lgf29vI7dDN5ihH75+KrCjSgi/mRIsILTZjpQgEysVUllzni6IGPt1a4I/EkTxvLBw
         pkdLb0E93Ebe/GTOUAjXfXpp/zFcWDDPt1u3qiMteKyK5fQZfXRTVPfBMMM2V5eD6b6D
         DXl2Xj7CgHoPZVv1JLC+KLiNyB79J/O/wMbJaGynyEBUwVxT9fXFG+vfirdusdsNEK5n
         91MzZpD/kA+kFEL/nBax17EL8JlJuJ0IVskrz/7t2yw6HAe3YkSznT8/KA/dkWZVDYQB
         2lu4q/oQeNGMF6a8kuIPsDSLmm6FCcj8KKwQNA1EcHwoXvgt/366HB5XEguVEJhVj2B0
         vkyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317323; x=1760922123;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E2VZD0X6ZKBVyHcu44cQwkRlDd6EuJvxZbXDHRQf7Yk=;
        b=gdPWNIgnc4T0OPGDKMMGYJ2p7UiDUncHpGV6FMJ+zLlpu4mqJ/Jtonj2Otd64ci0Yw
         ZHanet5dfQhdBBOXDH1LzD5Yj5gNKDEXLfzVwyP8YVAnkzLbZ+dP2nBRdVFIKCYfYFH3
         oqRYOW5fVj/fuOkbRVPF14Wo/KlDAgbfko/+KFqDh9rChqv4BKN8f7Yy7WBBWk8HiQdp
         //NQnySSFXnBDkUXPQfT2Zi3aOlDf2EfZnBll/Dccr6E0Bq+FL4E9/+V7aGhsug0lyAl
         8z3ciE4jt7IyM3a27GYMwffNLj1mcGXp4xCnYV6CPyj/gBv4YfCWxhveicLnCTvgW5vU
         VB0A==
X-Forwarded-Encrypted: i=1; AJvYcCVwr8GLmT92Pbrh516WqixVB8qDYAAgVKJJtEmeqRmzVQx+C5zN2+WBEokrvrZ4nqcHXtjkonqT8biZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/zdP8FTzM0i9WFXPFvV0A3QnOCVJ9yhkuJT++EVFoNQkJAEAo
	Fqc2/M7+tIHXnt2fhkzPSuHMy8Rm7/3KPvUaAXFSjTG6dm3lHsT5X7dW8DbU+yc82f8=
X-Gm-Gg: ASbGncuPWJ6nFFFZp41aFOp3UNlGdO01uAfMVXp0y1fREafR3YvjS6/Oh+d+yr3GTSB
	Pk9TCE6JQzodIQ2b7GEKo6Y4Li/PDFHa/upyHJ2lkUXKu0z5rPIwS817zjMHdDEHNijZIHlMb2C
	+zJyI8hP3oTQMlbwYME/z7sqHagu9N445dn6H9+O6zaIW7QiCl5WFyvVXDZ40G+T6p6t8s6cgU3
	A8VopwgnEbpalhiyTF1GurytdCywHdQZ3CL88qzF+k6TBEVDQv/wLfYQhr5Ds0ZNK5VtY47Ty0Z
	04ffkyFsAy7rRhlwI6aWRJYlOU4hrM3yiMcQ9gRdQuKn041nilm//hRmoYnJP0JokSuPfxkH/Ib
	OdlGYMI+SNm80Mbh6XLwmu7jgiMdLexqlvy3IjN87l6d/zh04evKseW6zegXO
X-Google-Smtp-Source: AGHT+IHkhsD8Q/l6W8s4BND2jDztyLoKb3Ag770eBYI8rhYQWaZ8cr9fIADYoln3Ut5t+SFwMBNglg==
X-Received: by 2002:a05:6a20:cf84:b0:244:aefe:71ef with SMTP id adf61e73a8af0-32da8439bfemr12149595637.6.1760317322630;
        Sun, 12 Oct 2025 18:02:02 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:02:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com, 
 shin.son@samsung.com, Raghav Sharma <raghav.s@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, chandan.vn@samsung.com, 
 dev.tailor@samsung.com, karthik.sun@samsung.com
In-Reply-To: <20250925130457.3476803-4-raghav.s@samsung.com>
References: <20250925130457.3476803-1-raghav.s@samsung.com>
 <CGME20250925125624epcas5p1b8da5d2cca89128d286f740b9896c609@epcas5p1.samsung.com>
 <20250925130457.3476803-4-raghav.s@samsung.com>
Subject: Re: (subset) [PATCH 3/3] arm64: dts: exynosautov920: add CMU_MFC
 clock DT nodes
Message-Id: <176031731657.32330.2231798506683118457.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:01:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Thu, 25 Sep 2025 18:34:57 +0530, Raghav Sharma wrote:
> Add required dt node for CMU_MFC block, which provides
> clocks for MFC IP
> 
> 

Applied, thanks!

[3/3] arm64: dts: exynosautov920: add CMU_MFC clock DT nodes
      https://git.kernel.org/krzk/linux/c/e3be50e829aa1aee713bf0c6907acf13d48be310

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


