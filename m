Return-Path: <devicetree+bounces-228616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BA8BEF881
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:56:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 06164348622
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2ACA2DA779;
	Mon, 20 Oct 2025 06:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WVCYABZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64AB2DA763
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760943357; cv=none; b=APSzYj4cXVKoNq9wI+bL7YxkdN7GSKGmvQcToxo5jCoqkqKU+c74j4nn6zGtaXeMcdhfD/NiIoe6oW4fD6bHkxh6O4AwwOsw5xqyAVeWmGge3MMRaA6yDjsYMSaCvFX37dSgBAEOPknRjbyOnc/Fe1FJ2LyuwEwCoUPfNEvtoLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760943357; c=relaxed/simple;
	bh=l+qiMZCLW4L04/8hKzR+kyXDDTjgr7TGBBwRRRf2t6Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DWKA/WXzQFdFfwM5yskLjo0Da2GkMdh7OM+b97NKiqw1Yn4z3owBDWe6Kcvnfn4GPR6gBmaEwNuv3meCgG0+XnWhur4hafUFAodmraX7ElqvHSTQIXX2jC9Qw6CDTCm9zvkNxbJsA0eLdRpAFYx8hDcgHBmgIxwAqAEDQN2sMsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WVCYABZN; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b3b1eac8460so90489666b.2
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 23:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760943353; x=1761548153; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3Ehpl/l5WuI0+wUrFaKCbuecKamHajwdDA896DUcww=;
        b=WVCYABZNh1kzR58tV6AZB3MlczhWERCJnjERxLl77XCC7yVnQUuQgSoeGcM/U2J0Ab
         6nYgXpHS2A+QR6jTz5jamMI4SxutrBQDx9JtBGEAaL1GYumioezGvjrCSUI72gcMtogx
         M9LQqL35IIVNXQIgxVLynAauZuwWNvw7ilBRYLTODn9goL0FpsSGr/rBZtlN+0+dhG41
         qeD4wy+j4DwM3ePJ0XofSDG5zet8InZdgU97A5FtqSf0qC8YAK+EGgFus5a+qIxJ1Fjx
         3SFhBoqV+mKhWQgSZFlhge+3OsmiqSNv2flCSlmMmYUF/9L0ual6oo5i0SpAbFNrbQu1
         ybXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760943353; x=1761548153;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3Ehpl/l5WuI0+wUrFaKCbuecKamHajwdDA896DUcww=;
        b=W7jkea32hY0yVSF+zZ9SaCnpyjk5sgZDKCUQ3T32CjDl4RucZBOm6sgACmirUMv5u2
         p6XBT2sctXSgjftoENEgJNp0OzNJledayHkSjiwueDv+Uz+pknuasgHMrGce7s1gLFiB
         9xKc1jpIV5imXAaPpnWE9rbkB2Tiqk3qkDG5MVopcL//P4d0jl8Ng04nZx1ZeEEvlGd+
         Q20IfCbGbmkZmhUqybbWCfOqR3XqCGffj6Omaw6Xijug5bctFuLT4ASHhzMWt1/+gQde
         +nBVC2O54JFhPkhK0m0+aRwAoFxIBWHyGInqtL75g4NK2X5LK/d2CxvGK7VqOi5V8Wcc
         o5zw==
X-Forwarded-Encrypted: i=1; AJvYcCWyZIuTSBfZI/ZBTGW6TJTQZVx+USYjWouRpYJ7+OAoQADjuGv5M1WSMyCDBew3WTTE0Z0LdyeORs9z@vger.kernel.org
X-Gm-Message-State: AOJu0YwWWDkja6Wb5J3OzNRP/mbcwf9wh+a2Ro83sDOLGnsy3K7ADHIQ
	b81lLmXs+8j2Q2KdwmdV/2fqxEjRhRlfYrUqPbTzduWqhG43uGFa9kSQfgi4fskhPr8=
X-Gm-Gg: ASbGncuxUyncnWt+iEpJ9D+jwvPqNUwKTQOuKYsQgN20jsdRZtexQiLLs8dN2qY5lz/
	oQx/UsOu0AR9MZl8m1bMDBBLEchgEzFteIpj11StZEYVbsoEjcdlak3Yu7HXe9chaGQZbiFe7cZ
	cCtr5yBJKsWkYyd0+i3XplDpFRwBpqF4Ud3HScqSY2ihVZ9IKOjPRDiW7FajJdS+efd7BbHfHUm
	ZWRHTUFzDPv3aBmHSf9oLscrJB0s/XhY1wM6VpaKl+p1DSmIW0pOGJ6pwJgLkmtCfKSSae0GddN
	O6WTzGUmOhTqbl4z4ZeZUvprllMjZQqp9wvS7gv7vgJFVc4ygnSsPTyRVitncZZtf1clbETEsPW
	mixKTzYwXuJRIjzSKimeAcWCZs8TfDN9AH0Uw7l/VJu6F5XIf3TXJR3i2Yo1RV4MNvuI+vubIUk
	ds62YdgcAlbX66OjFSXRGncAQ+cJpHePyUv8N1pA==
X-Google-Smtp-Source: AGHT+IGTKKXPfeTmQ5w4wCnEeRSBRbYzpWHN3venhYhhsMPDOmR1qv1N3pYavRGP3cVhRdJ6rJ9Wog==
X-Received: by 2002:a17:906:c113:b0:b3f:5eaa:ef19 with SMTP id a640c23a62f3a-b6472c64147mr707558966b.3.1760943353147;
        Sun, 19 Oct 2025 23:55:53 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036a3esm711731466b.46.2025.10.19.23.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 23:55:52 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20251010-acpm-clk-v6-2-321ee8826fd4@linaro.org>
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
 <20251010-acpm-clk-v6-2-321ee8826fd4@linaro.org>
Subject: Re: (subset) [PATCH v6 2/6] firmware: exynos-acpm: add DVFS
 protocol
Message-Id: <176094335134.18498.14626588240652120863.b4-ty@linaro.org>
Date: Mon, 20 Oct 2025 08:55:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 10 Oct 2025 12:46:32 +0000, Tudor Ambarus wrote:
> Add ACPM DVFS protocol handler. It constructs DVFS messages that
> the APM firmware can understand.
> 
> 

Applied, thanks!

[2/6] firmware: exynos-acpm: add DVFS protocol
      https://git.kernel.org/krzk/linux/c/84a222d1b369ba83f8947948670f775367e653f1

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


