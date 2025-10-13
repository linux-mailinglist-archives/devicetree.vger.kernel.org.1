Return-Path: <devicetree+bounces-225797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6DBBD10CB
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C66373BDA00
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABA8220B7EE;
	Mon, 13 Oct 2025 01:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v0k1PdCc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07B1DED42
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317334; cv=none; b=SzXnYXZnU79NWST+gT2Bnwr5MO7QTqNNGiImA/WOkQRdhEwAfzlmkzQTa47REpmmOGbUj1wyn9gVVcHVAv9BjnoEjlsvdqlyxhW20qBOBfAQ7i6mv230mu++hWYE7+M06wUGLnl8qdCxpgY2Fwz3l6v3RpcEkwT0ATeoEKL2J3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317334; c=relaxed/simple;
	bh=hPO3fb9A5GUMjlwesrVBFk2doqpjzcMDbOWwmKe2wnI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eBnM8Mj5BnMLfnVdeO7x6IMlr/rw1sQJwfYAfY7f+PDMQ2nftDXJVjubpwDgO5S6dVteG6qMrYvs/k+jc20StvLo/wsknhwXp0kWHD6iNgo9q4pR3Ed/hWGoek1wsyqO7Is7vsQZveGh63lAhqswNin+rlhg0A2+uTaJZA2S8Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v0k1PdCc; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-27eda3a38ceso8684275ad.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317332; x=1760922132; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10a4vKq6IEmQUW56jJWKaFLXuKf0sl8IrALpzNZuGbU=;
        b=v0k1PdCcMHpIJAj+EkMYnEy7cH0xMYWMKeWr5Gu30AL0CUYnG6OzFlIgGi1v/C4so9
         kGNta/zreolQcmUr6TdorZWBctyCclXRKnzW5y5RrGfgVxWsjuJFnj00jRbKTlABScTA
         DxZchP+CiwdCzYdijY5NJL7t7De8anxvxJSiYsPBLOZeCfrtwzqa2hc9dHep663OBJXU
         EO+7TCTBOj9FUcMHPnm1uN2QZV/X2InUp1+vbL8NsDy7DK8Y8C/jfXYVmCtXost56Neu
         GodZ4oRlNPkKmXa5CtA4uIdeJILbfnTHihnaYdFdRdNLfxjVvk3SZRATSbsA+iH6Bycc
         Gplg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317332; x=1760922132;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10a4vKq6IEmQUW56jJWKaFLXuKf0sl8IrALpzNZuGbU=;
        b=dzssoNgz4rX52G74XSEfQe5QDTP37bJ3sqbwYeJ8k2lTxF86hDUzIPeh6kPnFyvnj6
         qkYdlJEGlUazwkBP43EPZNAd1WeKlZt+IX/ZxQNTtuyGMc7D5eceCmPv5iA76j/hwVeL
         bC5LL43uWbcspReQ7AlCVoDHnwdrizaHgmCJADz+1sYB+mfQw2EZVZS1soJoAy7I5quR
         +zfzLMW3FclvIfn8ZvnN5gB2mDty+a/mpgH6RzkyBpg8oJ2nVv2BaKvvPfGEKdDx3oOm
         LTG4iuAzswJWAomUHJMtefmRFV2tmsZOM9ACulZ+g0Uy+vrBle6O3fl6JiKovDF5DBT6
         9rPQ==
X-Gm-Message-State: AOJu0YwAJQAK+4Pr7WS/g9Ykc5xPll2KCt5Hst8eYNZtaVjcft4bJ9vr
	+2VK1yR9eZ3hfOfjKu6KXI1F6y11DkDvQSAOLjBW9t7oIlo/ceV5ghvk3ZX9ifPot5n0yCUrT37
	mMVNZWG8=
X-Gm-Gg: ASbGnct3StBGQxBvB/83gLL1++y+HhBuLwxuHvg1yVoW/Zd4GeC0+XmJNhxgR0vvJDX
	2/tMw+1yLxyjzJWaR2y4gzCMCRbAk1uB0qqeKmzIdgmNlK8DteAMWDYF8Qk2nxD+a2PeJTJIxCT
	AzvsqVmFuwIKHT9FEq/EFqm30sW3hP+ogzUtj585h/K8bxHF04/42hy87lT6sYq7dN08wtHSmRT
	cAva8CejjWMkJF/4akxuOk1smOWElI6RoVugaiNzOHj8gQfpp1pkCTSPRDmHFD7Rl+MYOwPAyyI
	X2g5EX+tg3sU0Lg4nl9+tbcJ+LDFB8e1zasTn/w3cS4/P7eN+lbAF+/9TD8ZQEabBuXA4rP6RNq
	bbaSkjEiC+bQEZPmJ6zAKQ5BFhDy+XjKX6rTr5t0gTpcVMDUOY0vB+zSKbm0A
X-Google-Smtp-Source: AGHT+IEt21JJ0GbW52Ae6IIeXGAxkDnv8PoqVX129SAInTnAX3MkkPG+Hi8yBSex+9tD040Mp73hFw==
X-Received: by 2002:a05:6a20:d526:b0:2f9:74d6:440e with SMTP id adf61e73a8af0-32da8508ec1mr13363457637.8.1760317332410;
        Sun, 12 Oct 2025 18:02:12 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:02:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-serial@vger.kernel.org, 
 linux-i2c@vger.kernel.org
In-Reply-To: <20250917-perics-add-usinodes-v3-2-a3629e4666ef@gmail.com>
References: <20250917-perics-add-usinodes-v3-0-a3629e4666ef@gmail.com>
 <20250917-perics-add-usinodes-v3-2-a3629e4666ef@gmail.com>
Subject: Re: (subset) [PATCH v3 2/7] arm64: dts: exynos990: Add sysreg
 nodes for PERIC0 and PERIC1
Message-Id: <176031732773.32330.8134222095806318376.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:02:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Wed, 17 Sep 2025 21:04:22 +0000, Denzeel Oliva wrote:
> Add syscon nodes for PERIC0 and PERIC1 blocks.
> These are required for configuring the USI, SPI and I2C controllers.
> 
> 

Applied, thanks!

[2/7] arm64: dts: exynos990: Add sysreg nodes for PERIC0 and PERIC1
      https://git.kernel.org/krzk/linux/c/1e6daba7a3c05af0f8b02cb59e71ce18fb913aa6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


