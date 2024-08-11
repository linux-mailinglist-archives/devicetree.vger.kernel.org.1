Return-Path: <devicetree+bounces-92691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D720D94E12A
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 14:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 779561F21CC9
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 12:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC4C155888;
	Sun, 11 Aug 2024 12:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gfNE+N/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66064D8BF
	for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 12:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723379598; cv=none; b=KrJ6w63Tw8H3nSBp12Q3Xgb4ey3XTJHxqE5JopC4Hl6G/KBFUfM/vtWYgrTcJ6E+HY7xA/b7c7+2Xwn7Y7Y/b8zy8GAlaP5b6cehnDo9XtvdVw54msW+iS4V5XvtciRlaqfVYJ514SK/pthauWLsRGfJB8lgICAuUBNNTKPQqbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723379598; c=relaxed/simple;
	bh=KvQ1j2JJhKF96Zmkv08TrmO02CogVrsd0R9+cWW63rI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tawfD4UUiTm9/XQaraQ7BA0ls52zUiQ0xNTjZJatrTT7qXDAMIvkKjpueBfSUSV1hdOP1SGXScgk4vShAyFCPcMVrgXsjxb7e68B08ttB04WnS7ZwP44cIP8GxZ0OyeT5bd/WDlWifo4aHEXTQVJlOH/9Dj7BHkuS0txiXSRDQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gfNE+N/p; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42122ac2f38so19802705e9.1
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 05:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723379595; x=1723984395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KNtzmsLAUjHUFGt4yFs0GHGAPibkEjTPl3+crio9j5w=;
        b=gfNE+N/pSKcZKawhhdtkcyydDQAKI+Is3tDnSSCGso6ONqYs6AIfSxNoDOC2XOERGL
         AGefp5odg+T2VYu8xpRjg8n61HaZd1LSsRTZEJGEK2yCxVhqCJP7zkz/njZF9eygN8Rm
         YSYkxcI9AboGXLKQJo+IPEJElrXB46PcE8DmgXDPFa/BLomtmqAEahbwur5ZmVDOQH29
         Pn/n1GYmjmCsxLnLKrImDjAOov6wHS+yGYjNAErHG0tBqTU/xvHH+eg8Jq1aj+FmD5GS
         mjUQJkxrO80vf75Sjy4lpVIPfVl7xvZ7ckwFFdPx+ImiCtx4hPjE8DYN5qRCaQvhGAiG
         MYyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723379595; x=1723984395;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KNtzmsLAUjHUFGt4yFs0GHGAPibkEjTPl3+crio9j5w=;
        b=D5q81RtWvXqC9jfT+TOJ+oi5WMsIWsjk+Z6w4nKpAx+ARnXiflOIu2v9/wBIUZyTvB
         taYQyYIpld2Vcj9H7Pcq5Vg3VKaTs2D72LMPpfWpJWVjlFHU4DdojAqilrWzCrqWFz+F
         u8SJ5mEYBG90gCfY4W61NmMvtOGKzhirMC1y295E1nDN998EG+07jWN3zVgyX5ZCAHWD
         iFluSFlBlCwCw0CIf50/9Lgj5m9xD5q6KH3snTsIDQ3dxGmgMCn/QzuAodR+g7aJDbCt
         p/TI/hKqQHASaf9F8Kmenqzs75UJp+YX5r+UiyUm/hLWTmLSK0M+AKfiFNYFxeSoa7cS
         N3Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUNwLhLkpoppjmHcjG8uRSCNqi2q6faSsO6aXI+KpjoohvOOyI9WJ8Zk2MXJ10oOsAHK/tZPJs1q3VF/dPBVCE38ELSvjKPxDGb7g==
X-Gm-Message-State: AOJu0YwkrXRsEKZdRHmmLVP8b1s1gbooNh7PESNNYQ2YHsDLzGYJrXQp
	0EGPI6tmxrxkZQVoK4shwnaWIUAhBjPdEATQCZxKopWvJhxDpvsznYnzRaOeUCM=
X-Google-Smtp-Source: AGHT+IHeSH545tLAiSGZ+Kn/6/EO8IxUAAyxi+TpJ3ZYcwH3qDLKt0hu9wEbSGGrBxFm7gQLt+Hfpw==
X-Received: by 2002:a05:600c:5122:b0:426:5cc7:82f with SMTP id 5b1f17b1804b1-429c3b0179cmr57662965e9.13.1723379594927;
        Sun, 11 Aug 2024 05:33:14 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4290c79f345sm148055605e9.39.2024.08.11.05.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 05:33:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chanho Park <chanho61.park@samsung.com>, 
 Tomasz Figa <tomasz.figa@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Kwanghoon Son <k.son@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240809-clk_dpum-v3-3-359decc30fe2@samsung.com>
References: <20240809-clk_dpum-v3-0-359decc30fe2@samsung.com>
 <CGME20240809115500epcas1p458405a51caf1af8e9d4e2f7130b82725@epcas1p4.samsung.com>
 <20240809-clk_dpum-v3-3-359decc30fe2@samsung.com>
Subject: Re: (subset) [PATCH v3 3/3] clk: samsung: exynosautov9: add dpum
 clock support
Message-Id: <172337959331.7186.15471838691665159109.b4-ty@linaro.org>
Date: Sun, 11 Aug 2024 14:33:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Fri, 09 Aug 2024 20:54:14 +0900, Kwanghoon Son wrote:
> Add dpum clock for exynosautov9.
> 
> 

Applied, thanks!

[3/3] clk: samsung: exynosautov9: add dpum clock support
      https://git.kernel.org/krzk/linux/c/ae07389413d41995a027aa5fb99938cd9201fb40

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


