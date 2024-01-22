Return-Path: <devicetree+bounces-33703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B635683617C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:28:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7016228D8EA
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 498AF4122A;
	Mon, 22 Jan 2024 11:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VR6voqr/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D1640C19
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922117; cv=none; b=APuYH7lcXVV58nrfxBykZ1KVCTJv7o9UKWIoqoFBrf/51GKlGZcrQImSREytLxlWc/cZ1UelFCAbB/bbpBTWLZXmuG97hpZTHyKT5H5N3qdmlxm/yY9rjE+zY39cvdQcyWe4nJ9ercBn+qnLp6ClCPZB22yz9EffmJBcKbJu7AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922117; c=relaxed/simple;
	bh=g71pOkF0q/D18ZOmtU7U8XWrY0ImCsg2nS7oXJFuYTM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=TEIKys5V7y/mUoaGe9Us+MvNY9RwZjazPa3t15SwFWqd7rA1TC6ar6pMa4iabHaJG0HxywZXeOJfsququhRW5Fghd5ROp3IRMjC++BODZy1KdzaK1/A9Hqit8rCS+2LGyEvssi6EgzeUicG24sPFOessXswjuzzQrq2hb5b3I3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VR6voqr/; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-558f523c072so3548583a12.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922114; x=1706526914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=18VyJIfEtiBUv58CrrtMAEX1dmGY5zrSQPkQzP0Kc4g=;
        b=VR6voqr/+necgvFihMKG+kzlldJZMmXifhR7aQkQqnI8olWtQu1SqgUcgoya6bAK6u
         wP706N6ESeHt5RI4wrZxzlJHm4v3XhqE3XKyT224q03mJoUOdaEIpKYkAgAoihlgetA+
         kh4DZs6+dyGzI5PGLKj3f89OAcX7dNqHEZc6Ernk4V+oss1yY2KgguSKJ0mEh9WQT4mt
         zQhcgg8vDuQwExO7sdH26roM4IjNW2rYtUAsJ3aEDvzQObWZx7Qw1aVpb1MBP1R3tB0V
         +trWKsHBprdppX51hACw+yLvPi9zZw5EbZOF/Lb37CzEnvtKkfnG+OvRcuTYZgsE6D3f
         ex8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922114; x=1706526914;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=18VyJIfEtiBUv58CrrtMAEX1dmGY5zrSQPkQzP0Kc4g=;
        b=Q1Bx/pEsi0KvLsHRKqeHX5glmTh6ntYGBlT+pScjwqX/rquxDjmT92rb2b0OJ2JCjf
         Z8B0tQC8aQO621VnFb2hEHZl1vjuoyeEkjmGeALlpKTJi4XAf9+AMrvlwimxkz1Q6/D4
         Ka+kVBztL4LyNGETIW1CL5QdPo29QoJx3jtK7lQKNIYRJvWRK1NOOe2C21VC6wqC8h6F
         HYEbigKylM+LSjp4NXHtj1/6qLDK8lg8q3d2fhIt9GXZ4FKuTEAiNts5BBvMcd4T5vtd
         DgHXcrXhXU2K57LEXHeBQ5kFdUfHtp34cP9N4V4HNTyfj6jeOhMj3nNz8IgG9O4aXdLz
         90kQ==
X-Gm-Message-State: AOJu0YyTlOEdtwyAi5oUq8UdDIfsXYO/W+8lIVQwnVRkKc0YcfPh9WTw
	zzrtjWob9XpBFd27MYxQuhqixAWdV5o64N/FHu9P1G9UOia77rAfhBqog1TFGaI=
X-Google-Smtp-Source: AGHT+IF072wtLDVuFhLz/laKC/3DyZTIFY+Nv3wRPhqhHWN3bhVDacXtc1jka+JGAi1z5WbEVcDOMQ==
X-Received: by 2002:a05:6402:31ad:b0:55b:397c:3019 with SMTP id dj13-20020a05640231ad00b0055b397c3019mr877760edb.1.1705922113962;
        Mon, 22 Jan 2024 03:15:13 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:13 -0800 (PST)
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
In-Reply-To: <20231222165355.1462740-4-peter.griffin@linaro.org>
References: <20231222165355.1462740-1-peter.griffin@linaro.org>
 <20231222165355.1462740-4-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH 3/3] arm64: dts: exynos: gs101: define Multi
 Core Timer (MCT) node
Message-Id: <170592211238.45273.922705807227687587.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Fri, 22 Dec 2023 16:53:55 +0000, Peter Griffin wrote:
> MCT has one global timer and 8 CPU local timers. The global timer
> can generate 4 interrupts, and each local timer can generate an
> interrupt making 12 interrupts in total.
> 
> 

Applied, thanks!

[3/3] arm64: dts: exynos: gs101: define Multi Core Timer (MCT) node
      https://git.kernel.org/krzk/linux/c/2b1b22054a8240e8e806d872b6fc361611f9c7a2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


