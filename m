Return-Path: <devicetree+bounces-212834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7C6B43D8D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 853D8A04B41
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604CD3054CA;
	Thu,  4 Sep 2025 13:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OWM/I8aQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05C03002B7
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993574; cv=none; b=qAk7W4BkKSrE8qKJpZffRCayk2VXnYiq1fkQAPdKtpvvymnnawmbXnYViIniEijQK+cyBPL1w3sVAJrFBKL9dW+gqA+zFFHF/3hdRfKGRdZAO1o40yN1SdSIBD9agzLN8CuJ1SkAPuZ967hcbOtD213AFie9yPIRT9Vrfa1o8aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993574; c=relaxed/simple;
	bh=tzrZdWUmau9Ko5Je+ScAN4BMnTd/A6L4sx0uQaFUKWw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gYQXURi/fj9xYsbmxoDHM5O6V74QaFWKuko6n6B815I+FOwLaADKfUaizoZc7GsBZEroQ91GMN349NdRe2i1l2ADspmOF468yVn1nfvPm854+L0THqIe+D+FE4BLnJzcau0ELWExYauaXExj+CeL6Av97oVLun8wOsmKgIUvsUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OWM/I8aQ; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b0419ea6241so11036966b.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756993571; x=1757598371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vateX41qLmBe78jZzOt63uJFfCVkgcgyVW4UPJkHk7I=;
        b=OWM/I8aQzkazJJD8u4OG0BnAM4ka1XpiSM4N7jpxoap8Lo7EWM88L6dC8qMlyTN2/8
         Q5JvlidA1hit+HuCP1Wbim9vgQbOGZOJK2Eun69mon1PFjg+fueoelzBWYQwfoZFsl2c
         aP2ceuB8TnflzD1uK+OMxgXx2JFcO/B1s+1ZGT2tQWnzVexYXi6rcfphd+UQMHK5/rRB
         us5UNNl5rvI3AUQGYmh8PqA1umnqYS/pbIMxlgiRriNlM1GjpMoFcbmH6jRnz6neddFt
         ViBAW8zcrWOs+pqMwvrj5IjSTQWK7IP0XA0SPA63vvGn9V9ZJt6JtNtApfEkJ698KnJb
         e9fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993571; x=1757598371;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vateX41qLmBe78jZzOt63uJFfCVkgcgyVW4UPJkHk7I=;
        b=napvTvYKRJ+Xqiw3FB/OupCIpusT0w21bviYQgGbofeh2JuDAl5TatBCRjw23JbDbZ
         hTJewP7QbI1w4rUc9FhahkKpPAngykfbLAEtxu3PL1el3bKvAqP6OxbEkdLQfkvBS+JL
         63NmGb7JYOmB4+Ngo9Y2Fd4/QjBwKWpUuViouIMymX2+wbaJYTgU1rMJobw05Wn9GU9c
         /R5wsHGUtZyzVy+p9tlE8YScpbeNGwzFX1UUTRs4ZwQconC648RpKghk4QM7D9U4of1F
         PzKKorwqvtVCe5bPnzVJRVIHcrKKGbsvpd3bvP2s1exfgp06Wk9AEggZO/NIyNH/otFC
         AEtQ==
X-Forwarded-Encrypted: i=1; AJvYcCX90dJcurU0zdaBu2zlhqRwS5gPykqc1wm85HOGkzrIgDg+4BX/WMcYQ1Y2nGTfbL4DW8t2NRICfx6W@vger.kernel.org
X-Gm-Message-State: AOJu0YxURFFZTkMqWjtnyxbsFkHRQJw3pAgk5MIjwlgghUwS0M+Wxvf/
	XOQHfvu+0F6292UTcZ3TM3D4XrXt2a7gkE4D1x6UgWFP5zgeZ1Cu8spzo/qfYOW8Ksk=
X-Gm-Gg: ASbGncvsjqh6EFthAo8uQgXi/Gi7JtuXq1eNvdpIpzLdyvvn27u0YXC7BQVSWhMYM+Q
	ghUQeQF5tUpHjgymHI4Mx/+1j08xOqeX3J+M7s9+3Xrx1/FhsQm6VrquSPu1Sz2ySStH7ruf1u4
	s7jgLcZkWoShnsP/hbj8BubpcCY5Do5SGDjhsgUo9w9FmiMBkv1IsMu+7/XDjkEqyKi6liOqK00
	ZhFA0nt1hYayh2SfuHM9dgTPGvLrhF1447iQ5PPH7sif87dbW2jdGWDXyYlI6h9BkKuDM4QkYJf
	/zwypiglsU8wsw61MHESjRBInLFC56ORU7KFzaolGOiValaBp4N8EQanN99RI2+6H1oKV4jKmTg
	+SxIhpZaodGu36Fw8y5Qb7IuvbduiNj/yMoWc6ilojpqQOanaww==
X-Google-Smtp-Source: AGHT+IFvWV4hrMxiuD4s72RuFmU5dC8uJSFz1ccYAGwp5WTz05lim7XPN1obF/dY5Raugo8Ut7n0LA==
X-Received: by 2002:a17:906:4fc5:b0:ad8:a2b3:66fb with SMTP id a640c23a62f3a-aff0ee1dcffmr1098615466b.3.1756993570841;
        Thu, 04 Sep 2025 06:46:10 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0413782b94sm1180634266b.35.2025.09.04.06.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:46:10 -0700 (PDT)
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
In-Reply-To: <20250901051926.59970-5-ravi.patel@samsung.com>
References: <20250901051926.59970-1-ravi.patel@samsung.com>
 <CGME20250901054254epcas5p24db87bd64fc57a25b17c51e608f15e7b@epcas5p2.samsung.com>
 <20250901051926.59970-5-ravi.patel@samsung.com>
Subject: Re: (subset) [PATCH v4 4/6] arm64: dts: exynos: axis: Add initial
 ARTPEC-8 SoC support
Message-Id: <175699356858.171312.4717453350737707503.b4-ty@linaro.org>
Date: Thu, 04 Sep 2025 15:46:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 01 Sep 2025 10:49:24 +0530, Ravi Patel wrote:
> Add initial device tree support for Axis ARTPEC-8 SoC.
> 
> This SoC contains 4 Cortex-A53 CPUs and several other peripheral IPs.
> 
> 

Applied, thanks!

[4/6] arm64: dts: exynos: axis: Add initial ARTPEC-8 SoC support
      https://git.kernel.org/krzk/linux/c/2b48947f7b03e0fea32ea2c6841a0d8cd67e737b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


