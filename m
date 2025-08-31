Return-Path: <devicetree+bounces-210961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E99B3D3A8
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 15:28:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E1D73BED2A
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 13:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4042B26A0C6;
	Sun, 31 Aug 2025 13:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FWnTr8fa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A1A265CB3
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 13:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756646899; cv=none; b=fREFnsjhdVxl0ig1W8Jrr5NfU++FEQGTvPUz9jFRkmnYuc1eBLXqP14I8RpV+vEO2PmyQFDdCTCOyhRBLpeiXloJ2HhyxlPG4BQvtFdvcJ/2HhqIXLrDEgBvCy6yDuIcg27YV5Pi2eOhcm4R3uwc++8CcKhgbvxLz3YLSxnj2WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756646899; c=relaxed/simple;
	bh=ST8wHdef2LgPonMkQdZRXjWtFBeRH6dlNAeB4eL/Hmo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ACfnRv9Y1MhQuh4OE8YM4w4UHYgrZ0RQo1vbSOOc8RuzP1LXPsktyMZuBVhavSDcYMVty8Q774dc8gtAcXIem6rRYsFpA7kakBRZYknb3w0vDgQKuN9INot4ljjj0M04V9MBufsu7VlL2S6mt22yUVItsOxo6UYA0k5mwM8wLIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FWnTr8fa; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45a1b0ce15fso3810025e9.3
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 06:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756646896; x=1757251696; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VUsiiWH7g4d6FEVfKTRPbe3R6ugJoOhF5bsWtOAIO6k=;
        b=FWnTr8faMjnNB12zUdraVl3FGqwHH7oQQBg/HvIOi2vusa0cjXY5fuooqPXTj4dFli
         VtgDnoa+ZaTHrrYUSDBCChpWQVNqrtrpiQUyD48qbtzGkRnXPq1KmiAvpvTYKRs+qGv9
         mfgVIhNJ1fmsNlxtfZExJ82+ItcrK0KDzfFE9iKrVGxQ0YxY7aBsONFOTYsUjFfO3Q1S
         /UKViy098h4uWO3VcDgyRLLuQy2q2RZPORi6ox2NrOtbxwFxLUZaopOv3r4CRfSZ4xsU
         tWyfbou35YmlbpGkbJgCcDlQ0CMtoMn//8sb99G2Qh8AJGEnvQYAV89LGJXJkle11gq4
         7Tkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756646896; x=1757251696;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VUsiiWH7g4d6FEVfKTRPbe3R6ugJoOhF5bsWtOAIO6k=;
        b=E2z8UlmMrIDOrVw7gXIm9gHvdfmHkwy0GSjLKHZspQLnhuFTloUN29UEeW9t7ToyTv
         AgpbvJ6Z+FMF4m4LLzIF5H2lUCdcs5cBh56PP2zXagWJNs7xIf8JD1tH97jG4bHWWBuF
         Hw+d8WPE3s8gDHEFTXL3ZcM5JbRaEdU02mcH/NLXhwc4c6S2oQtqd2SAVEcT1H/TCcfN
         h7Ch69MvPCiQ5YdFVjAA067qcvQXD6zflSZ1wCseacqmu7qQt9UeWmI52MvSS+OA3Dby
         7n1p2d2puzwQ7yByXqBSQ/6m1A4G7Ys+kqbQEGWT3Ry+z+7qdyGVxofHtG9ud8uTmy8V
         tFsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUccvMkq7r9egVOt5yen9S2ygowWzC/E1cry1IuZK8O73Iq18wAd1/nuiMhtu54Vc0ZwAoN8GOA6gNk@vger.kernel.org
X-Gm-Message-State: AOJu0YxafOh8tXucZbsc2ASw5ZY9Ky37DAmei5EEk8iK0oi1ZCPth2/S
	GWlKJrs1Fv0uYS8W72/GiCjpBqEz13GHVgtysqUcZNFRcPvX+Jq7/ygo/dKnMsqpuY4=
X-Gm-Gg: ASbGncvlKKmZNPncFLzbghwm1hY2a72lxz52QjCxozHWJOtKbGcbj5MIajoR7fS8oQk
	JVayvnN/D0IviP0bDsPQLC6uwSJFZ9HX6jtZGQ8DASxSC5vcR6nW6nS9X8NOx38rU3D8kh9Bp8d
	dJpzQX2+wbKcbR27tvgZA9GXCbyf2aMKFnDk3fgU3Z/FKoeceEqp77FIaMQGwyh+yG4bOqKjHX3
	odjvzekRWbIDpRudZEhogkEG6bBTm+u3uorTOcJjhPhjLpE3uN721DzQrht5ENbXzcL7W7nYI4/
	gxSENHLUORJhUSv6DJsv20TXJJHTa3c1+o1K9/V+EV0yxlb/6Gu1a+ccLiO7LAsAiZi3L2Rizgu
	e/6jjZinrz6QLTyOiICgsTDvHOy2Mzqt0GLSJWZgVyK6nu2Gbng==
X-Google-Smtp-Source: AGHT+IHuGuVHHk5pZhTIqaJ6T0pRMpVLKOi+qYDhard/uCHRhDaK8a/HDroJFFPgp6qQQ0xTGeYLmw==
X-Received: by 2002:a05:600c:6385:b0:451:dee4:cd07 with SMTP id 5b1f17b1804b1-45b81e23616mr32007925e9.0.1756646895694;
        Sun, 31 Aug 2025 06:28:15 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b87b3900dsm29956925e9.0.2025.08.31.06.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 06:28:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: jesper.nilsson@axis.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
 s.nawrocki@samsung.com, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 linus.walleij@linaro.org, tomasz.figa@gmail.com, catalin.marinas@arm.com, 
 will@kernel.org, arnd@arndb.de, Ravi Patel <ravi.patel@samsung.com>
Cc: ksk4725@coasia.com, kenkim@coasia.com, pjsin865@coasia.com, 
 gwk1013@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com, 
 smn1196@coasia.com, pankaj.dubey@samsung.com, shradha.t@samsung.com, 
 inbaraj.e@samsung.com, swathi.ks@samsung.com, hrishikesh.d@samsung.com, 
 dj76.yang@samsung.com, hypmean.kim@samsung.com, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@axis.com, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, soc@lists.linux.dev, 
 Varada Pavani <v.pavani@samsung.com>
In-Reply-To: <20250825114436.46882-4-ravi.patel@samsung.com>
References: <20250825114436.46882-1-ravi.patel@samsung.com>
 <CGME20250825120710epcas5p421c3c8169019599e76f782bb7086e0e1@epcas5p4.samsung.com>
 <20250825114436.46882-4-ravi.patel@samsung.com>
Subject: Re: (subset) [PATCH v3 03/10] clk: samsung: artpec-8: Add initial
 clock support for ARTPEC-8 SoC
Message-Id: <175664689350.195158.6648344469963977673.b4-ty@linaro.org>
Date: Sun, 31 Aug 2025 15:28:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 25 Aug 2025 17:14:29 +0530, Ravi Patel wrote:
> Add initial clock support for Axis ARTPEC-8 SoC which is required
> for enabling basic clock management.
> 
> Add clock support for below CMU (Clock Management Unit) blocks
> in ARTPEC-8 SoC:
>  - CMU_CMU
>  - CMU_BUS
>  - CMU_CORE
>  - CMU_CPUCL
>  - CMU_FSYS
>  - CMU_IMEM
>  - CMU_PERI
> 
> [...]

Applied, thanks!

[03/10] clk: samsung: artpec-8: Add initial clock support for ARTPEC-8 SoC
        https://git.kernel.org/krzk/linux/c/bd5336e3f7040f300b01702215b45e6267a400cc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


