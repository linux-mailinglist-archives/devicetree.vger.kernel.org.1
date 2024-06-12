Return-Path: <devicetree+bounces-74972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0E9905170
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 13:35:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87B6028572E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AC6516F0FB;
	Wed, 12 Jun 2024 11:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ba6lO5eD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B91216F0E4
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 11:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718192152; cv=none; b=njqhGPz4EoFBB1bg9n3UnWuX1llnROR7lm0PXrvxzd6L/HohcOr/WNek2AsLG/ejgpo+QTbazFe477YaivYxd0u0uQ63fWGGVPrKEyEiaPpCOzgqtCmxvzwBqn8KQ+g0bm7DsDfHfcdarVAc62p+1ppHvVCuNgi0r4h9hYX5vno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718192152; c=relaxed/simple;
	bh=8TUNRi0jSnoscHv/HyXuoxqOy7niHVwuVaFISNxIUNQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gqwUmO8tHG7UFUpJCggXkrpdrPz3EZVfJfCuGoK77KNhakP+NPyO6WzaqFnJ3BGLhw3tnXQ/FosMQEFx3US2zrDaqnQtr+G74N7AsJev3pxhV+7Q8ejkEovZnD7s2pMQeYuyOgxD3685OcZIq+pkfIHqxTf7zVAlCI0pyjOTR5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ba6lO5eD; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-421757d217aso47394135e9.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 04:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718192149; x=1718796949; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5W6KNPdx2PHuRGHUQ4zzYKRlb/OTlAEe/zv7YTen1wc=;
        b=Ba6lO5eDraympkvnguk24xJCBHKJaMxlMgcBa2z0qhzivJDmD4S5OBGXPtvRNBvarh
         nQ7ihPr0CYHyEDyxfiSJo8H1vjP3eteISltZWVolANOf5EmNa7HH43Or6yQQukHFgsaR
         o8xZ4o4vk1xnOi+IYOnN+PB/PjulCxhBYWrGYz1vRPn/QcEq9+ymnxdOkDc/cKzOdlTI
         s0YrR0CqrtSLDmY7yeJQSQSqm5ZdUwsmVE0fuYt6uRz6kKcpF+CzmtM5tiEUMCPaS87j
         c99zIEgkdCH6JKjI/0+5jA1c6n2IhJ8Zxl3TynNnHra2abTmXcjgSO513kJTJmdNdedP
         TLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718192149; x=1718796949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5W6KNPdx2PHuRGHUQ4zzYKRlb/OTlAEe/zv7YTen1wc=;
        b=jO9Wim608zKNcENBamfPx0jMQ/w3pbnB8ZykHRRlX8BGwGP6BAgHqru//Np84e1LKD
         wzLMJIif47d6SrUOnRwYmDj4o+vxG9wGxBR3uvD5QPh5F4aJYC+3gaqZZmuncgKWgCqZ
         4N6Y+c6xjnYtshtv0AYZ2D1VYNkjZ4ZIWF+6e/UJkzB2ayNmDwo7of7SpXVqclS393KG
         iFylAXslBeU7nvKPmxV7/rVqQcQFx3g1E3Ou+us8etA3FTRv2flragxbnoyZHeMDnV6z
         +V1W6xIcTS64rrCC76PXkVWroZbLJMr8zVIloXTD+O/A1LKnYq2aiKQmc2DbVBftjP2c
         qguA==
X-Forwarded-Encrypted: i=1; AJvYcCUbxEjZhtZhUdr6KWLQV34xqvGN4T3M6vGuQTziIA+tv4vitMbZKNWmw+RS4YXDD+e7l69Z+dUFXC8f03QtA/g1K0I9Hu0fGPasVQ==
X-Gm-Message-State: AOJu0YwcWwWUTB0QGDhoKoyoI5w9FVkG2KjIPav2m/KNxoXNSIUTLuVm
	Rcg1jHZvEslBYFxFRfKM5fq0/tQQ0RUBiigO0RhURlJQ0DaJAKQ9ZPOVglETvdQ=
X-Google-Smtp-Source: AGHT+IFY6eOGc1xazKEVxpvuj5uTRY7O7gqMpBLZjRs62uuaT+fX3AHvmERtiOFMNwPjseP/EICqGg==
X-Received: by 2002:a05:600c:a14:b0:421:f4db:6e0 with SMTP id 5b1f17b1804b1-422862b3e59mr16107465e9.5.1718192148774;
        Wed, 12 Jun 2024 04:35:48 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874e7060sm22909765e9.40.2024.06.12.04.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 04:35:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: cirrus: align panel timings node name with dtschema
Date: Wed, 12 Jun 2024 13:35:44 +0200
Message-ID: <171819214237.104758.18100345249888595536.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240509104825.216696-1-krzysztof.kozlowski@linaro.org>
References: <20240509104825.216696-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 09 May 2024 12:48:25 +0200, Krzysztof Kozlowski wrote:
> DT schema expects panel timings node to follow certain pattern.
> Linux drivers do not care about node name, so this should not have
> effect on Linux.
> 
> 

Applied, thanks!

[1/1] ARM: dts: cirrus: align panel timings node name with dtschema
      https://git.kernel.org/krzk/linux-dt/c/f3ed3b126a3653c7dc21bcf9a22ed2d7a62f83a2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

