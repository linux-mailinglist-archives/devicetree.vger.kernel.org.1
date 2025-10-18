Return-Path: <devicetree+bounces-228408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BADFCBED395
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 18:11:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E647189F8D8
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 16:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B58AC23ABA7;
	Sat, 18 Oct 2025 16:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CAg0xQrd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E240323BCEE
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 16:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760803904; cv=none; b=JP5H4gAFMhnq6EaKneXbpHn4bCtLhLugTImhrDvIv4S9EMEfEVpR3852HFyicaVj4rcrS5Hvr4jzyGZcXBqL9AfKy2t1W7c8gzO3IH4nQgMYg7YTBbkG68u38fGILvwQxRGKYOH9E/S6p8L8ZjoN6ymODZfgzEcKyCF17Iz9lHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760803904; c=relaxed/simple;
	bh=S5ZFwEPS/R5zgkEYM73LG0yyzWmgt3D08dI72xwUteg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gqZkh7O2SAbi8d7bnuthuw9nuq8vywnl5nLI06ALGJFbxwL9iM2NGTCkq7/N2H73aNO9hZdmFyrVkQaeibsCIvH5n698fKkjNzdpJgaAKWhY2m4Drqxyg0aJ7XyixjhjHYwxRk0GbFVCT1d3dOXx9SQF+u3E6DatTBpKNIuPLpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CAg0xQrd; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-891e483258dso13114085a.1
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 09:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760803901; x=1761408701; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gB1PeMOLXs1r3u9Bm3EJ5/RnLcafi4Uhbd6zm8SAQT4=;
        b=CAg0xQrdKemEWhrVMP1IGX0B0n5R+0W8Lr5u/SL5Vr9S6ItNAG60zqQ8faN/dx6E6s
         Z0U/dES0GX42B4wNpdUX7y/sKIz3ZGPUg2yNFJH+CKP4oUsqfRCsZYCs5MGDwvHrlWkN
         JZJUg2BCNYyx+XOzs71L0ywxiQ1hAPEnwzvUMK9Ezq0yDTAL9bnGZUpdWkGsFyQVp9ty
         EpkM3xA0XGk8lrsLY64qVabnSBnUIPZ93ZEkbEy0s8cHJGoXOp42XGdKa7NmPA2aow2I
         rYNKXuSAm71MSumrKdRm/NwV+gBCSpB10lscAgxxfF1Jpxjp34QZMOxgvp6+PN+5koKV
         xgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760803901; x=1761408701;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gB1PeMOLXs1r3u9Bm3EJ5/RnLcafi4Uhbd6zm8SAQT4=;
        b=KNd64J4kHuf18WkrBw1HhRKK8McmYzjnAQo24G3WPgp/6XY3nO/fw02+8maqV3EiCw
         7G88RRJaDdPDPlzem9Bn9XQDhu7RsCbtQ1wcxSNHOfn0vfnWnacDxY+UKrXmHt9I8ivQ
         c9v0n1INQMh07cDna+YAJvk3MpsjyruJkg9peJeGLFplrOQwu5KduukgcoNaOKGY3RUy
         9BKawrAjWXbgCYzuWRG2X//m1KDhVZST6QVqxP4keKHx20JpMEAIHxpAMUKcifncX2ku
         VUQzBWIeIIHCn/nuhXR9oi2UyNb7W3cYPzGvaNOjfjGNRBhIC1SXJsMuF23AMRHa+f0l
         17pw==
X-Forwarded-Encrypted: i=1; AJvYcCUZJM+NL3SuCKQmvHFn1EaZFQQEXr2tr96N8+ROnW2B7gHHc7RgHEu5aZLPNzCfYQl1BDw8WQYIjprX@vger.kernel.org
X-Gm-Message-State: AOJu0YxepgUDe0lurYRe9+QLaL3jKiiOpUk44V83N/o2LkQpnhcdwdTp
	dKd0wqgioujaCDBQuYfjRWFE2nwLX3xyoPCZYw/z1A9QMmSrTiDcOb5+6+dJX/WMS3U=
X-Gm-Gg: ASbGncvgE8de7K6oM+5z1YdrFCvHK+I0qgWX6b1DZTxpgUmCJeYrE/ENS9k3xAO07W3
	id4fPxgByHQRCzZooXBtYthc4ZPr05P+aw5N+8COWr8rROYTNNF39XXHEdKQvwHEXZbFdlqooWi
	K2D9CXHIkRo8scXt/drKSX1jMG2qDK99s89jZOFm/txy6+o7PaVaAbLSb9T7Gls3KRPO8xhXDUh
	cf0uyH4rQ7pFZCiTy53MPqjBznr05M4iY3Fja4414/YOE+8GRkvumPpIykx8aQbk+t8LNzOfv5Y
	52trE3zAqW254Jx2CLJtqPbdItjgTBFWKgg5MYKLvQNEMyAbFtOk7eXsmojbdnqa5dvA8Jr8sRA
	r1TEb1RP2B2hV7c/kYc9BKf9bB+kAoB9Yldrwc0wWQw0JcC+FTSCKFXGmx7d/rLE354u+b8doCk
	rr3xkcfMvA4FSArB/W3lTag7ZSmBZkYbFyGNkjCw==
X-Google-Smtp-Source: AGHT+IGudErotX87fbHUUlOW8PhZW3gWYwQkQZjuqEBocyqBpJK6gFfGLxWRlsagEj71JpNhWFJU5g==
X-Received: by 2002:a05:620a:6:b0:891:c59a:a9c0 with SMTP id af79cd13be357-891c59aac34mr254639885a.5.1760803901491;
        Sat, 18 Oct 2025 09:11:41 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-891cefba919sm189319285a.32.2025.10.18.09.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 09:11:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251010-s2mpg10-clk-v1-1-dafb5d179395@linaro.org>
References: <20251010-s2mpg10-clk-v1-1-dafb5d179395@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: gs101-pixel-common: add node for
 s2mpg10 / clock
Message-Id: <176080389770.37784.9004691258148372039.b4-ty@linaro.org>
Date: Sat, 18 Oct 2025 18:11:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3


On Fri, 10 Oct 2025 16:56:26 +0100, André Draszik wrote:
> On Pixel 6 (and Pro), a Samsung S2MPG10 is used as main PMIC, which
> contains the following functional blocks:
>     * common / speedy interface
>     * regulators
>     * 3 clock outputs
>     * RTC
>     * power meters
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: gs101-pixel-common: add node for s2mpg10 / clock
      https://git.kernel.org/krzk/linux/c/f409bd20f0a94ca4eece7eb919b800e013abc043

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


