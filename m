Return-Path: <devicetree+bounces-228420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 667B5BED4C9
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 19:20:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B20E19A7418
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 17:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7630825A630;
	Sat, 18 Oct 2025 17:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FTzsMmqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9895F245008
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 17:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760808013; cv=none; b=l64AlIj3gxxHHTeyBkF0iDvxPLpSq3OREvcgy+nNUzhr9yHY89KirIxXb0z239C0ikrg3zAfR+iF2rqHdu35GKBZY3/DlotUG3ktUGibYmmAJHTn4eCVyFT5zk11ubmXHB9+2JzbZSOVSZw2Zb1Ae5xDYR6WQ251ENHtIfywEPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760808013; c=relaxed/simple;
	bh=XB87FF4whnJCfy3lgSu9PbRU9zmybCibZa75Rgwk9Ao=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Y8ek20nFd/O7qKh1pkL44K48X5ArWU6Dk7AkRc8CtSlwkvimeEBDR6nFFezfr8jff/q1IW38B3cOlGNZ4v/EgTQkx93X2nZE8EPUBhHhR/5d97bhJXxo3mnikQBfFKq1CsdU4qBibYkWBxQPbkqXnUWxO60Iz4e4kCo+d/GvCDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FTzsMmqL; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6317348fa4fso506035a12.3
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 10:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760808009; x=1761412809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIqv0G7pcNUthypgI4hwrs447IkAWzrBTbrewno8Kdw=;
        b=FTzsMmqLutCbgkCIPEGJ1DwGe+Cfp5DY49RYOXm9BkSxfaabNOUkIPNuhCuYmxwGHQ
         QFZMmej9Mxd3Y2I1fw9vdwBTlgqLuGrv3GcpPxRdfdogtQF0Nubig/oxXalBQBrZfpsY
         IkS6GItkleU0cY5jG84eoJqNkhK9rrH7BiD0DUolPUNMTJSJuheOP/Ial1NhKfxEgMNx
         /gtBP2foIOYzA4TMqJH6qBCUS8rLtIGCBE9nkVfplQzR+V02vkAUSi0Ge0xt3u1Szeey
         sFt/SUkomMTVXdDkGh1YSbJj2YFdLhtm34x371Sy3nR0GQfsSs1+mZzOKaF/uVSBBKlE
         Rp2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760808009; x=1761412809;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yIqv0G7pcNUthypgI4hwrs447IkAWzrBTbrewno8Kdw=;
        b=GpKEzF/7lDJ0q0CxCq8JwWrrbHNjZcuOQCi5ltfdhEaD/+wMqX0TmXMVk1naxKfTjg
         eUgiJ6TZDsbGJ+rkgh/kcs5HGRSKWSg81ZGLfCL53X3HvTMD7enhx1E0+7sOLYxhb8Ji
         2Z9DF/q4xbdxflwjZM8wvMRW1x6AhHdWDrYBzdl6GJJoyDBXxK+rC2cybzOl4tCGZlcC
         ydNABH9CpZoxHr5Gc1TOTIcqNj12yV4WUpPjdy2no2fwUZ6mN1kzLdWNUl3e0TycSCYq
         amZqqSRQkMKiZk0d1BhAe6nOX9dKfBX+4+E04bqoDZrL6Bn5u4EvWty79Rpx/HcHhyvO
         XHaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVN/XW2hpusOZ22p6QWrgstG06QpgzFL8RoTUo3owzMN3Z+FPQsIniHV2WsuJt+s2qJLYa/sty5Rimp@vger.kernel.org
X-Gm-Message-State: AOJu0YzqZ8h3y4M6MymBpHN/IYjds19aVje0U6tuRq1bdOC10cOIZt0J
	ArIkjqY9xlzNyaUkCi4qDrzWOXHBrNSkLBty075dWs/vEobqaG9z5xp6vZa6Kaa1AHk=
X-Gm-Gg: ASbGnctOjkPn2XJ8dL60B9bJ3eiiZRwG16XAKKwIsiFxNIU7j0citISkhGlGVsLAPBf
	fdbWkrQJgdlM07HuTCodyZGHHCHQNvTUxPlJXuTgmsoFietqvTkfvvreeMVMFkzrV95DbCs97pY
	+6qDGgVbtW554pOpTjfIHinaGrruKcY0rLPpXalKdQJ1zny2xbMPJp8SYlcT1mjXNQZR81+DMKT
	xGkdYyd4xyMclF6xIE8a6AdRs+vnnsfNwPJ/s7y1ZUncF6qHfIZ7NKtv5haROfHHq6sX6Sw0w7F
	XiqPq1u50cqbt00VGuovT8l/ejOqC7UVcI2UrW++hCJmCqBQ4aeTO+St2r+5t940pYqQJrNca+a
	+qTk+ajUAAuH/pjHX8KnJj5EDtls67KLAf3+Z3nL2Jd4+QNxg6pfspeDOdqZ9D5oIi8RpFkcMkZ
	NRqygqMyJFTMAxiDM3tOXgmo+R3TI=
X-Google-Smtp-Source: AGHT+IGBcdgM0967gN/kR0xVBFnZIJCLjXA3T7puvo+DFTCpYVp/IZYsxwyj6U2svvRV5RCZd8q8fw==
X-Received: by 2002:a17:906:641:b0:b65:c8b8:144f with SMTP id a640c23a62f3a-b65c8b81515mr175092966b.6.1760808008829;
        Sat, 18 Oct 2025 10:20:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e7da2bc7sm280666466b.16.2025.10.18.10.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 10:20:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: [PATCH v1 0/3] soc: samsung: add chipid and pmu support for
 exynos8890
Message-Id: <176080800766.47136.15583076071412742188.b4-ty@linaro.org>
Date: Sat, 18 Oct 2025 19:20:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Sun, 14 Sep 2025 14:29:39 +0300, Ivaylo Ivanov wrote:
> Hey folks,
> 
> This patchset documents the pmu and chipid and adds support for chipid on
> exynos8890.
> 
> Best regards,
> Ivaylo
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: soc: samsung: exynos-pmu: add exynos8890 compatible
      https://git.kernel.org/krzk/linux/c/a1d5955b288988596f1dc0f953f239e968a14c10
[2/3] dt-bindings: hwinfo: samsung,exynos-chipid: add exynos8890-chipid compatible
      https://git.kernel.org/krzk/linux/c/7319872fe0d4a623e86a0f2747b11d4f52b5a0e4
[3/3] soc: samsung: exynos-chipid: add exynos8890 SoC support
      https://git.kernel.org/krzk/linux/c/aaf9a2f487ad88298d94d32954f8ab9e8ae008d5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


