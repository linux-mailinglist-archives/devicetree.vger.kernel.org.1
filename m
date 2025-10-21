Return-Path: <devicetree+bounces-229498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF1DBF83F0
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 21:27:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 922CC355ADB
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 19:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28BAE351FD2;
	Tue, 21 Oct 2025 19:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d+4Z/sSv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B298351FBB
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 19:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761074833; cv=none; b=lirfT8D2nm2l2hLPSHSByk5VO9oXIdDusCtmUXvqZaNnFG9oBfHJLtMfM3Br1j0RF1y9nWI/VCmImvTtVOKqD0WTO8hrvZCO3q1stLtjbzInA+k0X3H8OyTqlP3aQpjvpYrOqyaB3WxF5PY9AEWQom2h9My9oAyRtexnjWvxEkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761074833; c=relaxed/simple;
	bh=DeJqDi9szQA8p7WmTtRsNFt70PHzVsGKe9eHiJ9l310=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nN8dnCNDjjkfFp9fJE2O+G9fYvaRR4WaXSyXxdATJpoVeOVDnVZ2bMlnQrFCzlMxBCZpgmYHiIzClgrA1QXNr5wTAmMRyG28uXEmPXx4JfOdnTZG5D7NHJYiNAjzcHRSPXtQcc8cAxs7M4mX97cto7xFmtc6SHwHDJVsUOPbfd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d+4Z/sSv; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-427087ee59cso636918f8f.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761074828; x=1761679628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+SCUkszQLT3jhOeJ8xWYrP1u+Oz6oVJ2BJ9Vl0R1XPo=;
        b=d+4Z/sSv4UIy80HAt4Mvgmb6afc92SvGkb6sUSlw75O1hOa7k2EmLGgiZTLFgU2C5j
         r0cb6sbWMY3N/HEJAwioAoOQimpSmvnej61OXXBLm81+epzjdSY5HBSmAplS6xoZDW2f
         1siwtTKbdKyLURAJNkZqR0lBGiapvFhVx3gl9xCV6S1v7uN9sQaj1nfg77ytqq/jDspu
         eP44b+xaU0wIRSTq/sbkC4SEO8XAJBOqaKC/0fuRtNlAgqWohUz7ya3a+slp01JIeR5P
         cC7OvgRIPtB3Ni60lou8A9ohsvQoC4AqgVWFJ5cv1hAhUUtJX2p50Xq5bJci8/it02Ui
         a4TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761074828; x=1761679628;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+SCUkszQLT3jhOeJ8xWYrP1u+Oz6oVJ2BJ9Vl0R1XPo=;
        b=Khx6eeeGyDn7xUu81u55RBo1JJyAOFCimj/XEoN6499yLUFOem3cRA7LHMkbvu40hX
         s7ZQ+WJ9gAAtyqg3yzNF9sXpvN/cwEGkIeY1nnwehLVQOm7ExfIhRJwuE2crnvgwpM2Y
         nyMemfGcTrmN9l8pm01xt0aZsE9OgF4gtlztmnVRw6uCbZEinOhsE56Ay1dVD0oH/8ix
         Uztk/gG++X1g5fBGuaQrzTeiRIeVUZY3md4KNyIrrhYoV/1TK0x8RZkWOi92sy2CHaZI
         0/K4maJeCI3Ch35Y05QHvetHq/iCNCCKUpXDuZd1TTOTd7UNYNN8xNgruFqUA/+a7eAJ
         s6OA==
X-Forwarded-Encrypted: i=1; AJvYcCU2zhDiR0MBBOE1vnyC/OvXBEnSD9bU1qq9yZqk8rR91pHusvu/lgup+u1MimXGeEAwi5g3MmUvRbq1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn9XDAjOT8XuB17g45ao9oe8EfYLFXhm1LzycDu9Ak1l/pLwp+
	81Ti0L9Fw/UocSNhOysDWppBoKa5XC/7TEzLtXnSDzhVStqOwAU/7njSpxGIB4eVDtg=
X-Gm-Gg: ASbGnctnJSBYVpkryuenQdXu7i2CDPUAkUHCIB3GH8pBjNTMRCwQJBuWpE8Degr5JLx
	8coJ/V0o0gNj7m0PxQfL9wgwbi8j5V/iBLIoe18gkZhNIymKFHIZpcFm90TWdKWZQENM3z1fFck
	XRO6zdM7E6eePG/23thcxrzVrCkXhT0XupFNq/OKQwW8oeFf2N0A43me+9pBwyzCyKsC4jKr/xa
	O+QIIS07Iy8IPY0eYO9d42/baeimj0ERjH/zmL3ukMHHzZnfTCnx2TYB6b+TqhcovMlpwjZEVZy
	CsCnyGNioG1Slq1GpZXTd48l5r1bkPAl+WHxSaMHa3vWuGrVGM2DVXL4eLLz9afosNcxyyloGuA
	ZB8+LMfG7KV5l6rv4WXXKtVHrVCsnjZq9onr7H3l6jFJzdPeM/G21yVqumjIGuHmRCCq4lKrc/L
	dee1RuI7Vq2KtF5Y8bFFg7fwKjt88dTPB7QolRLA==
X-Google-Smtp-Source: AGHT+IEyLv1lnWbFD6puUzU9WbOWyzqsLRxtSYF5/o3s87IaGKKi+zQdweoF9FjJ4w5n57/TykzA0Q==
X-Received: by 2002:a05:600c:458a:b0:471:1d8e:3c7c with SMTP id 5b1f17b1804b1-4749435b2b6mr19420285e9.4.1761074828560;
        Tue, 21 Oct 2025 12:27:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c42b48c9sm7839115e9.15.2025.10.21.12.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 12:27:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 kernel-team@android.com
In-Reply-To: <20251013-automatic-clocks-v1-3-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
 <20251013-automatic-clocks-v1-3-72851ee00300@linaro.org>
Subject: Re: (subset) [PATCH 3/9] arm64: dts: exynos: gs101: add
 sysreg_misc and sysreg_hsi0 nodes
Message-Id: <176107482703.33931.10968219434076858681.b4-ty@linaro.org>
Date: Tue, 21 Oct 2025 21:27:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Mon, 13 Oct 2025 21:51:32 +0100, Peter Griffin wrote:
> Add syscon DT node for the hsi0 and misc sysreg controllers. These will be
> referenced by their respective CMU nodes in future patchs.
> 
> 

Applied, thanks!

[3/9] arm64: dts: exynos: gs101: add sysreg_misc and sysreg_hsi0 nodes
      https://git.kernel.org/krzk/linux/c/08d9d0d9ae6f9f83bc1802a3f8ab2a4801ccd3e6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


