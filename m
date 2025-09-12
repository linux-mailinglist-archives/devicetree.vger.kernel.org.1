Return-Path: <devicetree+bounces-216549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C766B55226
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC6857BDB17
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D83311C1B;
	Fri, 12 Sep 2025 14:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="snSNmp5b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0305A19D065
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757688438; cv=none; b=OQyvGGaiZ6aJ0c8kHhOnpF1z28a/tLLfColoGQuyrj0DGBP7C8iTskFD9hmA+vPMohyLHTQ9alZ2ePziwEsHqYzpAjOsIw2kLACxW7V3FCKnWJm8q9HlLzskVhoPM3/wQlTYwGjOR4hMLbixqXCTDVxk7VcGj7gYsxvVrBphBnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757688438; c=relaxed/simple;
	bh=oD0rg6h2s8DRnh9ZlLpSygfF8WNHefSf37xINe7C+08=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JW4pI7CnpVtv/6gPovNsCc51rSpiR1wGu1XbV9qn4+u+7qO1QmWR5uX+TIDuOZPIn388Ns/mGGxqNzl2O5s08xNQuduIC6hAucq7o74wJ4/FxVb/HyXqcq4Dg74GLJuMp9lHZs/zJk7B8nWlp1S9bYfHqEJYAaLEdglo5Vh65Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=snSNmp5b; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-74542b1b2bcso2109519a34.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757688436; x=1758293236; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n5DP9lHEHxCZeRxso6ploohANo8ljFzvMmesuroyCAA=;
        b=snSNmp5bTpFGV5C9ol6/nG8CtWdeXnTO+52pJjkJgqDPt6lvlMut7byEHdds97Kl2Z
         DFVYfeGA07X2ADyhnkchcl8FLnZVtQ+QN9WkNuwFeUFCAaqcBbbg6W2feK/HzQmt/6dP
         odDZmSn1hbl625f3pfJLU3LlEHjxtmjOKMfZ43ts+2uLH1es5NFkxqIt449fU+cnizlV
         tahGe3CAfZoAK5db2Q7risuJCzqxF/ZQgY0/bz95LszWGYhVHXUzF4OPzkKDVxysAhH3
         1ntiFNAG39VV9F14WpF3U5FqVYJKLFzA/wLUCOxUrkoyo9rQOuQ39liYoXrM1+DVsAcC
         OmwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757688436; x=1758293236;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n5DP9lHEHxCZeRxso6ploohANo8ljFzvMmesuroyCAA=;
        b=snBOBKzDTx9jhxNLIi/6qIB1DssjkE11Jhd8vyBhcmiC6N/XJqah23Rp3fK/KAwhFh
         DIbD1utEIq/ZfvH9CkTwmhnxnsMVDLaytmxmuiBO7znIEhS+UhczhHYK4491Lv500RKF
         n2CNFRM53qgpTs0SSDDFdZ2DdUvQqIa67q8mRtxnq96qtoJXF5nv4kK8d/Q5wacvy0gJ
         Qn7WZ+DGzqSHH75LJp3d06zHsRaaTv8LOEm9360hwp/9GPB0xZxZ5BDwWaZ3nd+30PVW
         E43QAbQJ5bOQ5zO3Ga3ml5zv81h33bTn6BqTpqnB2rVmQK3+62vBvmqt2Rzh6y6yf5xC
         qN+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVvy/ouJKavKsg8cUkkjqI2SP8gEEVAenNm0fMDBykhb3RiIdVSOB/sTn+ZdwYpoG9BZts2bloNEED0@vger.kernel.org
X-Gm-Message-State: AOJu0YyWhvhjWzcfyXwvlKEM/HWdRTSXcBAJ1DXSWe65g9oByaOnickh
	H7541nx5pRuv7JzMJlwsIaTGXgz3709QbbNoKXaWiD3t1l4ENU4vW++AJooUcrU4goTBV1scXBW
	q+urGeZzeoce+fH7wMcgA7UREoCQMXjs2qXBArSRb+w==
X-Gm-Gg: ASbGncvOeyNsadmDSq4X3klc/d7uOfe9JNZVvbTlS32XxX6dYhr2VXygVHE9FxjOzmB
	mmO4lnLZyNTwfus2Fv0fxBPiSvehPzBeKcvkB5lfUipf9imj8/5U6sXlx75T60ano3cPzNOHil4
	zirsswvc5ZbB08p+W4KLQFZJJn1FI+VNlm4BI32X/5bfN70boGifqY3My67M8N98FY7Q316rjcV
	J/cXiU=
X-Google-Smtp-Source: AGHT+IGeyQqSFM5GQBH6iCx5tixN2uUYqtRIakzVl52m5pJ6MiMjEL31OlCuxkleyE+f7rCgdWR9L9hwu0O+n0AMn+8=
X-Received: by 2002:a05:6830:2115:b0:746:d4d3:c8b3 with SMTP id
 46e09a7af769-75353b6e84bmr1706635a34.15.1757688436065; Fri, 12 Sep 2025
 07:47:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903-acpm-dvfs-dt-v3-0-f24059e5cd95@linaro.org>
In-Reply-To: <20250903-acpm-dvfs-dt-v3-0-f24059e5cd95@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 12 Sep 2025 15:47:04 +0100
X-Gm-Features: Ac12FXyJH7pruBCqQvGbq77_X-ntri0UZ8m2NLg3fLfUFTSIie9VvPVCWn3Vxng
Message-ID: <CADrjBPqb+yw0DS9ZrGhW8XSWosWrczV=nMBG4pBPvCVFDpJQ0Q@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] arm64: dts: exynos: gs101: add cpufreq support
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, willmcvicker@google.com, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Sept 2025 at 15:24, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> Define the CPU clocks and OPPs.
>
> Patch #2 has a dependency on the ACPM clock bindings sent at:
> https://lore.kernel.org/linux-samsung-soc/20250903-acpm-clk-v3-1-65ecd42d88c7@linaro.org/
>
> The following error will be seen without the bindings patch:
> arch/arm64/boot/dts/exynos/google/gs101.dtsi:10:10: fatal error: dt-bindings/clock/google,gs101-acpm.h: No such file or directory
>    10 | #include <dt-bindings/clock/google,gs101-acpm.h>
>       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> Thanks,
> ta
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org> # on gs101-oriole

