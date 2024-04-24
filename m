Return-Path: <devicetree+bounces-62161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 248A18B02A7
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:57:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6E931F22717
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 06:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A785D1591EE;
	Wed, 24 Apr 2024 06:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pdJOyFxt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946FC158DAB
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 06:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713941675; cv=none; b=uk5FJ3Ve0LUirXenFZbbi3JI7BuE3YYsPTIpQXSMJk8VzO6vM7NccW1qqqQE/tA2IqAXrsXHeDXH/Y7zMHJG6zA6xgwNTYZIc3LhoSJQ/B6s9hSXDflX29dKwgVazc54jbi0NwLIYZdSIHH02KpSYIOU+9VoOoBM3OZqTKH5PDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713941675; c=relaxed/simple;
	bh=5sYxl+UaCDeqqMYybUb4bNjgCQWorMCRcRO1ytuBsCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=r9ZBKvSTVmqBR6bOpPWh+4uxCuXDu78nlTGi/TpPYsP1ggbu8jkaICZg1vdih9GjwkDLiWBZ8bgxmWMdxg3BNpZ3LKpI+Mw78SZw/YUgMzwNHWZbUI1BHiA90OgC39dHveX6d+PvVVoNelr5PNr+fUevKT7Jw8Zbmr9rQSAEuh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pdJOyFxt; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3465921600dso5784796f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 23:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713941671; x=1714546471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n2YujgyGecZeMQxLbGb9B2UsmPy4VXriFvistWzKOEs=;
        b=pdJOyFxtGdmzMRY2QL7E9+jfoNc+PCCvaIdvmXoeN4ppIMLeH0GS7SKMlfduUXpJVO
         Eo9YU+Zg2VIqohVy9o0o9SWrAsNz+odrKVIBxo0X1v3qZqN8PqAyoHP1J2TJhRJ8Mw2b
         LTy1j/L5sc4n9LuzwTIoU5G4kf5s8D/QZSqRu0G8vYL+C7QxzicBJX41u4RSq9E7iSy6
         y7pAyI6LOFEo6pgFT1CsAcrL8MD/AfGktba96gTvwDc0m1vsjgmKnGFG76dN3HuGf8dO
         OyeDeALFKwyrc79ze9HK5h9x0ys3sqsiZM5v3JNkItJSiqmY9me9EsSdjlvzyUv9OVlp
         bxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713941671; x=1714546471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n2YujgyGecZeMQxLbGb9B2UsmPy4VXriFvistWzKOEs=;
        b=glps/zrnqECgkCX42vcFsItuAJtfdQzCpC4Ffo1TwL63Q94fWAzf5J9o36n37+Op90
         jjZfEbA5zCmpKskIaIc5XsBQry0FZix5vCSWbFtgWjqk/PJr2qz23cNGkCtQbtpqHbW8
         vjYL/kKY68ZcP8S+TzTYQxMerGLPq7aLYoneaVZNE+TrVzokS7En6I23pzKr4KDdkt0v
         4suJc0+qjCP/evcB4znBjPEwxI1zTwdee1U0OVvOaMee9cU6va/4AFcVMNo147zitYoj
         AgIfe8itjj4En6KS7oHfmzOpk+9+191iMBZuAEaEtC4JwCSV2CB13d12yEbnPxUH2WxF
         ggRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLb5nQUgdn1ZUal2p6QIxa869p0LUB1GHfjr3xCaw03U2zUXNYjUkf+cvO59mV6krWdDpFbGEzUT57NK5X3QGfy5H4k5TwxkpKcw==
X-Gm-Message-State: AOJu0YzLgfM64D6hCtX1HNhAEgn3/C+WyelV8gr8t4OOfnhKc9R1M8FM
	8H63YUie/86oItqMay2UTIce81KswqlZH9vZ3mkbjHZOfAu7DGq55Kzvnw8B9Qs=
X-Google-Smtp-Source: AGHT+IEb/SW08foe6uJmKrfgo2ULn693vJ0SzboRceBM+oGihPmtjWUwOYuhHCN3rosDOAIgjJj0LQ==
X-Received: by 2002:adf:fdc6:0:b0:345:66a1:d949 with SMTP id i6-20020adffdc6000000b0034566a1d949mr843051wrs.0.1713941671027;
        Tue, 23 Apr 2024 23:54:31 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id t18-20020a5d6912000000b0034997769ae4sm16338534wru.15.2024.04.23.23.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 23:54:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tsahee Zidenberg <tsahee@annapurnalabs.com>,
	Antoine Tenart <atenart@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/5] arm64: dts: amazon: alpine-v2: add missing io-fabric unit addresses
Date: Wed, 24 Apr 2024 08:54:16 +0200
Message-ID: <171394159881.43787.8772365708305051790.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240402200744.79349-1-krzk@kernel.org>
References: <20240402200744.79349-1-krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 02 Apr 2024 22:07:40 +0200, Krzysztof Kozlowski wrote:
> Add io-fabric unit address, because it has ranges property.  This also
> fixes dtc W=1 warnings:
> 
>   alpine-v2.dtsi:153.13-229.5: Warning (simple_bus_reg): /soc/io-fabric: simple-bus unit address format error, expected "fc000000"
> 
> 

Almost a month passed, no replies from maintainers about picking it up. Dunno,
looks abandoned, so let me grab this. If anyone else wants to pick it up, let
me know.

Applied, thanks!

[1/5] arm64: dts: amazon: alpine-v2: add missing io-fabric unit addresses
      https://git.kernel.org/krzk/linux-dt/c/0d8ec5c9415f3ac1a8dd02bc8ec31db240d3329a
[2/5] arm64: dts: amazon: alpine-v2: move non-MMIO node out of soc
      https://git.kernel.org/krzk/linux-dt/c/c92b25ab66e76e197353761d5631e1a3299e777a
[3/5] arm64: dts: amazon: alpine-v3: add missing io-fabric unit addresses
      https://git.kernel.org/krzk/linux-dt/c/4c8bdd35ec797dc083cbc6ed30a5a41f471d6c8d
[4/5] arm64: dts: amazon: alpine-v3: drop cache nodes unit addresses
      https://git.kernel.org/krzk/linux-dt/c/6f7be4b3d912b22b708fe444ba11afa521068b21
[5/5] arm64: dts: amazon: alpine-v3: correct gic unit addresses
      https://git.kernel.org/krzk/linux-dt/c/b5efd50d10295ce732ee9c2e546245ad4b9c8db5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

