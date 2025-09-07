Return-Path: <devicetree+bounces-213946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EA229B479FC
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0D331B2434E
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 09:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0CD221DB1;
	Sun,  7 Sep 2025 09:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pMkEQiI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185FD2206BB
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 09:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757236449; cv=none; b=TrPa2+iUGOkITrzokujdIPbNqnbJ+Zt24g3OoELdMCLGFUPB0c2ziEZ/w5fSUw6Sxo+bPcY4TG8tYo/iHLL9yn7SYXPa1tP7iWSWDOA4tWQ9PfToOcLY5t7JaOJS+ONRbIj6zxb/mzAGuoOY3o5NN24HpqC2KDR+yy81NmmkTSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757236449; c=relaxed/simple;
	bh=bjjOrCQY7nCRwJYjDCDSciNQEkgygJ3UGgcY5H/xmAg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NRMyNmdeRE19ULDQitTq2sG7BKm/Iw7iUyp29Txpf7SmMhzfcVFcynvnByxhwgxONLQrqUPRw9OjsvwckyuNHWwDVP+5+K808LZTK6d4ZvAqSIYXym49/OAfQq+hhimN2ztTUD4EMrUgv/CnKRR04zhOh0o+acMPXT6RcsSzHfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pMkEQiI8; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3cd44b9496fso330909f8f.0
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 02:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757236446; x=1757841246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gsp0bK/nuIonUnBqY9AKagtiSrgSRD7fcSEn1YN+5DI=;
        b=pMkEQiI8+8OgDZi/+a9rJdkYDyX+icHpXyTQw4Bj1noiBGdnH51qHkOVu78nVCZ4cL
         rapQ6FaDJLlofPEF7yeCgzHCjTxE4Kjxuu6J6p5h1tga09tXm6ctE70HNyAjJE1XcudT
         5JDTewC7YuWD+uMsPkFqW71cIkCa7AIefNHpaQpcXI9/8Wh6gq69Z+zVtxvaGHq/qDxM
         ZpUslxECbRr0qcCl8Q1a3a8w8lxyLSexTVNAHrX/U7mhM5S9iXANp/76Xq1eHB7C+jNJ
         AtdyqFY8ruaX/D3xe1B9ft2KqH4WF82mUXBSpJHFYjXKfYJXcNOLOe77OpwNum0hGQcR
         Q6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757236446; x=1757841246;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gsp0bK/nuIonUnBqY9AKagtiSrgSRD7fcSEn1YN+5DI=;
        b=D2NPyvOBO3JTupYkvpcGLYQxzCFIJQ+DPtFEqTLMWx3Z3hnIEEA5C5yOe8PPoVt9pI
         b23+waFk7NJIfhELT2n0lyeXbRvpvMIVouORtH02ZGMaB6IsRP+MyfSjRLC8Pf3RLaVT
         LTmd2FDLcOo9FLjYCj4nxh3OGfFd2XUsXu4ntQ84c/r7QAGJsEmlVJY5SS7JHFXiqEhv
         +sSF/dyQmMdswR9fQ0QyEA6HJJtp4c2AGD/crOPqDI80cZoVJifvmUaverPn/gd78Gjk
         Wg43g7Y7YaIGh+xxdpLzXZrjuNE+2zgfGLqtdC3Bvt5RG2bLKrrXDlSy1jN7dZ0waUmU
         /eSw==
X-Forwarded-Encrypted: i=1; AJvYcCVePebHddlrsRLbYa5Av57Aj5U4Q5Vo8wvPIkwUmwI+B30uxJT0fmjY23qK9NDd/ikzoiI9f6Bg67t7@vger.kernel.org
X-Gm-Message-State: AOJu0YybrpkParB/2W5mENA6IcKEK4E6G82fuUBZKLaOoWPMQb5yEJKg
	9cXzB7T88qA8o3k01nd5R/3rAhaktNh6ek6ZPKxOKdkCn/yQRit5eKMlADyGPvCT9HQ=
X-Gm-Gg: ASbGncs5EUnzmZFpRYVxNQvxCIc+pqAj5Z7cpzBhwF0FKBvPWcf4i8gN7+maT8B6H4S
	/zdxoAvfxCOi85um3Bl/zxVVP1HbmFQtEnHnCb+6H9iCYG/EVX24hAV1zX0hTicgbKtuEk2ja0e
	6jh4QWlim7oFnGDLF/wKlKBE7OhCUdQjlJkwn8+R/5cZiYn9mAo7Qca7zKCXnAGvzzJV72TF8IG
	e2rmLLRJ1Dr4mcLJERL5AvmhaEkqwdHLuile3rxCotVJcHDSbkdpOK1ME/VScyx7NC4R3bk+kbz
	8apo1PPTNGuGYwvBJME7VKUtG8QNxbN/7+EqEUIsR/ErrX2u0j+ko+vrfXUO4OD0yZ/NqCv7gUR
	oGS/KFGCLl5eFEgP5sKJoAD5sW8+7BNoBLznJ0LkaVD1s/GGG+Q==
X-Google-Smtp-Source: AGHT+IFQImOn+iq/yUmUyBTZk4IQaF9iLgVYYsVIQC7hi6Y7Hlt3FPdtOjJo41ClE7NuPr3IM92ZKw==
X-Received: by 2002:a5d:5d12:0:b0:3d4:6abb:7de1 with SMTP id ffacd0b85a97d-3e63736f694mr1567362f8f.3.1757236446397;
        Sun, 07 Sep 2025 02:14:06 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e21e4c0e6fsm10918962f8f.17.2025.09.07.02.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 02:14:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
In-Reply-To: <20250904-perics-usi-v3-3-3ea109705cb6@gmail.com>
References: <20250904-perics-usi-v3-0-3ea109705cb6@gmail.com>
 <20250904-perics-usi-v3-3-3ea109705cb6@gmail.com>
Subject: Re: (subset) [PATCH v3 3/4] clk: samsung: exynos990: Add PERIC0
 and PERIC1 clock support
Message-Id: <175723644487.30719.10030399153447295312.b4-ty@linaro.org>
Date: Sun, 07 Sep 2025 11:14:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 04 Sep 2025 14:07:13 +0000, Denzeel Oliva wrote:
> Add clock controller support for Peripheral Connectivity 0 and 1 blocks.
> These provide clocks for USI, I2C and UART peripherals.
> 
> Some clocks need to be marked as critical to prevent system hang when
> disabled.
> 
> 
> [...]

Applied, thanks!

[3/4] clk: samsung: exynos990: Add PERIC0 and PERIC1 clock support
      https://git.kernel.org/krzk/linux/c/b3b314ef13e46dce1cdd97a856bd0250dac8feb9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


