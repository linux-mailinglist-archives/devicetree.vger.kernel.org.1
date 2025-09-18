Return-Path: <devicetree+bounces-212833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F27B43D8A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAC933B2F1D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7629303C8F;
	Thu,  4 Sep 2025 13:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="syF9QHH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374482FF66F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993572; cv=none; b=uBT2bJAw0SHwxGDHFSqO//xddZajKTHukCdEkcKmDQhtBjCJvijKx2jBv+fHlIhZjv258GCdRNJUeQnXJRzZodA/sHhO/OmXVc5jkI4JIgyCZkWUbd4G/SITtAfbRWT+ZnYwTUJW6JUNnr2bKwoxCgZK/b0J5mLeAkuwlqAztWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993572; c=relaxed/simple;
	bh=YbXtY+bB9UCcFJGSj880JfkrzUoWKkND3HjhqJeIUYY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mdk0rwA4ZvhfRzHVWixooJ2gifuIti04zIMM4vYbcUQtkR4IoUly6CrP3U63Dt+zAtFWBPX7/bqqUMvPbmXMXaoL4awRfQ7fWGqGHZn9n1cCufkR7xh/JLiOeOt6qUoWeuXW2GoQb/tuPrZeX3I4r/37BgURYJw6kLW0z7+s4YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=syF9QHH0; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b046b086599so14481566b.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756993568; x=1757598368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UUVOYaTKR2BcmefABwOjJaCKklr+SYDWM8eaXKmt/FA=;
        b=syF9QHH0McR/jqRpSI5sBRPGCPal/w787PnnRWyhhNSuaENu/RSB9q0FV3cCQhMA9b
         f3E1+sZeqdPvflTr1EsK8/NPb5MsPkWpzdl3U9AtWWbr1opm4lW+jNvhfG+mFW2h4AFR
         qqhSghMzBh6uKwtc0NgYkPU/V0SwpM1o3APoxDYWsWuhcRjcWwW9p9jPMFWh9yCOsICS
         g2y7nfhntRbBLMPyAcGE9S5RzL3IiET8Z2CeeCxjpW19zEaj0Oo6b0IdQIxCz4S06GKN
         EqIAscX3Zx3iV/4NQDArKC2Y9LLj0djfPzl4QS+QPbypbPyPX87BMcIIjWTlhP3oTxnd
         BaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993568; x=1757598368;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UUVOYaTKR2BcmefABwOjJaCKklr+SYDWM8eaXKmt/FA=;
        b=dJj8J4UuUUo1t9Lv9UAsrPTLXkyTY8zXv6BwtpAfbtp3p3bRtAV5O/e+UdYKGUv2Q8
         iyHARk6cx4S6oWnD6Ajc5DUFqcqfH+w1yqfmQTmsEEr8e5PuW+14VpBZR/1jEz1QfGYe
         fobsEh+eik0YdL7DhDZ9l6wB5X/840K4aTNxaTp1pzAjNFXCw7C+YR2HaFpEj9Gj7wwj
         i//+sjAEmwrF7TF7MD2TorpMg2Q2TepG4ANYgf0F+2IK/48r1wRmofKZBUZYP+DLpRIM
         dBxACmNCgDi3C2JIUT+l4NqNp6cAmpeWcHbOdQdbT6a6VqzPM4r7LQsZb8lNIAiZtIu/
         dCjw==
X-Forwarded-Encrypted: i=1; AJvYcCVhGCKVcBoX7LpFDdbibEdN5KebyfAmbrkSoQoJPU6V9D+LNnW9it/F5yQUVKh0R82vlalBjYAhxVVG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4SGURvDGyv/QeASELKFMRXyZe+3omWT8r6BgFuvoGTocBQ1Fz
	rcc1ex+0QZE3x6+905nqtybqePLm/YbJbasxss+WM0sbtJJeYm/7YQPPUaMgA6P8Ne4=
X-Gm-Gg: ASbGncu+TNIk3vseKeGqnw/EIB5PmTLBr5rM8UNYS/yXdo1CZiPx2mHKmlupj3aW/w8
	sKG+a5dA0gsY/qhUAUjWJ8jmHkvYVF/KLDpyx6VF2v9hR4kk8Cih1s35ER6ccVVqdSscPui31p9
	OdNByTE3gIw99Y3X5wjS5kD8S5RN7m/HbQ7A0006gDs9XIFSy7tSeA892pZriajUKMI93Pk4KR5
	VRtEY9FKOj9ZVCdJNwJzb6K2g3suUPW/xrwHEs3SGtT908NYJBJl5+kD8cZ8lUyifLbj4Bf04k4
	oFpIaCONBOQeNdepiUI3bK999ojR/znr/aSaH7pLXxsbdKEq4u548WM9M4wTc+OZZHFbjBAeEuh
	dAQ6wTFsmJtAZ3OXRIA6PUJyyg/WDRsp4oPuaI7o=
X-Google-Smtp-Source: AGHT+IHR5XB2P+9jpNOyHwbkAht1wt06oHD5IV8g09IEd8azHiDpTqXuJszFXYr9m5Jzcbq7eoSIFg==
X-Received: by 2002:a17:907:26c3:b0:af9:3758:a85a with SMTP id a640c23a62f3a-aff0ee81aa2mr1052139466b.5.1756993568421;
        Thu, 04 Sep 2025 06:46:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0413782b94sm1180634266b.35.2025.09.04.06.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:46:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: jesper.nilsson@axis.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
 s.nawrocki@samsung.com, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 linus.walleij@linaro.org, tomasz.figa@gmail.com, catalin.marinas@arm.com, 
 will@kernel.org, arnd@arndb.de, Ravi Patel <ravi.patel@samsung.com>
Cc: ksk4725@coasia.com, kenkim@coasia.com, pjsin865@coasia.com, 
 gwk1013@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com, 
 smn1196@coasia.com, shradha.t@samsung.com, inbaraj.e@samsung.com, 
 swathi.ks@samsung.com, hrishikesh.d@samsung.com, dj76.yang@samsung.com, 
 hypmean.kim@samsung.com, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-arm-kernel@axis.com, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org
In-Reply-To: <20250901051926.59970-4-ravi.patel@samsung.com>
References: <20250901051926.59970-1-ravi.patel@samsung.com>
 <CGME20250901054249epcas5p483e898d45e072cb0faa79a681f73f0d8@epcas5p4.samsung.com>
 <20250901051926.59970-4-ravi.patel@samsung.com>
Subject: Re: (subset) [PATCH v4 3/6] dt-bindings: arm: axis: Add ARTPEC-8
 grizzly board
Message-Id: <175699356578.171312.4960170053878609185.b4-ty@linaro.org>
Date: Thu, 04 Sep 2025 15:46:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 01 Sep 2025 10:49:23 +0530, Ravi Patel wrote:
> Document the Axis ARTPEC-8 SoC binding and the grizzly board
> which uses ARTPEC-8 SoC.
> 
> 

Applied, thanks!

[3/6] dt-bindings: arm: axis: Add ARTPEC-8 grizzly board
      https://git.kernel.org/krzk/linux/c/604a932fa924e7b15be47c6208a305f289cfa309

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


