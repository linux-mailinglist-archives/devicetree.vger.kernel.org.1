Return-Path: <devicetree+bounces-187070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F121ADE8E5
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1160164A28
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 10:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAF2A285C8D;
	Wed, 18 Jun 2025 10:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AriadzGw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997A728507D
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750242334; cv=none; b=pmSSiu1KUzfYK12MGhaDIkVCRVwiDunyFzwQ+eY1tEx2KLtl6EvGtzanFYcCsSU57Xjxm81Msjpo1A0wpC3lWcgZfbYbvOznXodL/wlm9p9foerwjilmsBBkBWFzsuVfNTT2xvndWhGRsG146+GDdGF1EQB1M+5DiKb2oy/4R48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750242334; c=relaxed/simple;
	bh=WBj/VFHzpOBMITsYRlX2s8PzOuHxOLyagX79hheuk3Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ZIS4RDKRYqZ0hhnVXMor2ZfoTsZ9RDJ2qNXsEUQ+UhSPQxN7tDZCjLLFocOXuBLHHxBV2AjlDGu0pYkczy+Qp+Gda+VSTLgEskLjX5EHxqy3VvYTXSANYrXop/wOz1pxyYdhqMiIxoN9AozXNX3QnaOZMQCGLFzstcvKGzTvySk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AriadzGw; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a4e62619afso585370f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750242331; x=1750847131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aooWiy38peBjxv+9KQHPPSmI2vOz+cAS4Yak4J02roU=;
        b=AriadzGweMggYAAAVqJWvi23A76s7KtF8a3Oj2lZmFYRlHpy5aA1ntLmWgUu8qjLpb
         KSclMBpgpM37NpkUcfmd29VqIUFgNn1KjEiXPaXhbq6BCFpFFUXj5Hl1gQLlJ7h9ixPx
         gca1Q252jOK3IsDZqeKAXMiVFsm8paIFBsu8XjJKN35lgdBe2s6m8AKN1Yv+j6PJtp5o
         lDTF3jYzD5wKXzK9hyTrAIamA0frzYfLnQApqIEqQaHr4OfOUnoxdd1DAi+Ink9dVta8
         EED1m4cOs/trbEnAyr/Fyno9VLkSYgex8LGvGjzlumbIjMTJ3clmTOfLuVC+F5cTYy2e
         puog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750242331; x=1750847131;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aooWiy38peBjxv+9KQHPPSmI2vOz+cAS4Yak4J02roU=;
        b=Bt8552lwLmFHT6GreP/VnxofrDD9qwn31zDKb1RnFddSAwqTV6VQj5iiikN6rO/kcL
         8+8whKE8QFSnaiSnEwlfNWyvGGhS6B7PZU+hu4EFWbnZqiWlRBg1BrHPaw1mOnudMXNI
         a8qvHuD1N4T/2cHxAvWUnpo161gok0L30KT6eQjJc0jH1crlOFqVTRleflOZz/gTfKeD
         4kI0vvBgO90VysL4A5UpQRG1JRf4xGErlg3iN54K55imTksBGdbu5VXy8582NOGS7Kza
         Kv4Vd/iATrpxWagNv1LSi3FinZ9o7ypFwYQHp2Ofk0vIZ/iF6l5pXFNILHKeVf5s1ucS
         FfDw==
X-Gm-Message-State: AOJu0YxEQCemnwoODSJ361bx5jkh0bCzLTQ1YEr+3LKaKI8hL7IGhHFk
	TMxOrJ0NuLuMMocycZRzcgUJyspzy8EMl6mu3sovyfr5JzDtjZpC92J3jlIh1QBh5/0=
X-Gm-Gg: ASbGncshOq/EoRwwnKs8ifuHmy8K+KzVGlrK+h9FzTBMCp0tMt64j55y016UcE6/gX1
	Q2Z9T/32Dyk9MG4uDrgsU3l2eLOBO4OxKLyy7gKpYPKiIQXLmzovRffQ/dBE8orVe8MJn8xI5B1
	iMXAhRPbHmzeJRuKoYXZsWyUbZY3T7yJhUOLQDcOlbNQbpVFKvrwoUBZsgud1Ne9pFmBxeQN5Rc
	1AzopgylQJmOxMWBo5Y+pdFAHESzgc+O2/F8RuGqBf+u/P7KIcLE1pn0G820pDbZhILgtb3UZAX
	LammLTp6+jRGvC0MOKf+8HnM+bzsRFJ1nDgS2kXxr7dzMDEoPwcQgs2AO68k1T5rlgzrIwQ/wqN
	OReGf9wk=
X-Google-Smtp-Source: AGHT+IHJc2gsfkafUzYDEVgL2gH8eVceTDIyYVW64SCKXWQQR0AR9QQt8oTeByDjnRB/rhjrFb0byg==
X-Received: by 2002:a5d:584c:0:b0:3a4:def8:1465 with SMTP id ffacd0b85a97d-3a585f73c82mr2051598f8f.9.1750242330796;
        Wed, 18 Jun 2025 03:25:30 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e256630sm208260265e9.29.2025.06.18.03.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 03:25:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 alim.akhtar@samsung.com, Faraz Ata <faraz.ata@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 rosa.pila@samsung.com
In-Reply-To: <20250613062208.978641-1-faraz.ata@samsung.com>
References: <CGME20250613061230epcas5p12c0a029edba39133fc0be22cb0aa1e09@epcas5p1.samsung.com>
 <20250613062208.978641-1-faraz.ata@samsung.com>
Subject: Re: [PATCH v1] arm64: dts: exynos: Add DT node for all SPI ports
Message-Id: <175024232949.57697.16977719390655455377.b4-ty@linaro.org>
Date: Wed, 18 Jun 2025 12:25:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 13 Jun 2025 11:52:08 +0530, Faraz Ata wrote:
> Universal Serial Interface (USI) supports three serial protocol
> like uart, i2c and spi. ExynosAutov920 has 18 instances of USI.
> Add spi nodes for all the instances.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: Add DT node for all SPI ports
      https://git.kernel.org/krzk/linux/c/134442a04bb9a6981923cbb24f041b5f5690bda6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


