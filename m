Return-Path: <devicetree+bounces-39592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6633E84DB0B
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 09:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9455B2229F
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 08:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89EE6A350;
	Thu,  8 Feb 2024 08:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v++qPGnD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1526A328
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 08:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707379723; cv=none; b=nkSYzErY6wa1fC25rOtmEFmyA6RpCQGf+QCN0Rg5Xrd73lBAyMuhLP1Xqtef/lK2xMDlEjnqbKCpj8OElanDyhBX1Q2H1ZPrvzpcOYFgeJdSzNk6/yglcZWHeiqbtOs6Vk6QBKyWjfx9zw9WZ6xdTEKKVFFANchUmPjSyS6noDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707379723; c=relaxed/simple;
	bh=SQSUf0p3RCkd77wL2Rm4GS4eENLjJ6swxjmhnXZm5Is=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mRiwC+bLSVyUH5W3GgwesAzTC0Ucx/wpkME14XzSg/Apv6hAuqNAy4jKxZGNW+20dA8GM3vAXuy3xeoek9FXNdiPxKHiCoGQ4GG40Mjfpx4YIlZy5xbJVIZFaPgQfslpobBTfgkCGJFoTDmIG4Rl8ywEw06Q7KnFi1RZ96PRQSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v++qPGnD; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33b436dbdcfso1134736f8f.0
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 00:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707379720; x=1707984520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vC+Srv2mTEr3nMtduL2F+Bb+D0NjMjAeHr6neA/G6qc=;
        b=v++qPGnDXFcTOKxu9d1AnBW8WAErEMbr/EChwlv/Rlx6gU9wChPzr4ogtxfdCZBJPg
         dUt5+IDOQIefpuWde8HTIXWgEkc91SRd5ifpZ0PuVWj3N38qTHtMfGsGnyE6oVXfRJ39
         elOEuEPBf+P5OqKEboo1IVHQchRYeaAjbxN1C3Ri7bNQiZ9hRWX9jyPOKIeypViuxfYG
         ygjw4FLsbDZNuPKSa6cRF8ywl9zdFza+ujgyjezX2rqX9huoLR/PoABHRlXF1EYDtEaI
         F0ip/3n7fhVagm3Fm0LwZC42qTfLun2cJZYpSIU1f+vvYq96ZqCQAT9BrecTQJcROYa+
         NXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707379720; x=1707984520;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vC+Srv2mTEr3nMtduL2F+Bb+D0NjMjAeHr6neA/G6qc=;
        b=WBqL8Hvddrc5FTdhBonfDprXoiJDG1ZMRSAymrQqtQmX70TPtIoq1HSMdxEGGP+uWB
         ITTzaMRsE79utQ4zDeNTb4klRFmBaQ6wBP3CZ8Y/Qz2c3gUgQepQK4tXrFDK+W84q+EC
         eNSsssMBybdq41q675MUWlEwUKaJDxfz+plpS6FBQcOrmZVPUgZ2633PlPtJwt7FEvQG
         /2p86L2OyYkKz5+trsobT4q5/TYo4mv4Oy1iXlXqxpz9S4up9c5auLeGoq70ipc5NFv0
         bov2YIwI37G33C2xeP9he09yHRlPqPtGKhapgEP1AxHr/mYMIg59K8l/JpxD/d3Vs+tg
         T6MQ==
X-Gm-Message-State: AOJu0Yw2JQww3tvp8xlA+SVG3TuJ/6wesMmIdgVYbOliB9FL5g0E/obw
	gOiCMcHYlOThpVYuCYYFCxRe2bTCZdUhJD64tTurC2GyEk5iasBzOR9ieP7SkSA=
X-Google-Smtp-Source: AGHT+IHa/Jk1CUhb8ez4QL2PTU+VoTz/OmeeYpFp4Pq2vqTyY4hOaoE5kKYFKo2dfcZDPIn7aZRPLg==
X-Received: by 2002:a05:6000:4020:b0:33b:495a:3a9b with SMTP id cp32-20020a056000402000b0033b495a3a9bmr6188243wrb.2.1707379720286;
        Thu, 08 Feb 2024 00:08:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCViqJImkuAju7dVSoZ9CvxVikmUqZYD19Vqe3meA0LVAGfpoYqDhLubRg1PSvMyP8tixczq05Ni3qhF0Mgct8M9gsEwBvKURZjskseEqYSM6wgBnhtBfLJ4Dntxk32XPWlnyn2bq0la9Bv3Y/XavmLO1pRavWRjN3whUUb5GlAj3iXi6xq8s9rNzvPwpOIGiPBDiEsTAHcUCqu6uW0PyGGNI5UvjKEkm+i7xksxb0JaJVfnbvds2goldE234Cbsk+gxe2W/+gJ0b8haG3zvLlfz3dyVc8QoVV2cuyHPrgrFim4BPOd90x0ZgNz+/MF3tzVnl6p7aGjdJgyaC6KE+4tRQsXRWuGGeoCDtlV02rm5JfXDkafcHYNgfOXxaNz6dcFgKhBsCe2Aiym0tVQycrLoWq7ORS8neEhvItAO/Mt2t2UVkUsxxMk7eqHIYoqVw8fkAoNTWw+P7D3KFmcv5GtwPS++LQAdJqJ1b9Tk2UYFwUoZDUQOTNdleYzEAdssR0M4rMTPkvHEAyTe32SP/EdLZ8ClCK/FbKJk+JP2YZf/0x6NOsSwrBzECi8H9bTIwzxXtSdwIQiCkgrNgKPzN0Y6WO5IL8PL/7AkKLZXHug+hjy2/LSLlUPn9yF1Ls/aT5ljML1iHB6WabSMqkxoCVjKQ/oLIIfo6vaAnv06w0dLX7WfkQiCxw==
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id m3-20020a056000024300b0033b2799815csm3065421wrz.86.2024.02.08.00.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 00:08:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, willmcvicker@google.com, 
 semen.protsenko@linaro.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com, 
 tomasz.figa@gmail.com, cw00.choi@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20240201161258.1013664-8-andre.draszik@linaro.org>
References: <20240201161258.1013664-1-andre.draszik@linaro.org>
 <20240201161258.1013664-8-andre.draszik@linaro.org>
Subject: Re: (subset) [PATCH v3 7/7] arm64: dts: exynos: gs101: enable i2c
 bus 12 on gs101-oriole
Message-Id: <170737971829.52344.1899996118843728800.b4-ty@linaro.org>
Date: Thu, 08 Feb 2024 09:08:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.4


On Thu, 01 Feb 2024 16:11:43 +0000, André Draszik wrote:
> This bus has three USB-related devices attached to it:
>     0x25: Maxim 77759 Type-C port controller
>     0x35: Maxim 20339EWB Surge protection IC
>     0x36: Maxim 77759 Fuel gauge
>     0x57: NXP PCA9468 Battery charger
>     0x66: Maxim 77759 PMIC
>     0x69: Maxim 77759 Charger
> where the Maxim 77759 has multiple i2c slave addresses.
> 
> [...]

Applied, thanks!

[7/7] arm64: dts: exynos: gs101: enable i2c bus 12 on gs101-oriole
      https://git.kernel.org/krzk/linux/c/f9555ac036e253ca99a4d6d55e7e9402b77df77d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


