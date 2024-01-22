Return-Path: <devicetree+bounces-33707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3356583618D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65BF61C26168
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489B94CE1A;
	Mon, 22 Jan 2024 11:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M0peCITf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A374437F
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922124; cv=none; b=fiDqJrt8JNQdIyBr2kGylxyswrg9DZZbwGGdB4+cLx8a8rGLeo/4aPjuF5FuMDsmoRhi1OoSbycjTmpQBB6WaG6/uzF6j9Fj/N1A0BpLICO2W1bFMEtCyOudChtFB+ghZrwLLrGVOpabGz0i+kBqbQEiwi24RyAMqmolAYVYjjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922124; c=relaxed/simple;
	bh=Dmde5q7XZUh9KNzJnFoNUbzLIGS1cf5JiJdzl5IFMPs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EduWAbnR17K5PanT0US5lzxXwk+QNQTqamDQI8D4qHXMQoQEmUpEH20ggRI3v+KuwAIOi6YRX/LUH26UriP4SZFPqTzR2RtJkaCZIe3kQ/KMR0XHlUPCHy9hxp/oCbHJZSocoyJbySQQmW7FlCuwjXb9iDpqMxOlLbQN8UArBi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M0peCITf; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-55a354a65afso2613221a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922121; x=1706526921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zg7YV1oJ9nd3qlbKydmMjWMAVEoqYGCr7Z0hdISmKSI=;
        b=M0peCITfIcrYQwM74Fmn8h9LRo+yUH889aHoCeBroCM/KBoaUffLpbbWVRAD3CWHYt
         TEjHJEUUaDaUUwoP9/rGJ3/4ecOsYJ1SpME5PETP4b4DCNzkSwKhyKvYGKEO6HvlhQXb
         Ah/6wzLaECJjfNF29TZlHyk87ROYPZqie6xDqbCUAJbjzzlOdb/fJWguN5Lw5lx3OePF
         3bkefdwm9S0tBsFIp4msCP05n/i4J5VQhyzT418Hdj1OIioSVlymuEf7eSB9hcoGRPHG
         NRUcJEdW86Itfos8ww7Y9g4SK+Oo2ZnGExHl4q01CsKM9ZR/h+f8hEllkk5tKizAFWsk
         4ZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922121; x=1706526921;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zg7YV1oJ9nd3qlbKydmMjWMAVEoqYGCr7Z0hdISmKSI=;
        b=sNFZXTYGZOSpR3O3Ik1RmCxNM08x2g4lL0LMjpM3mIvBqZuatsF/hFjrzRqUqseXvx
         MYQM3VwndPGnZM8dT9uMh+anPw7irwIXEqNkPqm2Qa8EbNlJAQRfNSbTgGXM5rmFcfqI
         kMjfZC0DJ3XooZ2b6E2c2pfPsUOb07nZwJtkqmu1aIWKrjUgy0/QBMA5srOpO3sVEDUe
         W3eEn5/wSNmJv5mQPLYIub9jVyhFzxK+6KPKvUPJ8xq+U1qXf++HtX2NCgSzdsrMo/Gv
         4lXY8xr7OGYcZwfjIvuJxd1bKChXqKa/YXZYpm+NiuqUCXQwq2SWYRNLXUkf0/hfiNpf
         ouAA==
X-Gm-Message-State: AOJu0YznBhUR3A+Bh8Uo7RSLWP7mu62CckTngzrnsO+PCAj8yvDvfH8f
	4g8Z9dzFnhDfLYwgdjML1YUxaJw8ayJmRKskqEjMXC43QMSDmmc2E0wlZmlCDVo=
X-Google-Smtp-Source: AGHT+IGmJ7FKjeRzLEoeVrgpcxS65M0L80wyghnek3AvH10ftzGFw9fDoniUHPz0dlZhyVNd68+UKQ==
X-Received: by 2002:a05:6402:1019:b0:559:d17f:bceb with SMTP id c25-20020a056402101900b00559d17fbcebmr2194662edu.26.1705922121176;
        Mon, 22 Jan 2024 03:15:21 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:20 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: andi.shyti@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com, 
 tomasz.figa@gmail.com, cw00.choi@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
 andre.draszik@linaro.org, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20240119111132.1290455-5-tudor.ambarus@linaro.org>
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
 <20240119111132.1290455-5-tudor.ambarus@linaro.org>
Subject: Re: (subset) [PATCH v4 4/8] arm64: dts: exynos: gs101: remove
 reg-io-width from serial
Message-Id: <170592211967.45273.789741758251278811.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Fri, 19 Jan 2024 11:11:28 +0000, Tudor Ambarus wrote:
> Remove the reg-io-width property in order to comply with the bindings.
> 
> The entire bus (PERIC) on which the GS101 serial resides only allows
> 32-bit register accesses. The reg-io-width dt property is disallowed
> for the "google,gs101-uart" compatible and instead the iotype is
> inferred from the compatible.
> 
> [...]

Applied, thanks!

[4/8] arm64: dts: exynos: gs101: remove reg-io-width from serial
      https://git.kernel.org/krzk/linux/c/daff9d192892ea583284eb116a07e8e0086f0e76

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


