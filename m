Return-Path: <devicetree+bounces-95530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD00959AA1
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 13:49:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76E781F218FD
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 11:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E3001C1724;
	Wed, 21 Aug 2024 11:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GXircaAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F3D1A7AC5
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 11:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724239743; cv=none; b=H3115ksCckoYItBOjnx0fhecg8k67mkDY6DrUZd1M/GW1pheqyOQKedzL07zquVwgxuzIxsHxh8Yc0Av7LirHk47LuRsRNJC7sC23ScptNclBXz/0C7hLrbzg0QB85R+S67eQzWxzoW3Y9ONtMRwmtDTOv/xnyQDE5qFA2r4aHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724239743; c=relaxed/simple;
	bh=533wRt7wl8s+Xq1V94rO71Jq/CuUXXPLqXQYc44C2tc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Jpi/VSadQ+5TdFYtU+X8+H5MvNl6XLkUHetegGXA4nWo8XkSedfY/4v7JMQoNh6PUlHtdCeVWFL0H1axkxs4pDlJCmW6gUmyAa+6saeZCd4mqUrturj/Gx4B0/I9eEspqg0hmQTGq4l805Vfucsv6xmRiTHostpqn9hMawCOYSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GXircaAq; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-371a939dab9so113767f8f.2
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 04:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724239740; x=1724844540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LnVkYJTcDOKtCLQwYqRu5j6J/gYl7QtS84vF+23ZA/g=;
        b=GXircaAq8JrydHyqXWFAaTHZI/GSkQJAh/AJEdWJ42N3RyZZXRQojmka5iWxI4dRjX
         V0GGdfXQ5nNHbhltxxAhA/hSwQbY9zwrqzY3VkPFUE8BM6BrDqL5ElmAw7jaIQbFCfmA
         9E+ZFWfDWS4DIiSsUr3kO74IzwhU4YUxWH0ZKn9gHPvED/2DkKnJxCfy3VxaLfHaxKJl
         avsT2pgHKF9O+EHyqnaXE23lIjtRkjgxT1XcH5HiNGhHu78inwvnNgd/rt9CszCQi/a8
         jK5ecD4egJ1X3lURSV8GUXwSG5wO39M+FuSQrxnMOOFMkkEvRdVzsCNFTXGSMwp0nMu6
         /8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724239740; x=1724844540;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LnVkYJTcDOKtCLQwYqRu5j6J/gYl7QtS84vF+23ZA/g=;
        b=t9KdGH7rvo17pf1TWBrfSY97EOJkqYf5yCz+fmn5M9rJzOutSEgBzFwVRPMzpvwnHO
         fOxZ4zTnkbGT8andhMRBNZ5H8lRbnoTKpv4+00b94dRt/vOGpp4N7L7t8ky7lIAeDPPn
         ISf9MDr68/9WV2GDo7gWcn0KHW/ld8uuS+2KaaxRzNeaR8y51npveOEigUPZoQopSP5T
         Amam6rHLH/29xe/ZUR5ji1NSB0P0jmwhFsTLlmXPRk7+2mizde/sTsOieZw5++puTohd
         uNYqxQHb+ELHds7oEbeggTAaY3egmEHd3aU56BR4Bzs2nQfRnJg7H/Dudi+1lYpVDFQf
         tsVg==
X-Gm-Message-State: AOJu0YyYSCAQ2OzXJuPo03Grnd9lZaKQXD1DoFoLEJWkfkX0ZL1xw3mn
	LQpM4bJ9nSQzmbvfDwxE+l4UeMdLrJuNfcrY1nG4nHk+pjiFi2cSehNujbIzQsU=
X-Google-Smtp-Source: AGHT+IEAlDPnqiiYjouX6YpiJgvfNheccSjha8iIvn391TYIQoiP3HQ77uaLB0NYQG+2NQDUUUCucg==
X-Received: by 2002:a5d:6d01:0:b0:35f:2584:76e9 with SMTP id ffacd0b85a97d-372fd584827mr841459f8f.2.1724239740101;
        Wed, 21 Aug 2024 04:29:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37189897926sm15446926f8f.87.2024.08.21.04.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 04:28:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kwanghoon Son <k.son@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240819-add_sysmmu-v1-1-799c0f3f607f@samsung.com>
References: <CGME20240819075546epcas1p355a3c85ffcea2c43e8f1b2c69a0f3b4e@epcas1p3.samsung.com>
 <20240819-add_sysmmu-v1-1-799c0f3f607f@samsung.com>
Subject: Re: [PATCH] arm64: dts: exynosautov9: Add dpum SysMMU
Message-Id: <172423973836.252925.2617927566866963313.b4-ty@linaro.org>
Date: Wed, 21 Aug 2024 13:28:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Mon, 19 Aug 2024 16:55:45 +0900, Kwanghoon Son wrote:
> Add System Memory Management Unit(SysMMU) for dpum also called iommu.
> 
> This sysmmu is version 7.4, which has same functionality as exynos850.
> 
> DPUM has 4 dma channel, each channel is mapped to one iommu.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynosautov9: Add dpum SysMMU
      (no commit info)

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


