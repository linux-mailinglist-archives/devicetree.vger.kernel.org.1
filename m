Return-Path: <devicetree+bounces-173430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C102AA8697
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 15:50:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 760C53B32D7
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 13:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C011B0F2C;
	Sun,  4 May 2025 13:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KLtF/tqY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AFE519C540
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 13:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746366648; cv=none; b=DkluIUn9fTKi1jNOQ7qYat31rUxAOxSf9Fe1dQ1EGboQfa9cQEheIjUd9LncEv7xFcnpag1haDLIPmlU1q/Yb0pUAdwNxqfVWJGA/g6pqs0qBorZIuPsiymT0ZF3ia6r3SS2Ib5Llpng4foOpe21pqjAb9+DomPdA7Q8gXXiSYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746366648; c=relaxed/simple;
	bh=Esu7uoANV9CFGiL9FIg/9JrPWLL4imdX/uOgpNs+CZw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=g7MA+sYYABgUQXuu3FJHXerMTRugXxfLg2Ag0eR5u8sywpfN2k7FOMNe5kQ7lHwH6SAkC1mZz0vwULKXHofzpMP6hBNqb6iz5gHdEP/cTeY0sDx+SGIC2P/0wwI/OmrQs3776Hh96xfeTe5NbFKxfCMkjUCV55LVgTg2k+sD4CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KLtF/tqY; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3912622c9c0so154210f8f.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 06:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746366644; x=1746971444; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z+WxkHYKUkzW4ER/6Z9ItH8b6boPBxhsY28VmZL6mAc=;
        b=KLtF/tqYlJIVYbLC0juVwC+cLVHSKWLNhElb7Qmq5wU/EcCK9AHa1chBbHAAjLr7AI
         zvX1FMI1nHXHCl8APTKYNITkQ+wfRZd5PlcZYtFPBLfbwNIdRuLaTCuLusXU8Ff0OV4z
         McYX42riCG3U3IUW+E5dcKa0PWE1VG972O0eVnY2zH9R5seUQmUaLmVjZkTPdv08U2f0
         NcdhmeNadxNc8OR7VZbQdx5fgZafYABtqPrnv9wGorO1yeyjyg4puDxaFw59iCnamt4V
         D63D5Bg+CMyUm4r2XbylR79jYevWBAk4coMgqvubBjCNV2sKiHOPwsaE9cU7dEC9xqR3
         MUUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746366644; x=1746971444;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+WxkHYKUkzW4ER/6Z9ItH8b6boPBxhsY28VmZL6mAc=;
        b=DTQaZwZJIyqAwy7vM6E5aJ85/qFJwVl91HW9ABbbuGYbrN3lpH6LtsoYu3CrS/J+sx
         NjBXun0O/hO6Lxt93rej9B2hgE8wAkpNgqMPpQbQT+m6R6UZD8n6d2Ph+o/RaNy3+aLd
         LKMJHqbbCWDt2G9krFs4E7eDn8k6R8EsmMAPgOeSqzX0Td+estQ0Oh6sVroVB66Mfnur
         hsJCynkqbvNq8ptnC1LU4GEwTcPSZkT4sE3k99p8HmY87mnHZD+9cc/yFWzk9O6NGU8Q
         fQsCn97LFXFcIQZRo1d9N1jwLTN8ztyvCd5UTLEUYXbEE6XIpHzX76e1BFzxbs8LWVql
         5u7A==
X-Forwarded-Encrypted: i=1; AJvYcCUjQc3XemMqbfK+b6GfuaIjHo2xU2pZpnwoNe07e+KfrC0TtnGFYIyKqq7VAoPmWpE14oD7vtJzmPqs@vger.kernel.org
X-Gm-Message-State: AOJu0YzWl11R2PSgvTnGt4xpyMbehnyBJrFeNdHKQqYeCOmIaZBr65EH
	+2SsUL0QbWSFud5pcMoNsWodrlkDmqs5+P14iLp8mDFZbdiTVul7q+zFftC1eoY=
X-Gm-Gg: ASbGncsDOolYnWbyfmaBWSwcklYQe/L5qPsZsyswgXSTR9ldQp2yqlPY5rys/8BGCH/
	69eDK6fJobbdbUMYwVgDrgIONDji0Fydtuq51uNZ0QsGbfm5hhFvxCWWcjwbuwern1FarDoR/I/
	e8rPXI6I0U+4HDwL1Rlrn3/8DnRbXbO51Xpl/meUHOwVeVGzJMwZPbg2Gk0PyO3bonKS6xHmmYC
	XlZZmitKGFyKZahbVS2VDDjk6Elw4YRwV1JfYTtEZu5tZiVK8rtUvo4zxw2AJbLTZbsdzSo8sXT
	3GsQAhHdVtBtyNOASCJ27DGbupHmZ00LdZuJpb97Vz7unHiMiE8fNoWwhwk=
X-Google-Smtp-Source: AGHT+IEYCOZ+iY0a8P6rTepTPbdUWPxKR+5HMLJYKNnujHoa+RcUI4iTDfxw5wNiB9aCsPGWAf+6xg==
X-Received: by 2002:a5d:64ef:0:b0:3a0:86f3:451f with SMTP id ffacd0b85a97d-3a099af1f69mr2481210f8f.12.1746366643823;
        Sun, 04 May 2025 06:50:43 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae7bbesm7343717f8f.49.2025.05.04.06.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 06:50:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Patrice Chotard <patrice.chotard@foss.st.com>
Cc: christophe.kerello@foss.st.com, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250428-upstream_ospi_v6-v11-0-1548736fd9d2@foss.st.com>
References: <20250428-upstream_ospi_v6-v11-0-1548736fd9d2@foss.st.com>
Subject: Re: [PATCH v11 0/3] Add STM32MP25 SPI NOR support
Message-Id: <174636664232.45285.4829080141383638928.b4-ty@linaro.org>
Date: Sun, 04 May 2025 15:50:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 28 Apr 2025 10:58:29 +0200, Patrice Chotard wrote:
> This series adds SPI NOR support for STM32MP25 SoCs from STMicroelectronics.
> 
> On STM32MP25 SoCs family, an Octo Memory Manager block manages the muxing,
> the memory area split, the chip select override and the time constraint
> between its 2 Octo SPI children.
> 
> Due to these depedencies, this series adds support for:
>   - Octo Memory Manager driver.
>   - Octo SPI driver.
>   - yaml schema for Octo Memory Manager and Octo SPI drivers.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: memory-controllers: Add STM32 Octo Memory Manager controller
      https://git.kernel.org/krzk/linux-mem-ctrl/c/43eb1b288072641b7de8f5d5c15bde69e6e8589a
[2/3] memory: Add STM32 Octo Memory Manager driver
      https://git.kernel.org/krzk/linux-mem-ctrl/c/daee9b249992a88cb64fb6a67eeb333d359c6242
[3/3] MAINTAINERS: add entry for STM32 OCTO MEMORY MANAGER driver
      https://git.kernel.org/krzk/linux-mem-ctrl/c/ab455b75de7351a0277be3261af180e326b74605

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


