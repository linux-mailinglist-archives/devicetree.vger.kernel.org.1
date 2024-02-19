Return-Path: <devicetree+bounces-43278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8A5859DAF
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:00:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95A0EB236B9
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5C620DFC;
	Mon, 19 Feb 2024 07:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ThE5gfU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0451C20DE2
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 07:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708329039; cv=none; b=fCHIQzH1pjsJ1gd+2OlGU/DuWsP5r86FVjxUuVGB0eZMIJNkRihkXyY2z8QzcG7ere4FF7j/nfUVBBtPQ4Edrv60JiIkZfQ7RbAtiJgfjnhW3u/vhRt3PoQreSv6ZcvgOpSAyDiZh7+nKD65cY/a7A+3JUGPygkCWbcZ03WPgY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708329039; c=relaxed/simple;
	bh=XYK3Z9xoGMtcf0C5iGt1D1Oqbnjpo2Cc67mUekbFkFk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FYNTD2S9YpmxJSdOn4sOGargEA+RX4zUIsMkgCdlKdj92pLfTNaBhegix7LATg87ZyVfqglZjDOhlj/iZWRlPx0VkKl9sSgvrHcBPFa9T3EDdRV0vFMrAnhvXRqQPxTHLOpqO3Cwyd/UadjYB04FgM47Rd8YRQUn+yX0PsymrB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ThE5gfU6; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41265d2f7acso4653295e9.1
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 23:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708329034; x=1708933834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5f3tdyEIwEW48zRkpDDy4bMS+MsHmiVrbPEL6SbhvsY=;
        b=ThE5gfU6lMMBevqY5buUgBs/kFGosxQGZq8Ly5nlM0Na26Zom/UcbCSTO0El3WSujK
         neG0gyGzbqaFKOGc22XGxdyLVXb/W2Hs5lHDNpEvr3ba0PEZmfX1afSO0GvGFiHAMcYL
         EB6+JuICcozTXd5nBXhIcMuTl/Np29RawKvB5K4cP7KWQskWo+omQ6o3M2WNP3PGirUy
         FceFDOMMgX+FHIwiiYW0N0FQiznOc6MsRa3HGQmKRWXwLIAAVygZ962CId0eZxmnAh1v
         2BL1aYGv1GWsp2E2tIwJQoqm5DfyBO+Fi0b05ZBO6vJULy4JuR1VVIXrN2xVf8OGJw1M
         yl7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708329034; x=1708933834;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5f3tdyEIwEW48zRkpDDy4bMS+MsHmiVrbPEL6SbhvsY=;
        b=sq7oiDZLsI7Zi+nH0LunAki1S+YQxR2i0F2cJ507mXEq3Y5epgBcwniML/maqPc2wc
         OzshEcCRWBiMe7w2DoML4yXUZaKHfkGmlzILpni/j6pm2BRy1vh4p4XWBZxI9CYwgSpX
         Kgn0K3NiOKPev2bDq4TFjlEozgbT0QzK3z8nvx7Ykw87A5jqJjO1SXUEVFqpuAP+90m6
         GFS89Va6uWUstgy0thG/3R3AMiSWHi4SUyDVdVXVqaVyIuMhqqN5WOB6npsjfuBo+4rW
         drEOloFUlCnZ/wpwdrGxUCi/dfXjxhgY8Je4c9JuE480QYJ7LoHKQNX+el0+XyQryN5F
         +ZOw==
X-Forwarded-Encrypted: i=1; AJvYcCXW58NRN8iZX9FJeYyWrbDq4kcV/q6nPD/mX/jxUXjPjDHd8LM23fIgP96bxkH5jzG08L8q77PWSmBcvHevOyeeTjQwHjaRRmjJzQ==
X-Gm-Message-State: AOJu0YzzrnUqd8fqUpKhLadYGYHP/dSwnHLI5gOX+9JJwziJ/l96qDXw
	keOf+3/0sAT+7+gT8pzwGzDVhAs41EK3qTzbuRrNQ69ejGT3wuSgsD7FL5DimMs=
X-Google-Smtp-Source: AGHT+IGZOVx2qBIyU9vquadjGw6B2HZLR53t2tGSxJZZrcQQTEg3oV0tVaAyPwkw/lyC4dItgO0ITA==
X-Received: by 2002:a05:600c:a385:b0:40e:c06a:3ed5 with SMTP id hn5-20020a05600ca38500b0040ec06a3ed5mr10672872wmb.2.1708329034420;
        Sun, 18 Feb 2024 23:50:34 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id p18-20020a7bcc92000000b00411a0477755sm10414024wma.9.2024.02.18.23.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 23:50:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Artur Weber <aweber.kernel@gmail.com>
Cc: Henrik Grimler <henrik@grimler.se>, 
 =?utf-8?q?Martin_J=C3=BCcker?= <martin.juecker@gmail.com>, 
 Jack Knightly <J__A__K@hotmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, replicant@osuosl.org
In-Reply-To: <20240217-exynos4-memsize-fix-v1-1-7858e9c5f844@gmail.com>
References: <20240217-exynos4-memsize-fix-v1-1-7858e9c5f844@gmail.com>
Subject: Re: [PATCH] ARM: dts: exynos4412-*: decrease memory to account for
 unusable region
Message-Id: <170832903316.9472.8907322109403267852.b4-ty@linaro.org>
Date: Mon, 19 Feb 2024 08:50:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 17 Feb 2024 19:22:40 +0100, Artur Weber wrote:
> The last 4 MiB of RAM on those devices is likely used by trustzone
> firmware, and is unusable under Linux. Change the device tree memory
> node accordingly.
> 
> The proprietary bootloader (S-BOOT) passes these memory ranges through
> ATAG_MEM; this change allows us to have the correct memory ranges
> without relying on ATAG_MEM.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: exynos4412-*: decrease memory to account for unusable region
      https://git.kernel.org/krzk/linux/c/5fb1252944fc3bba4a1026adaa9d150cfe8a3e16

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


