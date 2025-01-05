Return-Path: <devicetree+bounces-135611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5301A018D3
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4FB27A17FB
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 09:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 960AE1474C9;
	Sun,  5 Jan 2025 09:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ihmy4dvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE3413E3F5
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 09:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736068953; cv=none; b=IIohY0xYjnb1HE6s+iLrI0rySg7KVlT7es2SV0PuMjeVIEjiPdfecoLrLhekImsbYRUQhVRQl5MteIXhSpRSkOFYThgS/9S1ddoeHWfK4A7FHnqTN407i26S5MiCZWMNb59+Ug+6UV/jJHA/xq49hOiR5oqOTcitYX/4Tdac7z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736068953; c=relaxed/simple;
	bh=/7T74olyLTMsnICKNiQMvJ7x8TpDCCveLq2c360v2BM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=q9epl43Mj5getzUihfRgf0IcI2R+oTLpkBwZkfV70qoqJ6dT8XRN9J2zejnZ/t3dZZGeSeFE5SpYpoeHEJFJPWdgbU/p/AZFwt+srGB2bIbHGrr3Ss6HCnkMmFUuYnWcZwWWmHL32D0U2vfqSKM58IY9Fa8s+jUicmO4yjeX4m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ihmy4dvr; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385e44a1a2dso1579449f8f.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 01:22:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736068948; x=1736673748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nelteoiqxNRf7ioY30lP7anjKbjLjK5qZE2TjaLHA9o=;
        b=ihmy4dvrRZzUEzcDj2VOFEfrjJ1Zd2qmj8Fjam54nSvwURn7/N2mkc43Io2Kam18Hr
         x5XgBZJF8Jmr/ZrKjsgxel0iFTUfXrfUbRO+VbU8LjHfMrmctterJrZMdqGjMsKViDbN
         /H8ZOLH3B9QKFQm64Fc1jh/A4vQ/QQxyocinv85afpSeTu30hFU6YUgB6AbJ3wMw2Ffg
         qsLWoHTB5veyN5yN07Fkuvx4xGSDBaMbRySsHQJgJbzrcra6gWxTuspbMXAIORfcE//y
         tlAv2iWxk8MB1xViqGLvPGDiSeofMlDuD9ePVwn+Yq7zylcprVZ3EfDdufen5U9s2tkG
         kTCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736068948; x=1736673748;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nelteoiqxNRf7ioY30lP7anjKbjLjK5qZE2TjaLHA9o=;
        b=nRt3uo5dnGsMOMj66gIRR1xL2lTo2imS7hdofsc3B5rkP9EsMItdscldfcVOjoUhyl
         EORdiTh7voHec2C5KiHlyir1KzztY+HJNsHOTlD7V4MXdxwhCoqs9kYleR33R4qESqOs
         Jzd8wM9VVw/8r+X43BH6Z78ht4pCDYG4XkQVEpf/4kcJQ+wupeLbw/oi6JMN4d+OT1ci
         lqjisHmgtwU5be5tJ3E0hCOtkMtF7zmPylxUKd3+AxuRXtLjLb7k2Cy6rWN0pavPpPp5
         HNIQKNx/jQE34JnCixSAJTM//uvAEIrlF5/0gCBKWfsD040LlVIjlBUItx0M7XDEFFEI
         WDNA==
X-Gm-Message-State: AOJu0Yy2qPI4CjNccVf29BwhAnESo/BmzDCSlOJEkCB4xPa+BH2duc4p
	aU+01m+o724xBC/oM5oA49awoHMZO1CNgcF2a9AXlBJVen9KMMc6M8JyWjLK854=
X-Gm-Gg: ASbGncu/MdwHyjTXn3kFNvONunp1MevNjs2JfXnNFbFPrsbG/nJitr2b6eZsfP1OncT
	3zayC1ZhvJhupu+OMjz2cpa4tg/zIjE/a23B/QNaj2YquuCS/gDnheiUU0y2kN5M+pvpZZ2QFQt
	qvit5UIkiiQDBFkv93lWgpxIYdOXka8vzdLiKYJZ1cvLfFouW5lu5pM1u357Tw3kFrF5bKqXl3y
	5sAgB2iORW+HCTIk8XzY6MbR4FefdUQl0cBlUDbEI9ldsTSNbGd66xFBtjHd6v+VRRigCRL
X-Google-Smtp-Source: AGHT+IGDynZTHl8e5RBLJUpj+lO7O7uXhax+G2o9Ltlfc8YfdRjCDTeADBI/fQ0DJuPgpHoXHMUDKQ==
X-Received: by 2002:a05:600c:5127:b0:434:a339:ec67 with SMTP id 5b1f17b1804b1-43668642e65mr197803305e9.3.1736068948502;
        Sun, 05 Jan 2025 01:22:28 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43661200ae5sm533469405e9.17.2025.01.05.01.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 01:22:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250104162915.332005-2-ivo.ivanov.ivanov1@gmail.com>
References: <20250104162915.332005-1-ivo.ivanov.ivanov1@gmail.com>
 <20250104162915.332005-2-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: soc: samsung:
 exynos-sysreg: add sysreg compatibles for exynos8895
Message-Id: <173606894714.9463.3099242543235588769.b4-ty@linaro.org>
Date: Sun, 05 Jan 2025 10:22:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 04 Jan 2025 18:29:13 +0200, Ivaylo Ivanov wrote:
> Exynos8895 has four different SYSREG controllers, add dedicated
> compatibles for them to the documentation. They also require clocks.
> 
> 

Applied, thanks!

[1/3] dt-bindings: soc: samsung: exynos-sysreg: add sysreg compatibles for exynos8895
      https://git.kernel.org/krzk/linux/c/38405d3825d883b9e6ae680c14b530f79709533e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


