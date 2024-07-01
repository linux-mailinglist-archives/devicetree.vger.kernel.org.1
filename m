Return-Path: <devicetree+bounces-81927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4817391DF3A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E78801F2105D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1079114F9D0;
	Mon,  1 Jul 2024 12:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ivgC0FqG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450A814D430
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 12:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719836889; cv=none; b=CwJS77NSseSKXD1OzqboT6e6wTEQWbO9RQMJOq6nLndHk1pEodg9rhJxBD5NEtP0F2BDyOb5YFhaxh1Cp4G1HvjTi8yzZL58vEP+7+X0G8Tu7NU6G1RA77geyZC/bSg2FqV1LzFCXRA+x306b8th7aYBQQPxC2/aBberl8IjpjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719836889; c=relaxed/simple;
	bh=wddqOgP5X6Nd0uGbWi8PVMBIffCdslQXYU9lQCWuL9I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nYN6XsHjL3SyK71N+CcJp1RWUJutxXEZSa3TrKQ+8WNlMHWtGik6rUNCP+sBD9ShDlVOnSdrEbRxSlYJBje6C4YXusqVODKAnMM6ofJBehqd+YuH75JuYjkiFpDjGRxd5ZyZ+JjtCytJLS7Z2cSV/x/ZFCs7fe31gGKfZWSNp9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ivgC0FqG; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42567ddf099so21284935e9.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 05:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719836886; x=1720441686; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IwZDlMy7YMEN79I98JoEsPlJGk4fswatitIH/0EpuGs=;
        b=ivgC0FqGk2ayXWGncjCRoKJa4vT2mOG0ydmT+5I8FbSv6XzOGVw9Wle+zMzQZ5CM8I
         lNg2AoV/Fj1o9vl00dEByTOPIFNol4TQL/p330sTZ+orLk96Qe2rdEurfeqFcPAW+L4f
         +/rhhvu1qoEA59EPXKWjTx7Gz1l+Yk2dZltZknUhWbUgBh8GptXMJWEUl/D/aFj5xUWO
         oK3qEl16l1ZqynRp13Du2Vc7BK7o7BEFUfKSEnu9BAnA6Av3w9XrN4/R96omGWaEsHJS
         u3SmG1IXBPJznJexqOuQqd581Bn142DnfBBlcRT0dKDpd/+gNbF/Y7Yjl/hlV6TF23V3
         qP1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719836886; x=1720441686;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IwZDlMy7YMEN79I98JoEsPlJGk4fswatitIH/0EpuGs=;
        b=SqCqSvskRX+k88ZrLPqdfPPui/ZeCJODzRI/vEVxSM1j9RnPqxY0clGvnTySlN5Gxm
         E3k+JE7i5f4c4nj/vM8Tk4Bo1KTM2zldlHFxVooQ2Ze0vn71xPevNzBa5mbxJAUUVRoo
         DDIg5zWiJ63AFnlvcTWxX8J4Pg7aGhqnQExBtVnBnvCCfs6dSoXq6Vfjk9TDnetrUT7d
         UXmJHuW6vYnqrh1MUL3O7Oof690HYTj/KW9InHA7yGSSXY2ONZG+/PIPTPoInv5EDyZ4
         ChjW3dcGPMsGXegvmMRCXXfwon3mA2j8ZLASuFJZeK5Qxpj0FuXji+8ZyiRa6wv0pYzA
         SeYw==
X-Forwarded-Encrypted: i=1; AJvYcCUwP7qFMNbZaI7yxSeDvXb9Zy/kp/vgaAjyKzOL10L4VQysvIWgWJqNrB0E+KOqUyNffEuSMDMZpvaks/3zQ2e6G3ZcBh/LUt7G/A==
X-Gm-Message-State: AOJu0Yw4Umh1O+oBg1jiECXvkBw5gRPNHZHIkY6blaRlnb6X439ZcX0p
	c+hYKOmOQowSVzpPW0icRKaM1TSTlsfE6NlwbqTuOXTptiG+ZEz5O1KesVu8x7I=
X-Google-Smtp-Source: AGHT+IGqEZmEE90TYNOiPCo7w0bcsxoYscQUTNwMQKXhPLvoptUJufWQICqaND9lUfNV8NxH7ole8A==
X-Received: by 2002:adf:ec0b:0:b0:360:7829:bb93 with SMTP id ffacd0b85a97d-367756a826dmr2911042f8f.21.1719836885666;
        Mon, 01 Jul 2024 05:28:05 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0cd5fcsm9860697f8f.11.2024.07.01.05.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 05:28:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 mturquette@baylibre.com, sboyd@kernel.org, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, tudor.ambarus@linaro.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
In-Reply-To: <20240628223506.1237523-4-peter.griffin@linaro.org>
References: <20240628223506.1237523-1-peter.griffin@linaro.org>
 <20240628223506.1237523-4-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH v2 2/3] soc: samsung: exynos-pmu: add support
 for PMU_ALIVE non atomic registers
Message-Id: <171983688356.414803.3620253719378845523.b4-ty@linaro.org>
Date: Mon, 01 Jul 2024 14:28:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0


On Fri, 28 Jun 2024 23:35:05 +0100, Peter Griffin wrote:
> Not all registers in PMU_ALIVE block support atomic set/clear operations.
> GS101_SYSIP_DAT0 and GS101_SYSTEM_CONFIGURATION registers are two regs
> where attempting atomic access fails.
> 
> As documentation on exactly which registers support atomic operations is
> not forthcoming. We default to atomic access, unless the register is
> explicitly added to the tensor_is_atomic() function. Update the comment
> to reflect this as well.
> 
> [...]

Applied, thanks!

[2/3] soc: samsung: exynos-pmu: add support for PMU_ALIVE non atomic registers
      https://git.kernel.org/krzk/linux/c/85863cee8ce0c3f4d0010e78feb664fb26c35e95

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


