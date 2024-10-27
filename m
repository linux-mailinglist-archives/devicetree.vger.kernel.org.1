Return-Path: <devicetree+bounces-116171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FECB9B2009
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 21:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6520A2815D0
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 20:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 651E7183CC7;
	Sun, 27 Oct 2024 20:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pkfvRVx5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A39C17E01C
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 20:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730059203; cv=none; b=OMMm10Tp8vmt83vOCZib/zFdXwSqXdfXY9SjxDAzb1+MUbths5H9z2iqrNjyRWW8RIop7NrcyiBMO0G9AOGnn3qskxLpI5VRIcg5/s0dT1MJPx+NEBAMW8JAGDC/2PQdxO3s39EXP34iI+6J+d8wQ+C8bPtsz+GDtyFUklmHOus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730059203; c=relaxed/simple;
	bh=9s3yMqRsMxrS3UyNUyToM/wiZEFhYCYjakLtmGXN9Do=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ulAAENZAROuKoAhZ7VBMh/JGVXhTaLTytjsRtIPxJLDz3j3QdOpU2hW6h/fWAMRchui7ZvazVVXkK9ASH7oIShTl+mQYjrKDQbOu/sOS2q5njk3fz9fk5IXvk6KnNILaeHY1RerymWJW8gdmzCW+nQDOymRIqaS6J/OL9DcmfZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pkfvRVx5; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d4fa7d3baso398489f8f.0
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 13:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730059199; x=1730663999; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DXQ3JFixqQMniZyy7iOMgm7iy+AnZBSfPUlWOom5ehI=;
        b=pkfvRVx5WiDXz7yETk+TIAA4oFfQdKWSSb9i41RtKBgZE/BG1Twv1sH8R9/6KjF9QM
         78ZRmee44XJgvZkzhhr9lp+9KvPv9jTcOBZNNlkC/5op3gevcWWHM5my2nUHKRxRKehf
         eDoT0U3iELJHhJ0HtFzEWSrSAfc7HS7xPobROOnPf74hcofoCSLaxpgw3vIDygg/qJBB
         /nShko8w2b7Y3Kt/rLHXu46UzX/fLTv/Gcd0mjy6DU22I3MA6II26u8w4Jjl7/pNpJ5o
         oTOUnORk7JJZCiPncn1FzoLPnbwG6J6f8LbXVZiDY1JdzMTNPNBvIH7BnESYO/5qJGCi
         v1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730059199; x=1730663999;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DXQ3JFixqQMniZyy7iOMgm7iy+AnZBSfPUlWOom5ehI=;
        b=eUwvMvAbO05tSet+jjFAnO6Ha/QtPsHCVyg8vg58wquInYVKl6BxhWC2nYI6FsReNI
         gN2VfVcqNQYCrhLhwuS+YOoyvfAq+nOUU6wHB7KxkDHPRxDQz3BP4taP1yYbnrD9xkj+
         5cNKvq5Ps/QoVmbyHUaST3LAKQE9qNHsdJT2+AH6BvXJndEoowV3ggixcXT6yd/rHSrl
         nABajlqgPz2QZ1qlIIRBIc/RXkKztljS51Wjf7xdcHFD7yAFBH2/De8dbIDinVajkHre
         ToMNMLSdM/8KCVXaIP85ZRH3uWnwo09tPYdP63duSej66GvN1YrBK17epBzuCBricZuj
         DjCA==
X-Gm-Message-State: AOJu0YzOyS2WbZl8m1DTL3i8L1pUmBvFlMUiQlPH76HH4EPgY3vNNep8
	peO+VXZnSPR22nwRvtKgTVqMor7y5ZCCZ6jVLTHHpwglRUM+vWQ9TecDpdDVSPE=
X-Google-Smtp-Source: AGHT+IHWYMRh8cuVfVF8iwP9DVlk7+oEketklRl5w2ZHB8KKIObI7IinPzRRTCdSjTV6SVsaYECqNQ==
X-Received: by 2002:a5d:5f48:0:b0:37c:df55:c1a5 with SMTP id ffacd0b85a97d-3806114314emr2142135f8f.6.1730059199317;
        Sun, 27 Oct 2024 12:59:59 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b6f838sm7506639f8f.83.2024.10.27.12.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 12:59:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Tomasz Figa <tomasz.figa@gmail.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, 
 Markuss Broks <markuss.broks@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Maksym Holovach <nergzd@nergzd723.xyz>
In-Reply-To: <20241026-exynos9810-v3-5-b89de9441ea8@gmail.com>
References: <20241026-exynos9810-v3-0-b89de9441ea8@gmail.com>
 <20241026-exynos9810-v3-5-b89de9441ea8@gmail.com>
Subject: Re: (subset) [PATCH v3 05/10] dt-bindings: soc: samsung:
 exynos-pmu: Add exynos9810 compatible
Message-Id: <173005919680.11546.9848851651562833256.b4-ty@linaro.org>
Date: Sun, 27 Oct 2024 20:59:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 26 Oct 2024 23:32:36 +0300, Markuss Broks wrote:
> Add compatible for Samsung Exynos9810 PMU to the schema.
> Like on other devices, it contains various registers related
> to power management and other vital to SoC functions.
> 
> 

Applied, thanks!

[05/10] dt-bindings: soc: samsung: exynos-pmu: Add exynos9810 compatible
        https://git.kernel.org/krzk/linux/c/4c745ade9f2ba0e2ce273b75293d0e9b995dbd74

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


