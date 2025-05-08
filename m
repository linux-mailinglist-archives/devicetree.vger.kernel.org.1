Return-Path: <devicetree+bounces-174986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 146E0AAF78E
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE30F1B6766F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 10:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE1C1F473C;
	Thu,  8 May 2025 10:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="noVJKyBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263DB1D5CC7
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 10:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746699103; cv=none; b=l9cMrFs4Czco2Rk49J93bsdGq8uZC2n82eNwYvg+/xmzl7cPW/wP7D/pFeCqrQIG7KZncOqDF/f4oT2gLMUr8eNs/OZWLWzy7dOvcOvCMjQ4/p5fDTSEHWEhHzizSCM8JHoXjlscFZ72JBZEYhnSUh+Ivoro3rQqNzYcsirYjwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746699103; c=relaxed/simple;
	bh=On+eNzKuN+amPTz93qf1g6YDrx19UUM+He9OpXK3udA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JoDt/GMLDeYN43cuiI+r0j0nnvasNc1D4TJ8b9BEss3hsbNPwiVcn+JJ5SYFYD/TE3qqEIiO7cHGfT8MRoEoqVBczJ7Ljdr7YjL7dUG+SyEOOQn5+kuqL59HzFdnTfn0N8772DTlAHtc+aOXiqpBxfBaUdinZyDZ6SslJgPKBB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=noVJKyBW; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2d0d25cebfeso691263fac.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 03:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746699100; x=1747303900; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UZ5dCEOEywOXExzoNtHF395pMJNUPTYfr0213Oivri8=;
        b=noVJKyBWunmeWfEWWFPz5/+pB8B1xK3ovAF4F2BJQw7M5AuqWRcCoSyT4twcRNZnKd
         wKGeHuPvtlHdovn0vG7AAQiFtRp8XyAB6zMNM6ytTGMQnjXEDSs56iKA3rvZ6rpVJlc+
         nhc8vVbHjuDFvLlU3zfcv3Zx1yKClEaJ82OrSRdfaJyttKxKAm158d8RDlwxSjQJspVT
         UU/lxJVnWpX5+D2XbUFHxZKImBlhqqJVUrfWEheXfxEraWUD6r0gyLvi58cJ1cbU8SaY
         SxM601BTNrnijiLT8pT0NQyxPCohHaNwWD8Xmw152/0vd43lgWdSvDoXwQ6u9obABvJK
         w+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746699100; x=1747303900;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZ5dCEOEywOXExzoNtHF395pMJNUPTYfr0213Oivri8=;
        b=nVoXw+2roth+yf4g2wsWyNHOloz7ZYcpBoSJm8df9SwAAAzODnxDa07u+93EIDVUL7
         f3x/lrfbUaQmnDP+65JD74u+jq5mq6CBYAZF/9ncVLRsHm1DCRfzzqqxgMg+zmpZmn0l
         LHjDYQQWxWx7Rbh7TfednNh2TSZINgHIgVWmrjRZ+Xt8ZR52K46lGnemkSsljT/WYLor
         jDUuZHF8K2FLGoypl2+BsX61d/XyXRNDE3ydALbSQR5nmbn886bBc5VFC2oUfcKS9TH1
         q9IwCQDbWyMgvbMSrRj5s8HnRQa1obzjod6NFhb/n54ghHKuQGOx4GwLQTItIWdxL1al
         cjXA==
X-Forwarded-Encrypted: i=1; AJvYcCW6IBee+1GvtVMuLvYBF5cWPPvvefGL1aBhRN598QaMCudh35c0R4oAF0iSFWhM8JtYVpQZqOUdIJ2y@vger.kernel.org
X-Gm-Message-State: AOJu0YzQV+Znmz7/nOztV7/BAd/8dFqiBCOVTasI+f4onH6gdfIo6/rB
	25TK9pnRPaDkV3NGZoQLVwJAanfkfqwuf0z+JoTGo1VaOqxEgPDXvbFbyJiYjV2XPqkUlhv6Njv
	zakTtkP60A6/rp8KE37/MuCa2DqQT3z/XsBEZrQ==
X-Gm-Gg: ASbGncvtBKpHda+u3HMfWkKJSwxAjTX7XJvD2eZ9JM6AQrp6b3OMeujuEpervpsvPSh
	Zxk+SQPHKWFdUBFJQY0X+Fqj5kfP7OC+nCj3rsnwdP/7BzVuMGLxVJFX6hxpjOTHkh07s+lkmLJ
	fgMULpQCaz3JTM8MC4J0saSmU=
X-Google-Smtp-Source: AGHT+IHHXXnIYY/blUtMMSgG++YLeS7dxymAnQLTsOYoZnzz6dKtVl2gZBaYez1Lnzo1dTAwj6L+w9Z+nAfO1s/JwvQ=
X-Received: by 2002:a05:6870:7007:b0:2bc:69d8:a39e with SMTP id
 586e51a60fabf-2db819c5ab1mr1885103fac.33.1746699100067; Thu, 08 May 2025
 03:11:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com> <20250402233407.2452429-5-willmcvicker@google.com>
In-Reply-To: <20250402233407.2452429-5-willmcvicker@google.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 8 May 2025 11:11:29 +0100
X-Gm-Features: ATxdqUH6wo2bEt1fpwg-JytKDz-8k2kgNoYHvmdBlsX3gPg4fgC2u7MgLMrGOfA
Message-ID: <CADrjBPpDy0itLoxTif=iYYOQspStjsHFza6bn1wDTmWs7em44Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] arm64: dts: exynos: gs101: Add 'local-timer-stop'
 to cpuidle nodes
To: Will McVicker <willmcvicker@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>, 
	Donghoon Yu <hoony.yu@samsung.com>, Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	Will Deacon <willdeacon@google.com>
Content-Type: text/plain; charset="UTF-8"

Hi Will,

On Thu, 3 Apr 2025 at 00:34, Will McVicker <willmcvicker@google.com> wrote:
>
> From: Will Deacon <willdeacon@google.com>
>
> In preparation for switching to the architected timer as the primary
> clockevents device, mark the cpuidle nodes with the 'local-timer-stop'
> property to indicate that an alternative clockevents device must be
> used for waking up from the "c2" idle state.
>
> Signed-off-by: Will Deacon <willdeacon@google.com>
> [Original commit from https://android.googlesource.com/kernel/gs/+/a896fd98638047989513d05556faebd28a62b27c]
> Signed-off-by: Will McVicker <willmcvicker@google.com>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>

Tested using gs101-oriole with linux-next plus this series. With these
MCT timer changes and another series I will send shortly for
exynos-pmu to program the correct hint to ACPM wakeup from c2 idle
state is then functional.


>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> index 3de3a758f113..fd0badf24e6f 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -155,6 +155,7 @@ ananke_cpu_sleep: cpu-ananke-sleep {
>                                 idle-state-name = "c2";
>                                 compatible = "arm,idle-state";
>                                 arm,psci-suspend-param = <0x0010000>;
> +                               local-timer-stop;
>                                 entry-latency-us = <70>;
>                                 exit-latency-us = <160>;
>                                 min-residency-us = <2000>;
> @@ -164,6 +165,7 @@ enyo_cpu_sleep: cpu-enyo-sleep {
>                                 idle-state-name = "c2";
>                                 compatible = "arm,idle-state";
>                                 arm,psci-suspend-param = <0x0010000>;
> +                               local-timer-stop;
>                                 entry-latency-us = <150>;
>                                 exit-latency-us = <190>;
>                                 min-residency-us = <2500>;
> @@ -173,6 +175,7 @@ hera_cpu_sleep: cpu-hera-sleep {
>                                 idle-state-name = "c2";
>                                 compatible = "arm,idle-state";
>                                 arm,psci-suspend-param = <0x0010000>;
> +                               local-timer-stop;
>                                 entry-latency-us = <235>;
>                                 exit-latency-us = <220>;
>                                 min-residency-us = <3500>;
> --
> 2.49.0.472.ge94155a9ec-goog
>

